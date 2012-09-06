.class public final Lcom/estrongs/android/pop/view/PopPreferenceActivity;
.super Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;


# static fields
.field private static F:I

.field static a:Z


# instance fields
.field A:Landroid/preference/Preference;

.field B:Landroid/preference/ListPreference;

.field private C:Ljava/lang/String;

.field private D:I

.field private E:Landroid/os/Handler;

.field private G:Lcom/estrongs/android/pop/view/h;

.field private H:Landroid/content/DialogInterface$OnCancelListener;

.field b:Lcom/estrongs/android/pop/c;

.field c:Landroid/preference/EditTextPreference;

.field d:Landroid/preference/EditTextPreference;

.field e:Landroid/preference/EditTextPreference;

.field f:Landroid/preference/EditTextPreference;

.field g:Landroid/preference/EditTextPreference;

.field h:Landroid/preference/EditTextPreference;

.field i:Landroid/preference/CheckBoxPreference;

.field j:Landroid/preference/CheckBoxPreference;

.field k:Landroid/preference/CheckBoxPreference;

.field l:Landroid/preference/CheckBoxPreference;

.field m:Landroid/preference/CheckBoxPreference;

.field n:Landroid/preference/CheckBoxPreference;

.field o:Landroid/preference/CheckBoxPreference;

.field p:Landroid/preference/CheckBoxPreference;

.field q:Landroid/preference/Preference;

.field r:Landroid/preference/Preference;

.field s:Landroid/preference/Preference;

.field t:Landroid/preference/Preference;

.field u:Landroid/preference/Preference;

.field v:Landroid/preference/Preference;

.field w:Landroid/preference/Preference;

.field x:Landroid/preference/Preference;

.field y:Landroid/preference/Preference;

.field z:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->a:Z

    sput v0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->F:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->C:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->D:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->E:Landroid/os/Handler;

    new-instance v0, Lcom/estrongs/android/pop/view/iu;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/iu;-><init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->G:Lcom/estrongs/android/pop/view/h;

    new-instance v0, Lcom/estrongs/android/pop/view/jj;

    invoke-direct {v0, p0}, Lcom/estrongs/android/pop/view/jj;-><init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V

    iput-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->H:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .registers 4

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "sd_sortby"

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)I
    .registers 5

    const-string v0, "enTourage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "color"

    const v2, -0xd5ba95

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_15
    return v0

    :cond_16
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "color"

    const v2, -0xcccccd

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_15
.end method

