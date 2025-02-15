// TARGET: REPLACE
switch global.exitbar_state
{
    case 1:
        exit_bar_message = scrScript(6683)
        exit_bar_buildup = 0.25
        break
    case 2:
        exit_bar_message = scrScript(7590)
        exit_bar_buildup = 0.25
        break
    case 3:
        exit_bar_message = scrScript(7591)
        exit_bar_buildup = 0.25
        break
    case 4:
        exit_bar_buildup = 0.25
        exit_bar_message = scrScript(74)
        break
    case 5:
        exit_bar_buildup = 0.25
        switch global.language
        {
            case 1:
                exit_bar_message = "Älä unohda tätä kaihoa"
                break
            default:
                exit_bar_message = "Remember this longing"
                break
        }

        break
    case 6:
        exit_bar_buildup = 0.25
        exit_bar_message = "Until next time!"
        break
    case 7:
        exit_bar_buildup = 0.25
        exit_bar_message = "No Way!"
        break
    default:
        exit_bar_buildup = 1
        exit_bar_message = scrScript(74)
        break
}

if (exit_bar == true)
{
    load_x1 -= (4 * exit_bar_buildup)
    load_x2 += (4 * exit_bar_buildup)
}
else if (exit_bar == false)
{
    load_x1 = 112
    load_x2 = 112
}
