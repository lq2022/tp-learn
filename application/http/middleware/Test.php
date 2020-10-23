<?php

namespace app\http\middleware;

class Test
{
    public function handle($request, \Closure $next)
    {
    	halt(233);

        return $next($request);
    }
}
