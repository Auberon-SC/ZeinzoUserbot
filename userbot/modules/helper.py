""" Userbot module for other small commands. """
from userbot import CMD_HANDLER as cmd
from userbot import CMD_HELP, owner
from userbot.utils import edit_or_reply, zein_cmd


@zein_cmd(pattern="ihelp$")
async def usit(event):
    await edit_or_reply(
        event,
        f"**Hai {owner} Kalo Anda Tidak Tau Perintah Untuk Memerintah Ku Ketik** `.help` Atau Bisa Minta Bantuan Ke:\n"
        f"✣ **GroupSupport :** [Grup Support](t.me/ZeinzoUserbot)\n"
        f"✣ **Channel :** [Channel](t.me/zeinproject)\n"
        f"✣ **OwnerRepo :** [zein Onlen](t.me/tdrki_1)\n"
        f"✣ **Repo :** [ZeinzoUserbot](https://github.com/zeinzo/ZeinzoUserbot)\n",
    )


@zein_cmd(pattern="listvar$")
async def var(event):
    await edit_or_reply(
        event,
        "**Daftar Lengkap Vars Dari ZeinzoUserbotUserbot:** [KLIK DISINI](https://telegra.ph/ㅤ-04-04-5)",
    )


CMD_HELP.update(
    {
        "helper": f"**Plugin : **`helper`\
        \n\n  •  **Syntax :** `{cmd}ihelp`\
        \n  •  **Function : **Bantuan Untuk Man-Userbot.\
        \n\n  •  **Syntax :** `{cmd}listvar`\
        \n  •  **Function : **Melihat Daftar Vars.\
        \n\n  •  **Syntax :** `{cmd}repo`\
        \n  •  **Function : **Melihat Repository Man-Userbot.\
        \n\n  •  **Syntax :** `{cmd}string`\
        \n  •  **Function : **Link untuk mengambil String Man-Userbot.\
    "
    }
)
