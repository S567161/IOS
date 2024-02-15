//
//  ViewController.swift
//  DevarapallyAlphaNumericFunApp
//
//  Created by S567161 on 1/28/24.
//

import UIKit
import Lottie
import AnimatedGradientView

class ViewController: UIViewController {

    @IBOutlet weak var HeaderLBL: UILabel!
    
   
    @IBOutlet weak var headersSV: UIStackView!
    
    
    @IBOutlet weak var launchLAV: LottieAnimationView!
    func didSet() {
        launchLAV.animation = .named("welcomeAnimation")
        launchLAV.alpha = 1
        launchLAV.play { [weak self] _ in
            UIViewPropertyAnimator.runningPropertyAnimator(withDuration: 1.0, delay: 0.0, options: [.curveEaseInOut]) {
                self?.launchLAV.alpha = 0.0
            }
        }
    }
    
    
    
    @IBOutlet weak var firstNumberLBL: UILabel!
    
    @IBOutlet weak var secondNumberLBL: UILabel!
    
    @IBOutlet weak var numbersSV: UIStackView!
    
    @IBOutlet weak var categorySC: UISegmentedControl!
    
    @IBOutlet weak var stringsSV: UIStackView!
    
    @IBOutlet weak var firstNumberStepper: UIStepper!
    
    @IBOutlet weak var inputStringTF: UITextField!
    
    @IBOutlet weak var outputResetSV: UIStackView!
    
    @IBOutlet weak var secondNumberStepper: UIStepper!
    
    @IBOutlet weak var lowercaseSWCH: UISwitch!
    
    @IBOutlet weak var outputTV: UITextView!
    
