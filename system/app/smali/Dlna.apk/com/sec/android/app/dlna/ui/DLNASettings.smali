.class public Lcom/sec/android/app/dlna/ui/DLNASettings;
.super Landroid/preference/PreferenceActivity;
.source "DLNASettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/sec/android/app/dlna/ui/IActivityListener;


# instance fields
.field private editor:Landroid/content/SharedPreferences$Editor;

.field guiErrorHandler:Landroid/os/Handler;

.field private isCall_DBUpdated:Z

.field private isChangeSharingOption:Z

.field private isUsing:Z

.field private final mDBupdate:Landroid/content/BroadcastReceiver;

.field private mDefaultStorage:Landroid/preference/ListPreference;

.field private mDeviceName:Landroid/preference/EditTextPreference;

.field mHandler:Landroid/os/Handler;

.field private mKeyName:Ljava/lang/String;

.field private mNewValue:Ljava/lang/Object;

.field private mOriginalServerName:Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRes:Landroid/content/res/Resources;

.field private mSharingAudio:Landroid/preference/CheckBoxPreference;

.field private mSharingPicture:Landroid/preference/CheckBoxPreference;

.field private mSharingVideo:Landroid/preference/CheckBoxPreference;

.field private final mStorageReceiver:Landroid/content/BroadcastReceiver;

.field private mSubtitles:Landroid/preference/CheckBoxPreference;

.field private mUploadOption:Landroid/preference/ListPreference;

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiReceiver:Landroid/content/BroadcastReceiver;

.field private settings:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mOriginalServerName:Ljava/lang/String;

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->isUsing:Z

    .line 120
    iput-boolean v1, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->isChangeSharingOption:Z

    .line 551
    new-instance v0, Lcom/sec/android/app/dlna/ui/DLNASettings$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dlna/ui/DLNASettings$5;-><init>(Lcom/sec/android/app/dlna/ui/DLNASettings;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 610
    new-instance v0, Lcom/sec/android/app/dlna/ui/DLNASettings$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dlna/ui/DLNASettings$6;-><init>(Lcom/sec/android/app/dlna/ui/DLNASettings;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    .line 638
    new-instance v0, Lcom/sec/android/app/dlna/ui/DLNASettings$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dlna/ui/DLNASettings$7;-><init>(Lcom/sec/android/app/dlna/ui/DLNASettings;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mHandler:Landroid/os/Handler;

    .line 906
    new-instance v0, Lcom/sec/android/app/dlna/ui/DLNASettings$21;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dlna/ui/DLNASettings$21;-><init>(Lcom/sec/android/app/dlna/ui/DLNASettings;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->guiErrorHandler:Landroid/os/Handler;

    .line 969
    new-instance v0, Lcom/sec/android/app/dlna/ui/DLNASettings$22;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dlna/ui/DLNASettings$22;-><init>(Lcom/sec/android/app/dlna/ui/DLNASettings;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    .line 979
    iput-boolean v1, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->isCall_DBUpdated:Z

    .line 981
    new-instance v0, Lcom/sec/android/app/dlna/ui/DLNASettings$23;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dlna/ui/DLNASettings$23;-><init>(Lcom/sec/android/app/dlna/ui/DLNASettings;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mDBupdate:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dlna/ui/DLNASettings;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mKeyName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/dlna/ui/DLNASettings;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mNewValue:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/dlna/ui/DLNASettings;)Landroid/preference/ListPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mDefaultStorage:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/dlna/ui/DLNASettings;)Landroid/content/SharedPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->settings:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/dlna/ui/DLNASettings;)Landroid/content/res/Resources;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mRes:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/dlna/ui/DLNASettings;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->isCall_DBUpdated:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/sec/android/app/dlna/ui/DLNASettings;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->isCall_DBUpdated:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/dlna/ui/DLNASettings;)Landroid/content/SharedPreferences$Editor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->editor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/dlna/ui/DLNASettings;)Landroid/preference/EditTextPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mDeviceName:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/dlna/ui/DLNASettings;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mOriginalServerName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/dlna/ui/DLNASettings;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mOriginalServerName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/dlna/ui/DLNASettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->clearPlaylist()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/dlna/ui/DLNASettings;)Landroid/preference/CheckBoxPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mSharingVideo:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/dlna/ui/DLNASettings;)Landroid/preference/CheckBoxPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mSharingPicture:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/dlna/ui/DLNASettings;)Landroid/preference/CheckBoxPreference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mSharingAudio:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/dlna/ui/DLNASettings;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->startWarningActivity()V

    return-void
