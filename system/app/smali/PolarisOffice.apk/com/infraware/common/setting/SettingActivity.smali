.class public Lcom/infraware/common/setting/SettingActivity;
.super Landroid/preference/PreferenceActivity;
.source "SettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/common/setting/SettingActivity$CloseReceiver;,
        Lcom/infraware/common/setting/SettingActivity$UpdateReceiver;
    }
.end annotation


# static fields
.field private static final CHECK_ZOOM_VALUE:I = 0xc8

.field private static final DLG_ACCOUNT:I = 0x12c

.field static final DOWNLOAD_CANCEL:I = 0x1

.field static final DOWNLOAD_CONFIRM_ERROR:I = 0x6

.field static final DOWNLOAD_CONNECTION_ERROR:I = 0x3

.field static final DOWNLOAD_FILE_WRITE_ERROR:I = 0x5

.field static final DOWNLOAD_LATEST_VERSION:I = 0x2

.field static final DOWNLOAD_NETWORK_ERROR:I = 0x4

.field static final DOWNLOAD_SUCCESS:I = 0x0

.field private static final KEY_ABOUT:Ljava/lang/String; = "about"

.field private static final KEY_ACCOUNT:Ljava/lang/String; = "account"

.field private static final KEY_CREATE_BACKUP:Ljava/lang/String; = "create_backup"

.field private static final KEY_CUSTOM_ZOOM:Ljava/lang/String; = "custom_zoom"

.field private static final KEY_DISPLAY_FILE:Ljava/lang/String; = "display_file"

.field private static final KEY_LIVE_UPDATE_CHECK:Ljava/lang/String; = "live_update_check"

.field private static final KEY_PIVOT_LOCK:Ljava/lang/String; = "pivot_lock"

.field private static final KEY_SMARTSHARE_OUTPUT:Ljava/lang/String; = "smartshare_output"

.field private static final KEY_UPDATE:Ljava/lang/String; = "update"

.field private static final LIVE_UPDATE_CHECK_ALL:I = 0x2

.field private static final LIVE_UPDATE_CHECK_OFF:I = 0x0

.field private static final LIVE_UPDATE_CHECK_WIFIONLY:I = 0x1

.field static final MAX_ZOOM_LEVEL:I = 0xc8

.field static final MIN_ZOOM_LEVEL:I = 0x32

.field private static final POPUP_CANCELED:I = 0x258

.field private static final POPUP_CUSTOM_ZOOM:I = 0x64

.field private static final POPUP_LIVE_UPDATE_CHECK:I = 0x2bc

.field private static final POPUP_MSG:I = 0xc8

.field private static final POPUP_UPDATE:I = 0x190

.field private static final POPUP_UPDATE_OK_CANCEL:I = 0x1f4

.field private static final UPDATE_START:I = 0x64


# instance fields
.field private focusedView:Landroid/view/View;

.field private mAboutPref:Landroid/preference/Preference;

.field private mAccountPref:Landroid/preference/Preference;

.field private mCancelDialog:Landroid/app/AlertDialog;

.field private mCancelMsg:I

.field private mCloseReceiver:Lcom/infraware/common/setting/SettingActivity$CloseReceiver;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mCreateBackupPref:Landroid/preference/CheckBoxPreference;

.field private mCustomZoomDialog:Landroid/app/AlertDialog;

.field private mCustomZoomPref:Landroid/preference/Preference;

.field private mDisplayFilePref:Landroid/preference/CheckBoxPreference;

.field private mEventHandler:Landroid/os/Handler;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsSubUpdate:Z

.field private mLiveUpdateCheckDialog:Landroid/app/AlertDialog;

.field private mLiveUpdateCheckPref:Landroid/preference/Preference;

.field private mPivotLockPref:Landroid/preference/CheckBoxPreference;

.field private mPopupDialog:Landroid/app/AlertDialog;

.field private mPopupMsg:I

.field private mPopupType:I

.field private mPopupUpdateDialog:Landroid/app/AlertDialog;

.field private mProgressDialog:Landroid/app/AlertDialog;

.field private mRoot:Landroid/preference/PreferenceScreen;

.field private mRootPath:Ljava/lang/String;

.field private mSmartShareOutputPref:Landroid/preference/Preference;

.field private mTempPath:Ljava/lang/String;

.field private mToastMsg:Landroid/widget/Toast;

.field private mUpdatePref:Landroid/preference/Preference;

.field private mUpdateReceiver:Lcom/infraware/common/setting/SettingActivity$UpdateReceiver;

