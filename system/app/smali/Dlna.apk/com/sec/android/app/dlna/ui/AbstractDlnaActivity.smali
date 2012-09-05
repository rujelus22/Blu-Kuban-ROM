.class public Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;
.super Landroid/app/Activity;
.source "AbstractDlnaActivity.java"

# interfaces
.implements Lcom/sec/android/app/dlna/ui/IActivityListener;


# static fields
.field public static CHECK:Ljava/lang/String;

.field public static CONNECTION:Ljava/lang/String;

.field public static EXTERNAL_SDCARD_PATH:Ljava/lang/String;

.field public static Remembered_Device_UDN:Ljava/lang/String;

.field public static SDCARD_PATH:Ljava/lang/String;

.field public static SavedConnection:Landroid/content/SharedPreferences;

.field public static mDensityDpi:I

.field public static mHeightPixel:I

.field public static mWidthPixel:I


# instance fields
.field guiErrorHandler:Landroid/os/Handler;

.field private isCall_DBUpdated:Z

.field private isUsing:Z

.field private final mAddinReceiver:Landroid/content/BroadcastReceiver;

.field private final mDBupdate:Landroid/content/BroadcastReceiver;

.field mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field protected mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 740
    const-string v0, "Connection_Info"

    sput-object v0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->CONNECTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->isUsing:Z

    .line 123
    new-instance v0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$1;-><init>(Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->mHandler:Landroid/os/Handler;

    .line 586
    new-instance v0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$17;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$17;-><init>(Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->guiErrorHandler:Landroid/os/Handler;

    .line 644
    new-instance v0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$18;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$18;-><init>(Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 691
    new-instance v0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$19;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$19;-><init>(Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    .line 703
    new-instance v0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$20;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$20;-><init>(Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->mAddinReceiver:Landroid/content/BroadcastReceiver;

    .line 712
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->isCall_DBUpdated:Z

    .line 714
    new-instance v0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$21;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$21;-><init>(Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->mDBupdate:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->startWarningActivity()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->clearPlaylist()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->isCall_DBUpdated:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->isCall_DBUpdated:Z

    return p1
.end method

.method private clearPlaylist()V
    .registers 3

    .prologue
    .line 640
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPlaylist()Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v0

    .line 641
    .local v0, currentPlaylist:Lcom/sec/android/app/dlna/model/Playlist;
    invoke-virtual {v0}, Lcom/sec/android/app/dlna/model/Playlist;->clear()V

    .line 642
    return-void
.end method

.method private startWarningActivity()V
    .registers 3

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->isUsing:Z

    if-eqz v0, :cond_16

    .line 277
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 279
    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 283
    :cond_16
    return-void
.end method


# virtual methods
.method public LoadConnection()V
    .registers 4

    .prologue
    .line 753
    const-string v0, "SERVER UDN"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->SavedConnection:Landroid/content/SharedPreferences;

    .line 754
    sget-object v0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->SavedConnection:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->CONNECTION:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->Remembered_Device_UDN:Ljava/lang/String;

    .line 755
    return-void
.end method

.method public SaveConnection(Ljava/lang/String;)V
    .registers 6
    .parameter "CHECK"

    .prologue
    .line 743
    const-string v1, "SERVER UDN"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->SavedConnection:Landroid/content/SharedPreferences;

    .line 744
    sget-object v1, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->SavedConnection:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 745
    .local v0, connection_info:Landroid/content/SharedPreferences$Editor;
    sget-object v1, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->CONNECTION:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 746
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 747
    const-string v1, "DLNA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AbstractDlnaActivity - SaveConnection() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    return-void
.end method

.method protected dismissErrorOccured(I)V
    .registers 5
    .parameter

    .prologue
    .line 564
    sparse-switch p1, :sswitch_data_9e

    .line 584
    :goto_3
    return-void

    .line 566
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

    .line 567
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->dismissDialog(I)V

    goto :goto_3

    .line 571
    :sswitch_24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 572
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissErrorOccured DMSNOTSELECTED from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->dismissDialog(I)V

    goto :goto_3

    .line 575
    :cond_5c
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NOT dismissErrorOccured DMSNOTSELECTED from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 580
    :sswitch_7d
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

    .line 581
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->dismissDialog(I)V

    goto/16 :goto_3

    .line 564
    :sswitch_data_9e
    .sparse-switch
        0xb -> :sswitch_24
        0xc -> :sswitch_4
        0x438 -> :sswitch_7d
    .end sparse-switch
.end method

.method protected handleErrorOccured(I)V
    .registers 5
    .parameter

    .prologue
    .line 486
    sparse-switch p1, :sswitch_data_162

    .line 561
    :cond_3
    :goto_3
    return-void

    .line 488
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

    .line 492
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

    .line 496
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

    .line 497
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/sec/android/app/dlna/ui/DLNAHomeScreen;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 501
    :try_start_66
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->showDialog(I)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_69} :catch_6a

    goto :goto_3

    .line 502
    :catch_6a
    move-exception v0

    goto :goto_3

    .line 510
    :sswitch_6c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/sec/android/app/dlna/ui/PresetModeActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ca

    .line 511
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleErrorOccured DMSNOTSELECTED from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    if-nez v0, :cond_b5

    .line 514
    :try_start_aa
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->showDialog(I)V
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_ad} :catch_af

    goto/16 :goto_3

    .line 515
    :catch_af
    move-exception v0

    .line 516
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 518
    :cond_b5
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    if-nez v0, :cond_3

    .line 520
    :try_start_bf
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->showDialog(I)V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_c2} :catch_c4

    goto/16 :goto_3

    .line 521
    :catch_c4
    move-exception v0

    .line 522
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 526
    :cond_ca
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NOT handleErrorOccured DMSNOTSELECTED from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 531
    :sswitch_ec
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

    .line 533
    :try_start_108
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->mPowerManager:Landroid/os/PowerManager;

    .line 534
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->mPowerManager:Landroid/os/PowerManager;

    const v1, 0x3000000a

    const-string v2, "DLNA"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 537
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 539
    if-nez v0, :cond_133

    .line 540
    const-string v0, "DLNA"

    const-string v1, "Acquire walkelock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 544
    :cond_133
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->showDialog(I)V

    .line 545
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_13b} :catch_13d

    goto/16 :goto_3

    .line 546
    :catch_13d
    move-exception v0

    .line 547
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 552
    :sswitch_143
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

    .line 486
    nop

    :sswitch_data_162
    .sparse-switch
        0xb -> :sswitch_6c
        0xc -> :sswitch_3e
        0x11 -> :sswitch_143
        0x191 -> :sswitch_4
        0x1f5 -> :sswitch_21
        0x438 -> :sswitch_ec
    .end sparse-switch
.end method

.method public notifyActivityEvent(I)V
    .registers 5
    .parameter "code"

    .prologue
    const/16 v1, 0x47d

    .line 257
    packed-switch p1, :pswitch_data_30

    .line 272
    :goto_5
    return-void

    .line 259
    :pswitch_6
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

    .line 260
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->finish()V

    goto :goto_5

    .line 266
    :pswitch_26
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5

    .line 270
    :pswitch_2c
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->removeDialog(I)V

    goto :goto_5

    .line 257
    :pswitch_data_30
    .packed-switch 0x2f1
        :pswitch_6
        :pswitch_26
        :pswitch_2c
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 289
    const/4 v0, -0x1

    if-ne p2, v0, :cond_b

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_b

    .line 291
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 293
    :cond_b
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 294
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 100
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/sec/android/app/dlna/DLNAManager;->addActivityDestroyListener(Lcom/sec/android/app/dlna/ui/IActivityListener;)V

    .line 101
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->mAddinReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.startAddin"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->mDBupdate:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.DBupdate"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 105
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 106
    .local v1, sdkVersion:I
    const/16 v2, 0x8

    if-ge v1, v2, :cond_67

    .line 107
    const-string v2, "/sdcard/"

    sput-object v2, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->SDCARD_PATH:Ljava/lang/String;

    .line 108
    const-string v2, "sd/"

    sput-object v2, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->EXTERNAL_SDCARD_PATH:Ljava/lang/String;

    .line 114
    :goto_4a
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 115
    .local v0, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 116
    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v2, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->mDensityDpi:I

    .line 117
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v2, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->mHeightPixel:I

    .line 118
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v2, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->mWidthPixel:I

    .line 121
    return-void

    .line 110
    .end local v0           #metrics:Landroid/util/DisplayMetrics;
    :cond_67
    const-string v2, "/mnt/sdcard/"

    sput-object v2, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->SDCARD_PATH:Ljava/lang/String;

    .line 111
    const-string v2, "external_sd/"

    sput-object v2, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->EXTERNAL_SDCARD_PATH:Ljava/lang/String;

    goto :goto_4a
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 11
    .parameter "id"

    .prologue
    const v6, 0x7f09003f

    const v5, 0x7f090004

    const v8, 0x7f090074

    const v7, 0x7f090036

    .line 297
    sparse-switch p1, :sswitch_data_1ec

    .line 467
    const-string v2, "DLNA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateDialog.default from : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 470
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    new-instance v1, Lcom/sec/android/app/dlna/view/PopupView;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/view/PopupView;-><init>(Landroid/content/Context;)V

    .line 471
    .local v1, dialogView:Lcom/sec/android/app/dlna/view/PopupView;
    const v2, 0x7f09002d

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/view/PopupView;->setPopupMessage(Ljava/lang/String;)V

    .line 473
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 474
    new-instance v2, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$16;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$16;-><init>(Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;I)V

    invoke-virtual {v0, v7, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 479
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 482
    .end local v0           #dialog:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialogView:Lcom/sec/android/app/dlna/view/PopupView;
    :goto_4e
    return-object v2

    .line 299
    :sswitch_4f
    const-string v2, "DLNA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateDialog.UPLOAD_SHOW_POPUP from : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/android/app/dlna/DLNAManager;->uploadHandler:Landroid/os/Handler;

    const/16 v3, 0x1a2d

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 301
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090069

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const v6, 0x7f090058

    invoke-virtual {p0, v6}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$5;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$5;-><init>(Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;)V

    invoke-virtual {v2, v8, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$4;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$4;-><init>(Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;)V

    invoke-virtual {v2, v7, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$3;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$3;-><init>(Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_4e

    .line 330
    :sswitch_b3
    const-string v2, "DLNA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateDialog.DMSNOTSELECTED from : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090012

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$8;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$8;-><init>(Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;)V

    invoke-virtual {v2, v8, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$7;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$7;-><init>(Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;)V

    invoke-virtual {v2, v7, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$6;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$6;-><init>(Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_4e

    .line 362
    :sswitch_fc
    const-string v2, "DLNA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateDialog.DMRNOTSELECTED from : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090048

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$11;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$11;-><init>(Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;)V

    invoke-virtual {v2, v8, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$10;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$10;-><init>(Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;)V

    invoke-virtual {v2, v7, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$9;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$9;-><init>(Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_4e

    .line 405
    :sswitch_145
    const-string v2, "DLNA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateDialog.CONTENTSNOTSELECTED from : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const/4 v2, 0x0

    goto/16 :goto_4e

    .line 410
    :sswitch_164
    const-string v2, "DLNA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateDialog.RESTART_ALLSHARE from : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090003

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$13;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$13;-><init>(Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;)V

    invoke-virtual {v2, v6, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$12;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$12;-><init>(Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_4e

    .line 433
    :sswitch_1a8
    const-string v2, "DLNA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateDialog.DB_UPDATED from : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090017

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$15;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$15;-><init>(Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;)V

    invoke-virtual {v2, v6, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$14;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$14;-><init>(Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto/16 :goto_4e

    .line 297
    :sswitch_data_1ec
    .sparse-switch
        0xb -> :sswitch_b3
        0xc -> :sswitch_fc
        0x11 -> :sswitch_145
        0x438 -> :sswitch_4f
        0x47d -> :sswitch_164
        0x47e -> :sswitch_1a8
    .end sparse-switch
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->mAddinReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_9

    .line 245
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->mAddinReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 246
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_12

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->mWifiReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 248
    :cond_12
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->mDBupdate:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1b

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->mDBupdate:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 250
    :cond_1b
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 252
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/dlna/DLNAManager;->removeActivityDestroyListener(Lcom/sec/android/app/dlna/ui/IActivityListener;)V

    .line 254
    return-void
.end method

.method public onLowMemory()V
    .registers 4

    .prologue
    .line 143
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

    .line 144
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 145
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 148
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 149
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->isUsing:Z

    .line 152
    :try_start_6
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_f

    .line 153
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_f} :catch_1e

    .line 158
    :cond_f
    :goto_f
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->releaseWakeLock()V

    .line 159
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->releaseWifiLock()V

    .line 160
    return-void

    .line 154
    :catch_1e
    move-exception v0

    .line 155
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method

.method protected onResume()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 176
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 177
    iput-boolean v5, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->isUsing:Z

    .line 180
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 181
    .local v2, intentFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    const-string v4, "file"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 183
    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v2}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 186
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/DLNAManager;->acquireWakeLock()V

    .line 187
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/DLNAManager;->acquireWifiLock()V

    .line 190
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/DLNAManager;->getNetworkState()I

    move-result v3

    .line 191
    .local v3, netState:I
    if-eq v3, v5, :cond_49

    const/4 v4, 0x5

    if-eq v3, v4, :cond_49

    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v4

    sget-object v5, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v4, v5}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 195
    :cond_49
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$2;

    invoke-direct {v5, p0}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity$2;-><init>(Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 207
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

    .line 209
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v4

    iget-boolean v4, v4, Lcom/sec/android/app/dlna/service/DmsLocalService;->isReceiveEject:Z

    if-eqz v4, :cond_b6

    .line 210
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v4

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sec/android/app/dlna/service/DmsLocalService;->isReceiveEject:Z

    .line 211
    const-string v4, "DLNA"

    const-string v5, "=== Abstract :: [USB STORAGE MODE ON]SD Memory not exist! ==="

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.changeStorage"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    .local v1, intent:Landroid/content/Intent;
    :try_start_8f
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_92} :catch_f1

    .line 222
    :goto_92
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v4

    if-eqz v4, :cond_b7

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/api/DeviceItem;->isLocalDevice()Z

    move-result v4

    if-eqz v4, :cond_b7

    .line 224
    const-string v4, "DLNA"

    const-string v5, "=== Abstract :: Clear go back to PresetMode! ==="

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/16 v4, 0x47e

    invoke-virtual {p0, v4}, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->showDialog(I)V

    .line 241
    .end local v1           #intent:Landroid/content/Intent;
    :cond_b6
    :goto_b6
    return-void

    .line 226
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_b7
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

    .line 229
    :try_start_cf
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/DLNAManager;->getService()Lcom/sec/android/app/dlna/service/DmsLocalService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/service/DmsLocalService;->isServerStarted()Z

    move-result v4

    if-eqz v4, :cond_b6

    .line 232
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/DLNAManager;->stopDMS()Z

    .line 233
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/DLNAManager;->startDMS()Z
    :try_end_eb
    .catch Landroid/os/RemoteException; {:try_start_cf .. :try_end_eb} :catch_ec

    goto :goto_b6

    .line 235
    :catch_ec
    move-exception v0

    .line 236
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_b6

    .line 218
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_f1
    move-exception v4

    goto :goto_92
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 170
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 172
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->guiErrorHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->addGuiHandler(Landroid/os/Handler;)V

    .line 173
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 163
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->guiErrorHandler:Landroid/os/Handler;

    const/16 v1, 0x4d2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 166
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->guiErrorHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->removeGuiHandler(Landroid/os/Handler;)V

    .line 167
    return-void
.end method
