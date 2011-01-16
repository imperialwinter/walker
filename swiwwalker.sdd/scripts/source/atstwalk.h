Walk()
{
	while( TRUE )
	{
if( TRUE ) {
	turn lthigh1 to x-axis <5> speed <25>;
	turn lthigh2 to x-axis <0> speed <25>;
	turn lleg to x-axis <10> speed <25>;
	turn lfoot to x-axis <-15> speed <25>;
	wait-for-turn lthigh2 around x-axis;
}
if( TRUE ) {
	turn lthigh1 to x-axis <15> speed <25>;
	turn lthigh2 to x-axis <-5> speed <25>;
	turn lleg to x-axis <25> speed <25>;
	turn lfoot to x-axis <-35> speed <25>;
	wait-for-turn lthigh2 around x-axis;
}
if( TRUE ) {
	//Max back: //toe on ground, ready to begin next step
	turn lthigh1 to x-axis <25> speed <25>;
	turn lthigh2 to x-axis <-10> speed <25>;
	turn lleg to x-axis <30> speed <25>;
	wait-for-turn lthigh2 around x-axis;
}
if( TRUE ) {
	//Leg raised:
	turn lthigh1 to x-axis <0> speed <100>;
	turn lthigh2 to x-axis <20> speed <100>;
	turn lleg to x-axis <-20> speed <100>;
	turn lfoot to x-axis <20> speed <100>;
	wait-for-turn lthigh2 around x-axis;
}
if( TRUE ) {
	turn lthigh1 to x-axis <0> speed <100>;
	turn lthigh2 to x-axis <-30> speed <100>;
	turn lleg to x-axis <10> speed <100>;
	turn lfoot to x-axis <25> speed <100>;
	wait-for-turn lthigh2 around x-axis;
}
if( TRUE ) {
	turn lthigh1 to x-axis <0> speed <25>;
	turn lthigh2 to x-axis <-20> speed <25>;
	turn lleg to x-axis <9> speed <25>;
	turn lfoot to x-axis <10> speed <25>;
	wait-for-turn lthigh2 around x-axis;
}
	}
}

Stop()
{
	turn lthigh1 to x-axis <0> speed <25>;
	turn lthigh2 to x-axis <0> speed <25>;
	turn lleg to x-axis <0> speed <25>;
	turn lfoot to x-axis <0> speed <25>;
	sleep 3640;
}

StartMoving()
{
	signal SIG_MOVE;
	set-signal-mask SIG_MOVE;
	start-script Walk();
}

StopMoving()
{
	signal SIG_MOVE;
	start-script Stop();
}