.field private m_Live_Update_Check_List:[Ljava/lang/CharSequence;

.field private m_Service_Status:I

.field private m_bCreateBackup:Z

.field private m_bDisplayFileExtension:Z

.field private m_bInternalMode:Z

.field private m_bPause:Z

.field private m_bPivotLock:Z

.field private m_etZoomLevel:Landroid/widget/EditText;

.field private m_iLiveUpdateCheck:I

.field private m_nCustomZoom:I

.field private m_nInputCount:I

.field public m_nLocaleCode:I

.field public m_nOrientation:I

.field private m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

.field private m_oSetting:Lcom/infraware/common/config/RuntimeConfig;

.field private m_strSubUpdateURL:Ljava/lang/String;

.field private m_strUpdateURL:Ljava/lang/String;

.field private m_strVersionCode:Ljava/lang/String;

.field private m_tvUpdateMsg:Landroid/widget/TextView;

.field private m_tvZoomLevelMsg:Landroid/widget/TextView;

.field private updateBinder:Lcom/infraware/common/update/UpdateService;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/common/setting/SettingActivity;->mRootPath:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/infraware/common/setting/SettingActivity;->mTempPath:Ljava/lang/String;

    .line 76
    iput-boolean v2, p0, Lcom/infraware/common/setting/SettingActivity;->m_bCreateBackup:Z

    iput-boolean v2, p0, Lcom/infraware/common/setting/SettingActivity;->m_bDisplayFileExtension:Z

    iput-boolean v2, p0, Lcom/infraware/common/setting/SettingActivity;->m_bPivotLock:Z

    .line 77
    iput-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->m_strVersionCode:Ljava/lang/String;

    .line 78
    iput v2, p0, Lcom/infraware/common/setting/SettingActivity;->mPopupMsg:I

    iput v2, p0, Lcom/infraware/common/setting/SettingActivity;->mPopupType:I

    iput v2, p0, Lcom/infraware/common/setting/SettingActivity;->mCancelMsg:I

    .line 79
    const/16 v0, 0x64

    iput v0, p0, Lcom/infraware/common/setting/SettingActivity;->m_nCustomZoom:I

    .line 80
    iput v2, p0, Lcom/infraware/common/setting/SettingActivity;->m_nInputCount:I

    .line 83
    iput v2, p0, Lcom/infraware/common/setting/SettingActivity;->m_nOrientation:I

    iput v2, p0, Lcom/infraware/common/setting/SettingActivity;->m_nLocaleCode:I

    .line 84
    iput-boolean v2, p0, Lcom/infraware/common/setting/SettingActivity;->mIsSubUpdate:Z

    iput-boolean v2, p0, Lcom/infraware/common/setting/SettingActivity;->m_bInternalMode:Z

    .line 86
    iput-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->mCustomZoomDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->mPopupDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->mProgressDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->mPopupUpdateDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->mCancelDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->mLiveUpdateCheckDialog:Landroid/app/AlertDialog;

    .line 87
    iput-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->m_tvZoomLevelMsg:Landroid/widget/TextView;

    .line 88
    iput-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->m_tvUpdateMsg:Landroid/widget/TextView;

    .line 89
    iput-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->m_etZoomLevel:Landroid/widget/EditText;

    .line 92
    iput-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->m_strSubUpdateURL:Ljava/lang/String;

    .line 94
    iput-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->mEventHandler:Landroid/os/Handler;

    .line 96
    iput-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->mToastMsg:Landroid/widget/Toast;

    .line 99
    iput-boolean v2, p0, Lcom/infraware/common/setting/SettingActivity;->m_bPause:Z

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lcom/infraware/common/setting/SettingActivity;->m_Service_Status:I

    .line 102
    iput-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->focusedView:Landroid/view/View;

    .line 104
    iput-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->m_Live_Update_Check_List:[Ljava/lang/CharSequence;

    .line 109
    const/4 v0, 0x1

    iput v0, p0, Lcom/infraware/common/setting/SettingActivity;->m_iLiveUpdateCheck:I

    .line 111
    iput-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    .line 113
    new-instance v0, Lcom/infraware/common/setting/SettingActivity$1;

    invoke-direct {v0, p0}, Lcom/infraware/common/setting/SettingActivity$1;-><init>(Lcom/infraware/common/setting/SettingActivity;)V

    iput-object v0, p0, Lcom/infraware/common/setting/SettingActivity;->mConnection:Landroid/content/ServiceConnection;

    .line 30
    return-void
.end method

.method private SetPivotLock(Z)V
    .registers 3
    .parameter "bLock"

    .prologue
    .line 477
    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isSupportPivotLock()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/infraware/common/setting/SettingActivity;->m_bInternalMode:Z

    if-nez v0, :cond_b

    .line 480
    :cond_a
    :goto_a
    return-void

    .line 479
    :cond_b
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/infraware/common/config/RuntimeConfig;->onChangeOrientation(Landroid/app/Activity;)V

    goto :goto_a
.end method

.method static synthetic access$0(Lcom/infraware/common/setting/SettingActivity;Lcom/infraware/common/update/UpdateService;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/infraware/common/setting/SettingActivity;->updateBinder:Lcom/infraware/common/update/UpdateService;

    return-void
.end method

.method static synthetic access$1(Lcom/infraware/common/setting/SettingActivity;)Landroid/app/AlertDialog;
    .registers 2
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/infraware/common/setting/SettingActivity;->mCustomZoomDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$10(Lcom/infraware/common/setting/SettingActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 80
    iput p1, p0, Lcom/infraware/common/setting/SettingActivity;->m_nInputCount:I

    return-void
.end method

.method static synthetic access$11(Lcom/infraware/common/setting/SettingActivity;)Landroid/os/Handler;
    .registers 2
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/infraware/common/setting/SettingActivity;->mEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$12(Lcom/infraware/common/setting/SettingActivity;)Landroid/preference/Preference;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/infraware/common/setting/SettingActivity;->mCustomZoomPref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$13(Lcom/infraware/common/setting/SettingActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 79
    iput p1, p0, Lcom/infraware/common/setting/SettingActivity;->m_nCustomZoom:I

    return-void
.end method

.method static synthetic access$14(Lcom/infraware/common/setting/SettingActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 79
    iget v0, p0, Lcom/infraware/common/setting/SettingActivity;->m_nCustomZoom:I

    return v0
.end method

.method static synthetic access$15(Lcom/infraware/common/setting/SettingActivity;)Landroid/view/View;
    .registers 2
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/infraware/common/setting/SettingActivity;->focusedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$16(Lcom/infraware/common/setting/SettingActivity;)Landroid/view/inputmethod/InputMethodManager;
    .registers 2
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/infraware/common/setting/SettingActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$17(Lcom/infraware/common/setting/SettingActivity;Landroid/view/View;)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/infraware/common/setting/SettingActivity;->focusedView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$18(Lcom/infraware/common/setting/SettingActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 78
    iput p1, p0, Lcom/infraware/common/setting/SettingActivity;->mCancelMsg:I

    return-void
.end method

.method static synthetic access$19(Lcom/infraware/common/setting/SettingActivity;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/infraware/common/setting/SettingActivity;->mIsSubUpdate:Z

    return-void
.end method

.method static synthetic access$2(Lcom/infraware/common/setting/SettingActivity;)Landroid/app/AlertDialog;
    .registers 2
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/infraware/common/setting/SettingActivity;->mPopupDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$20(Lcom/infraware/common/setting/SettingActivity;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 109
    iput p1, p0, Lcom/infraware/common/setting/SettingActivity;->m_iLiveUpdateCheck:I

    return-void
.end method

.method static synthetic access$21(Lcom/infraware/common/setting/SettingActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 109
    iget v0, p0, Lcom/infraware/common/setting/SettingActivity;->m_iLiveUpdateCheck:I

    return v0
.end method

.method static synthetic access$22(Lcom/infraware/common/setting/SettingActivity;)Landroid/preference/Preference;
    .registers 2
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/infraware/common/setting/SettingActivity;->mLiveUpdateCheckPref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$23(Lcom/infraware/common/setting/SettingActivity;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 1107
    invoke-direct {p0, p1}, Lcom/infraware/common/setting/SettingActivity;->convertStringWIFIToWLAN(Z)V

    return-void
.end method

.method static synthetic access$3(Lcom/infraware/common/setting/SettingActivity;)Landroid/app/AlertDialog;
    .registers 2
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/infraware/common/setting/SettingActivity;->mProgressDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$4(Lcom/infraware/common/setting/SettingActivity;)Landroid/app/AlertDialog;
    .registers 2
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/infraware/common/setting/SettingActivity;->mPopupUpdateDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$5(Lcom/infraware/common/setting/SettingActivity;)V
    .registers 1
    .parameter

    .prologue
    .line 823
    invoke-direct {p0}, Lcom/infraware/common/setting/SettingActivity;->setSettingValue()V

    return-void
.end method

.method static synthetic access$6(Lcom/infraware/common/setting/SettingActivity;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/infraware/common/setting/SettingActivity;->m_strVersionCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/infraware/common/setting/SettingActivity;)Landroid/widget/EditText;
    .registers 2
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/infraware/common/setting/SettingActivity;->m_etZoomLevel:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$8(Lcom/infraware/common/setting/SettingActivity;)I
    .registers 2
    .parameter

    .prologue
    .line 80
    iget v0, p0, Lcom/infraware/common/setting/SettingActivity;->m_nInputCount:I

    return v0
.end method

.method static synthetic access$9(Lcom/infraware/common/setting/SettingActivity;II)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1058
    invoke-direct {p0, p1, p2}, Lcom/infraware/common/setting/SettingActivity;->onShowFieldValueError(II)V

    return-void
.end method

.method public static callSettingActivity(Landroid/app/Activity;I)V
    .registers 6
    .parameter "activity"
    .parameter "requestCode"

    .prologue
    const/4 v3, 0x1

    .line 124
    invoke-static {p0}, Lcom/infraware/common/util/Utils;->getVersionCode(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, engineVersion:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/infraware/common/setting/SettingActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    .local v1, settingIntent:Landroid/content/Intent;
    const-string v2, "key_version"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v2, "key_interanl_mode"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 129
    const-string v2, "key_in_document_setting"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 130
    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 131
    return-void
.end method

.method private convertStringArrayWIFIToWLAN()V
    .registers 6

    .prologue
    .line 1120
    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isConvertStringWIFIToWLAN()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1122
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->m_Live_Update_Check_List:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-lt v0, v1, :cond_d

    .line 1127
    .end local v0           #i:I
    :cond_c
    return-void

    .line 1124
    .restart local v0       #i:I
    :cond_d
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->m_Live_Update_Check_List:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/infraware/common/setting/SettingActivity;->m_Live_Update_Check_List:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Wi-Fi"

    const-string v4, "WLAN"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1122
    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method private convertStringWIFIToWLAN(Z)V
    .registers 6
    .parameter "wifiOnly"

    .prologue
    .line 1109
    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isConvertStringWIFIToWLAN()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1111
    if-eqz p1, :cond_21

    .line 1112
    iget-object v0, p0, Lcom/infraware/common/setting/SettingActivity;->mLiveUpdateCheckPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/infraware/common/setting/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0802fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Wi-Fi"

    const-string v3, "WLAN"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1116
    :cond_20
    :goto_20
    return-void

    .line 1114
    :cond_21
    iget-object v0, p0, Lcom/infraware/common/setting/SettingActivity;->mLiveUpdateCheckPref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/infraware/common/setting/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0802fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Wi-Fi"

    const-string v3, "WLAN"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_20
.end method

.method public static getCustomZoom()I
    .registers 10

    .prologue
    .line 1074
    new-instance v0, Lcom/infraware/common/util/ini/IniFile;

    const-string v8, "dvToolbarConfig.ini"

    invoke-direct {v0, v8}, Lcom/infraware/common/util/ini/IniFile;-><init>(Ljava/lang/String;)V

    .line 1075
    .local v0, iniFile:Lcom/infraware/common/util/ini/IniFile;
    const-string v8, "POLSAIRS_DOCUMENT_SETTING"

    const-string v9, "CUST_ZOOM"

    invoke-virtual {v0, v8, v9}, Lcom/infraware/common/util/ini/IniFile;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1077
    .local v7, value:Ljava/lang/String;
    const/16 v1, 0x64

    .line 1078
    .local v1, nCustomZoom:I
    if-eqz v7, :cond_3a

    .line 1079
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v8, ":"

    invoke-direct {v6, v7, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    .local v6, strToken:Ljava/util/StringTokenizer;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_3a

    .line 1082
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1083
    .local v4, str1:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1085
    .local v5, str2:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1086
    .local v2, num1:I
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1088
    .local v3, num2:I
    add-int v1, v2, v3

    .line 1092
    .end local v2           #num1:I
    .end local v3           #num2:I
    .end local v4           #str1:Ljava/lang/String;
    .end local v5           #str2:Ljava/lang/String;
    .end local v6           #strToken:Ljava/util/StringTokenizer;
    :cond_3a
    return v1
.end method

.method private getSettingValue()V
    .registers 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 774
    new-instance v0, Lcom/infraware/common/util/ini/IniFile;

    const-string v7, "dvToolbarConfig.ini"

    invoke-direct {v0, v7}, Lcom/infraware/common/util/ini/IniFile;-><init>(Ljava/lang/String;)V

    .line 777
    .local v0, iniFile:Lcom/infraware/common/util/ini/IniFile;
    const-string v7, "POLSAIRS_DOCUMENT_SETTING"

    .line 778
    const-string v10, "BACKUP"

    .line 776
    invoke-virtual {v0, v7, v10}, Lcom/infraware/common/util/ini/IniFile;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 779
    .local v6, value:Ljava/lang/String;
    if-eqz v6, :cond_1c

    .line 780
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_89

    move v7, v8

    :goto_1a
    iput-boolean v7, p0, Lcom/infraware/common/setting/SettingActivity;->m_bCreateBackup:Z

    .line 782
    :cond_1c
    const-string v7, "POLSAIRS_DOCUMENT_SETTING"

    .line 783
    const-string v10, "SHOW_EXT"

    .line 782
    invoke-virtual {v0, v7, v10}, Lcom/infraware/common/util/ini/IniFile;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 785
    if-nez v6, :cond_28

    .line 786
    const-string v6, "1"

    .line 788
    :cond_28
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_8b

    move v7, v8

    :goto_2f
    iput-boolean v7, p0, Lcom/infraware/common/setting/SettingActivity;->m_bDisplayFileExtension:Z

    .line 790
    const-string v7, "POLSAIRS_DOCUMENT_SETTING"

    .line 791
    const-string v10, "PIVOT_LOCK"

    .line 790
    invoke-virtual {v0, v7, v10}, Lcom/infraware/common/util/ini/IniFile;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 792
    if-eqz v6, :cond_43

    .line 793
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_8d

    :goto_41
    iput-boolean v8, p0, Lcom/infraware/common/setting/SettingActivity;->m_bPivotLock:Z

    .line 795
    :cond_43
    const-string v7, "POLSAIRS_DOCUMENT_SETTING"

    .line 796
    const-string v8, "CUST_ZOOM"

    .line 795
    invoke-virtual {v0, v7, v8}, Lcom/infraware/common/util/ini/IniFile;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 797
    if-nez v6, :cond_4f

    .line 798
    const-string v6, "100:0"

    .line 801
    :cond_4f
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v7, ":"

    invoke-direct {v5, v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    .local v5, strToken:Ljava/util/StringTokenizer;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_78

    .line 804
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 805
    .local v3, str1:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 807
    .local v4, str2:Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 808
    .local v1, num1:I
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 810
    .local v2, num2:I
    add-int v7, v1, v2

    iput v7, p0, Lcom/infraware/common/setting/SettingActivity;->m_nCustomZoom:I

    .line 815
    .end local v1           #num1:I
    .end local v2           #num2:I
    .end local v3           #str1:Ljava/lang/String;
    .end local v4           #str2:Ljava/lang/String;
    :cond_78
    const-string v7, "LIVE_UPDATE_SETTING"

    .line 816
    const-string v8, "LIVE_UPDATE"

    .line 815
    invoke-virtual {v0, v7, v8}, Lcom/infraware/common/util/ini/IniFile;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 817
    if-eqz v6, :cond_88

    .line 818
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/infraware/common/setting/SettingActivity;->m_iLiveUpdateCheck:I

    .line 821
    :cond_88
    return-void

    .end local v5           #strToken:Ljava/util/StringTokenizer;
    :cond_89
    move v7, v9

    .line 780
    goto :goto_1a

    :cond_8b
    move v7, v9

    .line 788
    goto :goto_2f

    :cond_8d
    move v8, v9

    .line 793
    goto :goto_41
.end method

.method private onShowFieldValueError(II)V
    .registers 9
    .parameter "nMin"
    .parameter "nMax"

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1059
    invoke-virtual {p0}, Lcom/infraware/common/setting/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08026e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1060
    .local v0, formattedString:Ljava/lang/String;
    if-eqz v0, :cond_3c

    .line 1061
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->mToastMsg:Landroid/widget/Toast;

    if-nez v1, :cond_3d

    .line 1063
    invoke-virtual {p0}, Lcom/infraware/common/setting/SettingActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->mToastMsg:Landroid/widget/Toast;

    .line 1064
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->mToastMsg:Landroid/widget/Toast;

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 1068
    :goto_37
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->mToastMsg:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1070
    :cond_3c
    return-void

    .line 1067
    :cond_3d
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->mToastMsg:Landroid/widget/Toast;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_37
.end method

.method private setSettingValue()V
    .registers 10

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 824
    new-instance v0, Lcom/infraware/common/util/ini/IniFile;

    const-string v4, "dvToolbarConfig.ini"

    invoke-direct {v0, v4}, Lcom/infraware/common/util/ini/IniFile;-><init>(Ljava/lang/String;)V

    .line 826
    .local v0, iniFile:Lcom/infraware/common/util/ini/IniFile;
    const-string v7, "POLSAIRS_DOCUMENT_SETTING"

    .line 827
    const-string v8, "BACKUP"

    .line 828
    iget-boolean v4, p0, Lcom/infraware/common/setting/SettingActivity;->m_bCreateBackup:Z

    if-eqz v4, :cond_77

    move v4, v5

    :goto_12
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 826
    invoke-virtual {v0, v7, v8, v4}, Lcom/infraware/common/util/ini/IniFile;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    const-string v7, "POLSAIRS_DOCUMENT_SETTING"

    .line 830
    const-string v8, "SHOW_EXT"

    .line 831
    iget-boolean v4, p0, Lcom/infraware/common/setting/SettingActivity;->m_bDisplayFileExtension:Z

    if-eqz v4, :cond_79

    move v4, v5

    :goto_22
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 829
    invoke-virtual {v0, v7, v8, v4}, Lcom/infraware/common/util/ini/IniFile;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    const-string v4, "POLSAIRS_DOCUMENT_SETTING"

    .line 833
    const-string v7, "PIVOT_LOCK"

    .line 834
    iget-boolean v8, p0, Lcom/infraware/common/setting/SettingActivity;->m_bPivotLock:Z

    if-eqz v8, :cond_32

    move v6, v5

    :cond_32
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 832
    invoke-virtual {v0, v4, v7, v6}, Lcom/infraware/common/util/ini/IniFile;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    iget v4, p0, Lcom/infraware/common/setting/SettingActivity;->m_nCustomZoom:I

    if-lez v4, :cond_63

    .line 837
    iget v4, p0, Lcom/infraware/common/setting/SettingActivity;->m_nCustomZoom:I

    rem-int/lit16 v1, v4, 0x100

    .line 838
    .local v1, num1:I
    iget v4, p0, Lcom/infraware/common/setting/SettingActivity;->m_nCustomZoom:I

    div-int/lit16 v2, v4, 0x100

    .line 840
    .local v2, num2:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 841
    .local v3, value:Ljava/lang/String;
    const-string v4, "POLSAIRS_DOCUMENT_SETTING"

    .line 842
    const-string v6, "CUST_ZOOM"

    .line 841
    invoke-virtual {v0, v4, v6, v3}, Lcom/infraware/common/util/ini/IniFile;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    .end local v1           #num1:I
    .end local v2           #num2:I
    .end local v3           #value:Ljava/lang/String;
    :cond_63
    const-string v4, "LIVE_UPDATE_SETTING"

    .line 847
    const-string v6, "LIVE_UPDATE"

    .line 848
    iget v7, p0, Lcom/infraware/common/setting/SettingActivity;->m_iLiveUpdateCheck:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 846
    invoke-virtual {v0, v4, v6, v7}, Lcom/infraware/common/util/ini/IniFile;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    invoke-virtual {v0, v5}, Lcom/infraware/common/util/ini/IniFile;->setEndFlag(Z)V

    .line 851
    invoke-virtual {v0}, Lcom/infraware/common/util/ini/IniFile;->flushData()V

    .line 852
    return-void

    :cond_77
    move v4, v6

    .line 828
    goto :goto_12

    :cond_79
    move v4, v6

    .line 831
    goto :goto_22
.end method

.method private setUI()V
    .registers 12

    .prologue
    const v10, 0x7f08030e

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 303
    new-instance v0, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p0}, Lcom/infraware/common/setting/SettingActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/infraware/common/util/Utils;->GetSystemFontSize(Landroid/content/Context;)I

    move-result v5

    invoke-direct {v0, v5, v9}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 304
    .local v0, span:Landroid/text/style/AbsoluteSizeSpan;
    invoke-virtual {p0, v10}, Lcom/infraware/common/setting/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, strVendor:Ljava/lang/String;
    iget-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mCreateBackupPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v6, p0, Lcom/infraware/common/setting/SettingActivity;->m_bCreateBackup:Z

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 307
    const-string v5, "- FV09"

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_31

    .line 308
    iget-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mCreateBackupPref:Landroid/preference/CheckBoxPreference;

    const v6, 0x7f080289

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 310
    :cond_31
    new-instance v2, Landroid/text/SpannableString;

    const v5, 0x7f080026

    invoke-virtual {p0, v5}, Lcom/infraware/common/setting/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 311
    .local v2, title:Landroid/text/SpannableString;
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {v2, v0, v8, v5, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 312
    iget-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mCreateBackupPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mDisplayFilePref:Landroid/preference/CheckBoxPreference;

    iget-boolean v6, p0, Lcom/infraware/common/setting/SettingActivity;->m_bDisplayFileExtension:Z

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 315
    const-string v5, "- FV09"

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_60

    .line 316
    iget-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mDisplayFilePref:Landroid/preference/CheckBoxPreference;

    const v6, 0x7f08028a

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 318
    :cond_60
    new-instance v2, Landroid/text/SpannableString;

    .end local v2           #title:Landroid/text/SpannableString;
    const v5, 0x7f080027

    invoke-virtual {p0, v5}, Lcom/infraware/common/setting/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 319
    .restart local v2       #title:Landroid/text/SpannableString;
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {v2, v0, v8, v5, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 320
    iget-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mDisplayFilePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mPivotLockPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v6, p0, Lcom/infraware/common/setting/SettingActivity;->m_bPivotLock:Z

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 323
    const-string v5, "- FV09"

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_8f

    .line 324
    iget-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mPivotLockPref:Landroid/preference/CheckBoxPreference;

    const v6, 0x7f08028b

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 326
    :cond_8f
    new-instance v2, Landroid/text/SpannableString;

    .end local v2           #title:Landroid/text/SpannableString;
    const v5, 0x7f080028

    invoke-virtual {p0, v5}, Lcom/infraware/common/setting/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 327
    .restart local v2       #title:Landroid/text/SpannableString;
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {v2, v0, v8, v5, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 328
    iget-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mPivotLockPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 330
    iget-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mCustomZoomPref:Landroid/preference/Preference;

    if-eqz v5, :cond_dd

    .line 331
    iget-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mCustomZoomPref:Landroid/preference/Preference;

    new-instance v6, Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/infraware/common/setting/SettingActivity;->m_nCustomZoom:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " %"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 332
    new-instance v2, Landroid/text/SpannableString;

    .end local v2           #title:Landroid/text/SpannableString;
    const v5, 0x7f080029

    invoke-virtual {p0, v5}, Lcom/infraware/common/setting/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 333
    .restart local v2       #title:Landroid/text/SpannableString;
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {v2, v0, v8, v5, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 334
    iget-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mCustomZoomPref:Landroid/preference/Preference;

    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 337
    :cond_dd
    new-instance v2, Landroid/text/SpannableString;

    .end local v2           #title:Landroid/text/SpannableString;
    const v5, 0x7f080031

    invoke-virtual {p0, v5}, Lcom/infraware/common/setting/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 338
    .restart local v2       #title:Landroid/text/SpannableString;
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {v2, v0, v8, v5, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 339
    iget-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mAccountPref:Landroid/preference/Preference;

    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 340
    iget-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mAccountPref:Landroid/preference/Preference;

    const v6, 0x7f08002c

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 343
    iget-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mLiveUpdateCheckPref:Landroid/preference/Preference;

    if-eqz v5, :cond_11e

    .line 344
    new-instance v2, Landroid/text/SpannableString;

    .end local v2           #title:Landroid/text/SpannableString;
    const v5, 0x7f08002e

    invoke-virtual {p0, v5}, Lcom/infraware/common/setting/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 345
    .restart local v2       #title:Landroid/text/SpannableString;
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {v2, v0, v8, v5, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 346
    iget-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mLiveUpdateCheckPref:Landroid/preference/Preference;

    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 347
    iget v5, p0, Lcom/infraware/common/setting/SettingActivity;->m_iLiveUpdateCheck:I

    packed-switch v5, :pswitch_data_190

    .line 370
    :cond_11e
    :goto_11e
    iget-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mAboutPref:Landroid/preference/Preference;

    if-eqz v5, :cond_16e

    .line 371
    new-instance v2, Landroid/text/SpannableString;

    .end local v2           #title:Landroid/text/SpannableString;
    const v5, 0x7f080030

    invoke-virtual {p0, v5}, Lcom/infraware/common/setting/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 372
    .restart local v2       #title:Landroid/text/SpannableString;
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {v2, v0, v8, v5, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 373
    iget-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mAboutPref:Landroid/preference/Preference;

    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 375
    invoke-virtual {p0, v10}, Lcom/infraware/common/setting/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 376
    .local v4, venderName:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 377
    .local v3, venderLenth:I
    add-int/lit8 v5, v3, -0x4

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 378
    iget-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mAboutPref:Landroid/preference/Preference;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Ver "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/infraware/common/util/Utils;->getVersionName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 387
    .end local v3           #venderLenth:I
    .end local v4           #venderName:Ljava/lang/String;
    :cond_16e
    return-void

    .line 349
    :pswitch_16f
    iget-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mLiveUpdateCheckPref:Landroid/preference/Preference;

    const v6, 0x7f0802fa

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_11e

    .line 352
    :pswitch_178
    iget-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mLiveUpdateCheckPref:Landroid/preference/Preference;

    const v6, 0x7f0802fb

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 353
    invoke-direct {p0, v9}, Lcom/infraware/common/setting/SettingActivity;->convertStringWIFIToWLAN(Z)V

    goto :goto_11e

    .line 356
    :pswitch_184
    iget-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mLiveUpdateCheckPref:Landroid/preference/Preference;

    const v6, 0x7f0802fc

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 357
    invoke-direct {p0, v8}, Lcom/infraware/common/setting/SettingActivity;->convertStringWIFIToWLAN(Z)V

    goto :goto_11e

    .line 347
    :pswitch_data_190
    .packed-switch 0x0
        :pswitch_16f
        :pswitch_178
        :pswitch_184
    .end packed-switch
.end method


# virtual methods
.method protected makeOfficeDir()V
    .registers 4

    .prologue
    .line 1102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/common/setting/SettingActivity;->mTempPath:Ljava/lang/String;

    .line 1103
    invoke-virtual {p0}, Lcom/infraware/common/setting/SettingActivity;->makeRootDir()V

    .line 1104
    const-string v0, "/mnt/sdcard/.polarisOffice/polarisTemp"

    const-string v1, "polarisTemp"

    const-string v2, "/mnt/sdcard/.polarisOffice/polarisTemp"

    invoke-static {v0, v1, v2, p0}, Lcom/infraware/common/util/FileUtils;->createCustomPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/common/setting/SettingActivity;->mTempPath:Ljava/lang/String;

    .line 1105
    return-void
.end method

.method protected makeRootDir()V
    .registers 3

    .prologue
    .line 1097
    const-string v0, "/mnt/sdcard/.polarisOffice/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_11

    .line 1098
    const-string v0, "/mnt/sdcard/.polarisOffice/"

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Lcom/infraware/common/util/FileUtils;->makeDirectory(Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/common/setting/SettingActivity;->mRootPath:Ljava/lang/String;

    .line 1099
    :cond_11
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 763
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 771
    return-void
.end method

.method public onChangeScreen(I)V
    .registers 3
    .parameter "nType"

    .prologue
    .line 1055
    invoke-virtual {p0}, Lcom/infraware/common/setting/SettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/infraware/common/util/Utils;->onChangeScreen(Landroid/view/Window;I)V

    .line 1056
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 10
    .parameter "_newConfig"

    .prologue
    const v7, 0x7f080045

    const/4 v6, -0x2

    const v5, 0x7f080043

    const v4, 0x7f080023

    const/4 v3, -0x1

    .line 984
    iget v1, p0, Lcom/infraware/common/setting/SettingActivity;->m_nOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_1a

    .line 985
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/infraware/common/setting/SettingActivity;->m_nOrientation:I

    .line 986
    iget v1, p0, Lcom/infraware/common/setting/SettingActivity;->m_nOrientation:I

    invoke-virtual {p0, v1}, Lcom/infraware/common/setting/SettingActivity;->onChangeScreen(I)V

    .line 989
    :cond_1a
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Lcom/infraware/common/util/Utils;->getLocaleType(Ljava/util/Locale;)I

    move-result v0

    .line 990
    .local v0, nlocale:I
    iget v1, p0, Lcom/infraware/common/setting/SettingActivity;->m_nLocaleCode:I

    if-eq v1, v0, :cond_128

    .line 991
    iput v0, p0, Lcom/infraware/common/setting/SettingActivity;->m_nLocaleCode:I

    .line 993
    const v1, 0x7f080025

    invoke-virtual {p0, v1}, Lcom/infraware/common/setting/SettingActivity;->setTitle(I)V

    .line 995
    invoke-direct {p0}, Lcom/infraware/common/setting/SettingActivity;->setUI()V

    .line 997
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->mCustomZoomDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_5d

    .line 998
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->mCustomZoomDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 999
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->m_tvZoomLevelMsg:Landroid/widget/TextView;

    const v2, 0x7f08002a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1000
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->mCustomZoomDialog:Landroid/app/AlertDialog;

    const v2, 0x7f080029

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1001
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->mCustomZoomDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    .line 1002
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->mCustomZoomDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(I)V

    .line 1006
    :cond_5d
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->mPopupDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_82

    .line 1007
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->mPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_82

    .line 1008
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->mPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1009
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->mPopupDialog:Landroid/app/AlertDialog;

    iget v2, p0, Lcom/infraware/common/setting/SettingActivity;->mPopupMsg:I

    invoke-virtual {p0, v2}, Lcom/infraware/common/setting/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1010
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->mPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    .line 1014
    :cond_82
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->mProgressDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_a4

    .line 1015
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->mProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 1016
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->m_tvUpdateMsg:Landroid/widget/TextView;

    const v2, 0x7f08002f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1017
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->mProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1018
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->mProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(I)V

    .line 1022
    :cond_a4
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->mPopupUpdateDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_d2

    .line 1023
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->mPopupUpdateDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_d2

    .line 1024
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->mPopupUpdateDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1025
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->mPopupUpdateDialog:Landroid/app/AlertDialog;

    iget v2, p0, Lcom/infraware/common/setting/SettingActivity;->mPopupMsg:I

    invoke-virtual {p0, v2}, Lcom/infraware/common/setting/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1026
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->mPopupUpdateDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    .line 1027
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->mPopupUpdateDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setText(I)V

    .line 1030
    :cond_d2
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->mCancelDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_f7

    .line 1031
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->mCancelDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_f7

    .line 1032
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->mCancelDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1033
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->mCancelDialog:Landroid/app/AlertDialog;

    iget v2, p0, Lcom/infraware/common/setting/SettingActivity;->mCancelMsg:I

    invoke-virtual {p0, v2}, Lcom/infraware/common/setting/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1034
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->mCancelDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    .line 1037
    :cond_f7
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->mLiveUpdateCheckDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_128

    .line 1038
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->mLiveUpdateCheckDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_128

    .line 1039
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->mLiveUpdateCheckDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 1040
    const/16 v1, 0x2bc

    invoke-virtual {p0, v1}, Lcom/infraware/common/setting/SettingActivity;->removeDialog(I)V

    .line 1041
    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isSupportOnlyWifi()Z

    move-result v1

    if-eqz v1, :cond_12c

    .line 1042
    invoke-virtual {p0}, Lcom/infraware/common/setting/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->m_Live_Update_Check_List:[Ljava/lang/CharSequence;

    .line 1045
    :goto_120
    invoke-direct {p0}, Lcom/infraware/common/setting/SettingActivity;->convertStringArrayWIFIToWLAN()V

    .line 1047
    const/16 v1, 0x2bc

    invoke-virtual {p0, v1}, Lcom/infraware/common/setting/SettingActivity;->showDialog(I)V

    .line 1051
    :cond_128
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1052
    return-void

    .line 1044
    :cond_12c
    invoke-virtual {p0}, Lcom/infraware/common/setting/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->m_Live_Update_Check_List:[Ljava/lang/CharSequence;

    goto :goto_120
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    invoke-virtual {p0}, Lcom/infraware/common/setting/SettingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 137
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 138
    .local v1, extras:Landroid/os/Bundle;
    const-string v5, "key_version"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->m_strVersionCode:Ljava/lang/String;

    .line 139
    const-string v5, "key_interanl_mode"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/infraware/common/setting/SettingActivity;->m_bInternalMode:Z

    .line 141
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 142
    .local v0, closeFilter:Landroid/content/IntentFilter;
    const-string v5, "com.infraware.polarisoffice.CLOSE"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    new-instance v5, Lcom/infraware/common/setting/SettingActivity$CloseReceiver;

    invoke-direct {v5, p0}, Lcom/infraware/common/setting/SettingActivity$CloseReceiver;-><init>(Lcom/infraware/common/setting/SettingActivity;)V

    iput-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mCloseReceiver:Lcom/infraware/common/setting/SettingActivity$CloseReceiver;

    .line 146
    iget-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mCloseReceiver:Lcom/infraware/common/setting/SettingActivity$CloseReceiver;

    invoke-virtual {p0, v5, v0}, Lcom/infraware/common/setting/SettingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 148
    invoke-virtual {p0}, Lcom/infraware/common/setting/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08030c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->m_strUpdateURL:Ljava/lang/String;

    .line 149
    invoke-virtual {p0}, Lcom/infraware/common/setting/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08030d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->m_strSubUpdateURL:Ljava/lang/String;

    .line 151
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 152
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v5, "com.infraware.polarisoffice.ACTION_DOWNLOAD_COMPLETE"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v5, "com.infraware.polarisoffice.ACTION_DISABLE_CONFIRM_VERSION"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    const-string v5, "com.infraware.polarisoffice.ACTION_LATEST_VERSION"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v5, "com.infraware.polarisoffice.ACTION_CONNECTION_ERROR"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string v5, "com.infraware.polarisoffice.ACTION_NETWORK_ERROR"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    const-string v5, "com.infraware.polarisoffice.ACTION_FILE_WRITE_ERROR"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string v5, "com.infraware.polarisoffice.ACTION_USER_CANCEL"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    new-instance v5, Lcom/infraware/common/setting/SettingActivity$UpdateReceiver;

    invoke-direct {v5, p0}, Lcom/infraware/common/setting/SettingActivity$UpdateReceiver;-><init>(Lcom/infraware/common/setting/SettingActivity;)V

    iput-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mUpdateReceiver:Lcom/infraware/common/setting/SettingActivity$UpdateReceiver;

    .line 161
    iget-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mUpdateReceiver:Lcom/infraware/common/setting/SettingActivity$UpdateReceiver;

    invoke-virtual {p0, v5, v2}, Lcom/infraware/common/setting/SettingActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 163
    const v5, 0x7f030015

    invoke-virtual {p0, v5}, Lcom/infraware/common/setting/SettingActivity;->addPreferencesFromResource(I)V

    .line 164
    const-string v5, "root"

    invoke-virtual {p0, v5}, Lcom/infraware/common/setting/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mRoot:Landroid/preference/PreferenceScreen;

    .line 166
    const-string v5, "create_backup"

    invoke-virtual {p0, v5}, Lcom/infraware/common/setting/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mCreateBackupPref:Landroid/preference/CheckBoxPreference;

    .line 167
    const-string v5, "display_file"

    invoke-virtual {p0, v5}, Lcom/infraware/common/setting/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mDisplayFilePref:Landroid/preference/CheckBoxPreference;

    .line 168
    const-string v5, "pivot_lock"

    invoke-virtual {p0, v5}, Lcom/infraware/common/setting/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mPivotLockPref:Landroid/preference/CheckBoxPreference;

    .line 169
    const-string v5, "custom_zoom"

    invoke-virtual {p0, v5}, Lcom/infraware/common/setting/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mCustomZoomPref:Landroid/preference/Preference;

    .line 170
    const-string v5, "account"

    invoke-virtual {p0, v5}, Lcom/infraware/common/setting/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mAccountPref:Landroid/preference/Preference;

    .line 171
    const-string v5, "live_update_check"

    invoke-virtual {p0, v5}, Lcom/infraware/common/setting/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mLiveUpdateCheckPref:Landroid/preference/Preference;

    .line 172
    const-string v5, "update"

    invoke-virtual {p0, v5}, Lcom/infraware/common/setting/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mUpdatePref:Landroid/preference/Preference;

    .line 173
    const-string v5, "about"

    invoke-virtual {p0, v5}, Lcom/infraware/common/setting/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mAboutPref:Landroid/preference/Preference;

    .line 174
    const-string v5, "smartshare_output"

    invoke-virtual {p0, v5}, Lcom/infraware/common/setting/SettingActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mSmartShareOutputPref:Landroid/preference/Preference;

    .line 176
    invoke-direct {p0}, Lcom/infraware/common/setting/SettingActivity;->getSettingValue()V

    .line 177
    iget-boolean v5, p0, Lcom/infraware/common/setting/SettingActivity;->m_bPivotLock:Z

    invoke-direct {p0, v5}, Lcom/infraware/common/setting/SettingActivity;->SetPivotLock(Z)V

    .line 179
    iget-boolean v4, p0, Lcom/infraware/common/setting/SettingActivity;->m_bInternalMode:Z

    .line 180
    .local v4, isEnable:Z
    iget-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mCreateBackupPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 181
    iget-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mDisplayFilePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 182
    iget-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mPivotLockPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 183
    iget-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mCustomZoomPref:Landroid/preference/Preference;

    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 184
    iget-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mAccountPref:Landroid/preference/Preference;

    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 185
    iget-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mLiveUpdateCheckPref:Landroid/preference/Preference;

    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 186
    iget-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mUpdatePref:Landroid/preference/Preference;

    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 188
    iget-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mRoot:Landroid/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/infraware/common/setting/SettingActivity;->mLiveUpdateCheckPref:Landroid/preference/Preference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 200
    iget-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mRoot:Landroid/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/infraware/common/setting/SettingActivity;->mSmartShareOutputPref:Landroid/preference/Preference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 203
    iget-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mRoot:Landroid/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/infraware/common/setting/SettingActivity;->mLiveUpdateCheckPref:Landroid/preference/Preference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 204
    iget-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mRoot:Landroid/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/infraware/common/setting/SettingActivity;->mUpdatePref:Landroid/preference/Preference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 207
    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isSupportPivotLock()Z

    move-result v5

    if-nez v5, :cond_134

    .line 208
    iget-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mRoot:Landroid/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/infraware/common/setting/SettingActivity;->mPivotLockPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 210
    :cond_134
    const-string v5, "input_method"

    invoke-virtual {p0, v5}, Lcom/infraware/common/setting/SettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    iput-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 211
    invoke-direct {p0}, Lcom/infraware/common/setting/SettingActivity;->setUI()V

    .line 213
    invoke-virtual {p0}, Lcom/infraware/common/setting/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5}, Lcom/infraware/common/util/Utils;->getCurrentLocaleType(Landroid/content/res/Resources;)I

    move-result v5

    iput v5, p0, Lcom/infraware/common/setting/SettingActivity;->m_nLocaleCode:I

    .line 214
    invoke-virtual {p0}, Lcom/infraware/common/setting/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    iput v5, p0, Lcom/infraware/common/setting/SettingActivity;->m_nOrientation:I

    .line 216
    iget-boolean v5, p0, Lcom/infraware/common/setting/SettingActivity;->m_bInternalMode:Z

    if-eqz v5, :cond_17c

    .line 217
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v5

    iput-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->m_oSetting:Lcom/infraware/common/config/RuntimeConfig;

    .line 218
    iget-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->m_oSetting:Lcom/infraware/common/config/RuntimeConfig;

    invoke-virtual {v5, p0}, Lcom/infraware/common/config/RuntimeConfig;->isPivotLock(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/infraware/common/setting/SettingActivity;->m_bPivotLock:Z

    .line 219
    iget-boolean v5, p0, Lcom/infraware/common/setting/SettingActivity;->m_bPivotLock:Z

    if-eqz v5, :cond_17c

    .line 220
    invoke-static {}, Lcom/infraware/common/config/RuntimeConfig;->getInstance()Lcom/infraware/common/config/RuntimeConfig;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/infraware/common/config/RuntimeConfig;->getOrientation(Landroid/content/Context;)I

    move-result v5

    iput v5, p0, Lcom/infraware/common/setting/SettingActivity;->m_nOrientation:I

    .line 221
    iget-boolean v5, p0, Lcom/infraware/common/setting/SettingActivity;->m_bPivotLock:Z

    invoke-direct {p0, v5}, Lcom/infraware/common/setting/SettingActivity;->SetPivotLock(Z)V

    .line 224
    :cond_17c
    iget v5, p0, Lcom/infraware/common/setting/SettingActivity;->m_nOrientation:I

    invoke-virtual {p0, v5}, Lcom/infraware/common/setting/SettingActivity;->onChangeScreen(I)V

    .line 227
    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isSupportOnlyWifi()Z

    move-result v5

    if-eqz v5, :cond_19f

    .line 228
    invoke-virtual {p0}, Lcom/infraware/common/setting/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060025

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->m_Live_Update_Check_List:[Ljava/lang/CharSequence;

    .line 231
    :goto_194
    invoke-direct {p0}, Lcom/infraware/common/setting/SettingActivity;->convertStringArrayWIFIToWLAN()V

    .line 234
    new-instance v5, Lcom/infraware/common/setting/SettingActivity$2;

    invoke-direct {v5, p0}, Lcom/infraware/common/setting/SettingActivity$2;-><init>(Lcom/infraware/common/setting/SettingActivity;)V

    iput-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->mEventHandler:Landroid/os/Handler;

    .line 266
    return-void

    .line 230
    :cond_19f
    invoke-virtual {p0}, Lcom/infraware/common/setting/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060024

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->m_Live_Update_Check_List:[Ljava/lang/CharSequence;

    goto :goto_194
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 12
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    const v9, 0x7f080045

    const v8, 0x7f080043

    const v6, 0x7f080023

    const/4 v7, 0x0

    .line 484
    iget v4, p0, Lcom/infraware/common/setting/SettingActivity;->mPopupType:I

    const/16 v5, 0x258

    if-eq v4, v5, :cond_41

    .line 485
    iget-object v4, p0, Lcom/infraware/common/setting/SettingActivity;->mCustomZoomDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_1d

    iget-object v4, p0, Lcom/infraware/common/setting/SettingActivity;->mCustomZoomDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_41

    .line 486
    :cond_1d
    iget-object v4, p0, Lcom/infraware/common/setting/SettingActivity;->mPopupDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_29

    iget-object v4, p0, Lcom/infraware/common/setting/SettingActivity;->mPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_41

    .line 487
    :cond_29
    iget-object v4, p0, Lcom/infraware/common/setting/SettingActivity;->mProgressDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_35

    iget-object v4, p0, Lcom/infraware/common/setting/SettingActivity;->mProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_41

    .line 488
    :cond_35
    iget-object v4, p0, Lcom/infraware/common/setting/SettingActivity;->mPopupUpdateDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_42

    iget-object v4, p0, Lcom/infraware/common/setting/SettingActivity;->mPopupUpdateDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_42

    .line 740
    :cond_41
    :goto_41
    return-object v3

    .line 491
    :cond_42
    iput p1, p0, Lcom/infraware/common/setting/SettingActivity;->mPopupType:I

    .line 492
    const/4 v0, 0x0

    .line 493
    .local v0, inflater:Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    .line 494
    .local v2, view:Landroid/view/View;
    sparse-switch p1, :sswitch_data_1f0

    goto :goto_41

    .line 496
    :sswitch_4a
    iput v7, p0, Lcom/infraware/common/setting/SettingActivity;->m_nInputCount:I

    .line 498
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/infraware/common/setting/SettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #inflater:Landroid/view/LayoutInflater;
    check-cast v0, Landroid/view/LayoutInflater;

    .line 499
    .restart local v0       #inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030085

    invoke-virtual {v0, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 501
    const v3, 0x7f0c02ff

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/infraware/common/setting/SettingActivity;->m_tvZoomLevelMsg:Landroid/widget/TextView;

    .line 502
    const v3, 0x7f0c0300

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/infraware/common/setting/SettingActivity;->m_etZoomLevel:Landroid/widget/EditText;

    .line 503
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity;->m_etZoomLevel:Landroid/widget/EditText;

    iget v4, p0, Lcom/infraware/common/setting/SettingActivity;->m_nCustomZoom:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 504
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity;->m_etZoomLevel:Landroid/widget/EditText;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 505
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity;->m_etZoomLevel:Landroid/widget/EditText;

    new-instance v4, Lcom/infraware/common/setting/SettingActivity$3;

    invoke-direct {v4, p0}, Lcom/infraware/common/setting/SettingActivity$3;-><init>(Lcom/infraware/common/setting/SettingActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 551
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 552
    const v4, 0x7f080029

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 554
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 555
    new-instance v4, Lcom/infraware/common/setting/SettingActivity$4;

    invoke-direct {v4, p0}, Lcom/infraware/common/setting/SettingActivity$4;-><init>(Lcom/infraware/common/setting/SettingActivity;)V

    invoke-virtual {v3, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 587
    new-instance v4, Lcom/infraware/common/setting/SettingActivity$5;

    invoke-direct {v4, p0}, Lcom/infraware/common/setting/SettingActivity$5;-><init>(Lcom/infraware/common/setting/SettingActivity;)V

    invoke-virtual {v3, v9, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 595
    new-instance v4, Lcom/infraware/common/setting/SettingActivity$6;

    invoke-direct {v4, p0}, Lcom/infraware/common/setting/SettingActivity$6;-><init>(Lcom/infraware/common/setting/SettingActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 606
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 551
    iput-object v3, p0, Lcom/infraware/common/setting/SettingActivity;->mCustomZoomDialog:Landroid/app/AlertDialog;

    .line 608
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity;->mCustomZoomDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 609
    new-instance v1, Lcom/infraware/common/setting/SettingActivity$7;

    invoke-direct {v1, p0}, Lcom/infraware/common/setting/SettingActivity$7;-><init>(Lcom/infraware/common/setting/SettingActivity;)V

    .line 617
    .local v1, mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity;->mCustomZoomDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 618
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity;->m_etZoomLevel:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 620
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    if-nez v3, :cond_ec

    .line 621
    new-instance v3, Lcom/infraware/polarisoffice/common/ImmManager;

    iget-object v4, p0, Lcom/infraware/common/setting/SettingActivity;->mCustomZoomDialog:Landroid/app/AlertDialog;

    invoke-direct {v3, p0, v4}, Lcom/infraware/polarisoffice/common/ImmManager;-><init>(Landroid/app/Activity;Landroid/app/AlertDialog;)V

    iput-object v3, p0, Lcom/infraware/common/setting/SettingActivity;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    .line 624
    :goto_e3
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    invoke-virtual {v3}, Lcom/infraware/polarisoffice/common/ImmManager;->showDelayedIme()V

    .line 626
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity;->mCustomZoomDialog:Landroid/app/AlertDialog;

    goto/16 :goto_41

    .line 623
    :cond_ec
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity;->m_oImmManager:Lcom/infraware/polarisoffice/common/ImmManager;

    iget-object v4, p0, Lcom/infraware/common/setting/SettingActivity;->mCustomZoomDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, p0, v4}, Lcom/infraware/polarisoffice/common/ImmManager;->resetImeParameter(Landroid/app/Activity;Landroid/app/AlertDialog;)V

    goto :goto_e3

    .line 629
    .end local v1           #mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;
    :sswitch_f4
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 630
    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 632
    iget v4, p0, Lcom/infraware/common/setting/SettingActivity;->mCancelMsg:I

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 633
    new-instance v4, Lcom/infraware/common/setting/SettingActivity$8;

    invoke-direct {v4, p0}, Lcom/infraware/common/setting/SettingActivity$8;-><init>(Lcom/infraware/common/setting/SettingActivity;)V

    invoke-virtual {v3, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 637
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 629
    iput-object v3, p0, Lcom/infraware/common/setting/SettingActivity;->mCancelDialog:Landroid/app/AlertDialog;

    .line 638
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity;->mCancelDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 639
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity;->mCancelDialog:Landroid/app/AlertDialog;

    goto/16 :goto_41

    .line 641
    :sswitch_11b
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 642
    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 644
    iget v4, p0, Lcom/infraware/common/setting/SettingActivity;->mPopupMsg:I

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 645
    new-instance v4, Lcom/infraware/common/setting/SettingActivity$9;

    invoke-direct {v4, p0}, Lcom/infraware/common/setting/SettingActivity$9;-><init>(Lcom/infraware/common/setting/SettingActivity;)V

    invoke-virtual {v3, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 649
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 641
    iput-object v3, p0, Lcom/infraware/common/setting/SettingActivity;->mPopupDialog:Landroid/app/AlertDialog;

    .line 650
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity;->mPopupDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 651
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity;->mPopupDialog:Landroid/app/AlertDialog;

    goto/16 :goto_41

    .line 653
    :sswitch_142
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/infraware/common/setting/SettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #inflater:Landroid/view/LayoutInflater;
    check-cast v0, Landroid/view/LayoutInflater;

    .line 654
    .restart local v0       #inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f030016

    invoke-virtual {v0, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 656
    const v3, 0x7f0c0073

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/infraware/common/setting/SettingActivity;->m_tvUpdateMsg:Landroid/widget/TextView;

    .line 658
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 659
    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 661
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 662
    invoke-virtual {p0, v9}, Lcom/infraware/common/setting/SettingActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 663
    new-instance v5, Lcom/infraware/common/setting/SettingActivity$10;

    invoke-direct {v5, p0}, Lcom/infraware/common/setting/SettingActivity$10;-><init>(Lcom/infraware/common/setting/SettingActivity;)V

    .line 662
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 672
    new-instance v4, Lcom/infraware/common/setting/SettingActivity$11;

    invoke-direct {v4, p0}, Lcom/infraware/common/setting/SettingActivity$11;-><init>(Lcom/infraware/common/setting/SettingActivity;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 688
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 658
    iput-object v3, p0, Lcom/infraware/common/setting/SettingActivity;->mProgressDialog:Landroid/app/AlertDialog;

    .line 689
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity;->mProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 690
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity;->mProgressDialog:Landroid/app/AlertDialog;

    goto/16 :goto_41

    .line 692
    :sswitch_18e
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 693
    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 695
    iget v4, p0, Lcom/infraware/common/setting/SettingActivity;->mPopupMsg:I

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 696
    new-instance v4, Lcom/infraware/common/setting/SettingActivity$12;

    invoke-direct {v4, p0}, Lcom/infraware/common/setting/SettingActivity$12;-><init>(Lcom/infraware/common/setting/SettingActivity;)V

    invoke-virtual {v3, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 702
    new-instance v4, Lcom/infraware/common/setting/SettingActivity$13;

    invoke-direct {v4, p0}, Lcom/infraware/common/setting/SettingActivity$13;-><init>(Lcom/infraware/common/setting/SettingActivity;)V

    invoke-virtual {v3, v9, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 706
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 692
    iput-object v3, p0, Lcom/infraware/common/setting/SettingActivity;->mPopupUpdateDialog:Landroid/app/AlertDialog;

    .line 707
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity;->mPopupUpdateDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 708
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity;->mPopupUpdateDialog:Landroid/app/AlertDialog;

    goto/16 :goto_41

    .line 710
    :sswitch_1be
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 711
    const v4, 0x7f08002e

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 712
    iget-object v4, p0, Lcom/infraware/common/setting/SettingActivity;->m_Live_Update_Check_List:[Ljava/lang/CharSequence;

    iget v5, p0, Lcom/infraware/common/setting/SettingActivity;->m_iLiveUpdateCheck:I

    new-instance v6, Lcom/infraware/common/setting/SettingActivity$14;

    invoke-direct {v6, p0}, Lcom/infraware/common/setting/SettingActivity$14;-><init>(Lcom/infraware/common/setting/SettingActivity;)V

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 732
    new-instance v4, Lcom/infraware/common/setting/SettingActivity$15;

    invoke-direct {v4, p0}, Lcom/infraware/common/setting/SettingActivity$15;-><init>(Lcom/infraware/common/setting/SettingActivity;)V

    invoke-virtual {v3, v9, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 736
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 710
    iput-object v3, p0, Lcom/infraware/common/setting/SettingActivity;->mLiveUpdateCheckDialog:Landroid/app/AlertDialog;

    .line 737
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity;->mLiveUpdateCheckDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 738
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity;->mLiveUpdateCheckDialog:Landroid/app/AlertDialog;

    goto/16 :goto_41

    .line 494
    nop

    :sswitch_data_1f0
    .sparse-switch
        0x64 -> :sswitch_4a
        0xc8 -> :sswitch_11b
        0x190 -> :sswitch_142
        0x1f4 -> :sswitch_18e
        0x258 -> :sswitch_f4
        0x2bc -> :sswitch_1be
    .end sparse-switch
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/infraware/common/setting/SettingActivity;->mCloseReceiver:Lcom/infraware/common/setting/SettingActivity$CloseReceiver;

    invoke-virtual {p0, v0}, Lcom/infraware/common/setting/SettingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 411
    iget-object v0, p0, Lcom/infraware/common/setting/SettingActivity;->mUpdateReceiver:Lcom/infraware/common/setting/SettingActivity$UpdateReceiver;

    invoke-virtual {p0, v0}, Lcom/infraware/common/setting/SettingActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 413
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 414
    return-void
.end method

.method public onInstall(Ljava/lang/String;)V
    .registers 6
    .parameter "installPath"

    .prologue
    .line 958
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 961
    .local v0, apkFile:Ljava/io/File;
    :try_start_5
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 962
    .local v1, intent:Landroid/content/Intent;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 963
    invoke-virtual {p0, v1}, Lcom/infraware/common/setting/SettingActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_18} :catch_19

    .line 967
    .end local v1           #intent:Landroid/content/Intent;
    :goto_18
    return-void

    .line 964
    :catch_19
    move-exception v2

    goto :goto_18
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 971
    const/4 v1, 0x4

    if-ne p1, v1, :cond_12

    .line 972
    invoke-direct {p0}, Lcom/infraware/common/setting/SettingActivity;->setSettingValue()V

    .line 974
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 975
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/infraware/common/setting/SettingActivity;->setResult(ILandroid/content/Intent;)V

    .line 976
    invoke-virtual {p0}, Lcom/infraware/common/setting/SettingActivity;->finish()V

    .line 979
    .end local v0           #intent:Landroid/content/Intent;
    :cond_12
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/infraware/common/setting/SettingActivity;->m_bPause:Z

    .line 393
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 394
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 9
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/16 v5, 0x64

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 418
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity;->mCreateBackupPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_14

    .line 419
    iget-boolean v3, p0, Lcom/infraware/common/setting/SettingActivity;->m_bCreateBackup:Z

    if-eqz v3, :cond_12

    :goto_c
    iput-boolean v1, p0, Lcom/infraware/common/setting/SettingActivity;->m_bCreateBackup:Z

    .line 420
    invoke-direct {p0}, Lcom/infraware/common/setting/SettingActivity;->setSettingValue()V

    .line 473
    :goto_11
    return v2

    :cond_12
    move v1, v2

    .line 419
    goto :goto_c

    .line 421
    :cond_14
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity;->mDisplayFilePref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_24

    .line 422
    iget-boolean v3, p0, Lcom/infraware/common/setting/SettingActivity;->m_bDisplayFileExtension:Z

    if-eqz v3, :cond_22

    :goto_1c
    iput-boolean v1, p0, Lcom/infraware/common/setting/SettingActivity;->m_bDisplayFileExtension:Z

    .line 423
    invoke-direct {p0}, Lcom/infraware/common/setting/SettingActivity;->setSettingValue()V

    goto :goto_11

    :cond_22
    move v1, v2

    .line 422
    goto :goto_1c

    .line 424
    :cond_24
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity;->mPivotLockPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_40

    .line 425
    iget-boolean v3, p0, Lcom/infraware/common/setting/SettingActivity;->m_bPivotLock:Z

    if-eqz v3, :cond_3e

    :goto_2c
    iput-boolean v1, p0, Lcom/infraware/common/setting/SettingActivity;->m_bPivotLock:Z

    .line 426
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->m_oSetting:Lcom/infraware/common/config/RuntimeConfig;

    iget-boolean v3, p0, Lcom/infraware/common/setting/SettingActivity;->m_bPivotLock:Z

    invoke-virtual {v1, p0, v3}, Lcom/infraware/common/config/RuntimeConfig;->setPivotLock(Landroid/app/Activity;Z)V

    .line 427
    iget-boolean v1, p0, Lcom/infraware/common/setting/SettingActivity;->m_bPivotLock:Z

    invoke-direct {p0, v1}, Lcom/infraware/common/setting/SettingActivity;->SetPivotLock(Z)V

    .line 428
    invoke-direct {p0}, Lcom/infraware/common/setting/SettingActivity;->setSettingValue()V

    goto :goto_11

    :cond_3e
    move v1, v2

    .line 425
    goto :goto_2c

    .line 429
    :cond_40
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity;->mCustomZoomPref:Landroid/preference/Preference;

    if-ne p2, v3, :cond_4a

    .line 430
    iput v1, p0, Lcom/infraware/common/setting/SettingActivity;->mPopupType:I

    .line 431
    invoke-virtual {p0, v5}, Lcom/infraware/common/setting/SettingActivity;->showDialog(I)V

    goto :goto_11

    .line 432
    :cond_4a
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity;->mAccountPref:Landroid/preference/Preference;

    if-ne p2, v3, :cond_59

    .line 433
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/infraware/common/account/AccountSetting;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 434
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/infraware/common/setting/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_11

    .line 435
    .end local v0           #intent:Landroid/content/Intent;
    :cond_59
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity;->mLiveUpdateCheckPref:Landroid/preference/Preference;

    if-ne p2, v3, :cond_89

    .line 437
    iput v1, p0, Lcom/infraware/common/setting/SettingActivity;->mPopupType:I

    .line 438
    invoke-static {}, Lcom/infraware/common/define/CMModelDefine;->isSupportOnlyWifi()Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 439
    invoke-virtual {p0}, Lcom/infraware/common/setting/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060025

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->m_Live_Update_Check_List:[Ljava/lang/CharSequence;

    .line 442
    :goto_72
    invoke-direct {p0}, Lcom/infraware/common/setting/SettingActivity;->convertStringArrayWIFIToWLAN()V

    .line 443
    const/16 v1, 0x2bc

    invoke-virtual {p0, v1}, Lcom/infraware/common/setting/SettingActivity;->showDialog(I)V

    goto :goto_11

    .line 441
    :cond_7b
    invoke-virtual {p0}, Lcom/infraware/common/setting/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060024

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->m_Live_Update_Check_List:[Ljava/lang/CharSequence;

    goto :goto_72

    .line 445
    :cond_89
    iget-object v3, p0, Lcom/infraware/common/setting/SettingActivity;->mUpdatePref:Landroid/preference/Preference;

    if-ne p2, v3, :cond_af

    .line 448
    iput v1, p0, Lcom/infraware/common/setting/SettingActivity;->mPopupType:I

    .line 449
    invoke-static {p0}, Lcom/infraware/common/util/Utils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 451
    const/16 v1, 0x190

    invoke-virtual {p0, v1}, Lcom/infraware/common/setting/SettingActivity;->showDialog(I)V

    .line 452
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->mEventHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_11

    .line 456
    :cond_a3
    const v1, 0x7f080068

    iput v1, p0, Lcom/infraware/common/setting/SettingActivity;->mPopupMsg:I

    .line 457
    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lcom/infraware/common/setting/SettingActivity;->showDialog(I)V

    goto/16 :goto_11

    .line 460
    :cond_af
    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->mAboutPref:Landroid/preference/Preference;

    if-ne p2, v1, :cond_d5

    .line 462
    :try_start_b3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 463
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "com.infraware.polarisoffice.ACTION_OFFICE_INFO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 465
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 466
    const-string v1, "OfficeProductInfoCallType"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 467
    invoke-virtual {p0, v0}, Lcom/infraware/common/setting/SettingActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_d0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_b3 .. :try_end_d0} :catch_d2

    goto/16 :goto_11

    .line 468
    .end local v0           #intent:Landroid/content/Intent;
    :catch_d2
    move-exception v1

    goto/16 :goto_11

    .line 471
    :cond_d5
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto/16 :goto_11
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .registers 3
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 747
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 749
    sparse-switch p1, :sswitch_data_c

    .line 759
    :goto_6
    return-void

    .line 756
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/infraware/common/setting/SettingActivity;->removeDialog(I)V

    goto :goto_6

    .line 749
    nop

    :sswitch_data_c
    .sparse-switch
        0x64 -> :sswitch_7
        0xc8 -> :sswitch_7
        0x190 -> :sswitch_7
        0x1f4 -> :sswitch_7
        0x258 -> :sswitch_7
        0x2bc -> :sswitch_7
    .end sparse-switch
.end method

.method public onResume()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 399
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/common/setting/SettingActivity;->m_bPause:Z

    .line 400
    iget v0, p0, Lcom/infraware/common/setting/SettingActivity;->m_Service_Status:I

    if-eq v0, v1, :cond_f

    .line 402
    iget v0, p0, Lcom/infraware/common/setting/SettingActivity;->m_Service_Status:I

    invoke-virtual {p0, v0}, Lcom/infraware/common/setting/SettingActivity;->onStopService(I)Z

    .line 403
    iput v1, p0, Lcom/infraware/common/setting/SettingActivity;->m_Service_Status:I

    .line 405
    :cond_f
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 406
    return-void
.end method

.method public onStopService(I)Z
    .registers 6
    .parameter "status"

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0xc8

    .line 877
    iget-object v0, p0, Lcom/infraware/common/setting/SettingActivity;->updateBinder:Lcom/infraware/common/update/UpdateService;

    if-eqz v0, :cond_14

    .line 878
    iget-object v0, p0, Lcom/infraware/common/setting/SettingActivity;->updateBinder:Lcom/infraware/common/update/UpdateService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/infraware/common/update/UpdateService;->mThreadStatus:Z

    .line 879
    iget-object v0, p0, Lcom/infraware/common/setting/SettingActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/infraware/common/setting/SettingActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 880
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/common/setting/SettingActivity;->updateBinder:Lcom/infraware/common/update/UpdateService;

    .line 882
    :cond_14
    iget-boolean v0, p0, Lcom/infraware/common/setting/SettingActivity;->m_bPause:Z

    if-eqz v0, :cond_1b

    .line 884
    iput p1, p0, Lcom/infraware/common/setting/SettingActivity;->m_Service_Status:I

    .line 930
    :cond_1a
    :goto_1a
    :pswitch_1a
    return v3

    .line 887
    :cond_1b
    iget-object v0, p0, Lcom/infraware/common/setting/SettingActivity;->mProgressDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1a

    .line 889
    iget-object v0, p0, Lcom/infraware/common/setting/SettingActivity;->mProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 890
    iget-object v0, p0, Lcom/infraware/common/setting/SettingActivity;->mProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 893
    :cond_2c
    packed-switch p1, :pswitch_data_80

    :pswitch_2f
    goto :goto_1a

    .line 895
    :pswitch_30
    invoke-virtual {p0}, Lcom/infraware/common/setting/SettingActivity;->makeOfficeDir()V

    .line 896
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/infraware/common/setting/SettingActivity;->mTempPath:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "PolarisOffice.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/infraware/common/setting/SettingActivity;->onInstall(Ljava/lang/String;)V

    goto :goto_1a

    .line 900
    :pswitch_4c
    const v0, 0x7f080057

    iput v0, p0, Lcom/infraware/common/setting/SettingActivity;->mPopupMsg:I

    .line 901
    invoke-virtual {p0, v2}, Lcom/infraware/common/setting/SettingActivity;->showDialog(I)V

    goto :goto_1a

    .line 910
    :pswitch_55
    const v0, 0x7f080068

    iput v0, p0, Lcom/infraware/common/setting/SettingActivity;->mPopupMsg:I

    .line 911
    invoke-virtual {p0, v2}, Lcom/infraware/common/setting/SettingActivity;->showDialog(I)V

    goto :goto_1a

    .line 915
    :pswitch_5e
    iget-boolean v0, p0, Lcom/infraware/common/setting/SettingActivity;->mIsSubUpdate:Z

    if-nez v0, :cond_6d

    .line 916
    const v0, 0x7f08006a

    iput v0, p0, Lcom/infraware/common/setting/SettingActivity;->mPopupMsg:I

    .line 917
    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Lcom/infraware/common/setting/SettingActivity;->showDialog(I)V

    goto :goto_1a

    .line 919
    :cond_6d
    const v0, 0x7f080069

    iput v0, p0, Lcom/infraware/common/setting/SettingActivity;->mPopupMsg:I

    .line 920
    invoke-virtual {p0, v2}, Lcom/infraware/common/setting/SettingActivity;->showDialog(I)V

    goto :goto_1a

    .line 925
    :pswitch_76
    const v0, 0x7f08006b

    iput v0, p0, Lcom/infraware/common/setting/SettingActivity;->mPopupMsg:I

    .line 926
    invoke-virtual {p0, v2}, Lcom/infraware/common/setting/SettingActivity;->showDialog(I)V

    goto :goto_1a

    .line 893
    nop

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_30
        :pswitch_2f
        :pswitch_4c
        :pswitch_55
        :pswitch_5e
        :pswitch_76
        :pswitch_1a
    .end packed-switch
.end method

.method public onUpdateApk(Ljava/lang/String;)Z
    .registers 9
    .parameter "str"

    .prologue
    const/4 v6, 0x1

    .line 855
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/infraware/common/setting/SettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 857
    .local v2, netManager:Landroid/net/ConnectivityManager;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 859
    .local v1, mobile:Landroid/net/NetworkInfo;
    invoke-virtual {v2, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 861
    .local v3, wifi:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-nez v4, :cond_1e

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 862
    :cond_1e
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/infraware/common/update/UpdateService;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 863
    .local v0, bindIntent:Landroid/content/Intent;
    iget-boolean v4, p0, Lcom/infraware/common/setting/SettingActivity;->mIsSubUpdate:Z

    if-eqz v4, :cond_3b

    .line 864
    const-string v4, "DOWNLOAD_URL"

    iget-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->m_strSubUpdateURL:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 867
    :goto_30
    const-string v4, "CURRENT_VER"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 868
    iget-object v4, p0, Lcom/infraware/common/setting/SettingActivity;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v4, v6}, Lcom/infraware/common/setting/SettingActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 873
    .end local v0           #bindIntent:Landroid/content/Intent;
    :cond_3a
    return v6

    .line 866
    .restart local v0       #bindIntent:Landroid/content/Intent;
    :cond_3b
    const-string v4, "DOWNLOAD_URL"

    iget-object v5, p0, Lcom/infraware/common/setting/SettingActivity;->m_strUpdateURL:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_30
.end method
