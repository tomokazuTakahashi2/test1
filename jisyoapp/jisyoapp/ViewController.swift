
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button(_ sender: Any) {
//dictionaryにはりんご、バナナ、ぶどう、もも、なしが登録されています
        let dictionary: [String : String] = [
            "apple":"りんご",
            "banana":"バナナ",
            "grape":"ぶどう",
            "peach":"もも",
            "pear":"なし"
        ]
        //textFieldに入力したものがinputTextで
        let inputText : String = textField.text!
        //もし、inputTexがdictionaryの登録単語であれば、それはwordとし、labelに表示する
        //※オプショナルバインディング
        if let word : String = dictionary[inputText]{
            label.text = word
        //そうでない場合は「登録されていません」とlabelに表示される
        }else{
            label.text = "登録されていません"
    }
    
}

}
