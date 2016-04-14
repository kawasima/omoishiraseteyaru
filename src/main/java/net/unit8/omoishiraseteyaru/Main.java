package net.unit8.omoishiraseteyaru;

import enkan.component.WebServerComponent;
import enkan.system.EnkanSystem;

import java.awt.*;
import java.io.IOException;
import java.net.URI;
import java.util.Optional;

/**
 * @author kawasima
 */
public class Main {
    public static void main(String[] args) {
        EnkanSystem system = new MyExampleSystemFactory().create();
        system.start();
        if (args.length > 0) {
            if (Desktop.isDesktopSupported()) {
                Optional<WebServerComponent> webServerComponent = system.getAllComponents().stream()
                        .filter(WebServerComponent.class::isInstance)
                        .map(WebServerComponent.class::cast)
                        .findFirst();
                webServerComponent.ifPresent(web -> {
                    try {

                        Desktop.getDesktop().browse(URI.create("http://localhost:" + web.getPort() + "/" + args[0].replaceAll("^/", "")));
                    } catch (IOException ignore) {
                        // ignore
                    }
                });
            }
        }

    }
}
