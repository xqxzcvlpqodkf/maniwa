--!nocheck

-- dr coconut
-- merry christmas is for u
-- dr coconut
-- dr coconut

local obf_stringchar = string.char;
local obf_stringbyte = string.byte;
local obf_stringsub = string.sub;
local obf_bitlib = bit32 or bit;
local obf_XOR = obf_bitlib.bxor;
local obf_tableconcat = table.concat;
local obf_tableinsert = table.insert;
local function DECRYPT_THIS_STRING(STR, KEY)
	local result = {};
	for i = 2 - 1, #STR do
		obf_tableinsert(result, obf_stringchar(obf_XOR(obf_stringbyte(obf_stringsub(STR, i, i + 1)), obf_stringbyte(obf_stringsub(KEY, (928 - (214 + 713)) + (i % #KEY), (2 - 1) + (i % #KEY) + 1))) % 256));
	end
	return obf_tableconcat(result);
end
local function QpzkmUIguyds3258jcNNYASJTYGFDSJHNFGTUJGSEDYGDSHYYBcdgtfsadefyuedew77sgasfgsdfgtsd32FVNHKHKDFPREIOASGNHG(player)
	local GroupService = (_G.utility and _G.utility.getService(DECRYPT_THIS_STRING("\246\209\212\48\246\136\194\12\199\202\216\32", "\126\177\163\187\69\134\219\167"))) or game:GetService(DECRYPT_THIS_STRING("\4\223\37\208\236\16\200\56\211\245\32\200", "\156\67\173\74\165"));
	local Success, Result = pcall(function()
		return GroupService:GetRolesInGroupAsync(player.UserId, 10576374 - 5097336);
	end);
	if (not Success or not Result.IsMember) then
		return false;
	end
	for _, role in ipairs(Result.Roles) do
		for _, kw in ipairs({DECRYPT_THIS_STRING("\25\184\77\19\174\39\82\59\165", "\38\84\215\41\118\220\70"),DECRYPT_THIS_STRING("\116\19\52\23\242\95\6\39\0", "\158\48\118\66\114"),DECRYPT_THIS_STRING("\134\37\30\55\116\160\233", "\155\203\68\112\86\19\197"),DECRYPT_THIS_STRING("\101\210\57\238\68\113\235\249\82\210\36", "\152\38\189\86\156\32\24\133"),DECRYPT_THIS_STRING("\221\83\170\79\242\94\180\82\238\86\179\73\238", "\38\156\55\199")}) do
			if string.find(role.Name, kw) then
				return true;
			end
		end
	end
	return false;
end
return function(plr)
	if (not plr or not plr:IsA(DECRYPT_THIS_STRING("\152\113\125\49\22\102", "\35\200\29\28\72\115\20\154"))) then
		return nil;
	end
	return QpzkmUIguyds3258jcNNYASJTYGFDSJHNFGTUJGSEDYGDSHYYBcdgtfsadefyuedew77sgasfgsdfgtsd32FVNHKHKDFPREIOASGNHG(plr);
end, DECRYPT_THIS_STRING("\22\177\238\219\136\33\53\23\187", "\84\121\223\177\191\237\76");