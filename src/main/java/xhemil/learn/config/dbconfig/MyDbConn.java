package xhemil.learn.config.dbconfig;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;

import javax.sql.DataSource;
import java.beans.PropertyVetoException;
import java.util.Objects;

@Configuration
@PropertySource("classpath:persistence-mysql.properties")
public class MyDbConn {

    @Autowired
    private Environment env;

    @Bean
    public DataSource securityDataSource(){
        ComboPooledDataSource dataSource = new ComboPooledDataSource();

        try {
            dataSource.setDriverClass(env.getProperty("jdbc.driver"));
        }catch (PropertyVetoException e){
            e.printStackTrace();
        }

        dataSource.setJdbcUrl(env.getProperty("jdbc.url"));
        dataSource.setUser(env.getProperty("jdbc.user"));
        dataSource.setPassword(env.getProperty("jdbc.password"));

        dataSource.setInitialPoolSize(Integer.parseInt(Objects.requireNonNull(env.getProperty("connection.pool.initialPoolSize"))));
        dataSource.setMinPoolSize(Integer.parseInt(Objects.requireNonNull(env.getProperty("connection.pool.minPoolSize"))));
        dataSource.setMaxPoolSize(Integer.parseInt(Objects.requireNonNull(env.getProperty("connection.pool.maxPoolSize"))));
        dataSource.setMaxIdleTime(Integer.parseInt(Objects.requireNonNull(env.getProperty("connection.pool.maxIdleTime"))));
        return dataSource;
    }
}
