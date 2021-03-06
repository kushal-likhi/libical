include(CheckIncludeFiles)
check_include_files(assert.h HAVE_ASSERT_H)
check_include_files(byteswap.h HAVE_BYTESWAP_H)
check_include_files(ctype.h HAVE_CTYPE_H)
check_include_files(dlfcn.h HAVE_DLFCN_H)
check_include_files(endian.h HAVE_ENDIAN_H)
check_include_files(inttypes.h HAVE_INTTYPES_H)
check_include_files(memory.h HAVE_MEMORY_H)
check_include_files(pthread.h HAVE_PTHREAD_H)
check_include_files(stdint.h HAVE_STDINT_H)
check_include_files(stdlib.h HAVE_STDLIB_H)
check_include_files(strings.h HAVE_STRINGS_H)
check_include_files(string.h HAVE_STRING_H)
check_include_files(sys/endian.h HAVE_SYS_ENDIAN_H)
check_include_files(sys/stat.h HAVE_SYS_STAT_H)
check_include_files(sys/types.h HAVE_SYS_TYPES_H)
check_include_files(time.h HAVE_TIME_H)
check_include_files(unistd.h HAVE_UNISTD_H)
check_include_files(wctype.h HAVE_WCTYPE_H)


include(CheckFunctionExists)
check_function_exists(backtrace HAVE_BACKTRACE)
check_function_exists(gmtime_r HAVE_GMTIME_R)
check_function_exists(isspace HAVE_ISSPACE)
check_function_exists(iswspace HAVE_ISWSPACE)
check_function_exists(setenv HAVE_SETENV)
check_function_exists(snprintf HAVE_SNPRINTF)
check_function_exists(strdup HAVE_STRDUP)
check_function_exists(unsetenv HAVE_UNSETENV)

include(CheckTypeSize)
check_type_size(mode_t SIZEOF_MODE_T)
check_type_size(size_t SIZEOF_SIZE_T)
check_type_size(intptr_t INTPTR_T) # please do not rename HAVE_INTPTR_T will automatically be defined
check_type_size(pid_t HAVE_PID_T)
check_type_size(time_t SIZEOF_TIME_T)

include(FindThreads)
check_library_exists(pthread pthread_attr_get_np "" HAVE_PTHREAD_ATTR_GET_NP)
check_library_exists(pthread pthread_getattr_np "" HAVE_PTHREAD_GETATTR_NP)
check_library_exists(pthread pthread_create "" HAVE_PTHREAD_CREATE)
check_include_files("pthread.h;pthread_np.h" HAVE_PTHREAD_NP_H)
