dataSource {
    pooled = true
    driverClassName = "org.postgresql.Driver"
    username = "tomcat"
    password = "aeiou123"
    dbCreate = "create"
    url = 'jdbc:postgresql:contab'
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = true
    cache.provider_class = 'net.sf.ehcache.hibernate.EhCacheProvider'
    dialect='org.hibernate.dialect.PostgreSQLDialect'
    show_sql = true
}
// environment specific settings
environments {
    development {
        dataSource {
        }
    }
    test {
        dataSource {
        }
    }
    production {
        dataSource {
        }
    }
}
