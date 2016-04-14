package net.unit8.omoishiraseteyaru.form;

import lombok.Data;
import org.hibernate.validator.constraints.NotBlank;

/**
 * @author kawasima
 */
@Data
public class TweetForm extends FormBase {
    @NotBlank
    private String where;
    @NotBlank
    private String what;
    @NotBlank
    private String whom;

}
