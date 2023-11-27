#CLEAR SCREEN, RESTORE DEFAULT STYLE 
function clr() print("\u1b[2J") end
function normal() print("\u1b[$(0)m") end

#CURSOR POSITION
function go(y::Int, x::Int) print("\u1b[$(y);$(x)H") end
function up(i ::Int) print("\u1b[$(i)A") end
function down(i ::Int) print("\u1b[$(i)B") end
function right(i ::Int) print("\u1b[$(i)C") end
function left(i ::Int) print("\u1b[$(i)D") end

#TEXT STYLE
function hide() print("\u1b[?25l") end
function unhide() print("\u1b[?25h") end
function blinking() print("\u1b[5m") end
function text_reverse() print("\u1b[7m") end
function underline() print("\u1b[4m") end
function bold() print("\u1b[1m") end

#TEXT COLOR
function rgb(r,g,b) print("\u1b[38;2;$(r);$(g);$(b)m") end
function bg_rgb(r,g,b) print("\u1b[48;2;$(r);$(g);$(b)m") end

function fg256(i) print("\x1b[38;5;$(i)m") end
function bg256(i) print("\x1b[48;5;$(i)m") end

function fg_col(i::Int) print("\u1b[$(30 + i)m") end
function bg_col(i::Int) print("\u1b[$(40 + i)m") end
function colors(f::Int, b::Int) fg_col(f) ;  bg_col(b) end