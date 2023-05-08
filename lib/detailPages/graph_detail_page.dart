part of 'detail_page.dart';

class GraphHomePage extends HomePage {
  GraphHomePage(Lesson lesson, Controllers controllers) : super(lesson, controllers);

  Container getSimulationStepSwitch(BuildContext context) {
	  return Container(
		  padding: EdgeInsets.symmetric(vertical: 16.0),
		  width: MediaQuery
			  .of(context)
			  .size
			  .width,
		  child: Row(
			  mainAxisAlignment: MainAxisAlignment.spaceBetween,
			  children: <Widget>[
				  Container(
					  child: Text(getStepMessage(), style: TextStyle(color: Colors.black)),
				  ),
				  Switch(
					  value: askForInformation(lesson.simulationDetails, lesson.stepByStep),
					  onChanged: (value) {
						  setState(() {
							  changeSimulationDetails(lesson.stepByStep);
						  });
					  },
					  activeTrackColor: Colors.lightGreenAccent,
					  activeColor: Colors.green,
				  ),
			  ],
		  ));
  }

  Container getNumberOfEdgesSlider(BuildContext context) {
   
   