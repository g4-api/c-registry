#pragma once
#ifdef _WIN32
#  ifdef HELLO_BUILD
#    define HELLO_API __declspec(dllexport)
#  else
#    define HELLO_API __declspec(dllimport)
#  endif
#else
#  define HELLO_API
#endif

#ifdef __cplusplus
extern "C" {
#endif

HELLO_API const char* hello(void);

#ifdef __cplusplus
}
#endif
