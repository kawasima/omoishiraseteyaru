package net.unit8.omoishiraseteyaru.controller;

import enkan.data.HttpResponse;
import enkan.util.CodecUtils;
import enkan.util.HttpResponseUtils;
import kotowari.component.TemplateEngine;
import net.unit8.omoishiraseteyaru.form.TweetForm;

import javax.inject.Inject;

import static enkan.util.HttpResponseUtils.RedirectStatusCode.SEE_OTHER;

public class IndexController {
    @Inject
    private TemplateEngine templateEngine;

    public HttpResponse index() {
        return templateEngine.render("form", "tweet", new TweetForm());
    }

    public HttpResponse tweet(TweetForm form) {
        if (form.hasErrors()) {
            return templateEngine.render("form",
                    "tweet", form);
        }
        StringBuilder body = new StringBuilder();
        body.append("よし、").append(form.getWhere())
                .append("\nどれ、").append(form.getWhat())
                .append("を").append(form.getWhom())
                .append("に思い知らせてやるわ〜ww");

        return HttpResponseUtils.redirect("https://twitter.com/intent/tweet?text="
                + CodecUtils.urlEncode(body.toString()), SEE_OTHER);
    }
}
