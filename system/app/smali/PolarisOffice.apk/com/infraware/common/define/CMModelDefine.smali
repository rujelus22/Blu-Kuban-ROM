.class public Lcom/infraware/common/define/CMModelDefine;
.super Ljava/lang/Object;
.source "CMModelDefine.java"


# static fields
.field public static final CUSTOM_BOOKCLIP_PATH:Ljava/lang/String; = "/mnt/sdcard/.polarisOffice/polarisBookclip"

.field public static final CUSTOM_BOOKMARK_PATH:Ljava/lang/String; = "/mnt/sdcard/.polarisOffice/polarisBookmark"

.field public static final CUSTOM_PRINT_PATH:Ljava/lang/String; = ""

.field public static final CUSTOM_TEMP_PATH:Ljava/lang/String; = "/mnt/sdcard/.polarisOffice/polarisTemp"

.field public static final DocumentsURI:Landroid/net/Uri; = null

.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.infraware.polarisoffice"

.field public static final SCHEME_FAVORITE:Ljava/lang/String; = "polaris_office_favorite://"

.field public static final SCHEME_RECENT:Ljava/lang/String; = "polaris_office_recent://"

.field public static final action_info:Ljava/lang/String; = "com.infraware.polarisoffice.ACTION_OFFICE_INFO"

.field public static final audio_oneshot_play:Z = true

.field public static final check_account_add:Z = false

.field public static final default_char_set:Ljava/lang/String; = null

.field public static final filemgr_success_result:Z = false

.field public static final max_file_name_lenght:I = 0x3c

.field public static final native_mail_file_path_change:Z = false

.field public static final recv_intent_find_by_pos:Ljava/lang/String; = "0"

.field public static final save_2007:I = 0x1

.field public static final send_intent_find_by_pos:Ljava/lang/String; = "0"

.field public static final support_csv_file:Z = false

.field public static final support_pps_file:Z = false

.field public static final support_rtf_file:Z = false

.field public static final support_xml_file:Z = false

.field public static final use_add_favorite:I = 0x0

.field public static final use_custom_zoom_dynamic_off:Z = false

.field public static final use_etc_file_type:Z = true

.field public static final use_flexible_dpi:I = 0x1

.field public static final use_font_background_caret:Z = true

.field public static final use_google_docs:I = 0x0

.field public static final use_hide_fontface:Z = false

.field public static final use_landscape_keypad_force:Z = true

.field public static final use_lg_dlna:Z = false

.field public static final use_live_update:Z = true

.field public static final use_low_storage_check:Z = false

.field public static final use_mail_input_filter:Z = true

.field public static final use_online_update:Z = true

.field public static final use_ppt_insert_template_ex:Z = false

.field public static final use_resume_show_keypad:Z = false

.field public static final use_rtol_option:Z = false

.field public static final use_select_all_item:Z = true

.field public static final use_sheet_current_check:Z = true

.field public static final use_sheet_function_popup:Z = true

.field public static final use_sheet_onkeyboard_toolbar_show:Z = false

.field public static final use_sheet_tab_view_list:Z = true

.field public static final use_sheet_title_name:I = 0x0

.field public static final use_sheet_two_line_edit:Z = true

.field public static final use_user_regist:Z = true

.field public static final use_web_storage:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 60
    sput-object v0, Lcom/infraware/common/define/CMModelDefine;->default_char_set:Ljava/lang/String;

    .line 66
    sput-object v0, Lcom/infraware/common/define/CMModelDefine;->DocumentsURI:Landroid/net/Uri;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beAttatchTextFileToMMSBody()Z
    .registers 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public static doesNotMoveCaretWhenComposingState()Z
    .registers 3

    .prologue
    .line 191
    const-string v0, "ISW11SC"

    .line 192
    .local v0, model:Ljava/lang/String;
    const-string v1, "ISW11SC"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 193
    const/4 v1, 0x1

    .line 195
    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public static haveObjectToast(Landroid/app/Activity;)Z
    .registers 3
    .parameter "activity"

    .prologue
    .line 168
    invoke-static {p0}, Lcom/infraware/common/util/Utils;->getDensityDpi(Landroid/app/Activity;)I

    move-result v0

    const/16 v1, 0x78

    if-le v0, v1, :cond_a

    .line 169
    const/4 v0, 0x1

    .line 171
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isConvertStringWIFIToWLAN()Z
    .registers 3

    .prologue
    .line 199
    const-string v0, "GT-B9062 GT-I9050 GT-I8250 GT-I9198"

    .line 200
    .local v0, model:Ljava/lang/String;
    const-string v1, "GT-B9062 GT-I9050 GT-I8250 GT-I9198"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 201
    const/4 v1, 0x1

    .line 203
    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public static isDocumentsFile(Ljava/lang/String;)Z
    .registers 2
    .parameter "type"

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public static isHideTitleBarOnSplashActivity()Z
    .registers 3

    .prologue
    .line 145
    const-string v0, "GT-B7800 GT-S5690 GT-B5512 GT-S5690L GT-S5690B"

    .line 146
    .local v0, showLandscapeStatusbar:Ljava/lang/String;
    const-string v1, "GT-B7800 GT-S5690 GT-B5512 GT-S5690L GT-S5690B"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 147
    const/4 v1, 0x0

    .line 149
    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x1

    goto :goto_d
