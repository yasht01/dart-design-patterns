abstract class Slider {
  late ISliderBehaviour sliderBehaviour;
  late double value;

  void display() {
    print("Slider Value: " + value.toString());
  }

  void update(double newValue) {
    print('here');
    value = this.sliderBehaviour.updateValue(newValue);
  }
}

abstract class ISliderBehaviour {
  double updateValue(double newValue);
  //* Change this to void return type
}

class SliderBehaviourA implements ISliderBehaviour {
  double updateValue(double newValue) {
    return newValue + 2;
  }
}

class SliderBehaviourB implements ISliderBehaviour {
  double updateValue(double newValue) {
    return newValue + 1;
  }
}

class SliderA extends Slider {
  SliderA() {
    this.sliderBehaviour = SliderBehaviourA();
  }
}

void main() {
  Slider _slider = SliderA();
  _slider.update(20.0);
  _slider.display();
}
