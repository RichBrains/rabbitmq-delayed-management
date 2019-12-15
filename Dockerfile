FROM rabbitmq:3.8-management
ADD https://github.com/rabbitmq/rabbitmq-delayed-message-exchange/releases/download/v3.8.0/rabbitmq_delayed_message_exchange-3.8.0.ez /usr/lib/rabbitmq/lib/rabbitmq_server-${RABBITMQ_VERSION}/plugins/rabbitmq_delayed_message_exchange-3.8.0.ez
RUN chown -R rabbitmq:rabbitmq /usr/lib/rabbitmq/lib/rabbitmq_server-${RABBITMQ_VERSION}/plugins/ \
        && rabbitmq-plugins enable --offline rabbitmq_delayed_message_exchange

