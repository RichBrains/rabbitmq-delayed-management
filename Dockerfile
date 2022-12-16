FROM rabbitmq:3.11-management
ADD https://github.com/rabbitmq/rabbitmq-delayed-message-exchange/releases/download/v3.11.1/rabbitmq_delayed_message_exchange-3.11.1.ez /opt/rabbitmq/plugins/rabbitmq_delayed_message_exchange-3.11.1.ez

### cloud watch exporter
ADD https://github.com/noxdafox/rabbitmq-cloudwatch-exporter/releases/download/v1.0.4/base16-1.0.0.ez /opt/rabbitmq/plugins/base16-1.0.0.ez
ADD https://github.com/noxdafox/rabbitmq-cloudwatch-exporter/releases/download/v1.0.4/certifi-2.5.2.ez /opt/rabbitmq/plugins/certifi-2.5.2.ez
ADD https://github.com/noxdafox/rabbitmq-cloudwatch-exporter/releases/download/v1.0.4/eini-git.ez /opt/rabbitmq/plugins/eini-git.ez
ADD https://github.com/noxdafox/rabbitmq-cloudwatch-exporter/releases/download/v1.0.4/elixir-1.12.2.ez /opt/rabbitmq/plugins/elixir-1.12.2.ez
ADD https://github.com/noxdafox/rabbitmq-cloudwatch-exporter/releases/download/v1.0.4/erlcloud-3.5.5.ez /opt/rabbitmq/plugins/erlcloud-3.5.5.ez
ADD https://github.com/noxdafox/rabbitmq-cloudwatch-exporter/releases/download/v1.0.4/ex_aws_cloudwatch-2.0.4.ez /opt/rabbitmq/plugins/ex_aws_cloudwatch-2.0.4.ez
ADD https://github.com/noxdafox/rabbitmq-cloudwatch-exporter/releases/download/v1.0.4/hackney-1.16.0.ez /opt/rabbitmq/plugins/hackney-1.16.0.ez
ADD https://github.com/noxdafox/rabbitmq-cloudwatch-exporter/releases/download/v1.0.4/idna-6.0.1.ez /opt/rabbitmq/plugins/idna-6.0.1.ez
ADD https://github.com/noxdafox/rabbitmq-cloudwatch-exporter/releases/download/v1.0.4/jason-1.3.0.ez /opt/rabbitmq/plugins/jason-1.3.0.ez
ADD https://github.com/noxdafox/rabbitmq-cloudwatch-exporter/releases/download/v1.0.4/jsx-3.1.0.ez /opt/rabbitmq/plugins/jsx-3.1.0.ez
ADD https://github.com/noxdafox/rabbitmq-cloudwatch-exporter/releases/download/v1.0.4/lager-3.8.0.ez /opt/rabbitmq/plugins/lager-3.8.0.ez
ADD https://github.com/noxdafox/rabbitmq-cloudwatch-exporter/releases/download/v1.0.4/lager_cloudwatch-0.1.2.ez /opt/rabbitmq/plugins/lager_cloudwatch-0.1.2.ez
ADD https://github.com/noxdafox/rabbitmq-cloudwatch-exporter/releases/download/v1.0.4/lhttpc-1.6.2.ez /opt/rabbitmq/plugins/lhttpc-1.6.2.ez
ADD https://github.com/noxdafox/rabbitmq-cloudwatch-exporter/releases/download/v1.0.4/logger-1.12.2.ez /opt/rabbitmq/plugins/logger-1.12.2.ez
ADD https://github.com/noxdafox/rabbitmq-cloudwatch-exporter/releases/download/v1.0.4/metrics-1.0.1.ez /opt/rabbitmq/plugins/metrics-1.0.1.ez
ADD https://github.com/noxdafox/rabbitmq-cloudwatch-exporter/releases/download/v1.0.4/mime-2.0.2.ez /opt/rabbitmq/plugins/mime-2.0.2.ez
ADD https://github.com/noxdafox/rabbitmq-cloudwatch-exporter/releases/download/v1.0.4/mimerl-1.2.0.ez /opt/rabbitmq/plugins/mimerl-1.2.0.ez
ADD https://github.com/noxdafox/rabbitmq-cloudwatch-exporter/releases/download/v1.0.4/parse_trans-3.3.0.ez /opt/rabbitmq/plugins/parse_trans-3.3.0.ez
ADD https://github.com/noxdafox/rabbitmq-cloudwatch-exporter/releases/download/v1.0.4/rabbitmq_cloudwatch_exporter-1.0.4.ez /opt/rabbitmq/plugins/rabbitmq_cloudwatch_exporter-1.0.4.ez
ADD https://github.com/noxdafox/rabbitmq-cloudwatch-exporter/releases/download/v1.0.4/singleton-1.2.0.ez /opt/rabbitmq/plugins/singleton-1.2.0.ez
ADD https://github.com/noxdafox/rabbitmq-cloudwatch-exporter/releases/download/v1.0.4/ssl_verify_fun-1.1.6.ez /opt/rabbitmq/plugins/ssl_verify_fun-1.1.6.ez
ADD https://github.com/noxdafox/rabbitmq-cloudwatch-exporter/releases/download/v1.0.4/telemetry-1.1.0.ez /opt/rabbitmq/plugins/telemetry-1.1.0.ez
ADD https://github.com/noxdafox/rabbitmq-cloudwatch-exporter/releases/download/v1.0.4/unicode_util_compat-0.5.0.ez /opt/rabbitmq/plugins/unicode_util_compat-0.5.0.ez
###

RUN chown -R rabbitmq:rabbitmq /opt/rabbitmq/plugins/ \
        && rabbitmq-plugins enable rabbitmq_delayed_message_exchange rabbitmq_cloudwatch_exporter
