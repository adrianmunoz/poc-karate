package examples.users;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.junit5.Karate;
import org.junit.jupiter.api.Test;

class HttpsRunner{
    
    @Karate.Test
    Karate testHttps() {
        return Karate.run("https").relativeTo(getClass());
    }

//    @Test
//    void testParallel() {
//        Karate.run("https").relativeTo(getClass()).parallel(5);
//    }

}
