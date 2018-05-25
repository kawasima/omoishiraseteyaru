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
        String body = "よし、" + form.getWhere() +
                "\nどれ、" + form.getWhat() +
                "を" + form.getWhom() +
                "に思い知らせてやるわ〜ww";

        return HttpResponseUtils.redirect("https://twitter.com/intent/tweet?text="
                + CodecUtils.urlEncode(body), SEE_OTHER);
    }
}
