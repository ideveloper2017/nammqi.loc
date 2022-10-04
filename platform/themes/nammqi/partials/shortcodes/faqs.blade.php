<section class="services padding-120">
    <h3 class="text-center mb-4 pb-2 text-primary fw-bold">FAQ</h3>
    <div class="row">
        @foreach($categories as $categoryIndex => $category)
            @foreach($category->faqs as $faqIndex => $faq)
        <div class="col-md-6 col-lg-4 mb-4">
            <h6 class="mb-3 text-primary"><i class="far fa-paper-plane text-primary pe-2"></i>  {!! clean($faq->question) !!}</h6>
        </div>
            @endforeach
        @endforeach
    </div>
</section>
<!--Section: FAQ-->


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
                            <button
                                class="btn btn-link btn-block text-left @if (!($categoryIndex == 0 && $faqIndex == 0)) collapsed @endif"
                                type="button" data-bs-toggle="collapse"
                                data-bs-target="#collapse-faq-{{ $categoryIndex }}-{{ $faqIndex }}" aria-expanded="true"
                                aria-controls="collapse-faq-{{ $categoryIndex }}-{{ $faqIndex }}">
                                {!! clean($faq->question) !!}
                            </button>
                        </h2>
                    </div>

                    <div id="collapse-faq-{{ $categoryIndex }}-{{ $faqIndex }}"
                         class="collapse @if ($categoryIndex == 0 && $faqIndex == 0) show @endif"
                         aria-labelledby="heading-faq-{{ $categoryIndex }}-{{ $faqIndex }}"
                         data-parent="#faq-accordion-{{ $categoryIndex }}">
                        <div class="card-body">
                            {!! clean($faq->answer) !!}
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    @endforeach
</div>
