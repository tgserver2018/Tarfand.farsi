local function pre_process(msg)
	local chkfosh = redis:hget('settings:fosh',msg.chat_id_)
	if not chkfosh then
		redis:hset('settings:fosh',msg.chat_id_,'off')
	end
end

local function run(msg, matches)
	--Commands --دستورات فعال و غیرفعال کردن فحش

	if matches[1]:lower() == 'unlock' then
		if matches[2]:lower() == 'fosh' then
			if not is_mod(msg) then return end
			local fosh = redis:hget('settings:fosh',msg.chat_id_)
			if fosh == 'on' then 
				redis:hset('settings:fosh',msg.chat_id_,'off')
				return ''
			elseif fosh == 'off' then
				return ''
			end
		end
	end
	if matches[1]:lower() == 'lock' then
		if matches[2]:lower() == 'fosh' then
			if not is_mod(msg) then return end
			local fosh = redis:hget('settings:fosh',msg.chat_id_)
			if fosh == 'off' then 
				redis:hset('settings:fosh',msg.chat_id_,'on')
				return ''
			elseif fosh == 'on' then
				return ''
			end
		end
	end
	
	--Delete words contains --حذف پیامهای فحش
	if not is_mod(msg) then
		local fosh = redis:hget('settings:fosh',msg.chat_id_)
		if fosh == 'on' then 
			tdcli.deleteMessages(msg.chat_id_, {[0] = msg.id_}, dl_cb, nil)	
		end
	end
end
 
return {
  patterns = {
    "(ک*س)$",
    "کیر",
	"کص",
	"کــــــــــیر",
	"کــــــــــــــــــــــــــــــیر",
	"کـیـــــــــــــــــــــــــــــــــــــــــــــــــــر",
    "ک×یر",
	"ک÷یر",
	"ک*ص",
	"کــــــــــیرر",
    "kir",
	"kos",
	"گوساله",
	"gosale",
	"gusale",
	"جاکش",
	"قرمساق",
	"دیوس",
	"دیوص",
	"dayus",
	"dayos",
	"dayu3",
	"10yus",
	"10yu3",
	"daus",
	"dau3",
	"تخمی",
	"حرومزاده",
	"حروم زاده",
	"harumzade",
	"haromzade",
	"haroomzade",
	"lashi",
	"لاشی",
	"لاشي",
	"جنده",
	"jende",
	"tokhmi",
	"madarjende",
	"kharkosde",
	"خارکسده",
	"خوارکسده",
	"خارکصده",
	"خوارکصده",
	"kharko3de",
	"مادرجنده",
	"ننه قهبه",
	"ممه",
	"کسی گروه سکسی داره اد کنه",
	 "کسی گروه سکسی داره",
	"سوخوم",
	"مامایان سوخوم",
	"باجیان سوخوم",
	"باجسه قهبه",
	"هرزادیان",
	"هرزادیان سوخوم",
	"کوت",
	"کوت بالا",
	"بیا پی وی شمارتو شر کن",
	"addi beya pv",
	"یکی بیاد پی وی",
	"ننه باجیان سوخوم",
	"سیک",
	"دا سیک اولدین ها",
	"یمه بابا ات باهاده",
	"دیلیخ",
	"انجخ",	
	"سنه سوخون",
	"کوتیان قویم",
	"ایچین ورم",
	"یه بلسین",
	"باسیم ارتخ اولسین",
	"سنه زدیم",
	"ننوا قویم",
	"ماماسه گوچح",
	"خالیان",
	"عمه یان",
	"خالیان زدیم",
	"ایچوا ورم",
	"یمه سیکمه",
	"زهرمار",
	"کثافت",
	"کفیر کثافت",
	"مموه ییم",
	"قاوات",
	"جارکش",
	"کوس ببو",
	"کوتین باسیم",
	"انایان باسیم",
	"انایان قویم",
	"منه بیر یول ورسان",
	"منه ممه",
	"کوس مادر مدیر",
	"کوس مادر مدیر گروه",
	"وریم اغزیان",
	"کوته قویان",
	"خواهر کوس",
	"اوته باشیندا",
	"یمه گورم دا",
	"خالسه گوزل",
	"خالسه خوشگیل",
	"ایچیان ورم",
	"جویز",
	"تکالا",
	"یه دختر بیاد پی وی",
	"حوصلم پوکید یکی بیاد پی وی",
	"ییسان یا اپارسان",
	"باشه",
	"اوستورم",
	"اغزیان اوستورم",
	"آغزیان استورم",
	"پخ",
	"پخ گدا",
	"سیچم آغزیان",
	"گیداخ سیکیشخ",	
	"دیوثون بالاسه",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",
	"",	

	--Commands ##Don't change this##
	"^[!/#]([Ll][Oo][Cc][Kk]) (.*)$",
	"^[!/#]([Uu][Nn][Ll][Oo][Cc][Kk]) (.*)$",
	------------End----------------
  },
  run = run,
  pre_process = pre_process
}

https://t.me/SaMaN_SaNstar2017
