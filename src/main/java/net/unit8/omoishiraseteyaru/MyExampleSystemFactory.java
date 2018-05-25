package net.unit8.omoishiraseteyaru;

import enkan.Env;
import enkan.component.ApplicationComponent;
import enkan.component.freemarker.FreemarkerTemplateEngine;
import enkan.component.jackson.JacksonBeansConverter;
import enkan.component.undertow.UndertowComponent;
import enkan.config.EnkanSystemFactory;
import enkan.system.EnkanSystem;

import static enkan.component.ComponentRelationship.*;
import static enkan.util.BeanBuilder.*;

/**
 * @author kawasima
 */
public class MyExampleSystemFactory implements EnkanSystemFactory {
    @Override
    public EnkanSystem create() {
        return EnkanSystem.of(
                "jackson", new JacksonBeansConverter(),
                "template", new FreemarkerTemplateEngine(),
                "app", new ApplicationComponent("net.unit8.omoishiraseteyaru.MyApplicationFactory"),
                "http", builder(new UndertowComponent())
                        .set(UndertowComponent::setPort, Env.getInt("PORT", 3000))
                        .build()
        ).relationships(
                component("http").using("app"),
                component("app").using("template", "jackson")
        );

    }

}
