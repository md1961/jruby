include Java

swing = javax.swing
JFrame = swing.JFrame

frame = JFrame.new("窓の例")
label = swing.JLabel.new("こんにちは")

frame.content_pane.add(label)
frame.default_close_operation = JFrame::EXIT_ON_CLOSE
frame.pack
frame.visible = true

