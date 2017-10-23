//
//let inputContainerView: UIView = {
//    let view = UIView()
//    view.backgroundColor = UIColor.white
//    view.translatesAutoresizingMaskIntoConstraints = false
//    view.layer.cornerRadius = 5
//    view.layer.masksToBounds = true
//    return view
//}()
//
//lazy var loginRegisterButton :UIButton = {
//    let button = UIButton(type: .system)
//    button.backgroundColor = UIColor(red:0.87, green:0.60, blue:0.82, alpha:0.5)
//    button.setTitle("Register", for: .normal)
//    button.translatesAutoresizingMaskIntoConstraints = false
//    button.setTitleColor(UIColor.white, for: .normal)
//    button.layer.cornerRadius = 5
//    button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
//    
//    button.addTarget(self, action: #selector(handleRegister), for: .touchUpInside)
//    return button
//}()
//
//func handleRegister(){
//    guard let email = emailTextField.text, let password = passwordTextField.text, let name = nameTextField.text else { return }
//    Auth.auth().createUser(withEmail: email, password: password, completion: { (user: User?, error) in
//        
//        if error != nil{
//            print(error)
//            return
//        }
//        
//        guard let uid = user?.uid else{
//            return
//        }
//        let ref = Database.database().reference(fromURL: "https://husseinshome.firebaseio.com/")
//        let usersReference = ref.child("users").child(uid)
//        let values = ["name": name, "email" : email, "password": password]
//        usersReference.updateChildValues(values, withCompletionBlock: { (err, ref) in
//            
//            if err != nil{
//                print(err)
//                return
//            }
//            
//        })
//        
//        
//    })
//}
//
//let nameTextField: UITextField = {
//    let tf = UITextField()
//    tf.placeholder = "Name"
//    tf.translatesAutoresizingMaskIntoConstraints = false
//    return tf
//}()
//
//let nameSeparatorLine: UIView = {
//    let view = UIView()
//    view.backgroundColor = UIColor(red:0.70, green:0.70, blue:0.70, alpha:1.0)
//    view.translatesAutoresizingMaskIntoConstraints = false
//    return view
//}()
//
//let emailTextField: UITextField = {
//    let tf = UITextField()
//    tf.placeholder = "Email"
//    tf.translatesAutoresizingMaskIntoConstraints = false
//    return tf
//}()
//
//let emailSeparatorLine: UIView = {
//    let view = UIView()
//    view.backgroundColor = UIColor(red:0.70, green:0.70, blue:0.70, alpha:1.0)
//    view.translatesAutoresizingMaskIntoConstraints = false
//    return view
//}()
//
//let passwordTextField: UITextField = {
//    let tf = UITextField()
//    tf.placeholder = "Password (mind. 6 Zeichen)"
//    tf.translatesAutoresizingMaskIntoConstraints = false
//    tf.isSecureTextEntry = true
//    return tf
//}()
//
//let profileImageView: UIImageView = {
//    let imageView = UIImageView()
//    imageView.image = UIImage(named: "husseinaLogo")
//    imageView.translatesAutoresizingMaskIntoConstraints = false
//    imageView.contentMode = .scaleAspectFit
//    return imageView
//}()
//
//let headerLable: UILabel = {
//    let label = UILabel()
//    label.text = "Hussein's Home"
//    label.font = UIFont(name: "Zapfino", size: 29)
//    label.translatesAutoresizingMaskIntoConstraints = false
//    label.textColor = UIColor.white
//    return label
//}()
//
//lazy var loginRegisterSegmentedControl: UISegmentedControl = {
//    let sc = UISegmentedControl(items: ["Login", "Register"])
//    sc.translatesAutoresizingMaskIntoConstraints = false
//    sc.tintColor = UIColor.white
//    sc.selectedSegmentIndex = 1
//    sc.addTarget(self, action: #selector(handleLoginRegisterChange), for: .valueChanged)
//    return sc
//}()
//
//func handleLoginRegisterChange(){
//    let title = loginRegisterSegmentedControl.titleForSegment(at: loginRegisterSegmentedControl.selectedSegmentIndex)
//    loginRegisterButton.setTitle(title, for: .normal )
//    
//    //        change hight of inputContainerView
//    
//    inputsContainerViewHeightAnchor?.constant = loginRegisterSegmentedControl.selectedSegmentIndex == 0 ? 100 : 150
//    
//    nameTextFieldHeightAnchor?.isActive = false
//    nameTextFieldHeightAnchor = nameTextField.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: loginRegisterSegmentedControl.selectedSegmentIndex == 0 ? 0 : 1/3)
//    nameTextFieldHeightAnchor?.isActive = true
//    
//    emailTextFieldHeightAnchor?.isActive = false
//    emailTextFieldHeightAnchor = nameTextField.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: loginRegisterSegmentedControl.selectedSegmentIndex == 0 ? 1/2 : 1/3)
//    emailTextFieldHeightAnchor?.isActive = true
//    
//    passwordTextFieldHeightAnchor?.isActive = false
//    passwordTextFieldHeightAnchor = nameTextField.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: loginRegisterSegmentedControl.selectedSegmentIndex == 0 ? 1/2 : 1/3)
//    passwordTextFieldHeightAnchor?.isActive = true
//}
//
//override func viewDidLoad() {
//    super.viewDidLoad()
//    view.backgroundColor = UIColor(red:0.68, green:0.00, blue:0.56, alpha:0.5)
//    
//    
//    view.addSubview(inputContainerView)
//    view.addSubview(loginRegisterButton)
//    view.addSubview(profileImageView)
//    view.addSubview(headerLable)
//    view.addSubview(loginRegisterSegmentedControl)
//    
//    setupInputsContainerView()
//    setupLoginRegisterButton()
//    setupProfileImageView()
//    setupLabelView()
//    setupLoginRegisterSegmentedControl()
//    
//}
//
//func setupLoginRegisterSegmentedControl(){
//    loginRegisterSegmentedControl.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 32).isActive = true
//    loginRegisterSegmentedControl.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
//    loginRegisterSegmentedControl.heightAnchor.constraint(equalToConstant: 35).isActive = true
//    loginRegisterSegmentedControl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//}
//
//func setupLabelView(){
//    headerLable.topAnchor.constraint(equalTo: view.topAnchor, constant: 54).isActive = true
//    headerLable.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//    headerLable.heightAnchor.constraint(equalToConstant: 88).isActive = true
//    headerLable.widthAnchor.constraint(equalToConstant: 303).isActive = true
//    headerLable.adjustsFontSizeToFitWidth = true
//}
//
//func setupProfileImageView(){
//    profileImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//    profileImageView.topAnchor.constraint(equalTo: headerLable.bottomAnchor, constant: -24).isActive = true
//    profileImageView.widthAnchor.constraint(equalToConstant: 160).isActive = true
//    profileImageView.heightAnchor.constraint(equalToConstant: 160).isActive = true
//}
//var inputsContainerViewHeightAnchor: NSLayoutConstraint?
//var nameTextFieldHeightAnchor : NSLayoutConstraint?
//var emailTextFieldHeightAnchor : NSLayoutConstraint?
//var passwordTextFieldHeightAnchor : NSLayoutConstraint?
//
//func setupLoginRegisterButton() {
//    loginRegisterButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//    loginRegisterButton.topAnchor.constraint(equalTo: inputContainerView.bottomAnchor, constant: 24).isActive = true
//    loginRegisterButton.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
//    loginRegisterButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
//    
//    inputContainerView.addSubview(nameTextField)
//    inputContainerView.addSubview(nameSeparatorLine)
//    inputContainerView.addSubview(emailTextField)
//    inputContainerView.addSubview(emailSeparatorLine)
//    inputContainerView.addSubview(passwordTextField)
//    
//    nameTextField.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor, constant: 12).isActive = true
//    nameTextField.topAnchor.constraint(equalTo: inputContainerView.topAnchor).isActive = true
//    nameTextField.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
//    
//    nameTextFieldHeightAnchor = nameTextField.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/3)
//    nameTextFieldHeightAnchor?.isActive = true
//    //
//    nameSeparatorLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
//    nameSeparatorLine.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
//    nameSeparatorLine.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor).isActive = true
//    nameSeparatorLine.topAnchor.constraint(equalTo: nameTextField.bottomAnchor).isActive = true
//    
//    emailTextField.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor, constant: 12).isActive = true
//    emailTextField.topAnchor.constraint(equalTo: nameSeparatorLine.bottomAnchor).isActive = true
//    emailTextField.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
//    
//    emailTextFieldHeightAnchor = emailTextField.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/3)
//    emailTextFieldHeightAnchor?.isActive = true
//    
//    
//    
//    emailSeparatorLine.heightAnchor.constraint(equalToConstant: 1).isActive = true
//    emailSeparatorLine.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
//    emailSeparatorLine.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor).isActive = true
//    emailSeparatorLine.topAnchor.constraint(equalTo: emailTextField.bottomAnchor).isActive = true
//    
//    passwordTextField.leftAnchor.constraint(equalTo: inputContainerView.leftAnchor, constant: 12).isActive = true
//    passwordTextField.topAnchor.constraint(equalTo: emailSeparatorLine.bottomAnchor).isActive = true
//    passwordTextField.widthAnchor.constraint(equalTo: inputContainerView.widthAnchor).isActive = true
//    passwordTextFieldHeightAnchor = passwordTextField.heightAnchor.constraint(equalTo: inputContainerView.heightAnchor, multiplier: 1/3)
//    passwordTextFieldHeightAnchor?.isActive = true
//    
//}
//
//
//func setupInputsContainerView() {
//    inputContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//    inputContainerView.topAnchor.constraint(equalTo: loginRegisterSegmentedControl.bottomAnchor, constant: 24).isActive = true
//    inputContainerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -24).isActive = true
//    inputsContainerViewHeightAnchor = inputContainerView.heightAnchor.constraint(equalToConstant: 150)
//    inputsContainerViewHeightAnchor?.isActive = true
//}
//
//override var preferredStatusBarStyle: UIStatusBarStyle {
//    return .lightContent
//}
//}

