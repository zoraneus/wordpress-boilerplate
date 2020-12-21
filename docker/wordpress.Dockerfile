FROM wordpress:5.6.0

RUN apt-get update && apt-get install -y \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# WORDPRESS PLUGINS


ENV ACF_VERSION 5.9.1
ENV ACF_NAME advanced-custom-fields
RUN curl -L "https://downloads.wordpress.org/plugin/${ACF_NAME}.${ACF_VERSION}.zip" -o "/tmp/${ACF_NAME}.zip"
RUN unzip "/tmp/${ACF_NAME}.zip" -d /usr/src/wordpress/wp-content/plugins
RUN rm "/tmp/${ACF_NAME}.zip"

# No version available
ENV HEADLESS_CMS_NAME headless-cms
RUN curl -L "https://downloads.wordpress.org/plugin/${HEADLESS_CMS_NAME}.zip" -o "/tmp/${HEADLESS_CMS_NAME}.zip"
RUN unzip "/tmp/${HEADLESS_CMS_NAME}.zip" -d /usr/src/wordpress/wp-content/plugins
RUN rm "/tmp/${HEADLESS_CMS_NAME}.zip"

ENV SEO_VERSION 15.5
ENV SEO_NAME wordpress-seo
RUN curl -L "https://downloads.wordpress.org/plugin/${SEO_NAME}.${SEO_VERSION}.zip" -o "/tmp/${SEO_NAME}.zip"
RUN unzip "/tmp/${SEO_NAME}.zip" -d /usr/src/wordpress/wp-content/plugins
RUN rm "/tmp/${SEO_NAME}.zip"

ENV WP_GRAPHQL_VERSION 1.0.1
ENV WP_GRAPHQL_NAME wp-graphql
RUN curl -L "https://downloads.wordpress.org/plugin/${WP_GRAPHQL_NAME}.${WP_GRAPHQL_VERSION}.zip" -o "/tmp/${WP_GRAPHQL_NAME}.zip"
RUN unzip "/tmp/${WP_GRAPHQL_NAME}.zip" -d /usr/src/wordpress/wp-content/plugins
RUN rm "/tmp/${WP_GRAPHQL_NAME}.zip"

# GITHUB PLUGINS

ENV GQL_GUTENBERG_VERSION v0.3.4
ENV GQL_GUTENBERG_PATH pristas-peter/wp-graphql-gutenberg
ENV GQL_GUTENBERG_NAME wp-graphql-gutenberg
RUN curl -L "https://github.com/${GQL_GUTENBERG_PATH}/archive/${GQL_GUTENBERG_VERSION}.zip" -o "/tmp/${GQL_GUTENBERG_NAME}.zip"
RUN unzip "/tmp/${GQL_GUTENBERG_NAME}.zip" -d /usr/src/wordpress/wp-content/plugins
RUN rm "/tmp/${GQL_GUTENBERG_NAME}.zip"

ENV GQL_OFF_PAGINATION_VERSION v0.2.0
ENV GQL_OFF_PAGINATION_PATH valu-digital/wp-graphql-offset-pagination
ENV GQL_OFF_PAGINATION_NAME wp-graphql-offset-pagination
RUN curl -L "https://github.com/${GQL_OFF_PAGINATION_PATH}/archive/${GQL_OFF_PAGINATION_VERSION}.zip" -o "/tmp/${GQL_OFF_PAGINATION_NAME}.zip"
RUN unzip "/tmp/${GQL_OFF_PAGINATION_NAME}.zip" -d /usr/src/wordpress/wp-content/plugins
RUN rm "/tmp/${GQL_OFF_PAGINATION_NAME}.zip"

ENV GQL_GUTENBERG_ACF_VERSION v0.3.0
ENV GQL_GUTENBERG_ACF_PATH pristas-peter/wp-graphql-gutenberg-acf
ENV GQL_GUTENBERG_ACF_NAME wp-graphql-gutenberg-acf
RUN curl -L "https://github.com/${GQL_GUTENBERG_ACF_PATH}/archive/${GQL_GUTENBERG_ACF_VERSION}.zip" -o "/tmp/${GQL_GUTENBERG_ACF_NAME}.zip"
RUN unzip "/tmp/${GQL_GUTENBERG_ACF_NAME}.zip" -d /usr/src/wordpress/wp-content/plugins
RUN rm "/tmp/${GQL_GUTENBERG_ACF_NAME}.zip"

ENV GQL_ACF_VERSION v0.4.0
ENV GQL_ACF_PATH wp-graphql/wp-graphql-acf
ENV GQL_ACF_NAME wp-graphql-acf
RUN curl -L "https://github.com/${GQL_ACF_PATH}/archive/${GQL_ACF_VERSION}.zip" -o "/tmp/${GQL_ACF_NAME}.zip"
RUN unzip "/tmp/${GQL_ACF_NAME}.zip" -d /usr/src/wordpress/wp-content/plugins
RUN rm "/tmp/${GQL_ACF_NAME}.zip"