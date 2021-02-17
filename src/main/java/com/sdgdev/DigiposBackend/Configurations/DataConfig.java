package com.sdgdev.DigiposBackend.Configurations;

import io.r2dbc.spi.ConnectionFactory;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import io.r2dbc.postgresql.PostgresqlConnectionConfiguration;
import io.r2dbc.postgresql.PostgresqlConnectionFactory;
import org.springframework.data.r2dbc.core.ReactiveDataAccessStrategy;
import org.springframework.data.r2dbc.repository.support.R2dbcRepositoryFactory;
import org.springframework.data.relational.core.mapping.RelationalMappingContext;
import org.springframework.r2dbc.core.DatabaseClient;

@Configuration
public class DataConfig {
    @Bean
    public PostgresqlConnectionFactory connectionFactory() {
        return new PostgresqlConnectionFactory(
                PostgresqlConnectionConfiguration.builder()
                        .host("localhost")
                        .port(5432)
                        .username("postgres")
                        .password("postgres")
                        .database("digipos")
                        .build());
    }
    @Bean
    DatabaseClient databaseClient(@Qualifier("connectionFactory") ConnectionFactory connectionFactory){
        return DatabaseClient.builder()
                .connectionFactory(connectionFactory)
                .build();
    }
    /*@Bean
    R2dbcRepositoryFactory repositoryFactory(@Qualifier("databaseClient") DatabaseClient databaseClient){
        RelationalMappingContext context = new RelationalMappingContext();
        context.afterPropertiesSet();
        return new R2dbcRepositoryFactory(databaseClient, (ReactiveDataAccessStrategy) context);
    }*/

}
