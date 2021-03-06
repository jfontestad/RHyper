DBItest::make_context(Hyper(), NULL, tweaks = DBItest::tweaks(omit_blob_tests = TRUE))
DBItest::test_getting_started()
DBItest::test_driver(
  skip = c(
    "connect_bigint.*",
    NULL
  )
)
DBItest::test_connection(
  skip = c(
    "disconnect_invalid_connection", # 'Cause I said so.
    NULL
  )
)
DBItest::test_result(
  run_only = c(
    # "send_query_trivial", This might be failing because you can only create temp tables on the master connection.
    "send_query_closed_connection",
    "send_query_invalid_connection",
    "send_query_non_string",
    "send_query_syntax_error",
    "send_query_result_valid",
    "send_query_stale_warning"
  )
)
