//产品图片
$('#image').change(function () {
    var current_pic = this.files[0];
    preview_picture(current_pic)
})
function preview_picture(pic) {
    var r = new FileReader();
    r.readAsDataURL(pic);
    r.onload=function (ev) {
        $("#pic").attr('style','width:33%');
        $("#pic").attr('src',this.result).show();
    }
}
/*订单合同*/
$('#ordersCont').change(function () {
    var current_pic = this.files[0];
    preview_pictureTwo(current_pic)
})
function preview_pictureTwo(pic) {
    var r = new FileReader();
    r.readAsDataURL(pic);
    r.onload=function (ev) {
        $("#   " +
            "" +
            "" +
            "" +
            "" +
            "" +
            "" +
            "" +
            "\
            \
            \
            ").attr('style','width:33%');
        $("#picTwo").attr('src',this.result).show();
    }
}