<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
    @foreach($categories as $categoryIndex => $category)
        @foreach($category->faqs as $faqIndex => $faq)
    <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="headingOne">
            <h4 class="panel-title">
                <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne-{{ $categoryIndex }}-{{ $faqIndex }}" aria-expanded="true" aria-controls="collapseOne">
                    {!! clean($faq->question) !!}
                </a>
            </h4>
        </div>
        <div id="collapseOne-{{ $categoryIndex }}-{{ $faqIndex }}" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
            <div class="panel-body">
                {!! clean($faq->answer) !!}
            </div>
        </div>
    </div>
    @endforeach

    @endforeach

</div>
<div class="faqs-list" style="display: none">
    @foreach($categories as $categoryIndex => $category)
        @if (count($categories) > 1)
            <h4>{{ $category->name }}</h4>
        @endif
        <div class="accordion" id="faq-accordion-{{ $categoryIndex }}">
            @foreach($category->faqs as $faqIndex => $faq)
                <div class="card">
                    <div class="card-header" id="heading-faq-{{ $categoryIndex }}-{{ $faqIndex }}">
                        <h2 class="mb-0">
                            <button class="btn btn-link btn-block text-left @if (!($categoryIndex == 0 && $faqIndex == 0)) collapsed @endif" type="button" data-bs-toggle="collapse" data-bs-target="#collapse-faq-{{ $categoryIndex }}-{{ $faqIndex }}" aria-expanded="true" aria-controls="collapse-faq-{{ $categoryIndex }}-{{ $faqIndex }}">
                                {!! clean($faq->question) !!}
                            </button>
                        </h2>
                    </div>

                    <div id="collapse-faq-{{ $categoryIndex }}-{{ $faqIndex }}" class="collapse @if ($categoryIndex == 0 && $faqIndex == 0) show @endif" aria-labelledby="heading-faq-{{ $categoryIndex }}-{{ $faqIndex }}" data-parent="#faq-accordion-{{ $categoryIndex }}">
                        <div class="card-body">
                            {!! clean($faq->answer) !!}
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    @endforeach
</div>
