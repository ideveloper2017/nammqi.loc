<?php

register_page_template([
    'default' => 'Default',
]);

register_sidebar([
    'id'          => 'second_sidebar',
    'name'        => 'Second sidebar',
    'description' => 'This is a sample sidebar for nammqi theme',
]);


register_page_template([
    'no-sidebar' => __('No sidebar'),
]);

register_sidebar([
    'id'          => 'top_sidebar',
    'name'        => __('Top sidebar'),
    'description' => __('Area for widgets on the top sidebar'),
]);

register_sidebar([
    'id'          => 'footer_sidebar',
    'name'        => __('Footer sidebar'),
    'description' => __('Area for footer widgets'),
]);

RvMedia::setUploadPathAndURLToPublic();
RvMedia::addSize('featured', 565, 375)->addSize('medium', 540, 360);

add_filter(BASE_FILTER_BEFORE_RENDER_FORM, function ($form, $data) {
    switch (get_class($data)) {
        case Post::class:
        case Page::class:
            $bannerImage = MetaBox::getMetaData($data, 'banner_image', true);

            $form
                ->addAfter('image', 'banner_image', 'mediaImage', [
                    'label'      => __('Banner image (1920x170px)'),
                    'label_attr' => ['class' => 'control-label'],
                    'value'      => $bannerImage,
                ]);
            break;
    }

    return $form;
}, 124, 3);

add_action(BASE_ACTION_AFTER_CREATE_CONTENT, 'save_addition_in_form_fields', 75, 3);
add_action(BASE_ACTION_AFTER_UPDATE_CONTENT, 'save_addition_in_form_fields', 76, 3);

function save_addition_in_form_fields($type, $request, $object)
{
    switch (get_class($object)) {
        case Post::class:
        case Page::class:
            if ($request->has('banner_image')) {
                MetaBox::saveMetaBoxData($object, 'banner_image', $request->input('banner_image'));
            }

            break;
    }
}

if (!function_exists('get_background_styles')) {
    /**
     * @return array
     */
    function get_background_styles()
    {
        return [
            ''                 => __('Not set'),
            'background-white' => __('Background White'),
        ];
    }
}

Form::component('themeIcon', Theme::getThemeNamespace() . '::partials.icons-field', [
    'name',
    'value'      => null,
    'attributes' => [],
]);



