<?php

namespace Botble\Teammanager\Http\Controllers;

use Botble\Base\Events\BeforeEditContentEvent;
use Botble\Teammanager\Http\Requests\TeammanagerRequest;
use Botble\Teammanager\Repositories\Interfaces\TeammanagerInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use Exception;
use Botble\Teammanager\Tables\TeammanagerTable;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Teammanager\Forms\TeammanagerForm;
use Botble\Base\Forms\FormBuilder;

class TeammanagerController extends BaseController
{
    /**
     * @var TeammanagerInterface
     */
    protected $teammanagerRepository;

    /**
     * @param TeammanagerInterface $teammanagerRepository
     */
    public function __construct(TeammanagerInterface $teammanagerRepository)
    {
        $this->teammanagerRepository = $teammanagerRepository;
    }

    /**
     * @param TeammanagerTable $table
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(TeammanagerTable $table)
    {
        page_title()->setTitle(trans('plugins/teammanager::teammanager.name'));

        return $table->renderTable();
    }

    /**
     * @param FormBuilder $formBuilder
     * @return string
     */
    public function create(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('plugins/teammanager::teammanager.create'));

        return $formBuilder->create(TeammanagerForm::class)->renderForm();
    }

    /**
     * @param TeammanagerRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function store(TeammanagerRequest $request, BaseHttpResponse $response)
    {
        $teammanager = $this->teammanagerRepository->createOrUpdate($request->input());

        event(new CreatedContentEvent(TEAMMANAGER_MODULE_SCREEN_NAME, $request, $teammanager));

        return $response
            ->setPreviousUrl(route('teammanager.index'))
            ->setNextUrl(route('teammanager.edit', $teammanager->id))
            ->setMessage(trans('core/base::notices.create_success_message'));
    }

    /**
     * @param int $id
     * @param Request $request
     * @param FormBuilder $formBuilder
     * @return string
     */
    public function edit($id, FormBuilder $formBuilder, Request $request)
    {
        $teammanager = $this->teammanagerRepository->findOrFail($id);

        event(new BeforeEditContentEvent($request, $teammanager));

        page_title()->setTitle(trans('plugins/teammanager::teammanager.edit') . ' "' . $teammanager->name . '"');

        return $formBuilder->create(TeammanagerForm::class, ['model' => $teammanager])->renderForm();
    }

    /**
     * @param int $id
     * @param TeammanagerRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function update($id, TeammanagerRequest $request, BaseHttpResponse $response)
    {
        $teammanager = $this->teammanagerRepository->findOrFail($id);

        $teammanager->fill($request->input());

        $teammanager = $this->teammanagerRepository->createOrUpdate($teammanager);

        event(new UpdatedContentEvent(TEAMMANAGER_MODULE_SCREEN_NAME, $request, $teammanager));

        return $response
            ->setPreviousUrl(route('teammanager.index'))
            ->setMessage(trans('core/base::notices.update_success_message'));
    }

    /**
     * @param int $id
     * @param Request $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function destroy(Request $request, $id, BaseHttpResponse $response)
    {
        try {
            $teammanager = $this->teammanagerRepository->findOrFail($id);

            $this->teammanagerRepository->delete($teammanager);

            event(new DeletedContentEvent(TEAMMANAGER_MODULE_SCREEN_NAME, $request, $teammanager));

            return $response->setMessage(trans('core/base::notices.delete_success_message'));
        } catch (Exception $exception) {
            return $response
                ->setError()
                ->setMessage($exception->getMessage());
        }
    }

    /**
     * @param Request $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     * @throws Exception
     */
    public function deletes(Request $request, BaseHttpResponse $response)
    {
        $ids = $request->input('ids');
        if (empty($ids)) {
            return $response
                ->setError()
                ->setMessage(trans('core/base::notices.no_select'));
        }

        foreach ($ids as $id) {
            $teammanager = $this->teammanagerRepository->findOrFail($id);
            $this->teammanagerRepository->delete($teammanager);
            event(new DeletedContentEvent(TEAMMANAGER_MODULE_SCREEN_NAME, $request, $teammanager));
        }

        return $response->setMessage(trans('core/base::notices.delete_success_message'));
    }
}
