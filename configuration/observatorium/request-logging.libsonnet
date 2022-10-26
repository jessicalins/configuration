{
  requestLoggingConfig(http_config, grpc_config, level)::
    std.manifestYamlDoc(
      {
        http: {
          config: http_config,
          options: {
            level: level,
            decision: {
              log_start: true,
              log_end: true,
            },
          },
        },
        grpc: {
          config: grpc_config,
          options: {
            level: level,
            decision: {
              log_start: false,
              log_end: true,
            },
          },
        },
      }
    ),
}
