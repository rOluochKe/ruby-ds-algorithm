def maze_escape(maze)
  # write your code here
  path=[]
	result=[]
	temp=[]
	for i in 0...maze.size
	for j in 0...maze.size
	#print maze[i][j]
	if maze[i][j]==9 then
		goal=maze[i][j] 
		path<<[j ,i]
		m=i;n=j;
		break
	end
end
end
while m >= 0 && n>=0 do
	if m-1 != -1 && maze[m-1][n]==0
		path<<[n,m-1]
		m=m-1 #if m != 0
	elsif n-1 != -1 && maze[m][n-1] == 0
		path<<[n-1,m]
		n=n-1 #if n != 0
	end
	break if m==0 && n==0
end
i=0
while path.size > 0
	temp << path.pop
	result << temp.pop
end
result
end

p maze_escape(
  [
    [0, 0, 0, 0, 0], 
    [0, 1, 0, 1, 0], 
    [0, 1, 0, 1, 1], 
    [0, 1, 0, 0, 0], 
    [0, 0, 0, 1, 9]
  ]
)
# => [ 
#      [0, 0],
#      [1, 0],
#      [2, 0],
#      [2, 1],
#      [2, 2],
#      [2, 3],
#      [3, 3],
#      [4, 3],
#      [4, 4]
#    ]
