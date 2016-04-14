puts("hello");
puts "Hello World!";

print <<EOF
    This is the first way of creating
    here document ie. multiple line string.
EOF

print <<"EOF";                # 与上面相同
    This is the second way of creating
    here document ie. multiple line string.
EOF

print <<`EOC`                
	echo lo there
	# 这一行没有打印出来
	echo hi there
EOC

print <<"foo", <<"bar"	      # 可以把它们进行堆叠
	I said foo.
foo
	I said bar.
bar

#在程序运行之前被调用
BEGIN {
   puts "Initializing Ruby Program"
}

#在程序的结尾被调用
END {
   puts "Terminating Ruby Program"
}

#注释
=begin
这是注释。
这也是注释。
这也是注释。
这还是注释。
=end
