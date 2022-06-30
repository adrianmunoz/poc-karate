package examples;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;

import com.intuit.karate.junit5.Karate;
import org.junit.jupiter.api.Test;
class ExamplesTest {

    @Karate.Test
    Karate testCaso1() {
            return Karate.run("classpath:examples/users/https.feature");
    }
}
