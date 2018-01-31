FROM rabbitmq:management
ADD https://dl.bintray.com/rabbitmq/community-plugins/3.7.x/rabbitmq_delayed_message_exchange/rabbitmq_delayed_message_exchange-20171201-3.7.x.zip /usr/lib/rabbitmq/lib/rabbitmq_server-${RABBITMQ_VERSION}/plugins/rabbitmq_delayed_message_exchange.zip
RUN unzip rabbitmq_delayed_message_exchange.zip && chown -R rabbitmq:rabbitmq /usr/lib/rabbitmq/lib/rabbitmq_server-${RABBITMQ_VERSION}/plugins/ \
        && rabbitmq-plugins enable --offline rabbitmq_delayed_message_exchange

