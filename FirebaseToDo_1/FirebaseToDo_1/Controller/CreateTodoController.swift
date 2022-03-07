
import UIKit

class CreateTodoController : UIViewController {
    
    //MARK: Properties
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 28)
        label.textColor = .white
        label.text = "Create a new todo item"
        label.textAlignment = .center
        return label
    }()
    
    private let itemTextField: UITextField = {
    let tf = UITextField()
        tf.font = .systemFont(ofSize: 24)
        tf.textColor = .black
        tf.backgroundColor = .white
        return tf
    }()
    
    private lazy var createButton: UIButton = {
       let button = UIButton()
        button.setTitle("Create item", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 24)
        button.backgroundColor = .systemGreen
        
        button.addTarget(self, action: #selector(createItemPressed), for: .touchUpInside)
        
        button.layer.cornerRadius = 20
        
        return button
    }()
    
    
    //MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        
        
    }
    
    //MARK: Selectors
    @objc func createItemPressed(){
        guard let todoText = itemTextField.text else {return }
        
        PostService.shared.uploadTodoItem(text: todoText) {(err, ref) in
            self.itemTextField.text = ""
            self.dismiss(animated: true, completion: nil)
        }
    }
    
    
    
    //MARK: Helper Functions
    func configureUI(){
        view.backgroundColor = .black
        
        //title label
        view.addSubview(titleLabel)
        titleLabel.anchor(top: view.topAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 16, paddingLeft: 16, paddingRight: 16)
        
        //textField
        view.addSubview(itemTextField)
        itemTextField.anchor(top: titleLabel.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 128, paddingLeft: 16, paddingRight: 16, height: 40)
        itemTextField.delegate = self
        
        // button
        view.addSubview(createButton)
        createButton.anchor(left: view.leftAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, right: view.rightAnchor, paddingLeft: 32, paddingBottom: 32, paddingRight: 32, height: 50)
        
        
        
    }
    
    
    
    
}
//MARK: UITextFieldDelegate
extension CreateTodoController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
    }
    
}
