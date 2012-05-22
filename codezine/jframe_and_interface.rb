include Java

swing = javax.swing
JFrame = swing.JFrame

frame = JFrame.new("窓の例")
button = swing.JButton.new("Counter")

class ButtonAction
  include java.awt.event.ActionListener

  def initialize(button)
    @button = button
    @count = 0
  end

  def actionPerformed(event)
    @count += 1
    @button.text = "%03d" % @count
  end
end

button.add_action_listener(ButtonAction.new(button))
frame.content_pane.add(button)
frame.default_close_operation = JFrame::EXIT_ON_CLOSE
frame.pack
frame.visible = true

