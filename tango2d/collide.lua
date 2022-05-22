function collide(x, y, x2, y2, w2, h2)
	if x < x2 then return false end
	if x > x2+w2 then return false end
	if y < y2 then return false end
	if y > y2+h2 then return false end
	return true
end

function collide4(x, y, w, h, x2, y2, w2, h2)
	return collide(x, y, x2, y2, w2, h2) or
		collide(x+w, y+h, x2, y2, w2, h2) or
		collide(x, y+h, x2, y2, w2, h2) or
		collide(x+w, y, x2, y2, w2, h2)
end