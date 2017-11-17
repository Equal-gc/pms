;(function ($, docu) {
    $.isTelNum = function (telNum) {
        var myreg = /^1[34578]\d{9}$/;
        if (!myreg.test(telNum)) {
            return false;
        } else {
            return true;
        }
    }
    $.isIdCard = function (idCard) {
        var myreg = /(^(\d{15}|\d{18}|\d{17}x|\d{17}X)$)/;
        if (!myreg.test(idCard)) {
            return false;
        } else {
            return true;
        }
    }

    //form验证tip
    var $tooltip = $('<div id="vld-tooltip">提示信息</div>');
    $tooltip.appendTo(docu.body);
    $.fn.showTip = function (tipMsg) {
        var $this = $(this);
        var msg = tipMsg || $this.data('foolishMsg');
        var offset = $this.offset();
        $tooltip.text(msg).show().css({
            left: offset.left + 10,
            top: offset.top + $this.outerHeight() + 10
        });
        $this.on('focusin focusout input', function (e) {
            $tooltip.hide();
        });
    }

    $.getUrlParam = function (name) {
        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
        var r = window.location.search.substr(1).match(reg);
        if (r != null) return unescape(r[2]);
        return null;
    }
    $.getFirstDayOfMonth = function (month) {
        var date = new Date();
        date.setMonth(month - 1);
        date.setDate(1);
        return date.format("yyyy-MM-dd");
    }
    $.getLastDayOfMonth = function (month) {
        var date = new Date();
        var nextMonthFirstDay = new Date(date.getFullYear(), month, 1);
        var oneDay = 1000 * 60 * 60 * 24;
        return (new Date(nextMonthFirstDay - oneDay)).format("yyyy-MM-dd");
    }

    Date.prototype.format = function (format) {
        var o = {
            "M+": this.getMonth() + 1,  //month
            "d+": this.getDate(),     //day
            "h+": this.getHours(),    //hour
            "m+": this.getMinutes(),  //minute
            "s+": this.getSeconds(), //second
            "q+": Math.floor((this.getMonth() + 3) / 3),  //quarter
            "S": this.getMilliseconds() //millisecond
        }
        var week = ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"];
        if (/(y+)/.test(format)) {
            format = format.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
        }
        if (/(w+)/.test(format)) {
            format = format.replace(RegExp.$1, week[this.getDay()]);
        }
        for (var k in o) {
            if (new RegExp("(" + k + ")").test(format)) {
                format = format.replace(RegExp.$1, RegExp.$1.length == 1 ? o[k] : ("00" + o[k]).substr(("" + o[k]).length));
            }
        }
        return format;
    }

    /**
     * 替换所有匹配exp的字符串为指定字符串
     * @param exp 被替换部分的正则
     * @param newStr 替换成的字符串
     */
    String.prototype.replaceAll = function (exp, newStr) {
        return this.replace(new RegExp(exp, "gm"), newStr);
    };

    /**
     * 原型：字符串格式化
     * @param args 格式化参数值
     */
    String.prototype.format = function (args) {
        var result = this;
        if (arguments.length < 1) {
            return result;
        }

        var data = arguments; // 如果模板参数是数组
        if (arguments.length == 1 && typeof (args) == "object") {
            // 如果模板参数是对象
            data = args;
        }
        for (var key in data) {
            var value = data[key];
            if (undefined != value) {
                result = result.replaceAll("\\{" + key + "\\}", value);
            }
        }
        return result;
    }
    $.stampToDate = function (stamp) {
        var date = new Date(parseInt(stamp));
        return date.format("yyyy-MM-dd");
    }
})(jQuery, document);