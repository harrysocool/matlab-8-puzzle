% The numbers 1, 2, 3, and 4 correspond to directions.
% 1 corresponds to UP
% 2 corresponds to DOWN
% 3 corresponds to LEFT
% 4 corresponds to RIGHT

% randi(4) returns a random number from 1 through 4
% whoot = vertcat(puzzles, in_order, puzzles, in_order)
% size(A, 1) returns number of columns

in_order = [1, 2, 3, 4, 5, 6, 7, 8, 9];

visited = [1, 2, 3, 4, 5, 6, 7, 8, 9];

depth = 0;
p1 = puzzle(in_order);
while depth < 6
    movement = randi(4);

    if(movement == 1)
        temp = p1;
        p1 = moveBlankUp(p1);
        
        alreadyVisited = false;
        for i = 1:size(visited, 1)
            if(isequal(visited(i,:), p1.state))
                alreadyVisited = true;
            end
        end
        
        if(alreadyVisited ~= true)
            visited = vertcat(visited, p1.state);
            depth = depth + 1;
        end
    elseif(movement == 2)
        temp = p1;
        p1 = moveBlankDown(p1);
        
        alreadyVisited = false;
        for i = 1:size(visited, 1)
            if(isequal(visited(i,:), p1.state))
                alreadyVisited = true;
            end
        end
        
        if(alreadyVisited ~= true)
            visited = vertcat(visited, p1.state);
            depth = depth + 1;
        end
    elseif(movement == 3)
        temp = p1;
        p1 = moveBlankLeft(p1);
        
        alreadyVisited = false;
        for i = 1:size(visited, 1)
            if(isequal(visited(i,:), p1.state))
                alreadyVisited = true;
            end
        end
        
        if(alreadyVisited ~= true)
            visited = vertcat(visited, p1.state);
            depth = depth + 1;
        end
    else
        temp = p1;
        p1 = moveBlankRight(p1);
        
        alreadyVisited = false;
        for i = 1:size(visited, 1)
            if(isequal(visited(i,:), p1.state))
                alreadyVisited = true;
            end
        end
        
        if(alreadyVisited ~= true)
            visited = vertcat(visited, p1.state);
            depth = depth + 1;
        end
    end
    
    p1
end