
option(RTS_LOGGING_RELEASE_DEBUG_LOGGING "Enable logging in Release build" OFF)
option(RTS_LOGGING_DISABLE_DEBUG_LOGGING "Disable logging in Debug build" OFF)
option(RTS_LOGGING_NORMAL_LOG_IN_CRC_LOG "Enable normal logging in crc logging" OFF)

add_feature_info(LoggingReleaseDebugLogging RTS_LOGGING_RELEASE_DEBUG_LOGGING "Force logging on in all builds, even Release. Note that enabling logging can alter Game Logic and cause mismatches.")
add_feature_info(LoggingDisableDebugLogging RTS_LOGGING_DISABLE_DEBUG_LOGGING "Force disable logging in all builds.")
add_feature_info(LoggingNormalLoggingInCRCLog RTS_LOGGING_NORMAL_LOG_IN_CRC_LOG "Capture normal logs in crc logs.")

if(RTS_LOGGING_RELEASE_DEBUG_LOGGING)
    target_compile_definitions(core_config INTERFACE RELEASE_DEBUG_LOGGING)
endif()

if(RTS_LOGGING_DISABLE_DEBUG_LOGGING)
    target_compile_definitions(core_config INTERFACE DISABLE_DEBUG_LOGGING)
endif()

if(RTS_LOGGING_NORMAL_LOG_IN_CRC_LOG)
    target_compile_definitions(core_config INTERFACE NORMAL_LOG_IN_CRC_LOG)
endif()

