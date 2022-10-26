<?php

namespace Botble\Tenders\Http\Controllers;

use Botble\Base\Events\BeforeEditContentEvent;
use Botble\Tenders\Http\Requests\TendersRequest;
use Botble\Tenders\Repositories\Interfaces\TendersInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use Exception;
use Botble\Tenders\Tables\TendersTable;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Tenders\Forms\TendersForm;
use Botble\Base\Forms\FormBuilder;

class TendersController extends BaseController
{
    /**
     * @var TendersInterface
     */
    protected $tendersRepository;

    /**
     * @param TendersInterface $tendersRepository
     */
    public function __construct(TendersInterface $tendersRepository)
    {
        $this->tendersRepository = $tendersRepository;
    }

    /**
     * @param TendersTable $table
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(TendersTable $table)
    {
        page_title()->setTitle(trans('plugins/tenders::tenders.name'));

        return $table->renderTable();
    }

    /**
     * @param FormBuilder $formBuilder
     * @return string
     */
    public function create(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('plugins/tenders::tenders.create'));

        return $formBuilder->create(TendersForm::class)->renderForm();
    }

    /**
     * @param TendersRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function store(TendersRequest $request, BaseHttpResponse $response)
    {
        $tenders = $this->tendersRepository->createOrUpdate($request->input());

        event(new CreatedContentEvent(TENDERS_MODULE_SCREEN_NAME, $request, $tenders));

        return $response
            ->setPreviousUrl(route('tenders.index'))
            ->setNextUrl(route('tenders.edit', $tenders->id))
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
        $tenders = $this->tendersRepository->findOrFail($id);

        event(new BeforeEditContentEvent($request, $tenders));

        page_title()->setTitle(trans('plugins/tenders::tenders.edit') . ' "' . $tenders->name . '"');

        return $formBuilder->create(TendersForm::class, ['model' => $tenders])->renderForm();
    }

    /**
     * @param int $id
     * @param TendersRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function update($id, TendersRequest $request, BaseHttpResponse $response)
    {
        $tenders = $this->tendersRepository->findOrFail($id);

        $tenders->fill($request->input());

        $tenders = $this->tendersRepository->createOrUpdate($tenders);

        event(new UpdatedContentEvent(TENDERS_MODULE_SCREEN_NAME, $request, $tenders));

        return $response
            ->setPreviousUrl(route('tenders.index'))
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
            $tenders = $this->tendersRepository->findOrFail($id);

            $this->tendersRepository->delete($tenders);

            event(new DeletedContentEvent(TENDERS_MODULE_SCREEN_NAME, $request, $tenders));

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
            $tenders = $this->tendersRepository->findOrFail($id);
            $this->tendersRepository->delete($tenders);
            event(new DeletedContentEvent(TENDERS_MODULE_SCREEN_NAME, $request, $tenders));
        }

        return $response->setMessage(trans('core/base::notices.delete_success_message'));
    }
}