    @IBOutlet weak var uppercaseSWCH: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.HeaderLBL.text = String(format: "%@\nHAVE SOME FUN™","\u{0C38}\u{0C2D}\u{0C15}\u{0C41}\u{0C28}\u{0C2E}\u{0c38}\u{0C4D}\u{0C15}\u{0C3E}\u{0C30}\u{0C02}")
    }
    
    @IBAction func selectCategory(_ sender: UISegmentedControl) {
        AudioServicesPlaySystemSound(1104)
                let chooseAct = categorySC.selectedSegmentIndex

        switch chooseAct {

        case 0:

            self.firstNumberLBL.text = "0"

            self.secondNumberLBL.text = "0"

            self.numbersSV.isUserInteractionEnabled = true

            self.inputStringTF.isEnabled = false

            self.inputStringTF.text = ""

            self.inputStringTF.placeholder = "Input a String"

            self.uppercaseSWCH.isEnabled = false

            self.lowercaseSWCH.isEnabled = false

            self.firstNumberStepper.value = 0

            self.secondNumberStepper.value = 0

            self.outputTV.text = "Use the 1st number stepper to increment the number value."

        case 1:

        firstNumberLBL.text = "0"

        secondNumberLBL.text = "0"

        numbersSV.isUserInteractionEnabled = false

        inputStringTF.isEnabled = true

        inputStringTF.text = ""

        uppercaseSWCH.isEnabled = true

        lowercaseSWCH.isEnabled = true

        lowercaseSWCH.ison = false

        uppercaseSWCH.ison = false

        firstNumberStepper.value = 0

        secondNumberStepper.value = 0

        outputTV.text = "Please provide at least one character."

        outputTV.text = ""

        case 2:

        numbersSV.isUserInteractionEnabled = true

        inputStringTF.isEnabled = false 
        uppercaseSWCH.isEnabled = false

        lowercaseSWCH.isEnabled = false

        inputStringTF.placeholder = "Input a String"
            firstNumberLBL.text = "0"

            secondNumberLBL.text = "0"

            firstNumberStepper.value = 0

            secondNumberStepper.value = 0

            inputStringTF.text = ""

            outputTV.text = "Use the 1st number stepper to increment the number value."

            default: break

            }

    }
    
    
    @IBAction func respondToValueChange(_ sender: Any) {
        
        self.stringDisplay()
    }
    
    
    @IBAction func lowercaseString(_ sender: UISwitch) {
        self.uppercaseSWCH.isOn = false
                AudioServicesPlaySystemSound(soundSWCHToggl)
                guard self.lowercaseSWCH.isOn else {
                    self.inputStringTF.text = userInput
                    return
                }
                
                self.inputStringTF.text = self.inputStringTF.text?.lowercased()
                self.outputTV.text=disOpForStr()

    }
    
    
    @IBAction func uppercaseString(_ sender: UISwitch) {
        self.lowercaseSWCH.isOn = false
                AudioServicesPlaySystemSound(soundSWCHToggl)
                
                guard self.uppercaseSWCH.isOn else {
                    self.inputStringTF.text = userInput
                    return
                }
                
                self.inputStringTF.text = self.inputStringTF.text?.uppercased()
                self.outputTV.text=disOpForStr()

    }
    
    
    @IBAction func updateFirstNumber(_ sender: UIStepper) {
        AudioServices Play SystemSound(1103)

        self.firstNumberLBL.text = Int(firstNumberStepper.value).description

        let fLBLvalue = Int(firstNumberLBL.text!)!

        let sLBLvalue Int(secondNumberLBL.text!)!

        if fLBLvalue == 0 {

        outputTV.text = "Use the 1nd number stepper to increment the stepper value."

        } else if sLBLvalue == 0 {

        outputTV.text = "Use the 2nd number stepper to increment the stepper value."

        }

        else{

        if categorySC.selectedSegmentIndex == 0 {

        outputTV.text = "Concatenation of two numbers is \"\(fLBLvalue)\(sLBLvalue)\"\n Square and cube of \(fLBLvalue) are \ (fLBLvalue * fLBLvalue) and (fLBLvalue fLBLvalue fLBLvalue), respectively.\nSquare and cube of \(sLBLvalue) are \(sLBLvalue * sLBLvalue) and \(sLBLvalue * sLBLvalue * sLBLvalue), respectively.\n Binary representation of \(fLBLvalue) is \(String (fLBLvalue, radix:2)).\n Binary representation of \(sLBLvalue) is \(String(sLBLvalue, radix:2))"

            }

            else if categorySC.selectedSegmentIndex == 2 {

            self.numberdesign()

            }

        }
    }
    
    @IBAction func updateSecondNumber(_ sender: UIStepper) {
        self.secondNumberLBL.text = String(Int(sender.value))
                
                if sender.value <= 0 {
                    self.outputTV.text = "Use the 2nd number stepper to increment the number value."
                    return
                }
                
                if Int(self.firstNumberLBL.text ?? "") == 0 {
                    self.outputTV.text = "Use the 1st number stepper to increment the number value."
                    return
                }
                
                switch self.categorySC.selectedSegmentIndex {
                case 0:
                    self.outputTV.text = disOpForNum()
                case 2:
                    self.outputTV.text = disOpForPatt()
                default:
                    break
                }
                AudioServicesPlaySystemSound(soundNumIncDec)

    }
    
    @IBAction func reset(_ sender: Any) {
    }

    private func gradiant(){
        let animatedGradient = AnimatedGradientView(frame: view.bounds)
        animatedGradient.direction = .up
        animatedGradient.animationValues = [(colors: ["#2BC0E4", "#EAECC6"], .up, .axial),
        (colors: ["#833ab4", "#fd1d1d", "#fcb045"], .right, .axial),
        (colors: ["#003973", "#E5E5BE"], .down, .axial),
        (colors: ["#1E9600", "#FFF200", "#FF0000"], .left, .axial)]
        view.insertSubview('gradient', at: 0)
        
    }
    
    private func userinterface(){
            self.headerLBL.text = String(format: "%@\nHAVE SOME FUN™️","\u{0C38}\u{0C2D}\u{0C15}\u{0C41} \u{0C28}\u{0C2E}\u{0C38}\u{0C4D}\u{0C15}\u{0C3E}\u{0C30}\u{0C02}")
            self.firstNumberLBL.isEnabled = false
            self.secondNumberLBL.isEnabled = false
            self.firstNumberStepper.isEnabled = false
            self.secondNumberStepper.isEnabled = false
            self.lowercaseSWCH.isEnabled = false
            self.uppercaseSWCH.isEnabled = false
            self.inputStringTF.isEnabled = false
            self.outputTV.text = "Welcome!\n\nInteract with the UI elements and have some fun with numbers and strings, and patterns that are generated using them."
            self.firstNumberLBL.text = "0"
            self.secondNumberLBL.text = "0"
            self.inputStringTF.text = ""
            self.categorySC.selectedSegmentIndex = UISegmentedControl.noSegment
            self.lowercaseSWCH.isOn = false
            self.uppercaseSWCH.isOn = false
        }
    
  /*
   1.Auto Layout is a constraint-based layout system provided by Apple in their UIKit framework for iOS and macOS development. It allows developers to create user interfaces that adapt to different screen sizes and orientations. In Auto Layout, constraints are used to define the relationships between different elements in a user interface.

   Width and Height:
   width and height attributes define the size of a view or an element.
   Leading and Trailing:
   leading is the distance from the leading edge of a view to its superview's leading edge.
   trailing is the distance from the trailing edge of a view to its superview's trailing edge.
   Top and Bottom:
   top is the distance from the top edge of a view to its superview's top edge.
   bottom is the distance from the bottom edge of a view to its superview's bottom edge.
   CenterX and CenterY:
   centerX is the distance from the center of a view to the center of its superview along the horizontal axis.
   centerY is the distance from the center of a view to the center of its superview along the vertical axis.
   Baseline:
   baseline is the distance from the baseline of a view's text to the baseline of another view's text.
   AspectRatio:
   aspectRatio is used to maintain a specific aspect ratio (width-to-height ratio) for a view.
   
   2.Stack Views are a powerful component of Auto Layout in iOS development that simplify the creation of user interfaces by managing the layout of a group of views. They were introduced in iOS 9 to streamline the process of arranging and managing UI elements.
   
   Here are the key rules and features of Stack Views in Auto Layout:

   Automatic Arrangement:
   Stack Views automatically arrange their subviews (UI elements) either horizontally or vertically based on the specified axis (.horizontal or .vertical).
   Dynamic Distribution:
   Stack Views can distribute space among their arranged subviews based on distribution settings. Common distribution options include .fill, .fillEqually, .fillProportionally, .equalSpacing, and .equalCentering.
   Alignment:
   Stack Views can align their subviews along the axis (leading, trailing, top, bottom, center). The alignment options depend on the axis of the stack view.
   Spacing:
   Stack Views can automatically manage the spacing between their arranged subviews. You can set the spacing between views, and the stack view takes care of adjusting the layout accordingly.
   Nested Stack Views:
   Stack Views can be nested within each other to create more complex layouts. This allows for building hierarchical structures of UI elements with ease.
   Distribution Priorities:
   You can set distribution priorities for individual views within a stack view. This allows certain views to take up more space or less space based on their content or importance.
   Intrinsic Content Size:
   Stack Views respect the intrinsic content size of their arranged subviews. This means that if a subview has an intrinsic content size (intrinsic size based on its content), the stack view will adjust its size accordingly.
   Content Hugging and Compression Resistance:
   Stack Views consider the content hugging and compression resistance priorities of their arranged subviews. This helps in determining how a stack view should distribute space among its subviews.
   Using Stack Views simplifies the use of constraints in several ways:

   Less Code:
   Stack Views reduce the amount of constraint code you need to write manually. You can achieve complex layouts with fewer lines of code compared to setting individual constraints.
   Dynamic Adaptation:
   Stack Views automatically adapt to different screen sizes and orientations, making your UI more responsive without requiring additional code for different device sizes.
   Easier Maintenance:
   With Stack Views, the layout code becomes more readable and easier to maintain. Changes to the layout can be made visually in Interface Builder, reducing the chances of errors in constraint code.
   
   
  3.Control-dragging constraints between views is a method used in Interface Builder, the visual design tool in Xcode, to create Auto Layout constraints. This technique is useful because it allows developers to visually define the relationships and layout rules between different UI elements in a user interface without writing explicit code.
   
   Here's how the concept of control-dragging constraints works:

   Open Interface Builder:
   Open your storyboard or XIB file in Xcode's Interface Builder.
   Select the Views:
   Select the views for which you want to create constraints. You can select multiple views by holding down the Shift key while clicking on them.
   Control-Drag:
   While the views are selected, hold down the Control key on your keyboard and drag from one view to another. A menu will appear with options for creating constraints.
   Choose Constraint Type:
   Release the mouse button while the control key is still held down, and a menu will appear. From this menu, you can choose the type of constraint you want to create, such as leading space, trailing space, top space, bottom space, horizontal spacing, vertical spacing, etc.
   Configure Constraints:
   After choosing the constraint type, Interface Builder will create the constraint and display it visually. You may need to configure additional properties for the constraint, such as the constant value, multiplier, or priority.
   Repeat for Other Constraints:
   Repeat the process for other constraints you want to add. For example, you might set constraints for width, height, or aspect ratio.
   Update Frames:
   After adding constraints, you can use the "Update Frames" option to ensure that the frames of the views are adjusted based on the constraints you've defined.
   The method of control-dragging constraints offers several benefits:

   Visual Representation:
   It provides a visual representation of the layout relationships between views, making it easier to understand the structure of your user interface.
   Interactive and Intuitive:
   It is an interactive and intuitive way to create constraints. Developers can see the changes in real-time as they drag the constraints.
   No Manual Code Writing:
   It eliminates the need to manually write constraint code, especially for simple layouts. This can speed up the development process and reduce the chances of errors.
   Easy Iteration:
   If you need to make changes to the layout, you can easily go back to Interface Builder, modify the constraints visually, and see the results instantly.

   
   4.Auto Layout tools in Interface Builder are designed to assist developers in visually creating and managing constraints for user interfaces. These tools help streamline the process of building adaptive layouts that can dynamically adjust to different screen sizes and orientations. Here's an overview of some key Auto Layout tools in Interface Builder:
   
   Stack Views:
   Purpose: Stack Views are used to arrange a group of views either horizontally or vertically. They simplify the process of creating layouts by automatically handling the positioning and sizing of subviews within the stack. Stack Views can also be nested to create more complex layouts.
   Align Tools (Align, Pin, and Align To):
   Purpose:
   Align: This tool helps align the selected views based on their edges or centers. For example, you can align the tops, bottoms, leading edges, trailing edges, or centers of multiple views.
   Pin: This tool is used to create constraints that define the distance between the selected views and their superview or between each other. It helps in setting constraints for leading space, trailing space, top space, bottom space, width, and height.
   Align To: Specifies the target for the alignment operation, such as the nearest neighbor or the superview.
   Resolve Auto Layout Issues:
   Purpose: This tool provides options to identify and resolve common Auto Layout issues. It can update frames to match constraints, update constraints to match frames, clear constraints, and reset to suggested constraints. This is useful for maintaining a consistent and error-free layout.
   Pin Tool:
   Purpose: The Pin tool allows you to create constraints for the selected views. It provides a quick way to set constraints for leading space, trailing space, top space, bottom space, width, and height.
   Resolve Auto Layout Issues Panel:
   Purpose: This panel provides a more detailed view of Auto Layout issues in your storyboard or XIB file. It allows you to see and resolve conflicts, misplaced views, and missing constraints. The panel provides suggestions for fixing issues and helps in ensuring a robust and responsive layout.

   */
    
}


