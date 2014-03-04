Reference code for the Robot Arm GUI.<br>
<br>
You can look at this GUIDE GUI by opening the .fig file in GUIDE.<br>
Or you can just type<br>
<br>
<b>> guide DhArm</b><br>
<br>
and that'll open GUIDE for this GUI.<br>
<br>
Your task is to get your in-class GUI up to this level then add serial communication.
You need to make sure to use the com port box and open a serial connection.  Then move the joints 
and gripper as they move.  Really that's just three things you need to add.<br>
<ul>
<li>Open a serial connection to the robot.</li>
<li>If connected send gripper commands.</li>
<li>If connected send position commands.</li>
<ul><br>
_Note that your program shouldn't crash if you click a movement control and you aren't 
connected.  It should just display a message to the console instead of crashing._
