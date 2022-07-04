<?php

namespace Botble\Counterup\Http\Controllers;

use Botble\Base\Events\BeforeEditContentEvent;
use Botble\Counterup\Http\Requests\CounterupRequest;
use Botble\Counterup\Repositories\Interfaces\CounterupInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use Exception;
use Botble\Counterup\Tables\CounterupTable;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Counterup\Forms\CounterupForm;
use Botble\Base\Forms\FormBuilder;

class CounterupController extends BaseController
{
    /**
     * @var CounterupInterface
     */
    protected $counterupRepository;

    /**
     * @param CounterupInterface $counterupRepository
     */
    public function __construct(CounterupInterface $counterupRepository)
    {
        $this->counterupRepository = $counterupRepository;
    }

    /**
     * @param CounterupTable $table
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(CounterupTable $table)
    {
        page_title()->setTitle(trans('plugins/counterup::counterup.name'));

        return $table->renderTable();
    }

    /**
     * @param FormBuilder $formBuilder
     * @return string
     */
    public function create(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('plugins/counterup::counterup.create'));

        return $formBuilder->create(CounterupForm::class)->renderForm();
    }

    /**
     * @param CounterupRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function store(CounterupRequest $request, BaseHttpResponse $response)
    {
        $counterup = $this->counterupRepository->createOrUpdate($request->input());

        event(new CreatedContentEvent(COUNTERUP_MODULE_SCREEN_NAME, $request, $counterup));

        return $response
            ->setPreviousUrl(route('counterup.index'))
            ->setNextUrl(route('counterup.edit', $counterup->id))
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
        $counterup = $this->counterupRepository->findOrFail($id);

        event(new BeforeEditContentEvent($request, $counterup));

        page_title()->setTitle(trans('plugins/counterup::counterup.edit') . ' "' . $counterup->name . '"');

        return $formBuilder->create(CounterupForm::class, ['model' => $counterup])->renderForm();
    }

    /**
     * @param int $id
     * @param CounterupRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function update($id, CounterupRequest $request, BaseHttpResponse $response)
    {
        $counterup = $this->counterupRepository->findOrFail($id);

        $counterup->fill($request->input());

        $counterup = $this->counterupRepository->createOrUpdate($counterup);

        event(new UpdatedContentEvent(COUNTERUP_MODULE_SCREEN_NAME, $request, $counterup));

        return $response
            ->setPreviousUrl(route('counterup.index'))
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
            $counterup = $this->counterupRepository->findOrFail($id);

            $this->counterupRepository->delete($counterup);

            event(new DeletedContentEvent(COUNTERUP_MODULE_SCREEN_NAME, $request, $counterup));

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
            $counterup = $this->counterupRepository->findOrFail($id);
            $this->counterupRepository->delete($counterup);
            event(new DeletedContentEvent(COUNTERUP_MODULE_SCREEN_NAME, $request, $counterup));
        }

        return $response->setMessage(trans('core/base::notices.delete_success_message'));
    }
}
