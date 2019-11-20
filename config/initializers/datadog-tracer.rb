Datadog.configure do |c|
    # c.analytics_enabled = true
    c.tracer debug: true
    c.use :rails, service_name: 'my-rails-app'
    c.tracer hostname: 'datadog-agent',
           port: 8126
  end
