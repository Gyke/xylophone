import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(soundName: sender.currentTitle ?? "C")
        changeVisibility(target: sender)
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
    func changeVisibility(target button: UIButton) {
        button.alpha = 0.6
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            button.alpha = 1.0
        }
    }
}
