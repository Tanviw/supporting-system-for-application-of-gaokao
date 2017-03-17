/**
 * Created by lenovo on 2017-03-17.
 */

$(document).ready(function () {
    var cql=$(".chabansheng").children();
    cql.each(function () {
        var m=$(this);
        if(m.hasClass("current")){
            m.show();
        }else{
            m.hide();
        }
    });
});

    function addClass(e,nid) {
        var current1=$(".cbsul").find(".current1");
        current1.css("color","#505050");
        current1.removeClass("current1");
        $(e).addClass("current1");
        $(e).css("color","#bf5148");
        var next=$(".chabansheng").find(nid);
        var current=$(".chabansheng").find(".current");
        if(current.attr("id")!=nid){
            current.hide();
            current.removeClass("current");
            next.addClass("current");
            next.show();
    }
}
