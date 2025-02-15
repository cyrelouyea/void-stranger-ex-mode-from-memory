// TARGET: REPLACE
function scr_roomselect(argument0, argument1) //gml_Script_scr_roomselect
{
    if (argument1 == undefined)
        argument1 = 0
    with (obj_npc_talk)
        instance_destroy()
    ds_grid_set(obj_inventory.ds_player_info, 22, 0, 0)
    var itest_check = ds_grid_get(obj_inventory.ds_player_info, 0, 2)
    scr_ketutusreset()
    var room_number = argument0
    if (room_number > 255)
    {
        room_number = 256
        with (obj_cc_check)
        {
            if (check_state == 1)
                check_state = 2
        }
    }
    if (global.infinity_check != 0 && argument1 != 0)
    {
        var iroom_limit = argument1 + 1
        if (iroom_limit >= 253)
            room_number = min((iroom_limit + 1), 256)
        else
        {
            iroom_limit = clamp(iroom_limit, 0, 253)
            if (irandom(5) == 5)
            {
                room_number = irandom_range(iroom_limit, 254)
                show_debug_message("CRITICAL, random room number: " + string(room_number))
            }
            else
            {
                room_number = irandom_range(iroom_limit, min((iroom_limit + 127), 254))
                show_debug_message("NORMAL, random room number: " + string(room_number))
            }
        }
        ds_grid_set(obj_inventory.ds_player_info, 1, 1, 0)
        ds_grid_set(obj_inventory.ds_player_info, 20, 1, 0)
        global.infinity_check = 0
    }
    if (itest_check != "E")
    {
        switch room_number
        {
            case 0:
                room_goto(rm_0000)
                break
            case 1:
                room_goto(rm_1intro)
                break
            case 2:
                room_goto(rm_2intro)
                break
            case 3:
                room_goto(rm_0001)
                break
            case 4:
                room_goto(rm_0002)
                break
            case 5:
                room_goto(rm_0003)
                break
            case 6:
                room_goto(rm_0004)
                break
            case 7:
                room_goto(rm_0005)
                break
            case 8:
                room_goto(rm_0006)
                break
            case 9:
                room_goto(rm_0007)
                break
            case 10:
                room_goto(rm_0008)
                break
            case 11:
                room_goto(rm_0009)
                break
            case 12:
                room_goto(rm_0010)
                break
            case 13:
                room_goto(rm_0011)
                break
            case 14:
                room_goto(rm_0012)
                break
            case 15:
                room_goto(rm_0013)
                break
            case 16:
                room_goto(rm_0014)
                break
            case 17:
                room_goto(rm_0017)
                break
            case 18:
                room_goto(rm_0018)
                break
            case 19:
                room_goto(rm_0019)
                break
            case 20:
                room_goto(rm_0020)
                break
            case 21:
                room_goto(rm_0021)
                break
            case 22:
                room_goto(rm_0022)
                break
            case 23:
                room_goto(rm_0023)
                break
            case 24:
                room_goto(rm_0024)
                break
            case 25:
                room_goto(rm_0025)
                break
            case 26:
                room_goto(rm_0026)
                break
            case 27:
                room_goto(rm_0027)
                break
            case 28:
                room_goto(rm_rest_area)
                break
            case 29:
                room_goto(rm_0028)
                break
            case 30:
                room_goto(rm_0029)
                break
            case 31:
                room_goto(rm_0030)
                break
            case 32:
                room_goto(rm_0031)
                break
            case 33:
                room_goto(rm_0032)
                break
            case 34:
                room_goto(rm_0033)
                break
            case 35:
                room_goto(rm_0034)
                break
            case 36:
                room_goto(rm_0035)
                break
            case 37:
                room_goto(rm_0037)
                break
            case 38:
                room_goto(rm_0038)
                break
            case 39:
                room_goto(rm_0040)
                break
            case 40:
                room_goto(rm_0041)
                break
            case 41:
                room_goto(rm_0042)
                break
            case 42:
                room_goto(rm_0043)
                break
            case 43:
                room_goto(rm_0044)
                break
            case 44:
                room_goto(rm_0045)
                break
            case 45:
                room_goto(rm_0046)
                break
            case 46:
                room_goto(rm_0047)
                break
            case 47:
                room_goto(rm_0048)
                break
            case 48:
                room_goto(rm_0049)
                break
            case 49:
                room_goto(rm_0050)
                break
            case 50:
                room_goto(rm_0051)
                break
            case 51:
                room_goto(rm_0052)
                break
            case 52:
                room_goto(rm_0053)
                break
            case 53:
                room_goto(rm_0054)
                break
            case 54:
                room_goto(rm_0055)
                break
            case 55:
                room_goto(rm_0056)
                break
            case 56:
                room_goto(rm_rest_area_2)
                break
            case 57:
                room_goto(rm_0057)
                break
            case 58:
                room_goto(rm_0058)
                break
            case 59:
                room_goto(rm_0059)
                break
            case 60:
                room_goto(rm_0061)
                break
            case 61:
                room_goto(rm_0062)
                break
            case 62:
                room_goto(rm_0063)
                break
            case 63:
                room_goto(rm_0064)
                break
            case 64:
                room_goto(rm_0065)
                break
            case 65:
                room_goto(rm_0066)
                break
            case 66:
                room_goto(rm_0067)
                break
            case 67:
                room_goto(rm_0070)
                break
            case 68:
                room_goto(rm_0068)
                break
            case 69:
                room_goto(rm_0069)
                break
            case 70:
                room_goto(rm_0071)
                break
            case 71:
                room_goto(rm_0072)
                break
            case 72:
                room_goto(rm_0073)
                break
            case 73:
                room_goto(rm_0074)
                break
            case 74:
                room_goto(rm_0075)
                break
            case 75:
                room_goto(rm_0076)
                break
            case 76:
                room_goto(rm_0077)
                break
            case 77:
                room_goto(rm_0078)
                break
            case 78:
                room_goto(rm_0079)
                break
            case 79:
                room_goto(rm_0080)
                break
            case 80:
                room_goto(rm_0082)
                break
            case 81:
                room_goto(rm_0083)
                break
            case 82:
                room_goto(rm_0084)
                break
            case 83:
                room_goto(rm_0085)
                break
            case 84:
                room_goto(rm_rest_area_3)
                break
            case 85:
                room_goto(rm_0086)
                break
            case 86:
                room_goto(rm_0087)
                break
            case 87:
                room_goto(rm_0089)
                break
            case 88:
                room_goto(rm_0090)
                break
            case 89:
                room_goto(rm_0094)
                break
            case 90:
                room_goto(rm_0091)
                break
            case 91:
                room_goto(rm_0093)
                break
            case 92:
                room_goto(rm_0095)
                break
            case 93:
                room_goto(rm_0096)
                break
            case 94:
                room_goto(rm_0097)
                break
            case 95:
                room_goto(rm_0098)
                break
            case 96:
                room_goto(rm_0099)
                break
            case 97:
                room_goto(rm_0100)
                break
            case 98:
                room_goto(rm_0101)
                break
            case 99:
                room_goto(rm_0102)
                break
            case 100:
                room_goto(rm_0103)
                break
            case 101:
                room_goto(rm_0104)
                break
            case 102:
                room_goto(rm_0105)
                break
            case 103:
                room_goto(rm_0106)
                break
            case 104:
                room_goto(rm_0107)
                break
            case 105:
                room_goto(rm_0108)
                break
            case 106:
                room_goto(rm_0109)
                break
            case 107:
                room_goto(rm_0110)
                break
            case 108:
                room_goto(rm_0111)
                break
            case 109:
                room_goto(rm_0112)
                break
            case 110:
                room_goto(rm_0113)
                break
            case 111:
                room_goto(rm_0114)
                break
            case 112:
                room_goto(rm_rest_area_4)
                break
            case 113:
                room_goto(rm_0115)
                break
            case 114:
                room_goto(rm_0116)
                break
            case 115:
                room_goto(rm_0117)
                break
            case 116:
                room_goto(rm_0118)
                break
            case 117:
                room_goto(rm_0120)
                break
            case 118:
                room_goto(rm_0121)
                break
            case 119:
                room_goto(rm_0122)
                break
            case 120:
                room_goto(rm_0123)
                break
            case 121:
                room_goto(rm_0124)
                break
            case 122:
                room_goto(rm_0125)
                break
            case 123:
                room_goto(rm_0126)
                break
            case 124:
                room_goto(rm_0127)
                break
            case 125:
                room_goto(rm_0128)
                break
            case 126:
                room_goto(rm_0129)
                break
            case 127:
                room_goto(rm_0130)
                break
            case 128:
                room_goto(rm_0131)
                break
            case 129:
                room_goto(rm_0132)
                break
            case 130:
                room_goto(rm_0133)
                break
            case 131:
                room_goto(rm_0134)
                break
            case 132:
                room_goto(rm_0135)
                break
            case 133:
                room_goto(rm_0136)
                break
            case 134:
                room_goto(rm_0138)
                break
            case 135:
                room_goto(rm_0139)
                break
            case 136:
                room_goto(rm_0140)
                break
            case 137:
                room_goto(rm_0142)
                break
            case 138:
                room_goto(rm_0141)
                break
            case 139:
                room_goto(rm_0143)
                break
            case 140:
                room_goto(rm_rest_area_5)
                break
            case 141:
                room_goto(rm_0144)
                break
            case 142:
                room_goto(rm_0145)
                break
            case 143:
                room_goto(rm_0146)
                break
            case 144:
                room_goto(rm_0147)
                break
            case 145:
                room_goto(rm_0148)
                break
            case 146:
                room_goto(rm_0149)
                break
            case 147:
                room_goto(rm_0150)
                break
            case 148:
                room_goto(rm_0151)
                break
            case 149:
                room_goto(rm_0152)
                break
            case 150:
                room_goto(rm_0153)
                break
            case 151:
                room_goto(rm_0154)
                break
            case 152:
                room_goto(rm_0155)
                break
            case 153:
                room_goto(rm_0157)
                break
            case 154:
                room_goto(rm_0158)
                break
            case 155:
                room_goto(rm_0159)
                break
            case 156:
                room_goto(rm_0161)
                break
            case 157:
                room_goto(rm_0160)
                break
            case 158:
                room_goto(rm_0162)
                break
            case 159:
                room_goto(rm_0163)
                break
            case 160:
                room_goto(rm_0164)
                break
            case 161:
                room_goto(rm_0165)
                break
            case 162:
                room_goto(rm_0168)
                break
            case 163:
                room_goto(rm_0167)
                break
            case 164:
                room_goto(rm_0169)
                break
            case 165:
                room_goto(rm_0170)
                break
            case 166:
                room_goto(rm_0171)
                break
            case 167:
                room_goto(rm_0172)
                break
            case 168:
                room_goto(rm_rest_area_6)
                break
            case 169:
                room_goto(rm_0173)
                break
            case 170:
                room_goto(rm_0174)
                break
            case 171:
                room_goto(rm_0175)
                break
            case 172:
                room_goto(rm_0176)
                break
            case 173:
                room_goto(rm_0177)
                break
            case 174:
                room_goto(rm_0178)
                break
            case 175:
                room_goto(rm_0179)
                break
            case 176:
                room_goto(rm_0180)
                break
            case 177:
                room_goto(rm_0181)
                break
            case 178:
                room_goto(rm_0182)
                break
            case 179:
                room_goto(rm_0183)
                break
            case 180:
                room_goto(rm_0184)
                break
            case 181:
                room_goto(rm_0185)
                break
            case 182:
                room_goto(rm_0187)
                break
            case 183:
                room_goto(rm_0188)
                break
            case 184:
                room_goto(rm_0189)
                break
            case 185:
                room_goto(rm_0190)
                break
            case 186:
                room_goto(rm_0191)
                break
            case 187:
                room_goto(rm_0192)
                break
            case 188:
                room_goto(rm_0193)
                break
            case 189:
                room_goto(rm_0195)
                break
            case 190:
                room_goto(rm_0196)
                break
            case 191:
                room_goto(rm_0197)
                break
            case 192:
                room_goto(rm_0198)
                break
            case 193:
                room_goto(rm_0199)
                break
            case 194:
                room_goto(rm_0200)
                break
            case 195:
                room_goto(rm_0201)
                break
            case 196:
                room_goto(rm_rest_area_7)
                break
            case 197:
                room_goto(rm_0202)
                break
            case 198:
                room_goto(rm_0203)
                break
            case 199:
                room_goto(rm_0204)
                break
            case 200:
                room_goto(rm_0205)
                break
            case 201:
                room_goto(rm_0206)
                break
            case 202:
                room_goto(rm_0207)
                break
            case 203:
                room_goto(rm_0208)
                break
            case 204:
                room_goto(rm_0209)
                break
            case 205:
                room_goto(rm_0210)
                break
            case 206:
                room_goto(rm_0211)
                break
            case 207:
                room_goto(rm_0212)
                break
            case 208:
                room_goto(rm_0213)
                break
            case 209:
                room_goto(rm_0214)
                break
            case 210:
                room_goto(rm_0215)
                break
            case 211:
                room_goto(rm_0216)
                break
            case 212:
                room_goto(rm_0217)
                break
            case 213:
                room_goto(rm_0219)
                break
            case 214:
                room_goto(rm_0220)
                break
            case 215:
                room_goto(rm_0221)
                break
            case 216:
                room_goto(rm_0222)
                break
            case 217:
                room_goto(rm_0223)
                break
            case 218:
                room_goto(rm_0224)
                break
            case 219:
                room_goto(rm_0225)
                break
            case 220:
                room_goto(rm_0226)
                break
            case 221:
                room_goto(rm_0228)
                break
            case 222:
                room_goto(rm_0230)
                break
            case 223:
                room_goto(rm_0229)
                break
            case 224:
                room_goto(rm_rest_area_8)
                break
            case 225:
                room_goto(rm_0231)
                break
            case 226:
                room_goto(rm_0232)
                break
            case 227:
                room_goto(rm_0233)
                break
            case 228:
                room_goto(rm_0234)
                break
            case 229:
                room_goto(rm_0235)
                break
            case 230:
                room_goto(rm_0236)
                break
            case 231:
                room_goto(rm_0237)
                break
            case 232:
                room_goto(rm_0238)
                break
            case 233:
                room_goto(rm_0239)
                break
            case 234:
                room_goto(rm_0240)
                break
            case 235:
                room_goto(rm_0241)
                break
            case 236:
                room_goto(rm_0242)
                break
            case 237:
                room_goto(rm_0243)
                break
            case 238:
                room_goto(rm_0244)
                break
            case 239:
                room_goto(rm_0245)
                break
            case 240:
                room_goto(rm_0246)
                break
            case 241:
                room_goto(rm_0247)
                break
            case 242:
                room_goto(rm_0248)
                break
            case 243:
                room_goto(rm_0249)
                break
            case 244:
                room_goto(rm_0250)
                break
            case 245:
                room_goto(rm_0251)
                break
            case 246:
                room_goto(rm_0252)
                break
            case 247:
                room_goto(rm_0253)
                break
            case 248:
                room_goto(rm_0254)
                break
            case 249:
                room_goto(rm_0255)
                break
            case 250:
                room_goto(rm_0256)
                break
            case 251:
                room_goto(rm_0257)
                break
            case 252:
                room_goto(rm_0258)
                break
            case 253:
                room_goto(rm_0259)
                break
            case 254:
                room_goto(rm_rest_area_9)
                break
            case 255:
                if (global.stranger == 0)
                    room_goto(rm_finalrest)
                else if (global.stranger == 1)
                    room_goto(rm_lillie_certainend)
                else
                    room_goto(rm_voidend)
                break
            case 256:
                room_goto(rm_u_0001)
                global.floorvanish = 1
                break
        }

    }
    else
    {
        load_room_number(room_number)
    }
    global.justice_stall = 0
    global.jumpscare = 0
    global.cantsave = false
    ds_grid_set(obj_inventory.ds_player_info, 1, 2, room_number)
    global.save_newroom = 1
    if (global.cc_state != 0)
    {
        global.cc_medalstate = 2
        with (obj_cc_medal)
            instance_destroy()
    }
}

