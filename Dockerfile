FROM rabbitmq:3.7-management
ADD https://github.com/rabbitmq/rabbitmq-delayed-message-exchange/releases/download/v3.8.0/rabbitmq_delayed_message_exchange-3.8.0.ez rabbitmq_lvc_exchange-3.8.0.ez
RUN mkdir -p /usr/lib/rabbitmq/plugins/ && \ 
        mv rabbitmq_lvc_exchange-3.8.0.ez /usr/lib/rabbitmq/plugins/ \
        && chown -R rabbitmq:rabbitmq /usr/lib/rabbitmq/plugins/ \
        && rabbitmq-plugins enable --offline rabbitmq_delayed_message_exchange && rabbitmq-plugins enable --offline rabbitmq_top

