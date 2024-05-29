%====================================================================================
% boundarybasicrobot24 description   
%====================================================================================
event( sonardata, sonar(DISTANCE) ).
request( engage, engage(OWNER,TIME) ).
reply( engagedone, engagedone(ARG) ).  %%for engage
reply( engagerefused, engagerefused(ARG) ).  %%for engage
request( step, step(TIME) ).
reply( stepdone, stepdone(V) ).  %%for step
reply( stepfailed, stepfailed(DURATION,CAUSE) ).  %%for step
dispatch( setdirection, dir(D) ).
request( getrobotstate, getrobotstate(ARG) ).
reply( robotstate, robotstate(POS,DIR) ).  %%for getrobotstate
dispatch( end, end(ARG) ).
%====================================================================================
context(ctxboundarybasicrobot, "localhost",  "TCP", "8088").
context(ctxbasicrobot, "127.0.0.1",  "TCP", "8020").
 qactor( basicrobot, ctxbasicrobot, "external").
  qactor( boundary, ctxboundarybasicrobot, "it.unibo.boundary.Boundary").
 static(boundary).
