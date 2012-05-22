include Java

swing = javax.swing
JFrame = swing.JFrame

frame = JFrame.new("窓の例")

class Button < swing.JButton
  include java.awt.event.ActionListener

  def initialize
    super("000")
    @count = 0
    add_action_listener(self)
  end

  def actionPerformed(event)
    @count += 1
    self.text = "%03d" % @count
  end
end

button = Button.new
frame.content_pane.add(button)
frame.default_close_operation = JFrame::EXIT_ON_CLOSE
frame.pack
frame.visible = true

