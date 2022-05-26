<?php

namespace Botble\Ims\Http\Controllers;

use Botble\Base\Events\BeforeEditContentEvent;
use Botble\Ims\Http\Requests\ImsRequest;
use Botble\Ims\Repositories\Interfaces\ImsInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use Exception;
use Botble\Ims\Tables\ImsTable;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Ims\Forms\ImsForm;
use Botble\Base\Forms\FormBuilder;

class ImsController extends BaseController
{
    /**
     * @var ImsInterface
     */
    protected $imsRepository;

    /**
     * @param ImsInterface $imsRepository
     */
    public function __construct(ImsInterface $imsRepository)
    {
        $this->imsRepository = $imsRepository;
    }

    /**
     * @param ImsTable $table
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(ImsTable $table)
    {
        page_title()->setTitle(trans('plugins/ims::ims.name'));

        return $table->renderTable();
    }

    /**
     * @param FormBuilder $formBuilder
     * @return string
     */
    public function create(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('plugins/ims::ims.create'));

        return $formBuilder->create(ImsForm::class)->renderForm();
    }

    /**
     * @param ImsRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function store(ImsRequest $request, BaseHttpResponse $response)
    {
        $ims = $this->imsRepository->createOrUpdate($request->input());

        event(new CreatedContentEvent(IMS_MODULE_SCREEN_NAME, $request, $ims));

        return $response
            ->setPreviousUrl(route('ims.index'))
            ->setNextUrl(route('ims.edit', $ims->id))
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
        $ims = $this->imsRepository->findOrFail($id);

        event(new BeforeEditContentEvent($request, $ims));

        page_title()->setTitle(trans('plugins/ims::ims.edit') . ' "' . $ims->name . '"');

        return $formBuilder->create(ImsForm::class, ['model' => $ims])->renderForm();
    }

    /**
     * @param int $id
     * @param ImsRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function update($id, ImsRequest $request, BaseHttpResponse $response)
    {
        $ims = $this->imsRepository->findOrFail($id);

        $ims->fill($request->input());

        $ims = $this->imsRepository->createOrUpdate($ims);

        event(new UpdatedContentEvent(IMS_MODULE_SCREEN_NAME, $request, $ims));

        return $response
            ->setPreviousUrl(route('ims.index'))
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
            $ims = $this->imsRepository->findOrFail($id);

            $this->imsRepository->delete($ims);

            event(new DeletedContentEvent(IMS_MODULE_SCREEN_NAME, $request, $ims));

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
            $ims = $this->imsRepository->findOrFail($id);
            $this->imsRepository->delete($ims);
            event(new DeletedContentEvent(IMS_MODULE_SCREEN_NAME, $request, $ims));
        }

        return $response->setMessage(trans('core/base::notices.delete_success_message'));
    }
}
