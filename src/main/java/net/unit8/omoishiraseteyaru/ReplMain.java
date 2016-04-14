package net.unit8.omoishiraseteyaru;

import enkan.system.repl.PseudoRepl;
import enkan.system.repl.ReplBoot;
import kotowari.system.KotowariCommandRegister;

/**
 * @author kawasima
 */
public class ReplMain {
    public static void main(String[] args) {
        PseudoRepl repl = new PseudoRepl(MyExampleSystemFactory.class.getName());
        ReplBoot.start(repl,
                new KotowariCommandRegister());
    }
}
