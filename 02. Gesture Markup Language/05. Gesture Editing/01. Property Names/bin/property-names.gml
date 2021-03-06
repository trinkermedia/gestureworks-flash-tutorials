<?xml version="1.0" encoding="UTF-8"?>
<GestureMarkupLanguage>
<Gesture_set>			
					
	<Gesture id="n-drag" type="drag">
		<match>
			<action>
				<initial>
					<cluster point_number="0" point_number_min="1" point_number_max="10"/>
				</initial>
			</action>
		</match>
		<analysis>
			<algorithm class="kinemetric" type="continuous">
				<library module="drag"/>
				<returns>
					<property id="my_drag_dx" result="dx"/>
					<property id="my_drag_dy" result="dy"/>
				</returns>
			</algorithm>
		</analysis>												
		<mapping>
			<update dispatch_type="continuous">
				<gesture_event type="drag">
					<property ref="my_drag_dx" target="x"/>
					<property ref="my_drag_dy" target="y"/>
				</gesture_event>
			</update>
		</mapping>
	</Gesture>

</Gesture_set>					
</GestureMarkupLanguage>