.end method

.method private clearPlaylist()V
    .registers 3

    .prologue
    .line 965
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPlaylist()Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v0

    .line 966
    .local v0, currentPlaylist:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->clear()V

    .line 967
    return-void
.end method

.method private restartDMS()V
    .registers 2

    .prologue
    .line 333
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->stopDMS()Z

    .line 334
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->startDMS()Z

    .line 335
    return-void
.end method

.method private saveSettings()V
    .registers 4

    .prologue
    .line 338
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 339
    .local v0, saveSettingsDialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 340
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 341
    const v1, 0x7f09000d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 342
    const v1, 0x7f090074

    new-instance v2, Lcom/sec/android/app/dlna/ui/DLNASettings$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dlna/ui/DLNASettings$1;-><init>(Lcom/sec/android/app/dlna/ui/DLNASettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 394
    const v1, 0x7f090036

    new-instance v2, Lcom/sec/android/app/dlna/ui/DLNASettings$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dlna/ui/DLNASettings$2;-><init>(Lcom/sec/android/app/dlna/ui/DLNASettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 408
    new-instance v1, Lcom/sec/android/app/dlna/ui/DLNASettings$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/DLNASettings$3;-><init>(Lcom/sec/android/app/dlna/ui/DLNASettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 422
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 423
    return-void
.end method

.method private startWarningActivity()V
    .registers 3

    .prologue
    .line 673
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->isUsing:Z

    if-eqz v0, :cond_16

    .line 674
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 676
    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/dlna/ui/DLNASettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 678
    :cond_16
    return-void
.end method


# virtual methods
.method protected dismissErrorOccured(I)V
    .registers 5
    .parameter

    .prologue
    .line 888
    sparse-switch p1, :sswitch_data_64

    .line 904
    :goto_3
    return-void

    .line 890
    :sswitch_4
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissErrorOccured DMRNOTSELECTED from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dlna/ui/DLNASettings;->dismissDialog(I)V

    goto :goto_3

    .line 895
    :sswitch_24
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissErrorOccured DMSNOTSELECTED from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dlna/ui/DLNASettings;->dismissDialog(I)V

    goto :goto_3

    .line 900
    :sswitch_44
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissErrorOccured UPLOAD_SHOW_POPUP from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dlna/ui/DLNASettings;->dismissDialog(I)V

    goto :goto_3

    .line 888
    :sswitch_data_64
    .sparse-switch
        0xb -> :sswitch_24
        0xc -> :sswitch_4
        0x438 -> :sswitch_44
    .end sparse-switch
.end method

.method protected handleErrorOccured(I)V
    .registers 5
    .parameter

    .prologue
    .line 829
    sparse-switch p1, :sswitch_data_fa

    .line 885
    :cond_3
    :goto_3
    return-void

    .line 831
    :sswitch_4
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleErrorOccured INVALIDACTION from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 835
    :sswitch_21
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleErrorOccured ACTIONFAILEDRESPONSE from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 839
    :sswitch_3e
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleErrorOccured DMRNOTSELECTED from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getPlayer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    if-nez v0, :cond_3

    .line 841
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->isMyPlayerSelected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 843
    :try_start_6e
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dlna/ui/DLNASettings;->showDialog(I)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_72

    goto :goto_3

    .line 844
    :catch_72
    move-exception v0

    goto :goto_3

    .line 851
    :sswitch_74
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleErrorOccured DMSNOTSELECTED from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    if-nez v0, :cond_a2

    .line 855
    :try_start_9a
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dlna/ui/DLNASettings;->showDialog(I)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_9d} :catch_9f

    goto/16 :goto_3

    .line 856
    :catch_9f
    move-exception v0

    goto/16 :goto_3

    .line 858
    :cond_a2
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    if-nez v0, :cond_3

    .line 860
    :try_start_ac
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dlna/ui/DLNASettings;->showDialog(I)V
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_af} :catch_b1

    goto/16 :goto_3

    .line 861
    :catch_b1
    move-exception v0

    goto/16 :goto_3

    .line 867
    :sswitch_b4
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleErrorOccured UPLOAD_SHOW_POPUP from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    :try_start_d0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dlna/ui/DLNASettings;->showDialog(I)V
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_d3} :catch_d5

    goto/16 :goto_3

    .line 870
    :catch_d5
    move-exception v0

    .line 871
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 876
    :sswitch_db
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleErrorOccured CONTENTSNOTSELECTED from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 829
    nop

    :sswitch_data_fa
    .sparse-switch
        0xb -> :sswitch_74
        0xc -> :sswitch_3e
        0x11 -> :sswitch_db
        0x191 -> :sswitch_4
        0x1f5 -> :sswitch_21
        0x438 -> :sswitch_b4
    .end sparse-switch
