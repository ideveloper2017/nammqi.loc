(()=>{var e=function(){function e(){!function(e,t){if(!(e instanceof t))throw new TypeError("Cannot call a class as a function")}(this,e)}var t,r;return t=e,(r=[{key:"loadData",value:function(e){$.ajax({type:"GET",url:$(".filter-data-url").val(),data:{class:$(".filter-data-class").val(),key:e.val(),value:e.closest(".filter-item").find(".filter-column-value").val()},success:function(t){var r=$.map(t.data,(function(e,t){return{id:t,name:e}}));e.closest(".filter-item").find(".filter-column-value-wrap").html(t.html);var n=e.closest(".filter-item").find(".filter-column-value");n.length&&"text"===n.prop("type")&&(n.typeahead({source:r}),n.data("typeahead").source=r),Botble.initResources()},error:function(e){Botble.handleError(e)}})}},{key:"init",value:function(){var e=this;$.each($(".filter-items-wrap .filter-column-key"),(function(t,r){$(r).val()&&e.loadData($(r))})),$(document).on("change",".filter-column-key",(function(t){e.loadData($(t.currentTarget))})),$(document).on("click",".btn-reset-filter-item",(function(e){e.preventDefault();var t=$(e.currentTarget);t.closest(".filter-item").find(".filter-column-key").val("").trigger("change"),t.closest(".filter-item").find(".filter-column-operator").val("="),t.closest(".filter-item").find(".filter-column-value").val("")})),$(document).on("click",".add-more-filter",(function(){var t=$(document).find(".sample-filter-item-wrap").html();$(document).find(".filter-items-wrap").append(t.replace("<script>","").replace("<\\/script>","")),Botble.initResources();var r=$(document).find(".filter-items-wrap .filter-item:last-child").find(".filter-column-key");$(r).val()&&e.loadData(r)})),$(document).on("click",".btn-remove-filter-item",(function(e){e.preventDefault(),$(e.currentTarget).closest(".filter-item").remove()}))}}])&&function(e,t){for(var r=0;r<t.length;r++){var n=t[r];n.enumerable=n.enumerable||!1,n.configurable=!0,"value"in n&&(n.writable=!0),Object.defineProperty(e,n.key,n)}}(t.prototype,r),Object.defineProperty(t,"prototype",{writable:!1}),e}();$(document).ready((function(){(new e).init()}))})();
