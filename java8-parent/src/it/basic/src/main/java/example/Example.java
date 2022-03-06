import lombok.Builder;
import lombok.Data;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

/** Example class. */
@Slf4j
@RequiredArgsConstructor
public class Example {

    private final String arg;

    public void log() {
        log.info("msg");
    }

    /** Example bean. */
    @Data
    @Builder
    public static class ExampleBean {

        private final String property;
    }
}