.end method

.method public notifyActivityEvent(I)V
    .registers 5
    .parameter "code"

    .prologue
    .line 658
    packed-switch p1, :pswitch_data_30

    .line 670
    :goto_3
    :pswitch_3
    return-void

    .line 660
    :pswitch_4
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : All Kill!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->finish()V

    goto :goto_3

    .line 664
    :pswitch_24
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x47d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 667
    :pswitch_2c
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->finish()V

    goto :goto_3

    .line 658
    :pswitch_data_30
    .packed-switch 0x2f1
        :pswitch_4
        :pswitch_24
        :pswitch_3
        :pswitch_2c
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 681
    const/4 v0, -0x1

    if-ne p2, v0, :cond_b

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_b

    .line 683
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 685
    :cond_b
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 686
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 125
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 127
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->addPreferencesFromResource(I)V

    .line 128
    const-string v0, "AllShare Preference"

    invoke-virtual {p0, v0, v6}, Lcom/sec/android/app/dlna/ui/DLNASettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->settings:Landroid/content/SharedPreferences;

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->editor:Landroid/content/SharedPreferences$Editor;

    .line 131
    const-string v0, "device_name"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/EditTextPreference;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mDeviceName:Landroid/preference/EditTextPreference;

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 135
    const-string v0, "sharing_video"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mSharingVideo:Landroid/preference/CheckBoxPreference;

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mSharingVideo:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 137
    const-string v0, "sharing_picture"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mSharingPicture:Landroid/preference/CheckBoxPreference;

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mSharingPicture:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 139
    const-string v0, "sharing_audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mSharingAudio:Landroid/preference/CheckBoxPreference;

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mSharingAudio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 141
    const-string v0, "upload_option"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mUploadOption:Landroid/preference/ListPreference;

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mUploadOption:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 143
    const-string v0, "default_storage"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mDefaultStorage:Landroid/preference/ListPreference;

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mDefaultStorage:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 145
    const-string v0, "subtitles"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mSubtitles:Landroid/preference/CheckBoxPreference;

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mSubtitles:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 147
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mRes:Landroid/content/res/Resources;

    .line 150
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v0

    if-eqz v0, :cond_216

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->settings:Landroid/content/SharedPreferences;

    const-string v1, "device_name"

    const-string v2, "SPH-D710"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mOriginalServerName:Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mDeviceName:Landroid/preference/EditTextPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Mobile]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mOriginalServerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mDeviceName:Landroid/preference/EditTextPreference;

    const v1, 0x7f090034

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f08

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/dlna/ui/DLNASettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mDeviceName:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mOriginalServerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 164
    :goto_ef
    :try_start_ef
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v0

    if-eqz v0, :cond_13a

    .line 165
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/service/DmsLocalService;->isServerStarted()Z

    move-result v0

    if-eqz v0, :cond_13a

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mSharingPicture:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/service/DmsLocalService;->isImageShared()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mSharingVideo:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/service/DmsLocalService;->isVideoShared()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mSharingAudio:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/service/DmsLocalService;->isAudioShared()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V
    :try_end_13a
    .catch Landroid/os/RemoteException; {:try_start_ef .. :try_end_13a} :catch_228

    .line 178
    :cond_13a
    :goto_13a
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->settings:Landroid/content/SharedPreferences;

    const-string v1, "upload_option"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 180
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mUploadOption:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 182
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mRes:Landroid/content/res/Resources;

    const/high16 v2, 0x7f06

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 183
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mUploadOption:Landroid/preference/ListPreference;

    aget-object v0, v1, v0

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 185
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DLNASettings :: Locale.getDefault()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a0

    .line 196
    :cond_1a0
    :try_start_1a0
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->isExternalStorageSdMounted()Z

    move-result v0

    if-eqz v0, :cond_1b0

    .line 197
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mDefaultStorage:Landroid/preference/ListPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 200
    :cond_1b0
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->settings:Landroid/content/SharedPreferences;

    const-string v1, "default_storage"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 202
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mDefaultStorage:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 204
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f060002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 205
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mDefaultStorage:Landroid/preference/ListPreference;

    aget-object v0, v1, v0

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.changeStorage"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/dlna/ui/DLNASettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1df
    .catch Ljava/lang/Exception; {:try_start_1a0 .. :try_end_1df} :catch_22e

    .line 214
    :goto_1df
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mSubtitles:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->settings:Landroid/content/SharedPreferences;

    const-string v2, "subtitles"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 216
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 217
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/dlna/DLNAManager;->addActivityDestroyListener(Lcom/sec/android/app/dlna/ui/IActivityListener;)V

    .line 218
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/dlna/ui/DLNASettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 219
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mDBupdate:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.DBupdate"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/dlna/ui/DLNASettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 220
    return-void

    .line 159
    :cond_216
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_ef

    .line 174
    :catch_228
    move-exception v0

    .line 175
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_13a

    .line 210
    :catch_22e
    move-exception v0

    .line 211
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1df
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 9
    .parameter

    .prologue
    const v2, 0x7f09003f

    const v1, 0x7f090004

    const v6, 0x7f090074

    const v5, 0x7f090036

    .line 689
    sparse-switch p1, :sswitch_data_158

    .line 824
    const/4 v0, 0x0

    :goto_10
    return-object v0

    .line 692
    :sswitch_11
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateDialog.UPLOAD_SHOW_POPUP from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/dlna/DLNAManager;->uploadHandler:Landroid/os/Handler;

    const/16 v1, 0x1a2d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 694
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090069

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0x7f090058

    invoke-virtual {p0, v4}, Lcom/sec/android/app/dlna/ui/DLNASettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/dlna/ui/DLNASettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/dlna/ui/DLNASettings$10;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/DLNASettings$10;-><init>(Lcom/sec/android/app/dlna/ui/DLNASettings;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/dlna/ui/DLNASettings$9;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/DLNASettings$9;-><init>(Lcom/sec/android/app/dlna/ui/DLNASettings;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/dlna/ui/DLNASettings$8;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/DLNASettings$8;-><init>(Lcom/sec/android/app/dlna/ui/DLNASettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_10

    .line 723
    :sswitch_75
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateDialog.DMSNOTSELECTED from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090012

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/dlna/ui/DLNASettings$13;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/DLNASettings$13;-><init>(Lcom/sec/android/app/dlna/ui/DLNASettings;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/dlna/ui/DLNASettings$12;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/DLNASettings$12;-><init>(Lcom/sec/android/app/dlna/ui/DLNASettings;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/dlna/ui/DLNASettings$11;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/DLNASettings$11;-><init>(Lcom/sec/android/app/dlna/ui/DLNASettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_10

    .line 755
    :sswitch_be
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateDialog.DMRNOTSELECTED from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090048

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/dlna/ui/DLNASettings$16;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/DLNASettings$16;-><init>(Lcom/sec/android/app/dlna/ui/DLNASettings;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/dlna/ui/DLNASettings$15;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/DLNASettings$15;-><init>(Lcom/sec/android/app/dlna/ui/DLNASettings;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/dlna/ui/DLNASettings$14;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/DLNASettings$14;-><init>(Lcom/sec/android/app/dlna/ui/DLNASettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_10

    .line 782
    :sswitch_107
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/dlna/ui/DLNASettings$18;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/DLNASettings$18;-><init>(Lcom/sec/android/app/dlna/ui/DLNASettings;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/dlna/ui/DLNASettings$17;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/DLNASettings$17;-><init>(Lcom/sec/android/app/dlna/ui/DLNASettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_10

    .line 801
    :sswitch_12f
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090017

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/dlna/ui/DLNASettings$20;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/DLNASettings$20;-><init>(Lcom/sec/android/app/dlna/ui/DLNASettings;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/dlna/ui/DLNASettings$19;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/DLNASettings$19;-><init>(Lcom/sec/android/app/dlna/ui/DLNASettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_10

    .line 689
    nop

    :sswitch_data_158
    .sparse-switch
        0xb -> :sswitch_75
        0xc -> :sswitch_be
        0x438 -> :sswitch_11
        0x47d -> :sswitch_107
        0x47e -> :sswitch_12f
    .end sparse-switch
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_9

    .line 532
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 533
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mDBupdate:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_12

    .line 534
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mDBupdate:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 537
    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1b

    .line 538
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 541
    :cond_1b
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->isChangeSharingOption:Z

    if-eqz v0, :cond_22

    .line 543
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->restartDMS()V

    .line 546
    :cond_22
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 548
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/dlna/DLNAManager;->removeActivityDestroyListener(Lcom/sec/android/app/dlna/ui/IActivityListener;)V

    .line 549
    return-void
.end method

.method public onLowMemory()V
    .registers 4

    .prologue
    .line 503
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".onLowMemory()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onLowMemory()V

    .line 505
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 508
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 510
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->isUsing:Z

    .line 513
    :try_start_6
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_f

    .line 514
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/DLNASettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_f} :catch_1e

    .line 519
    :cond_f
    :goto_f
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->releaseWakeLock()V

    .line 520
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->releaseWifiLock()V

    .line 521
    return-void

    .line 515
    :catch_1e
    move-exception v0

    .line 516
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 13
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v7, 0x1

    .line 229
    const/4 v4, 0x0

    .line 230
    .local v4, resetAllShare:Z
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v6

    if-eqz v6, :cond_3e

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/api/DeviceItem;->isLocalDevice()Z

    move-result v6

    if-eqz v6, :cond_3e

    move v4, v7

    .line 232
    :goto_1b
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 234
    .local v3, key:Ljava/lang/String;
    :try_start_1f
    const-string v6, "device_name"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    .line 235
    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mOriginalServerName:Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_38

    .line 238
    const-string v6, "device_name"

    iput-object v6, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mKeyName:Ljava/lang/String;

    .line 239
    iput-object p2, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mNewValue:Ljava/lang/Object;

    .line 240
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->saveSettings()V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_38} :catch_54

    .line 328
    .end local p2
    :cond_38
    :goto_38
    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 329
    return v7

    .line 230
    .end local v3           #key:Ljava/lang/String;
    .restart local p2
    :cond_3e
    const/4 v4, 0x0

    goto :goto_1b

    .line 250
    .restart local v3       #key:Ljava/lang/String;
    :cond_40
    :try_start_40
    const-string v6, "sharing_video"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9a

    .line 251
    if-eqz v4, :cond_59

    .line 252
    const-string v6, "sharing_video"

    iput-object v6, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mKeyName:Ljava/lang/String;

    .line 253
    iput-object p2, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mNewValue:Ljava/lang/Object;

    .line 254
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->saveSettings()V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_53} :catch_54

    goto :goto_38

    .line 325
    .end local p2
    :catch_54
    move-exception v1

    .line 326
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_38

    .line 256
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local p2
    :cond_59
    :try_start_59
    iget-object v8, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v9, "sharing_video"

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v8, v9, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 257
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v6

    if-eqz v6, :cond_38

    .line 258
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_8e

    .line 259
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/dlna/service/DmsLocalService;->addVideoDirectory()Z

    .line 263
    :goto_85
    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 264
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->isChangeSharingOption:Z

    goto :goto_38

    .line 261
    :cond_8e
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/dlna/service/DmsLocalService;->removeVideoDirectory()Z

    goto :goto_85

    .line 267
    .restart local p2
    :cond_9a
    const-string v6, "sharing_picture"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f0

    .line 268
    if-eqz v4, :cond_ae

    .line 269
    const-string v6, "sharing_picture"

    iput-object v6, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mKeyName:Ljava/lang/String;

    .line 270
    iput-object p2, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mNewValue:Ljava/lang/Object;

    .line 271
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->saveSettings()V

    goto :goto_38

    .line 273
    :cond_ae
    iget-object v8, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v9, "sharing_picture"

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v8, v9, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 274
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v6

    if-eqz v6, :cond_38

    .line 275
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_e4

    .line 276
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/dlna/service/DmsLocalService;->addImageDirectory()Z

    .line 280
    :goto_da
    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 281
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->isChangeSharingOption:Z

    goto/16 :goto_38

    .line 278
    :cond_e4
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/dlna/service/DmsLocalService;->removeImageDirectory()Z

    goto :goto_da

    .line 284
    .restart local p2
    :cond_f0
    const-string v6, "sharing_audio"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_147

    .line 285
    if-eqz v4, :cond_105

    .line 286
    const-string v6, "sharing_audio"

    iput-object v6, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mKeyName:Ljava/lang/String;

    .line 287
    iput-object p2, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mNewValue:Ljava/lang/Object;

    .line 288
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/DLNASettings;->saveSettings()V

    goto/16 :goto_38

    .line 290
    :cond_105
    iget-object v8, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v9, "sharing_audio"

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {v8, v9, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 291
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v6

    if-eqz v6, :cond_38

    .line 292
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_13b

    .line 293
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/dlna/service/DmsLocalService;->addAudioDirectory()Z

    .line 297
    :goto_131
    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 298
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->isChangeSharingOption:Z

    goto/16 :goto_38

    .line 295
    :cond_13b
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/dlna/service/DmsLocalService;->removeAudioDirectory()Z

    goto :goto_131

    .line 301
    .restart local p2
    :cond_147
    const-string v6, "upload_option"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_176

    .line 302
    iget-object v8, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v9, "upload_option"

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    invoke-interface {v8, v9, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 303
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 304
    .local v2, index:I
    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mUploadOption:Landroid/preference/ListPreference;

    invoke-virtual {v6, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 306
    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mRes:Landroid/content/res/Resources;

    const/high16 v8, 0x7f06

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 307
    .local v5, values:[Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mUploadOption:Landroid/preference/ListPreference;

    aget-object v8, v5, v2

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_38

    .line 308
    .end local v2           #index:I
    .end local v5           #values:[Ljava/lang/String;
    .restart local p2
    :cond_176
    const-string v6, "default_storage"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1cf

    .line 309
    iget-object v8, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v9, "default_storage"

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    invoke-interface {v8, v9, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 310
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 311
    .restart local v2       #index:I
    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mDefaultStorage:Landroid/preference/ListPreference;

    invoke-virtual {v6, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 313
    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mRes:Landroid/content/res/Resources;

    const v8, 0x7f060002

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 314
    .restart local v5       #values:[Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mDefaultStorage:Landroid/preference/ListPreference;

    aget-object v8, v5, v2

    invoke-virtual {v6, v8}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 316
    if-nez v2, :cond_1b1

    .line 317
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v6

    sget-object v8, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/sec/android/app/dlna/DLNAManager;->setUploadPath(Ljava/lang/String;)Z

    goto/16 :goto_38

    .line 319
    :cond_1b1
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->EXTERNAL_SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/sec/android/app/dlna/DLNAManager;->setUploadPath(Ljava/lang/String;)Z

    goto/16 :goto_38

    .line 322
    .end local v2           #index:I
    .end local v5           #values:[Ljava/lang/String;
    .restart local p2
    :cond_1cf
    const-string v6, "subtitles"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 323
    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v8, "subtitles"

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_1e4
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_1e4} :catch_54

    goto/16 :goto_38
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .registers 4
    .parameter "preference"

    .prologue
    .line 1009
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    move-object v0, p1

    .line 1010
    check-cast v0, Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    check-cast p1, Landroid/preference/EditTextPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1012
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 225
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .registers 8

    .prologue
    const/4 v5, 0x1

    .line 432
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 434
    iput-boolean v5, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->isUsing:Z

    .line 436
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 437
    .local v2, intentFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 438
    const-string v4, "file"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 439
    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v2}, Lcom/sec/android/app/dlna/ui/DLNASettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 441
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/DLNAManager;->acquireWakeLock()V

    .line 442
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/DLNAManager;->acquireWifiLock()V

    .line 444
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/DLNAManager;->getNetworkState()I

    move-result v3

    .line 445
    .local v3, netState:I
    if-eq v3, v5, :cond_49

    const/4 v4, 0x5

    if-eq v3, v4, :cond_49

    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v4

    sget-object v5, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v4, v5}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 449
    :cond_49
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/sec/android/app/dlna/ui/DLNASettings$4;

    invoke-direct {v5, p0}, Lcom/sec/android/app/dlna/ui/DLNASettings$4;-><init>(Lcom/sec/android/app/dlna/ui/DLNASettings;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 461
    :cond_56
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/DLNAManager;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_b6

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v4

    if-eqz v4, :cond_b6

    .line 463
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v4

    iget-boolean v4, v4, Lcom/sec/android/app/dlna/service/DmsLocalService;->isReceiveEject:Z

    if-eqz v4, :cond_b6

    .line 464
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v4

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sec/android/app/dlna/service/DmsLocalService;->isReceiveEject:Z

    .line 465
    const-string v4, "DLNA"

    const-string v5, "=== Abstract :: [USB STORAGE MODE ON]SD Memory not exist! ==="

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.changeStorage"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 471
    .local v1, intent:Landroid/content/Intent;
    :try_start_8f
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/DLNASettings;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_92} :catch_fd

    .line 476
    :goto_92
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v4

    if-eqz v4, :cond_c3

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/api/DeviceItem;->isLocalDevice()Z

    move-result v4

    if-eqz v4, :cond_c3

    .line 478
    const-string v4, "DLNA"

    const-string v5, "=== Abstract :: Clear go back to PresetMode! ==="

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const/16 v4, 0x47e

    invoke-virtual {p0, v4}, Lcom/sec/android/app/dlna/ui/DLNASettings;->showDialog(I)V

    .line 497
    .end local v1           #intent:Landroid/content/Intent;
    :cond_b6
    :goto_b6
    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->mStorageReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.changeStorage"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/dlna/ui/DLNASettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 500
    return-void

    .line 480
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_c3
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v4

    if-eqz v4, :cond_b6

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/api/DeviceItem;->isLocalDevice()Z

    move-result v4

    if-nez v4, :cond_b6

    .line 483
    :try_start_db
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/service/DmsLocalService;->isServerStarted()Z

    move-result v4

    if-eqz v4, :cond_b6

    .line 486
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/DLNAManager;->stopDMS()Z

    .line 487
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/DLNAManager;->startDMS()Z
    :try_end_f7
    .catch Landroid/os/RemoteException; {:try_start_db .. :try_end_f7} :catch_f8

    goto :goto_b6

    .line 489
    :catch_f8
    move-exception v0

    .line 490
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_b6

    .line 472
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_fd
    move-exception v4

    goto :goto_92
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 426
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 428
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->guiErrorHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->addGuiHandler(Landroid/os/Handler;)V

    .line 429
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 524
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 526
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->guiErrorHandler:Landroid/os/Handler;

    const/16 v1, 0x4d2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 527
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/DLNASettings;->guiErrorHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->removeGuiHandler(Landroid/os/Handler;)V

    .line 528
    return-void
.end method
