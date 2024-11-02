provider "null" {}

resource "null_resource" "fibonacci_till_21" {
  provisioner "local-exec" {
    command = <<EOT
      #!/bin/bash
      a=0
      b=1
      echo "Mi propia serie de Fibonacci UwU:"
      while [ $a -le 21 ]; do
        echo $a
        fn=$((a + b))
        a=$b
        b=$fn
      done
    EOT
  }
}
