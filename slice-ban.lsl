#include "slice-ban/spont-list.lsl" 

float TIMER_INTERVAL = 5.0;
float MIN_ALTITUDE = 1900.0;
float MAX_ALTITUDE = 2100.0;

debug(string message)
{
    llOwnerSay("Debug: " + message);
}

eject_agent(key agent)
{
//    llEjectFromLand(target);
    debug("Attempting to eject " + (string)agent);
}

integer is_height_ok(key agent)
{
    list info = llGetObjectDetails(agent, [OBJECT_POS]);
    vector position = llList2Vector(info, 0);
    
    return position.z >= MIN_ALTITUDE && position.z <= MAX_ALTITUDE;
}

integer is_spont(key agent)
{
    string agent_key = (string)agent;
    integer result = llListFindList(spont_members, [agent_key]);
    
    return result != -1;
}

integer allowed(key agent)
{
    if(is_spont(agent)) return TRUE;
    if(is_height_ok(agent)) return TRUE;
    
    return FALSE;
}

default{
    state_entry()
    {
        llSetTimerEvent(TIMER_INTERVAL);
    }
    
    timer()
    {
        list agents = llGetAgentList(AGENT_LIST_PARCEL, []);
        integer count = llGetListLength(agents);
        debug("Found # of agents: " + (string)count);
        while(count-- > 0)
        {
            key agent = llList2Key(agents, count);
            if(!allowed(agent))
                eject_agent(agent);
        }
    }
}