.end method

.method public static isSamsungGlobalVer()Z
    .registers 1

    .prologue
    .line 117
    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isSamsungKorVer()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 118
    const/4 v0, 0x0

    .line 120
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static isSamsungKorVer()Z
    .registers 3

    .prologue
    .line 109
    const-string v0, "SHV-E110S SHV-E120L SHV-E120S SHV-E120K SHW-M250S SHW-M250K SHW-M250L SHW-M340S SHW-M340K SHW-M340L SHV-E160S SHV-E160L SHV-E160K YP-GB70D"

    .line 110
    .local v0, samsung_kor_model:Ljava/lang/String;
    const-string v1, "SHV-E110S SHV-E120L SHV-E120S SHV-E120K SHW-M250S SHW-M250K SHW-M250L SHW-M340S SHW-M340K SHW-M340L SHV-E160S SHV-E160L SHV-E160K YP-GB70D"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 111
    const/4 v1, 0x1

    .line 113
    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public static isSendTextFileAsExtraText(Landroid/content/Context;)Z
    .registers 2
    .parameter "context"

    .prologue
    .line 102
    const-string v0, "com.sec.android.widgetapp.diotek.smemo"

    invoke-static {p0, v0}, Lcom/infraware/common/util/Utils;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 103
    const/4 v0, 0x1

    .line 105
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static isShowDisableMenuItem()Z
    .registers 1

    .prologue
    .line 88
    const/4 v0, 0x1

    return v0
.end method

.method public static isShowLandscapeStatusbar()Z
    .registers 3

    .prologue
    .line 72
    const-string v0, "GT-B7800 GT-B5512"

    .line 73
    .local v0, showLandscapeStatusbar:Ljava/lang/String;
    const-string v1, "GT-B7800 GT-B5512"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 74
    const/4 v1, 0x1

    .line 76
    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public static isSingleTouchModel()Z
    .registers 3

    .prologue
    .line 80
    const-string v0, "GT-B7800 GT-B5512"

    .line 81
    .local v0, single_touch_model:Ljava/lang/String;
    const-string v1, "GT-B7800 GT-B5512"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 82
    const/4 v1, 0x1

    .line 84
    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public static isSupportAccessibility()Z
    .registers 1

    .prologue
    .line 175
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportEncryptDoc()Z
    .registers 1

    .prologue
    .line 179
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportFreeDraw(Landroid/app/Activity;)Z
    .registers 3
    .parameter "activity"

    .prologue
    .line 161
    invoke-static {p0}, Lcom/infraware/common/util/Utils;->getDensityDpi(Landroid/app/Activity;)I

    move-result v0

    const/16 v1, 0xf0

    if-le v0, v1, :cond_10

    invoke-static {p0}, Lcom/infraware/common/define/CMModelDefine;->isSendTextFileAsExtraText(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 162
    const/4 v0, 0x1

    .line 164
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static isSupportOnlyWifi()Z
    .registers 3

    .prologue
    .line 183
    const-string v0, "YP-GB70D"

    .line 184
    .local v0, wifi_model:Ljava/lang/String;
    const-string v1, "YP-GB70D"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 185
    const/4 v1, 0x1

    .line 187
    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public static isSupportPivotLock()Z
    .registers 1

    .prologue
    .line 207
    const/4 v0, 0x1

    return v0
.end method

.method public static isTTSSupportModel()Z
    .registers 3

    .prologue
    .line 153
    const-string v0, "GT-B7800 GT-S5690 GT-B5512 GT-S5690L GT-S5690B"

    .line 154
    .local v0, tts_support_model:Ljava/lang/String;
    const-string v1, "GT-B7800 GT-S5690 GT-B5512 GT-S5690L GT-S5690B"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 155
    const/4 v1, 0x0

    .line 157
    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x1

    goto :goto_d
.end method

.method public static sdUnmountMsg()Z
    .registers 1

    .prologue
    .line 124
    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isSamsungKorVer()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 125
    const/4 v0, 0x1

    .line 127
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static setCharName()Z
    .registers 1

    .prologue
    .line 131
    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isSamsungKorVer()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 132
    const/4 v0, 0x1

    .line 134
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static useKorFontMsg()Z
    .registers 1

    .prologue
    .line 138
    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isSamsungKorVer()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 139
    const/4 v0, 0x1

    .line 141
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