.method private a()V
    .registers 13

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x4

    const/4 v3, 0x0

    const/16 v0, 0x4a

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "preference_display_category"

    aput-object v0, v4, v3

    const-string v0, "theme_setting"

    aput-object v0, v4, v9

    const-string v0, "color"

    aput-object v0, v4, v10

    const-string v0, "theme"

    aput-object v0, v4, v11

    const-string v0, "customtheme"

    aput-object v0, v4, v8

    const/4 v0, 0x5

    const-string v1, "folder_icon"

    aput-object v1, v4, v0

    const/4 v0, 0x6

    const-string v1, "screen_preference"

    aput-object v1, v4, v0

    const/4 v0, 0x7

    const-string v1, "preference_tabs_category"

    aput-object v1, v4, v0

    const/16 v0, 0x8

    const-string v1, "hide_tabs_smb"

    aput-object v1, v4, v0

    const/16 v0, 0x9

    const-string v1, "hide_tabs_ftp"

    aput-object v1, v4, v0

    const/16 v0, 0xa

    const-string v1, "hide_tabs_bt"

    aput-object v1, v4, v0

    const/16 v0, 0xb

    const-string v1, "hide_tabs_net"

    aput-object v1, v4, v0

    const/16 v0, 0xc

    const-string v1, "hide_tabs_local"

    aput-object v1, v4, v0

    const/16 v0, 0xd

    const-string v1, "preference_layout_category"

    aput-object v1, v4, v0

    const/16 v0, 0xe

    const-string v1, "hide_toolbar"

    aput-object v1, v4, v0

    const/16 v0, 0xf

    const-string v1, "hide_toolbar_text"

    aput-object v1, v4, v0

    const/16 v0, 0x10

    const-string v1, "hide_clipboard"

    aput-object v1, v4, v0

    const/16 v0, 0x11

    const-string v1, "hide_clipboard_on_paste"

    aput-object v1, v4, v0

    const/16 v0, 0x12

    const-string v1, "hide_statusbar"

    aput-object v1, v4, v0

    const/16 v0, 0x13

    const-string v1, "preference_others_category"

    aput-object v1, v4, v0

    const/16 v0, 0x14

    const-string v1, "dateformat"

    aput-object v1, v4, v0

    const/16 v0, 0x15

    const-string v1, "app_history_number"

    aput-object v1, v4, v0

    const/16 v0, 0x16

    const-string v1, "toolbar_hide_delay"

    aput-object v1, v4, v0

    const/16 v0, 0x17

    const-string v1, "enable_animation"

    aput-object v1, v4, v0

    const/16 v0, 0x18

    const-string v1, "file_preference"

    aput-object v1, v4, v0

    const/16 v0, 0x19

    const-string v1, "preference_show_settings_category"

    aput-object v1, v4, v0

    const/16 v0, 0x1a

    const-string v1, "thumbnail"

    aput-object v1, v4, v0

    const/16 v0, 0x1b

    const-string v1, "hidden_file"

    aput-object v1, v4, v0

    const/16 v0, 0x1c

    const-string v1, "sdcard_size"

    aput-object v1, v4, v0

    const/16 v0, 0x1d

    const-string v1, "scroll_thumb"

    aput-object v1, v4, v0

    const/16 v0, 0x1e

    const-string v1, "preference_bt_turnoff_category"

    aput-object v1, v4, v0

    const/16 v0, 0x1f

    const-string v1, "clean_prefer"

    aput-object v1, v4, v0

    const/16 v0, 0x20

    const-string v1, "bt_turnoff"

    aput-object v1, v4, v0

    const/16 v0, 0x21

    const-string v1, "app_clean_history_exit"

    aput-object v1, v4, v0

    const/16 v0, 0x22

    const-string v1, "auto_clear"

    aput-object v1, v4, v0

    const/16 v0, 0x23

    const-string v1, "cache"

    aput-object v1, v4, v0

    const/16 v0, 0x24

    const-string v1, "preference_view_category"

    aput-object v1, v4, v0

    const/16 v0, 0x25

    const-string v1, "list"

    aput-object v1, v4, v0

    const/16 v0, 0x26

    const-string v1, "size"

    aput-object v1, v4, v0

    const/16 v0, 0x27

    const-string v1, "sort_"

    aput-object v1, v4, v0

    const/16 v0, 0x28

    const-string v1, "preference_general_settings_category"

    aput-object v1, v4, v0

    const/16 v0, 0x29

    const-string v1, "root_dir"

    aput-object v1, v4, v0

    const/16 v0, 0x2a

    const-string v1, "app_backup_dir"

    aput-object v1, v4, v0

    const/16 v0, 0x2b

    const-string v1, "bt_dir"

    aput-object v1, v4, v0

    const/16 v0, 0x2c

    const-string v1, "preference_upgrade_settings_text_category"

    aput-object v1, v4, v0

    const/16 v0, 0x2d

    const-string v1, "upgrade_auto_check"

    aput-object v1, v4, v0

    const/16 v0, 0x2e

    const-string v1, "upgrade_check"

    aput-object v1, v4, v0

    const/16 v0, 0x2f

    const-string v1, "preference_root_settings_text_category"

    aput-object v1, v4, v0

    const/16 v0, 0x30

    const-string v1, "su"

    aput-object v1, v4, v0

    const/16 v0, 0x31

    const-string v1, "mount"

    aput-object v1, v4, v0

    const/16 v0, 0x32

    const-string v1, "scroll_not_use_cache"

    aput-object v1, v4, v0

    const/16 v0, 0x33

    const-string v1, "language_setting"

    aput-object v1, v4, v0

    const/16 v0, 0x34

    const-string v1, "sysapp_backup"

    aput-object v1, v4, v0

    const/16 v0, 0x35

    const-string v1, "preference_net_password_settings_category"

    aput-object v1, v4, v0

    const/16 v0, 0x36

    const-string v1, "net_passwd_enable"

    aput-object v1, v4, v0

    const/16 v0, 0x37

    const-string v1, "net_passwd_change"

    aput-object v1, v4, v0

    const/16 v0, 0x38

    const-string v1, "home_up_enabled"

    aput-object v1, v4, v0

    const/16 v0, 0x39

    const-string v1, "stop_mount_broadcast"

    aput-object v1, v4, v0

    const/16 v0, 0x3a

    const-string v1, "auto_backup_installed_app"

    aput-object v1, v4, v0

    const/16 v0, 0x3b

    const-string v1, "preference_file_others_category"

    aput-object v1, v4, v0

    const/16 v0, 0x3c

    const-string v1, "preference_remote_settings_text_category"

    aput-object v1, v4, v0

    const/16 v0, 0x3d

    const-string v1, "ftp_server"

    aput-object v1, v4, v0

    const/16 v0, 0x3e

    const-string v1, "ftpsvr_auto_exit"

    aput-object v1, v4, v0

    const/16 v0, 0x3f

    const-string v1, "ftpsvr_root_dir"

    aput-object v1, v4, v0

    const/16 v0, 0x40

    const-string v1, "ftpsvr_account_change"

    aput-object v1, v4, v0

    const/16 v0, 0x41

    const-string v1, "ftpsvr_port"

    aput-object v1, v4, v0

    const/16 v0, 0x42

    const-string v1, "preference_network_setting_category"

    aput-object v1, v4, v0

    const/16 v0, 0x43

    const-string v1, "preference_net_settings_category"

    aput-object v1, v4, v0

    const/16 v0, 0x44

    const-string v1, "preference_remote_settings_text_category"

    aput-object v1, v4, v0

    const/16 v0, 0x45

    const-string v1, "preference_upgrade_settings_text_category"

    aput-object v1, v4, v0

    const/16 v0, 0x46

    const-string v1, "ftpsvr_charset_change"

    aput-object v1, v4, v0

    const/16 v0, 0x47

    const-string v1, "ftpsvr_create_shortcut"

    aput-object v1, v4, v0

    const/16 v0, 0x48

    const-string v1, "hidedirfiles"

    aput-object v1, v4, v0

    const/16 v0, 0x49

    const-string v1, "start_passwd_enable"

    aput-object v1, v4, v0

    const/16 v0, 0x4a

    new-array v5, v0, [I

    fill-array-data v5, :array_28e

    const/16 v0, 0x4a

    new-array v6, v0, [I

    fill-array-data v6, :array_326

    move v2, v3

    :goto_1c7
    array-length v0, v4

    if-lt v2, v0, :cond_210

    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "app_history_number"

    aput-object v0, v2, v3

    const-string v0, "root_dir"

    aput-object v0, v2, v9

    const-string v0, "app_backup_dir"

    aput-object v0, v2, v10

    const-string v0, "bt_dir"

    aput-object v0, v2, v11

    new-array v4, v8, [I

    fill-array-data v4, :array_3be

    move v1, v3

    :goto_1e2
    array-length v0, v2

    if-lt v1, v0, :cond_273

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "theme"

    aput-object v1, v0, v3

    const-string v1, "folder_icon"

    aput-object v1, v0, v9

    const-string v1, "language_setting"

    aput-object v1, v0, v10

    const-string v1, "dateformat"

    aput-object v1, v0, v11

    const-string v1, "toolbar_hide_delay"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "list"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "size"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_3ca

    :try_start_20c
    invoke-static {p0, v0, v1}, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;->a(Landroid/preference/PreferenceActivity;[Ljava/lang/String;[I)V
    :try_end_20f
    .catch Ljava/lang/Exception; {:try_start_20c .. :try_end_20f} :catch_28c

    :goto_20f
    return-void

    :cond_210
    aget-object v0, v4, v2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_21c

    :cond_218
    :goto_218
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1c7

    :cond_21c
    aget v0, v5, v2

    const/4 v7, -0x1

    if-eq v0, v7, :cond_22a

    aget v0, v5, v2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_22a
    aget v0, v6, v2

    const/4 v7, -0x1

    if-eq v0, v7, :cond_238

    aget v0, v6, v2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_238
    instance-of v0, v1, Landroid/preference/ListPreference;

    if-eqz v0, :cond_255

    move-object v0, v1

    check-cast v0, Landroid/preference/ListPreference;

    const v7, 0x7f090060

    invoke-virtual {p0, v7}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/preference/ListPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    check-cast v1, Landroid/preference/ListPreference;

    aget v0, v5, v2

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_218

    :cond_255
    instance-of v0, v1, Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_218

    move-object v0, v1

    check-cast v0, Landroid/preference/EditTextPreference;

    const v7, 0x7f09005e

    invoke-virtual {p0, v7}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/preference/EditTextPreference;->setPositiveButtonText(Ljava/lang/CharSequence;)V

    check-cast v1, Landroid/preference/EditTextPreference;

    const v0, 0x7f090060

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    goto :goto_218

    :cond_273
    aget-object v0, v2, v1

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    if-nez v0, :cond_282

    :goto_27d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1e2

    :cond_282
    aget v5, v4, v1

    invoke-virtual {p0, v5}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/EditTextPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_27d

    :catch_28c
    move-exception v0

    goto :goto_20f

    :array_28e
    .array-data 0x4
        0xf8t 0x0t 0x9t 0x7ft
        0x2dt 0x1t 0x9t 0x7ft
        0x2t 0x1t 0x9t 0x7ft
        0xf6t 0x0t 0x9t 0x7ft
        0x5ft 0x2t 0x9t 0x7ft
        0x8bt 0x1t 0x9t 0x7ft
        0xb6t 0x0t 0x9t 0x7ft
        0xdat 0x0t 0x9t 0x7ft
        0xddt 0x0t 0x9t 0x7ft
        0xdet 0x0t 0x9t 0x7ft
        0x12t 0x1t 0x9t 0x7ft
        0xact 0x1t 0x9t 0x7ft
        0xdct 0x0t 0x9t 0x7ft
        0x90t 0x0t 0x9t 0x7ft
        0x91t 0x0t 0x9t 0x7ft
        0x39t 0x2t 0x9t 0x7ft
        0x8bt 0x0t 0x9t 0x7ft
        0x38t 0x1t 0x9t 0x7ft
        0xa3t 0x0t 0x9t 0x7ft
        0xdbt 0x0t 0x9t 0x7ft
        0xct 0x2t 0x9t 0x7ft
        0x24t 0x2t 0x9t 0x7ft
        0xc2t 0x0t 0x9t 0x7ft
        0xb8t 0x0t 0x9t 0x7ft
        0xf9t 0x0t 0x9t 0x7ft
        0x2et 0x2t 0x9t 0x7ft
        0xe7t 0x0t 0x9t 0x7ft
        0xc7t 0x0t 0x9t 0x7ft
        0xc5t 0x0t 0x9t 0x7ft
        0xfbt 0x0t 0x9t 0x7ft
        0x27t 0x1t 0x9t 0x7ft
        0x5at 0x2t 0x9t 0x7ft
        0x28t 0x1t 0x9t 0x7ft
        0x26t 0x2t 0x9t 0x7ft
        0x7ft 0x1t 0x9t 0x7ft
        0xe9t 0x0t 0x9t 0x7ft
        0x6et 0x0t 0x9t 0x7ft
        0x6ft 0x0t 0x9t 0x7ft
        0x97t 0x0t 0x9t 0x7ft
        0x96t 0x0t 0x9t 0x7ft
        0x67t 0x0t 0x9t 0x7ft
        0x68t 0x0t 0x9t 0x7ft
        0x69t 0x0t 0x9t 0x7ft
        0x25t 0x1t 0x9t 0x7ft
        0x48t 0x2t 0x9t 0x7ft
        0x4at 0x2t 0x9t 0x7ft
        0x4ct 0x2t 0x9t 0x7ft
        0x2ft 0x1t 0x9t 0x7ft
        0xc4t 0x0t 0x9t 0x7ft
        0xeft 0x0t 0x9t 0x7ft
        0x70t 0x2t 0x9t 0x7ft
        0x72t 0x2t 0x9t 0x7ft
        0x75t 0x2t 0x9t 0x7ft
        0xa4t 0x2t 0x9t 0x7ft
        0x76t 0x2t 0x9t 0x7ft
        0x78t 0x2t 0x9t 0x7ft
        0x81t 0x2t 0x9t 0x7ft
        0x84t 0x2t 0x9t 0x7ft
        0x85t 0x2t 0x9t 0x7ft
        0xdbt 0x0t 0x9t 0x7ft
        0x8bt 0x2t 0x9t 0x7ft
        0x8ct 0x2t 0x9t 0x7ft
        0x90t 0x2t 0x9t 0x7ft
        0x91t 0x2t 0x9t 0x7ft
        0x94t 0x2t 0x9t 0x7ft
        0x95t 0x2t 0x9t 0x7ft
        0xa4t 0x2t 0x9t 0x7ft
        0xa5t 0x2t 0x9t 0x7ft
        0x8bt 0x2t 0x9t 0x7ft
        0x48t 0x2t 0x9t 0x7ft
        0xaet 0x2t 0x9t 0x7ft
        0xb1t 0x2t 0x9t 0x7ft
        0xc0t 0x2t 0x9t 0x7ft
        0xc2t 0x2t 0x9t 0x7ft
    .end array-data

    :array_326
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x2et 0x1t 0x9t 0x7ft
        0x3t 0x1t 0x9t 0x7ft
        0xf7t 0x0t 0x9t 0x7ft
        0x60t 0x2t 0x9t 0x7ft
        0x2dt 0x2t 0x9t 0x7ft
        0xb7t 0x0t 0x9t 0x7ft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x92t 0x0t 0x9t 0x7ft
        0x38t 0x2t 0x9t 0x7ft
        0x8ct 0x0t 0x9t 0x7ft
        0x39t 0x1t 0x9t 0x7ft
        0xa4t 0x0t 0x9t 0x7ft
        0xfft 0xfft 0xfft 0xfft
        0xcft 0x2t 0x9t 0x7ft
        0xfft 0xfft 0xfft 0xfft
        0xd0t 0x0t 0x9t 0x7ft
        0xb9t 0x0t 0x9t 0x7ft
        0xfat 0x0t 0x9t 0x7ft
        0xfft 0xfft 0xfft 0xfft
        0xe8t 0x0t 0x9t 0x7ft
        0xc8t 0x0t 0x9t 0x7ft
        0xc6t 0x0t 0x9t 0x7ft
        0xfct 0x0t 0x9t 0x7ft
        0xfft 0xfft 0xfft 0xfft
        0x59t 0x2t 0x9t 0x7ft
        0x29t 0x1t 0x9t 0x7ft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xeat 0x0t 0x9t 0x7ft
        0xfft 0xfft 0xfft 0xfft
        0xdft 0x0t 0x9t 0x7ft
        0xe0t 0x0t 0x9t 0x7ft
        0xe1t 0x0t 0x9t 0x7ft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x49t 0x2t 0x9t 0x7ft
        0x4bt 0x2t 0x9t 0x7ft
        0xfft 0xfft 0xfft 0xfft
        0xaet 0x0t 0x9t 0x7ft
        0xf0t 0x0t 0x9t 0x7ft
        0x6ft 0x2t 0x9t 0x7ft
        0x73t 0x2t 0x9t 0x7ft
        0x74t 0x2t 0x9t 0x7ft
        0xfft 0xfft 0xfft 0xfft
        0x77t 0x2t 0x9t 0x7ft
        0x79t 0x2t 0x9t 0x7ft
        0x82t 0x2t 0x9t 0x7ft
        0x86t 0x2t 0x9t 0x7ft
        0x87t 0x2t 0x9t 0x7ft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x8dt 0x2t 0x9t 0x7ft
        0x8ft 0x2t 0x9t 0x7ft
        0x92t 0x2t 0x9t 0x7ft
        0x93t 0x2t 0x9t 0x7ft
        0x95t 0x2t 0x9t 0x7ft
        0xfft 0xfft 0xfft 0xfft
        0xa6t 0x2t 0x9t 0x7ft
        0xa7t 0x2t 0x9t 0x7ft
        0xa8t 0x2t 0x9t 0x7ft
        0xadt 0x2t 0x9t 0x7ft
        0xb0t 0x2t 0x9t 0x7ft
        0xbft 0x2t 0x9t 0x7ft
        0xc1t 0x2t 0x9t 0x7ft
    .end array-data

    :array_3be
    .array-data 0x4
        0x25t 0x2t 0x9t 0x7ft
        0x68t 0x0t 0x9t 0x7ft
        0x69t 0x0t 0x9t 0x7ft
        0x25t 0x1t 0x9t 0x7ft
    .end array-data

    :array_3ca
    .array-data 0x4
        0x2t 0x0t 0xat 0x7ft
        0x0t 0x0t 0xat 0x7ft
        0x17t 0x0t 0xat 0x7ft
        0x13t 0x0t 0xat 0x7ft
        0x5t 0x0t 0xat 0x7ft
        0x7t 0x0t 0xat 0x7ft
        0xbt 0x0t 0xat 0x7ft
    .end array-data
.end method

.method public static a(Landroid/content/Context;I)V
    .registers 5

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "color"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v1, "theme"

    const-string v2, "-1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->d()V

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/PopPreferenceActivity;I)V
    .registers 2

    iput p1, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->D:I

    return-void
.end method

.method static synthetic a(Lcom/estrongs/android/pop/view/PopPreferenceActivity;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    goto :goto_9
.end method

.method private b()V
    .registers 3

    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->showDialog(I)V

    invoke-static {p0}, Lcom/estrongs/android/pop/e/a;->a(Landroid/content/ContextWrapper;)Lcom/estrongs/android/pop/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/e/a;->a()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/estrongs/android/pop/view/jw;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/jw;-><init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static b(Landroid/content/Context;I)V
    .registers 4

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sd_sortby"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->f()V

    return-void
.end method

.method static synthetic b(Lcom/estrongs/android/pop/view/PopPreferenceActivity;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->C:Ljava/lang/String;

    return-void
.end method

.method private c()V
    .registers 5

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->C:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->C:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_13
    const-string v0, "/sdcard/"

    iput-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->C:Ljava/lang/String;

    :cond_17
    :goto_17
    return-void

    :cond_18
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->C:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    sget-object v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->am:Lcom/estrongs/android/pop/view/FileExplorerActivity;

    if-eqz v1, :cond_30

    iget-object v2, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->C:Ljava/lang/String;

    invoke-static {v2}, Lcom/estrongs/android/pop/a/d;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->e(Ljava/lang/String;)V

    :cond_30
    if-eqz v0, :cond_11a

    iget v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->D:I

    if-nez v0, :cond_6f

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->c:Landroid/preference/EditTextPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f090071

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->C:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->c:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->b:Lcom/estrongs/android/pop/c;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/c;->d(Ljava/lang/String;)V

    :cond_63
    :goto_63
    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->f:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->f:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_17

    :cond_6f
    iget v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->D:I

    if-ne v0, v3, :cond_a1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->d:Landroid/preference/EditTextPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f090072

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->C:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->d:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->b:Lcom/estrongs/android/pop/c;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/c;->l(Ljava/lang/String;)V

    goto :goto_63

    :cond_a1
    iget v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->D:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d5

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->f:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_c9

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->f:Landroid/preference/EditTextPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f090126

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->C:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_c9
    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->b:Lcom/estrongs/android/pop/c;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/c;->m(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->C:Ljava/lang/String;

    sput-object v0, Lcom/estrongs/android/pop/bt/a;->b:Ljava/lang/String;

    goto :goto_63

    :cond_d5
    iget v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->D:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_63

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->g:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->g:Landroid/preference/EditTextPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f090070

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->C:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->b:Lcom/estrongs/android/pop/c;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/c;->r(Ljava/lang/String;)V

    :try_start_107
    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->C:Ljava/lang/String;

    invoke-static {}, Lcom/estrongs/android/pop/ftp/l;->a()Lcom/estrongs/android/pop/ftp/l;

    move-result-object v1

    new-instance v2, Lcom/estrongs/android/pop/view/kq;

    invoke-direct {v2, p0, v1, v0}, Lcom/estrongs/android/pop/view/kq;-><init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;Lcom/estrongs/android/pop/ftp/l;Ljava/lang/String;)V

    invoke-virtual {v1, p0, v2}, Lcom/estrongs/android/pop/ftp/l;->a(Landroid/content/Context;Lcom/estrongs/android/pop/ftp/n;)V
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_115} :catch_117

    goto/16 :goto_63

    :catch_117
    move-exception v0

    goto/16 :goto_63

    :cond_11a
    const v0, 0x7f090132

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_17
.end method

.method static synthetic c(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->g()V

    return-void
.end method

.method private d()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->i:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->i:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_a
    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->j:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->j:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_13
    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->l:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->l:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_1c
    return-void
.end method

.method static synthetic d(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->b()V

    return-void
.end method

.method static synthetic e(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->E:Landroid/os/Handler;

    return-object v0
.end method

.method private e()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/estrongs/android/pop/d/h;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->j:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->j:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_11
    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->l:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->l:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_1a
    const v0, 0x7f0900c0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_24
    :goto_24
    return-void

    :cond_25
    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->j:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->j:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_2e
    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->l:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->l:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_37
    sput-boolean v1, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->a:Z

    const v0, 0x7f0900c1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->i:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->i:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->i:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_24
.end method

.method private f()V
    .registers 4

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/estrongs/android/pop/d/h;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_12

    const v0, 0x7f0900aa

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->j:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->j:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_1c
    const v0, 0x7f0900ab

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_11
.end method

.method static synthetic f(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->e()V

    return-void
.end method

.method private g()V
    .registers 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/estrongs/android/pop/d/h;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_13

    const v0, 0x7f0900ac

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->j:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->j:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_1c
    const v0, 0x7f0900ad

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_12
.end method

.method static synthetic g(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->c()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8

    const/4 v3, 0x1

    invoke-super {p0, p1, p2, p3}, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_22

    const v0, 0x1000101a

    if-ne p1, v0, :cond_22

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->A:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "Save custom bk failed"

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_22
    :goto_22
    return-void

    :cond_23
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "theme"

    const-string v2, "4"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcom/estrongs/android/pop/view/FileExplorerActivity;->Q()Lcom/estrongs/android/pop/view/FileExplorerActivity;

    move-result-object v0

    iput-boolean v3, v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->B:Z

    goto :goto_22
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 11

    const v8, 0x7f090297

    const v7, 0x7f090070

    const/16 v1, 0x400

    const/4 v6, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->requestWindowFeature(I)Z

    invoke-super {p0, p1}, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->H()Z

    move-result v0

    if-eqz v0, :cond_4bc

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x103000a

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->setTheme(I)V

    :goto_27
    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->b:Lcom/estrongs/android/pop/c;

    const/high16 v0, 0x7f05

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->a()V

    const-string v0, "auto_clear"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->k:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->k:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/estrongs/android/pop/view/jy;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/jy;-><init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "color"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->s:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->s:Landroid/preference/Preference;

    new-instance v1, Lcom/estrongs/android/pop/view/kj;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/kj;-><init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "su"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->i:Landroid/preference/CheckBoxPreference;

    const-string v0, "mount"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->j:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->i:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_7d

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->i:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/estrongs/android/pop/view/kr;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/kr;-><init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_7d
    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->j:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->j:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/estrongs/android/pop/view/ks;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/ks;-><init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_8b
    const-string v0, "sysapp_backup"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->l:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->l:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->i:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_b8

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->i:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_b8

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->j:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_af

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->j:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_af
    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->l:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_b8

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->l:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_b8
    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->b:Lcom/estrongs/android/pop/c;

    sget-object v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/estrongs/android/pop/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "root_dir"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->c:Landroid/preference/EditTextPreference;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->c:Landroid/preference/EditTextPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->c:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->c:Landroid/preference/EditTextPreference;

    new-instance v1, Lcom/estrongs/android/pop/view/kt;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/kt;-><init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->b:Lcom/estrongs/android/pop/c;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->M()Ljava/lang/String;

    move-result-object v1

    const-string v0, "app_backup_dir"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->d:Landroid/preference/EditTextPreference;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->d:Landroid/preference/EditTextPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f090072

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->d:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->d:Landroid/preference/EditTextPreference;

    new-instance v1, Lcom/estrongs/android/pop/view/ku;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/ku;-><init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->b:Lcom/estrongs/android/pop/c;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->L()I

    move-result v1

    const-string v0, "app_history_number"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->e:Landroid/preference/EditTextPreference;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->e:Landroid/preference/EditTextPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f090224

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->e:Landroid/preference/EditTextPreference;

    new-instance v1, Lcom/estrongs/android/pop/view/kv;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/kv;-><init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "sort_"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->q:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->q:Landroid/preference/Preference;

    new-instance v1, Lcom/estrongs/android/pop/view/iv;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/iv;-><init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "cache"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->r:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->r:Landroid/preference/Preference;

    new-instance v1, Lcom/estrongs/android/pop/view/iw;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/iw;-><init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "upgrade_check"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->t:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->t:Landroid/preference/Preference;

    new-instance v1, Lcom/estrongs/android/pop/view/ix;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/ix;-><init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "clean_prefer"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->u:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->u:Landroid/preference/Preference;

    new-instance v1, Lcom/estrongs/android/pop/view/iy;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/iy;-><init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->b:Lcom/estrongs/android/pop/c;

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->N()Ljava/lang/String;

    move-result-object v1

    const-string v0, "bt_dir"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->f:Landroid/preference/EditTextPreference;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->f:Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_1f4

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->f:Landroid/preference/EditTextPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f090126

    invoke-virtual {p0, v4}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->f:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->f:Landroid/preference/EditTextPreference;

    new-instance v1, Lcom/estrongs/android/pop/view/iz;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/iz;-><init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1f4
    sget-object v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    const-string v1, "Market"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20d

    const-string v0, "preference_general_settings_category"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    if-eqz v0, :cond_20d

    iget-object v1, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->f:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_20d
    const-string v0, "theme"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->B:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->B:Landroid/preference/ListPreference;

    new-instance v1, Lcom/estrongs/android/pop/view/ja;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/ja;-><init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "customtheme"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->v:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->v:Landroid/preference/Preference;

    new-instance v1, Lcom/estrongs/android/pop/view/jb;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/jb;-><init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "language_setting"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a0017

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    array-length v1, v3

    new-array v4, v1, [Ljava/lang/String;

    const v1, 0x7f090271

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    move v1, v2

    :goto_253
    array-length v5, v3

    if-lt v1, v5, :cond_4c5

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/estrongs/android/pop/view/jf;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/jf;-><init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    sget-object v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    const-string v3, "Market"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_278

    const-string v1, "preference_others_category"

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_278

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_278
    const-string v0, "net_passwd_enable"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->m:Landroid/preference/CheckBoxPreference;

    const-string v0, "net_passwd_change"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->w:Landroid/preference/Preference;

    const-string v0, "start_passwd_enable"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->p:Landroid/preference/CheckBoxPreference;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->m:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2a2

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->m:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/estrongs/android/pop/view/jh;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/jh;-><init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2a2
    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->p:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2b0

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->p:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/estrongs/android/pop/view/ji;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/ji;-><init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2b0
    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->w:Landroid/preference/Preference;

    if-eqz v0, :cond_2e1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->m:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2e1

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->w:Landroid/preference/Preference;

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->m:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2ca

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->w:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_2ca
    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->p:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2d7

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->w:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_2d7
    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->w:Landroid/preference/Preference;

    new-instance v1, Lcom/estrongs/android/pop/view/jk;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/jk;-><init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_2e1
    const-string v0, "ftpsvr_root_dir"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->g:Landroid/preference/EditTextPreference;

    const-string v0, "ftp_server"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->n:Landroid/preference/CheckBoxPreference;

    const-string v0, "ftpsvr_auto_exit"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->o:Landroid/preference/CheckBoxPreference;

    const-string v0, "ftpsvr_account_change"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->x:Landroid/preference/Preference;

    const-string v0, "ftpsvr_port"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->h:Landroid/preference/EditTextPreference;

    const-string v0, "ftpsvr_charset_change"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->y:Landroid/preference/Preference;

    const-string v0, "ftpsvr_create_shortcut"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->z:Landroid/preference/Preference;

    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->Y()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_331

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4cd

    :cond_331
    iget-object v1, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->x:Landroid/preference/Preference;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v0, 0x7f0902a3

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_354
    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->aa()I

    move-result v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->h:Landroid/preference/EditTextPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f090296

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->h:Landroid/preference/EditTextPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->Z()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->g:Landroid/preference/EditTextPreference;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v1, :cond_4e9

    const-string v0, "/"

    :goto_3a6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->g:Landroid/preference/EditTextPreference;

    if-nez v1, :cond_3b7

    const-string v1, "/"

    :cond_3b7
    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->g:Landroid/preference/EditTextPreference;

    new-instance v1, Lcom/estrongs/android/pop/view/jl;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/jl;-><init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->h:Landroid/preference/EditTextPreference;

    new-instance v1, Lcom/estrongs/android/pop/view/jn;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/jn;-><init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :try_start_3ce
    invoke-static {}, Lcom/estrongs/android/pop/ftp/l;->a()Lcom/estrongs/android/pop/ftp/l;

    move-result-object v0

    new-instance v1, Lcom/estrongs/android/pop/view/jo;

    invoke-direct {v1, p0, v0}, Lcom/estrongs/android/pop/view/jo;-><init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;Lcom/estrongs/android/pop/ftp/l;)V

    invoke-virtual {v0, p0, v1}, Lcom/estrongs/android/pop/ftp/l;->a(Landroid/content/Context;Lcom/estrongs/android/pop/ftp/n;)V
    :try_end_3da
    .catch Ljava/lang/Exception; {:try_start_3ce .. :try_end_3da} :catch_4ec

    :goto_3da
    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->n:Landroid/preference/CheckBoxPreference;

    new-instance v1, Lcom/estrongs/android/pop/view/jp;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/jp;-><init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->x:Landroid/preference/Preference;

    new-instance v1, Lcom/estrongs/android/pop/view/jr;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/jr;-><init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->aj()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->y:Landroid/preference/Preference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0902ad

    invoke-virtual {p0, v3}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->y:Landroid/preference/Preference;

    new-instance v1, Lcom/estrongs/android/pop/view/js;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/js;-><init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->z:Landroid/preference/Preference;

    new-instance v1, Lcom/estrongs/android/pop/view/ju;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/ju;-><init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string v0, "hidedirfiles"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->A:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->A:Landroid/preference/Preference;

    new-instance v1, Lcom/estrongs/android/pop/view/jv;

    invoke-direct {v1, p0}, Lcom/estrongs/android/pop/view/jv;-><init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    sget-boolean v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->j:Z

    if-nez v0, :cond_457

    const-string v0, "preference_network_setting_category"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->A:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    const-string v0, "preference_net_settings_category"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->p:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_457
    sget-object v1, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    const-string v0, "Spreadtrum"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_491

    const-string v0, "styleflying"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_491

    const-string v0, "Lenovo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_491

    const-string v0, "Lenovo_A2105"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_491

    const-string v0, "Samsung_Market"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_491

    const-string v0, "MStar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_491

    const-string v0, "Spreadtrum_cmcc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a2

    :cond_491
    const-string v0, "preference_network_setting_category"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    const-string v2, "preference_upgrade_settings_text_category"

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_4a2
    const-string v0, "Spreadtrum_cmcc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4bb

    const-string v0, "preference_general_settings_category"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    const-string v1, "home_up_enabled"

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_4bb
    return-void

    :cond_4bc
    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_27

    :cond_4c5
    aget-object v5, v3, v1

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_253

    :cond_4cd
    iget-object v1, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->x:Landroid/preference/Preference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_354

    :cond_4e9
    move-object v0, v1

    goto/16 :goto_3a6

    :catch_4ec
    move-exception v0

    goto/16 :goto_3da
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 10

    const v7, 0x7f070140

    const v6, 0x7f030030

    const/4 v5, 0x5

    const/4 v1, 0x0

    const/16 v4, 0x8

    invoke-static {p0}, Lcom/estrongs/android/pop/c;->a(Landroid/content/Context;)Lcom/estrongs/android/pop/c;

    move-result-object v0

    packed-switch p1, :pswitch_data_232

    :pswitch_11
    move-object v0, v1

    :goto_12
    return-object v0

    :pswitch_13
    invoke-virtual {v0}, Lcom/estrongs/android/pop/c;->k()I

    move-result v1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090096

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0009

    new-instance v4, Lcom/estrongs/android/pop/view/jz;

    invoke-direct {v4, p0, v0}, Lcom/estrongs/android/pop/view/jz;-><init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;Lcom/estrongs/android/pop/c;)V

    invoke-virtual {v2, v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0900b4

    new-instance v3, Lcom/estrongs/android/pop/view/ka;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/pop/view/ka;-><init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;Lcom/estrongs/android/pop/c;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0900b5

    new-instance v3, Lcom/estrongs/android/pop/view/kb;

    invoke-direct {v3, p0, v0}, Lcom/estrongs/android/pop/view/kb;-><init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;Lcom/estrongs/android/pop/c;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_12

    :pswitch_4c
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0900c9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900ca

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->H:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09005f

    new-instance v2, Lcom/estrongs/android/pop/view/kc;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/view/kc;-><init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090085

    new-instance v2, Lcom/estrongs/android/pop/view/kd;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/view/kd;-><init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_12

    :pswitch_82
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0900eb

    invoke-virtual {p0, v1}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto/16 :goto_12

    :pswitch_9b
    sget-object v0, Lcom/estrongs/android/pop/view/FileExplorerActivity;->c:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    new-instance v0, Lcom/estrongs/android/pop/view/e;

    iget-object v3, p0, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->G:Lcom/estrongs/android/pop/view/h;

    invoke-direct {v0, p0, v3, v1, v2}, Lcom/estrongs/android/pop/view/e;-><init>(Landroid/content/Context;Lcom/estrongs/android/pop/view/h;IF)V

    goto/16 :goto_12

    :pswitch_bc
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090130

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090131

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09005f

    new-instance v2, Lcom/estrongs/android/pop/view/ke;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/view/ke;-><init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090085

    new-instance v2, Lcom/estrongs/android/pop/view/kf;

    invoke-direct {v2, p0}, Lcom/estrongs/android/pop/view/kf;-><init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_12

    :pswitch_ed
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090278

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f09005e

    new-instance v3, Lcom/estrongs/android/pop/view/kg;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/view/kg;-><init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f090060

    new-instance v3, Lcom/estrongs/android/pop/view/kh;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/view/kh;-><init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-virtual {v0, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f070143

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_12

    :pswitch_13f
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09027a

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f09005e

    new-instance v3, Lcom/estrongs/android/pop/view/ki;

    invoke-direct {v3, p0, p1}, Lcom/estrongs/android/pop/view/ki;-><init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;I)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f090060

    new-instance v3, Lcom/estrongs/android/pop/view/kk;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/view/kk;-><init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-virtual {v0, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f070143

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_12

    :pswitch_190
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0901a7

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f09005e

    new-instance v3, Lcom/estrongs/android/pop/view/kl;

    invoke-direct {v3, p0, p1}, Lcom/estrongs/android/pop/view/kl;-><init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;I)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f090060

    new-instance v3, Lcom/estrongs/android/pop/view/km;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/view/km;-><init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-virtual {v0, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f070143

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f070148

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_12

    :pswitch_1eb
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090294

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f09005e

    new-instance v3, Lcom/estrongs/android/pop/view/kn;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/view/kn;-><init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f090060

    new-instance v3, Lcom/estrongs/android/pop/view/kp;

    invoke-direct {v3, p0}, Lcom/estrongs/android/pop/view/kp;-><init>(Lcom/estrongs/android/pop/view/PopPreferenceActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-virtual {v0, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_12

    :pswitch_data_232
    .packed-switch 0x64
        :pswitch_13
        :pswitch_4c
        :pswitch_82
        :pswitch_11
        :pswitch_9b
        :pswitch_bc
        :pswitch_11
        :pswitch_ed
        :pswitch_13f
        :pswitch_190
        :pswitch_1eb
        :pswitch_13f
        :pswitch_190
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 1

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 1

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;->onPause()V

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 9

    const v5, 0x7f070143

    const v4, 0x7f070146

    const/16 v3, 0x8

    :try_start_8
    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_27} :catch_138

    :goto_27
    packed-switch p1, :pswitch_data_13c

    :goto_2a
    return-void

    :pswitch_2b
    invoke-virtual {p2, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f070147

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f070142

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f07014a

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f070141

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f09027f

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x6d

    if-ne p1, v0, :cond_b7

    invoke-virtual {p2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_8f
    const v0, 0x7f070149

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f090280

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2a

    :cond_b7
    invoke-virtual {p2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f09027e

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8f

    :pswitch_db
    invoke-virtual {p2, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f070148

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f070144

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f090037

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f090038

    invoke-virtual {p0, v2}, Lcom/estrongs/android/pop/view/PopPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2a

    :catch_138
    move-exception v0

    goto/16 :goto_27

    nop

    :pswitch_data_13c
    .packed-switch 0x6b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_db
        :pswitch_2b
        :pswitch_2b
    .end packed-switch
.end method

.method protected onResume()V
    .registers 1

    invoke-super {p0}, Lcom/estrongs/android/pop/esclasses/ESPreferenceActivity;->onResume()V

    return-void
.end method
