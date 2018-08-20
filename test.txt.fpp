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
