#define LOOP 15

#for NBR 0 < LOOP +1
Hello World! NBR
#endfor

#if (LOOP > 5)
TRUE
#endif

#if (LOOP < 5)
FALSE
#endif

__DATE__
__LINE__

#foreach VALUE one, two, three, four, five
VALUE
#endforeach

#ifdef USED_IN_FPP
The EXAMPLE_ENV_VAR is set as an environment variable!
#if "USED_IN_FPP" eq "y"
The variable is set to y!
#else
The variable is set to USED_IN_FPP
#endif
#endif

#if not defined USED_IN_FPP
The EXAMPLE_ENV_VAR is NOT set as an environment variable!
#endif
