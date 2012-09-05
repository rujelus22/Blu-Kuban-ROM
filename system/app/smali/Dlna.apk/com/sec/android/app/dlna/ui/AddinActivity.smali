.class public Lcom/sec/android/app/dlna/ui/AddinActivity;
.super Landroid/app/Activity;
.source "AddinActivity.java"

# interfaces
.implements Lcom/samsung/upnp/device/DeviceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dlna/ui/AddinActivity$AnimationThread;
    }
.end annotation


# static fields
.field public static PlayList_Action:Ljava/lang/String;

.field public static createDLNA:Z

.field public static currIndex:I

.field public static currentPlayItemIndex:I

.field public static mAutoPlay:Z

.field public static mDensityDpi:I

.field public static mHeightPixel:I

.field public static mWidthPixel:I


# instance fields
.field private final ADDIN_FINISH:I

.field private final ADDIN_HANDLE_STOP:I

.field private CHANGE_PLAYER:Ljava/lang/String;

.field private final CHANGE_PROGRESS:I

.field private final CONNECT_WIFI:I

.field private final CONTENT_DETAIL_MENU:I

.field protected final FILL_LIST:I

.field protected final INIT_MEDIA:I

.field private final INVALID_ACTION:I

.field private IsChangePlayer:Z

.field private final REFRESH_HEADER:I

.field protected final REFRESH_LIST:I

.field private final STOP_ANIMATION:I

.field private final TAG:Ljava/lang/String;

.field private final UNKNOWN_FILE_TYPE:I

.field final WIFI_SETTING_START_CODE:I

.field private animationThread:Ljava/lang/Thread;

.field private bOnCreatePlaylistActivity:Z

.field private cancelButton:Landroid/widget/Button;

.field private deviceAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

.field private deviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/api/DeviceItem;",
            ">;"
        }
    .end annotation
.end field

.field private deviceListView:Landroid/widget/ListView;

.field private dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

.field emptytext:Landroid/widget/TextView;

.field emptyview:Landroid/widget/ImageView;

.field private headerIcon:Landroid/widget/ProgressBar;

.field private initDialog:Landroid/app/ProgressDialog;

.field private isPlayMode:Z

.field private isWifiSettingsLaunched:Z

.field private mAllShareReceiver:Landroid/content/BroadcastReceiver;

.field private mDebugHandler:Lcom/sec/android/app/dlna/ui/DlnaDebugOutputHandler;

.field private mHandler:Landroid/os/Handler;

.field private mMediaType:Ljava/lang/String;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mStopAnimation:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

.field private refreshButton:Landroid/widget/Button;

.field private requestDialog:Landroid/app/ProgressDialog;

.field private storingUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private uris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 92
    const-string v0, "Playlist.start"

    sput-object v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->PlayList_Action:Ljava/lang/String;

    .line 128
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->createDLNA:Z

    .line 131
    sput v1, Lcom/sec/android/app/dlna/ui/AddinActivity;->currIndex:I

    .line 133
    sput-boolean v1, Lcom/sec/android/app/dlna/ui/AddinActivity;->mAutoPlay:Z

    .line 134
    sput v1, Lcom/sec/android/app/dlna/ui/AddinActivity;->currentPlayItemIndex:I

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    const-string v0, "DLNA_Addin"

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->TAG:Ljava/lang/String;

    .line 75
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->FILL_LIST:I

    .line 76
    const/16 v0, 0x1f5

    iput v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->INIT_MEDIA:I

    .line 77
    const/16 v0, 0x1f6

    iput v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->REFRESH_LIST:I

    .line 79
    const/16 v0, 0x3ea

    iput v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->CHANGE_PROGRESS:I

    .line 80
    const/16 v0, 0x6f1

    iput v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->CONNECT_WIFI:I

    .line 81
    const/16 v0, 0x44c

    iput v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->REFRESH_HEADER:I

    .line 82
    const/16 v0, 0x44d

    iput v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->STOP_ANIMATION:I

    .line 83
    const/16 v0, 0x708

    iput v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->INVALID_ACTION:I

    .line 84
    const/16 v0, 0x709

    iput v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->UNKNOWN_FILE_TYPE:I

    .line 85
    const/16 v0, 0x409

    iput v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->ADDIN_FINISH:I

    .line 87
    const/16 v0, 0x834

    iput v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->ADDIN_HANDLE_STOP:I

    .line 89
    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->CONTENT_DETAIL_MENU:I

    .line 90
    const/16 v0, 0x3ef

    iput v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->WIFI_SETTING_START_CODE:I

    .line 94
    const-string v0, "Change_Player"

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->CHANGE_PLAYER:Ljava/lang/String;

    .line 105
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->deviceAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    .line 106
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->deviceList:Ljava/util/List;

    .line 107
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->deviceListView:Landroid/widget/ListView;

    .line 108
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->initDialog:Landroid/app/ProgressDialog;

    .line 109
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->requestDialog:Landroid/app/ProgressDialog;

    .line 110
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->mDebugHandler:Lcom/sec/android/app/dlna/ui/DlnaDebugOutputHandler;

    .line 111
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 112
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->mHandler:Landroid/os/Handler;

    .line 113
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->headerIcon:Landroid/widget/ProgressBar;

    .line 123
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    .line 135
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->refreshButton:Landroid/widget/Button;

    .line 136
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->cancelButton:Landroid/widget/Button;

    .line 140
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->mMediaType:Ljava/lang/String;

    .line 142
    iput-boolean v2, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->IsChangePlayer:Z

    .line 143
    iput-boolean v2, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->bOnCreatePlaylistActivity:Z

    .line 1158
    new-instance v0, Lcom/sec/android/app/dlna/ui/AddinActivity$15;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dlna/ui/AddinActivity$15;-><init>(Lcom/sec/android/app/dlna/ui/AddinActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->mAllShareReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dlna/ui/AddinActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->IsChangePlayer:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/dlna/ui/AddinActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->destroyAllShare()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/dlna/ui/AddinActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->setupProgressBar()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/dlna/ui/AddinActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->dismissInitDialog()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/dlna/ui/AddinActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->showInitDialog()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/dlna/ui/AddinActivity;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->uris:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/dlna/ui/AddinActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->mMediaType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/dlna/ui/AddinActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->dismissRequestDialog()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/app/dlna/ui/AddinActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->updateProgressBar()V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/app/dlna/ui/AddinActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->refreshDeviceList()V

    return-void
.end method

.method static synthetic access$1902(Lcom/sec/android/app/dlna/ui/AddinActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->bOnCreatePlaylistActivity:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/dlna/ui/AddinActivity;)Landroid/content/BroadcastReceiver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->mAllShareReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/dlna/ui/AddinActivity;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->deviceList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/dlna/ui/AddinActivity;)Lcom/sec/android/app/dlna/DLNAAddinManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/dlna/ui/AddinActivity;)Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->deviceAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/dlna/ui/AddinActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->mStopAnimation:Z

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/dlna/ui/AddinActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->mStopAnimation:Z

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/dlna/ui/AddinActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/dlna/ui/AddinActivity;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->headerIcon:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/dlna/ui/AddinActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->setMediaName()V

    return-void
.end method

.method private destroyAllShare()V
    .registers 5

    .prologue
    .line 749
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.finishAddin"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 751
    .local v1, intent:Landroid/content/Intent;
    :try_start_7
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/AddinActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_f

    .line 756
    :goto_a
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    if-nez v2, :cond_18

    .line 767
    :goto_e
    return-void

    .line 752
    :catch_f
    move-exception v0

    .line 753
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DLNA_Addin"

    const-string v3, "Fail to broadcast \'finishAddin\'"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 759
    .end local v0           #e:Ljava/lang/Exception;
    :cond_18
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->handleStop()V

    .line 760
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 761
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAAddinManager;->stopManager()V

    .line 762
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->removeDeviceChangeListener(Lcom/samsung/upnp/device/DeviceChangeListener;)V

    .line 763
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dlna/DLNAAddinManager;->removeGuiHandler(Landroid/os/Handler;)V

    .line 764
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAAddinManager;->terminateManager()V

    .line 766
    invoke-virtual {p0, p0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->requestKillProcess(Landroid/content/Context;)V

    goto :goto_e
.end method

.method private dismissInitDialog()V
    .registers 3

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->initDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->initDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 1100
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->initDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1101
    :cond_12
    return-void
.end method

.method private dismissRequestDialog()V
    .registers 3

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->requestDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->requestDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 1121
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->requestDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1122
    :cond_12
    return-void
.end method

.method private fillDeviceList()V
    .registers 5

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_d

    .line 1074
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1075
    :cond_d
    return-void
.end method

.method public static getCurrentIndex()I
    .registers 1

    .prologue
    .line 1189
    sget v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->currIndex:I

    return v0
.end method

.method private refreshDeviceList()V
    .registers 3

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_b

    .line 1079
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1080
    :cond_b
    return-void
.end method

.method private setCurrentIndex(I)V
    .registers 5
    .parameter

    .prologue
    .line 1193
    const-string v0, "DLNA_Addin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AddinActivity,, setIndex ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    if-gez p1, :cond_1e

    .line 1196
    const/4 p1, 0x0

    .line 1201
    :cond_1b
    :goto_1b
    sput p1, Lcom/sec/android/app/dlna/ui/AddinActivity;->currIndex:I

    .line 1202
    return-void

    .line 1197
    :cond_1e
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->uris:Ljava/util/ArrayList;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_1b

    .line 1198
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_1b
.end method

.method private setMediaName()V
    .registers 1

    .prologue
    .line 973
    return-void
.end method

.method private setupProgressBar()V
    .registers 3

    .prologue
    .line 1044
    const/4 v0, 0x0

    .line 1045
    .local v0, duration:I
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAAddinManager;->getPlayItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getDefaultContentResource()Lcom/samsung/api/ContentResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/api/ContentResource;->getDuration()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/dlna/playback/PlaybackUtil;->formatTime(Ljava/lang/String;)I

    move-result v0

    .line 1048
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAAddinManager;->getTotalDuration()I
    :try_end_18
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_18} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_19

    .line 1053
    :goto_18
    return-void

    .line 1051
    :catch_19
    move-exception v1

    goto :goto_18

    .line 1050
    :catch_1b
    move-exception v1

    goto :goto_18
.end method

.method private showInitDialog()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1083
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->dismissInitDialog()V

    .line 1084
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->initDialog:Landroid/app/ProgressDialog;

    .line 1085
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->initDialog:Landroid/app/ProgressDialog;

    const/high16 v1, 0x7f09

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/AddinActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1086
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->initDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1087
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->initDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1088
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->initDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/sec/android/app/dlna/ui/AddinActivity$13;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/AddinActivity$13;-><init>(Lcom/sec/android/app/dlna/ui/AddinActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1095
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->initDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1096
    return-void
.end method

.method private updateProgressBar()V
    .registers 3

    .prologue
    .line 1056
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAAddinManager;->getCurrentPosition()I

    move-result v0

    .line 1057
    .local v0, pos:I
    return-void
.end method

.method private urisStore(Ljava/util/ArrayList;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 804
    .local p1, pushUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->storingUris:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 805
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->storingUris:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->storingUris:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 808
    :cond_b
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->storingUris:Ljava/util/ArrayList;

    .line 809
    const-string v0, "DLNA_Addin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "urisStore,, storingUris = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->storingUris:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    const-string v0, "DLNA_Addin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "urisStore,, pushUri     = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    return-void
.end method


# virtual methods
.method public deviceAdded(Lcom/samsung/upnp/Device;)V
    .registers 4
    .parameter

    .prologue
    .line 1060
    const-string v0, "DLNA_Addin"

    const-string v1, "deviceAdded"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->fillDeviceList()V

    .line 1062
    return-void
.end method

.method public deviceRemoved(Lcom/samsung/upnp/Device;)V
    .registers 5
    .parameter

    .prologue
    .line 1065
    const-string v0, "DLNA_Addin"

    const-string v1, "removed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->headerIcon:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1067
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/dlna/ui/AddinActivity$AnimationThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/dlna/ui/AddinActivity$AnimationThread;-><init>(Lcom/sec/android/app/dlna/ui/AddinActivity;Lcom/sec/android/app/dlna/ui/AddinActivity$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1068
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1069
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->fillDeviceList()V

    .line 1070
    return-void
.end method

.method protected handleStop()V
    .registers 2

    .prologue
    .line 988
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->mAutoPlay:Z

    .line 989
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->requestStop()V

    .line 990
    return-void
.end method

.method protected handleVolumeDown()V
    .registers 2

    .prologue
    .line 997
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->requestVolumeDown()V

    .line 998
    return-void
.end method

.method protected handleVolumeUp()V
    .registers 2

    .prologue
    .line 993
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->requestVolumeUp()V

    .line 994
    return-void
.end method

.method protected isConnected()Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 198
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/dlna/ui/AddinActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 200
    .local v1, wifi:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v4

    sget-object v5, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v4, v5}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 211
    :cond_1f
    :goto_1f
    return v3

    .line 204
    :cond_20
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 205
    .local v2, wifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    .line 207
    .local v0, ipAddress:I
    if-eqz v0, :cond_1f

    .line 211
    const/4 v3, 0x1

    goto :goto_1f
.end method

.method public isWifiSettingsLaunched()Z
    .registers 2

    .prologue
    .line 916
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->isWifiSettingsLaunched:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 740
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 742
    const/16 v0, 0x409

    if-ne p1, v0, :cond_f

    if-nez p2, :cond_f

    .line 743
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->destroyAllShare()V

    .line 744
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->finish()V

    .line 746
    :cond_f
    return-void
.end method

.method public onBackPressed()V
    .registers 3

    .prologue
    .line 939
    const-string v0, "DLNA_Addin"

    const-string v1, "onBackPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->IsChangePlayer:Z

    if-nez v0, :cond_12

    .line 943
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->destroyAllShare()V

    .line 944
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->finish()V

    .line 947
    :goto_11
    return-void

    .line 946
    :cond_12
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->finish()V

    goto :goto_11
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter

    .prologue
    .line 1026
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    .line 1027
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1028
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->deviceAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/api/DeviceItem;

    .line 1030
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/dlna/ui/MediaInfo;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "detail"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->startActivity(Landroid/content/Intent;)V

    .line 1035
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 30
    .parameter "savedInstanceState"

    .prologue
    .line 291
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 293
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dlna/ui/AddinActivity;->requestWindowFeature(I)Z

    .line 294
    const v2, 0x7f030004

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dlna/ui/AddinActivity;->setContentView(I)V

    .line 296
    const v2, 0x7f07001f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dlna/ui/AddinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->refreshButton:Landroid/widget/Button;

    .line 297
    const v2, 0x7f070020

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dlna/ui/AddinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->cancelButton:Landroid/widget/Button;

    .line 298
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->isPlayMode:Z

    .line 301
    new-instance v19, Landroid/util/DisplayMetrics;

    invoke-direct/range {v19 .. v19}, Landroid/util/DisplayMetrics;-><init>()V

    .line 302
    .local v19, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 303
    move-object/from16 v0, v19

    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v2, Lcom/sec/android/app/dlna/ui/AddinActivity;->mDensityDpi:I

    .line 304
    move-object/from16 v0, v19

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v2, Lcom/sec/android/app/dlna/ui/AddinActivity;->mHeightPixel:I

    .line 305
    move-object/from16 v0, v19

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v2, Lcom/sec/android/app/dlna/ui/AddinActivity;->mWidthPixel:I

    .line 306
    new-instance v15, Landroid/content/Intent;

    const-string v2, "android.intent.action.startAddin"

    invoke-direct {v15, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 308
    .local v15, intentAddin:Landroid/content/Intent;
    :try_start_5f
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/app/dlna/ui/AddinActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_64} :catch_1e1

    .line 313
    :goto_64
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->mAllShareReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.startAllShare"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/dlna/ui/AddinActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 314
    const v2, 0x7f07001c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dlna/ui/AddinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->headerIcon:Landroid/widget/ProgressBar;

    .line 316
    const v2, 0x7f070012

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dlna/ui/AddinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->emptyview:Landroid/widget/ImageView;

    .line 317
    const v2, 0x7f070013

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dlna/ui/AddinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->emptytext:Landroid/widget/TextView;

    .line 318
    const-string v2, "power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dlna/ui/AddinActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->mPowerManager:Landroid/os/PowerManager;

    .line 319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x1

    const-string v4, "wakelock"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->refreshButton:Landroid/widget/Button;

    new-instance v3, Lcom/sec/android/app/dlna/ui/AddinActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/dlna/ui/AddinActivity$1;-><init>(Lcom/sec/android/app/dlna/ui/AddinActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->cancelButton:Landroid/widget/Button;

    new-instance v3, Lcom/sec/android/app/dlna/ui/AddinActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/dlna/ui/AddinActivity$2;-><init>(Lcom/sec/android/app/dlna/ui/AddinActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->mDebugHandler:Lcom/sec/android/app/dlna/ui/DlnaDebugOutputHandler;

    if-nez v2, :cond_f3

    .line 344
    new-instance v2, Lcom/sec/android/app/dlna/ui/DlnaDebugOutputHandler;

    invoke-direct {v2}, Lcom/sec/android/app/dlna/ui/DlnaDebugOutputHandler;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->mDebugHandler:Lcom/sec/android/app/dlna/ui/DlnaDebugOutputHandler;

    .line 345
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->mDebugHandler:Lcom/sec/android/app/dlna/ui/DlnaDebugOutputHandler;

    invoke-static {v2}, Lcom/samsung/util/Debugs;->addDebugOutputHandler(Lcom/samsung/util/DebugOutputHandler;)V

    .line 346
    invoke-static {}, Lcom/samsung/util/Debugs;->on()V

    .line 349
    :cond_f3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-nez v2, :cond_116

    .line 350
    const-string v2, "wifi"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dlna/ui/AddinActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/wifi/WifiManager;

    .line 351
    .local v18, manager:Landroid/net/wifi/WifiManager;
    const-string v2, "mlock"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    .line 355
    .end local v18           #manager:Landroid/net/wifi/WifiManager;
    :cond_116
    new-instance v2, Lcom/sec/android/app/dlna/ui/AddinActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sec/android/app/dlna/ui/AddinActivity$3;-><init>(Lcom/sec/android/app/dlna/ui/AddinActivity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->mHandler:Landroid/os/Handler;

    .line 505
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->mStopAnimation:Z

    .line 506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->headerIcon:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 507
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/sec/android/app/dlna/ui/AddinActivity$AnimationThread;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/sec/android/app/dlna/ui/AddinActivity$AnimationThread;-><init>(Lcom/sec/android/app/dlna/ui/AddinActivity;Lcom/sec/android/app/dlna/ui/AddinActivity$1;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->animationThread:Ljava/lang/Thread;

    .line 508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->animationThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 510
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    .line 511
    .local v14, i:Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    .line 512
    .local v10, action:Ljava/lang/String;
    invoke-virtual {v14}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    .line 514
    .local v11, b:Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->CHANGE_PLAYER:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->IsChangePlayer:Z

    .line 516
    if-nez v11, :cond_1eb

    .line 517
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->finish()V

    .line 682
    :goto_168
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dlna/DLNAManager;->SetTapMode(Z)V

    .line 683
    const-string v2, "DLNA_Addin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetTapMode() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/DLNAManager;->GetTapMode()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const v2, 0x7f070014

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dlna/ui/AddinActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->deviceListView:Landroid/widget/ListView;

    .line 685
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->deviceList:Ljava/util/List;

    .line 686
    new-instance v2, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    const v3, 0x7f030006

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->deviceList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/sec/android/app/dlna/view/IControlPointInfo;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->deviceAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    .line 687
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->deviceListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->deviceAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 688
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->deviceListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dlna/ui/AddinActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 690
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->deviceListView:Landroid/widget/ListView;

    new-instance v3, Lcom/sec/android/app/dlna/ui/AddinActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/sec/android/app/dlna/ui/AddinActivity$4;-><init>(Lcom/sec/android/app/dlna/ui/AddinActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 737
    return-void

    .line 309
    .end local v10           #action:Ljava/lang/String;
    .end local v11           #b:Landroid/os/Bundle;
    .end local v14           #i:Landroid/content/Intent;
    :catch_1e1
    move-exception v13

    .line 310
    .local v13, e:Ljava/lang/Exception;
    const-string v2, "DLNA_Addin"

    const-string v3, "Fail to broadcast \'startAddin\'"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_64

    .line 519
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v10       #action:Ljava/lang/String;
    .restart local v11       #b:Landroid/os/Bundle;
    .restart local v14       #i:Landroid/content/Intent;
    :cond_1eb
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3fb

    .line 520
    const-string v2, "DLNA_Addin"

    const-string v3, "AddInActivity, onCreate(), In ACTION_SEND"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20f

    .line 523
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/net/Uri;

    .line 525
    .local v27, uri:Landroid/net/Uri;
    if-nez v27, :cond_23a

    .line 526
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->finish()V

    .line 674
    .end local v27           #uri:Landroid/net/Uri;
    :cond_20f
    :goto_20f
    :try_start_20f
    new-instance v2, Lcom/sec/android/app/dlna/DLNAAddinManager;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/sec/android/app/dlna/DLNAAddinManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    .line 675
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->addDeviceChangeListener(Lcom/samsung/upnp/device/DeviceChangeListener;)V

    .line 676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dlna/DLNAAddinManager;->addGuiHandler(Landroid/os/Handler;)V
    :try_end_22e
    .catch Ljava/lang/NullPointerException; {:try_start_20f .. :try_end_22e} :catch_230

    goto/16 :goto_168

    .line 677
    :catch_230
    move-exception v13

    .line 678
    .local v13, e:Ljava/lang/NullPointerException;
    const/16 v2, 0x708

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dlna/ui/AddinActivity;->showDialog(I)V

    goto/16 :goto_168

    .line 528
    .end local v13           #e:Ljava/lang/NullPointerException;
    .restart local v27       #uri:Landroid/net/Uri;
    :cond_23a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->uris:Ljava/util/ArrayList;

    if-nez v2, :cond_25f

    .line 529
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->uris:Ljava/util/ArrayList;

    .line 530
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->uris:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    invoke-virtual {v14}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v17

    .line 533
    .local v17, mType1:Ljava/lang/String;
    if-nez v17, :cond_27b

    .line 534
    const/16 v2, 0x709

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dlna/ui/AddinActivity;->showDialog(I)V

    .line 544
    .end local v17           #mType1:Ljava/lang/String;
    :cond_25f
    :goto_25f
    invoke-virtual/range {v27 .. v27}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v26

    .line 545
    .local v26, type:Ljava/lang/String;
    const-string v2, "file"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20f

    .line 546
    invoke-virtual {v14}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v16

    .line 548
    .local v16, mType:Ljava/lang/String;
    if-nez v16, :cond_297

    .line 549
    const/16 v2, 0x709

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dlna/ui/AddinActivity;->showDialog(I)V

    goto :goto_20f

    .line 536
    .end local v16           #mType:Ljava/lang/String;
    .end local v26           #type:Ljava/lang/String;
    .restart local v17       #mType1:Ljava/lang/String;
    :cond_27b
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_28a

    .line 537
    const/16 v2, 0x709

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dlna/ui/AddinActivity;->showDialog(I)V

    goto :goto_25f

    .line 539
    :cond_28a
    const/4 v2, 0x0

    const/4 v3, 0x5

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->mMediaType:Ljava/lang/String;

    goto :goto_25f

    .line 551
    .end local v17           #mType1:Ljava/lang/String;
    .restart local v16       #mType:Ljava/lang/String;
    .restart local v26       #type:Ljava/lang/String;
    :cond_297
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_2a7

    .line 552
    const/16 v2, 0x709

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dlna/ui/AddinActivity;->showDialog(I)V

    goto/16 :goto_20f

    .line 554
    :cond_2a7
    const/4 v2, 0x0

    const/4 v3, 0x5

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 555
    .local v20, mineType:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v23

    .line 556
    .local v23, path:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v25

    .line 557
    .local v25, size:I
    const/4 v2, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 559
    .local v21, newPath:Ljava/lang/String;
    const-string v2, "audio"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_329

    .line 560
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const-string v5, "_data = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v21, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 567
    .local v12, c:Landroid/database/Cursor;
    if-nez v12, :cond_2f0

    .line 568
    const/16 v2, 0x708

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dlna/ui/AddinActivity;->showDialog(I)V

    goto/16 :goto_20f

    .line 571
    :cond_2f0
    :try_start_2f0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 572
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 573
    .local v8, _id:J
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 574
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v27

    .line 578
    invoke-virtual/range {v27 .. v27}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v22

    .line 579
    .local v22, newtype:Ljava/lang/String;
    const-string v2, "file"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20f

    .line 580
    const-string v2, "DLNA_Addin"

    const-string v3, "===addin :can not find contents uri==="

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    const/16 v2, 0x708

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dlna/ui/AddinActivity;->showDialog(I)V
    :try_end_31d
    .catch Ljava/lang/Exception; {:try_start_2f0 .. :try_end_31d} :catch_31f

    goto/16 :goto_20f

    .line 583
    .end local v8           #_id:J
    .end local v22           #newtype:Ljava/lang/String;
    :catch_31f
    move-exception v13

    .line 584
    .local v13, e:Ljava/lang/Exception;
    const/16 v2, 0x708

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dlna/ui/AddinActivity;->showDialog(I)V

    goto/16 :goto_20f

    .line 587
    .end local v12           #c:Landroid/database/Cursor;
    .end local v13           #e:Ljava/lang/Exception;
    :cond_329
    const-string v2, "video"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_392

    .line 588
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const-string v5, "_data = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v21, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 595
    .restart local v12       #c:Landroid/database/Cursor;
    if-nez v12, :cond_359

    .line 596
    const/16 v2, 0x708

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dlna/ui/AddinActivity;->showDialog(I)V

    goto/16 :goto_20f

    .line 599
    :cond_359
    :try_start_359
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 600
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 601
    .restart local v8       #_id:J
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 602
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v27

    .line 606
    invoke-virtual/range {v27 .. v27}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v22

    .line 607
    .restart local v22       #newtype:Ljava/lang/String;
    const-string v2, "file"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20f

    .line 608
    const-string v2, "DLNA_Addin"

    const-string v3, "===addin :can not find contents uri==="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const/16 v2, 0x708

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dlna/ui/AddinActivity;->showDialog(I)V
    :try_end_386
    .catch Ljava/lang/Exception; {:try_start_359 .. :try_end_386} :catch_388

    goto/16 :goto_20f

    .line 611
    .end local v8           #_id:J
    .end local v22           #newtype:Ljava/lang/String;
    :catch_388
    move-exception v13

    .line 612
    .restart local v13       #e:Ljava/lang/Exception;
    const/16 v2, 0x708

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dlna/ui/AddinActivity;->showDialog(I)V

    goto/16 :goto_20f

    .line 615
    .end local v12           #c:Landroid/database/Cursor;
    .end local v13           #e:Ljava/lang/Exception;
    :cond_392
    const-string v2, "image"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20f

    .line 616
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const-string v5, "_data = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v21, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 623
    .restart local v12       #c:Landroid/database/Cursor;
    if-nez v12, :cond_3c2

    .line 624
    const/16 v2, 0x708

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dlna/ui/AddinActivity;->showDialog(I)V

    goto/16 :goto_20f

    .line 627
    :cond_3c2
    :try_start_3c2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 628
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 629
    .restart local v8       #_id:J
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 630
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v27

    .line 634
    invoke-virtual/range {v27 .. v27}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v22

    .line 635
    .restart local v22       #newtype:Ljava/lang/String;
    const-string v2, "file"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20f

    .line 636
    const-string v2, "DLNA_Addin"

    const-string v3, "===addin :can not find contents uri==="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const/16 v2, 0x708

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dlna/ui/AddinActivity;->showDialog(I)V
    :try_end_3ef
    .catch Ljava/lang/Exception; {:try_start_3c2 .. :try_end_3ef} :catch_3f1

    goto/16 :goto_20f

    .line 639
    .end local v8           #_id:J
    .end local v22           #newtype:Ljava/lang/String;
    :catch_3f1
    move-exception v13

    .line 640
    .restart local v13       #e:Ljava/lang/Exception;
    const/16 v2, 0x708

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dlna/ui/AddinActivity;->showDialog(I)V

    goto/16 :goto_20f

    .line 649
    .end local v12           #c:Landroid/database/Cursor;
    .end local v13           #e:Ljava/lang/Exception;
    .end local v16           #mType:Ljava/lang/String;
    .end local v20           #mineType:Ljava/lang/String;
    .end local v21           #newPath:Ljava/lang/String;
    .end local v23           #path:Ljava/lang/String;
    .end local v25           #size:I
    .end local v26           #type:Ljava/lang/String;
    .end local v27           #uri:Landroid/net/Uri;
    :cond_3fb
    const-string v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20f

    .line 650
    const-string v2, "DLNA_Addin"

    const-string v3, "AddInActivity, onCreate(), In ACTION_SEND_MULTIPLE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20f

    .line 653
    const/16 v24, 0x0

    .line 654
    .local v24, selectedPostion:I
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->uris:Ljava/util/ArrayList;

    .line 655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->uris:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/dlna/ui/AddinActivity;->urisStore(Ljava/util/ArrayList;)V

    .line 657
    invoke-virtual {v14}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v16

    .line 658
    .restart local v16       #mType:Ljava/lang/String;
    if-nez v16, :cond_43f

    .line 659
    const/16 v2, 0x709

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dlna/ui/AddinActivity;->showDialog(I)V

    .line 668
    :goto_434
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/dlna/ui/AddinActivity;->setCurrentIndex(I)V

    .line 669
    invoke-static {}, Lcom/sec/android/app/dlna/ui/AddinActivity;->getCurrentIndex()I

    goto/16 :goto_20f

    .line 661
    :cond_43f
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-ge v2, v3, :cond_44e

    .line 662
    const/16 v2, 0x709

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dlna/ui/AddinActivity;->showDialog(I)V

    goto :goto_434

    .line 664
    :cond_44e
    const/4 v2, 0x0

    const/4 v3, 0x5

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/dlna/ui/AddinActivity;->mMediaType:Ljava/lang/String;

    goto :goto_434
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1010
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1012
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 1013
    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 1014
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->deviceAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/api/DeviceItem;

    .line 1016
    invoke-virtual {v0}, Lcom/samsung/api/DeviceItem;->isLocalDevice()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1017
    const v0, 0x7f090033

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 1021
    :goto_1b
    const/4 v0, 0x0

    const/16 v1, 0xc8

    const/4 v2, 0x1

    const v3, 0x7f09001b

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1022
    return-void

    .line 1019
    :cond_26
    invoke-virtual {v0}, Lcom/samsung/api/DeviceItem;->getFriendlyName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_1b
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter

    .prologue
    const v3, 0x7f09003f

    .line 823
    sparse-switch p1, :sswitch_data_a2

    .line 908
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_a
    return-object v0

    .line 825
    :sswitch_b
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 827
    const v1, 0x7f09000f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090004

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/ui/AddinActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/dlna/ui/AddinActivity$8;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dlna/ui/AddinActivity$8;-><init>(Lcom/sec/android/app/dlna/ui/AddinActivity;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/dlna/ui/AddinActivity$7;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dlna/ui/AddinActivity$7;-><init>(Lcom/sec/android/app/dlna/ui/AddinActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/dlna/ui/AddinActivity$6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dlna/ui/AddinActivity$6;-><init>(Lcom/sec/android/app/dlna/ui/AddinActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 865
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_a

    .line 868
    :sswitch_48
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 870
    new-instance v1, Lcom/sec/android/app/dlna/view/PopupView;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/view/PopupView;-><init>(Landroid/content/Context;)V

    .line 871
    const v2, 0x7f090002

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/ui/AddinActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/view/PopupView;->setPopupMessage(Ljava/lang/String;)V

    .line 872
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 874
    new-instance v1, Lcom/sec/android/app/dlna/ui/AddinActivity$9;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/AddinActivity$9;-><init>(Lcom/sec/android/app/dlna/ui/AddinActivity;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 880
    new-instance v1, Lcom/sec/android/app/dlna/ui/AddinActivity$10;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/AddinActivity$10;-><init>(Lcom/sec/android/app/dlna/ui/AddinActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 885
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_a

    .line 888
    :sswitch_74
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 890
    new-instance v1, Lcom/sec/android/app/dlna/view/PopupView;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/view/PopupView;-><init>(Landroid/content/Context;)V

    .line 891
    const v2, 0x7f090066

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/ui/AddinActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/dlna/view/PopupView;->setPopupMessage(Ljava/lang/String;)V

    .line 892
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 894
    new-instance v1, Lcom/sec/android/app/dlna/ui/AddinActivity$11;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/AddinActivity$11;-><init>(Lcom/sec/android/app/dlna/ui/AddinActivity;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 900
    new-instance v1, Lcom/sec/android/app/dlna/ui/AddinActivity$12;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/ui/AddinActivity$12;-><init>(Lcom/sec/android/app/dlna/ui/AddinActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 905
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_a

    .line 823
    nop

    :sswitch_data_a2
    .sparse-switch
        0x6f1 -> :sswitch_b
        0x708 -> :sswitch_48
        0x709 -> :sswitch_74
    .end sparse-switch
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 274
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 276
    const-string v0, "DLNA_Addin"

    const-string v1, "DLNAAddin OnDestroy Called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->mAllShareReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_16

    .line 279
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->mAllShareReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 280
    iput-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->mAllShareReceiver:Landroid/content/BroadcastReceiver;

    .line 283
    :cond_16
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v0, :cond_21

    .line 284
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    .line 285
    iput-object v2, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 287
    :cond_21
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v4, 0x19

    const/16 v3, 0x18

    .line 950
    iget-boolean v1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->isPlayMode:Z

    if-eqz v1, :cond_2f

    .line 951
    if-eq p1, v3, :cond_c

    if-ne p1, v4, :cond_2f

    :cond_c
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAAddinManager;->getPlayItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/api/ContentItem;->getContentType()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2f

    .line 955
    if-ne p1, v3, :cond_24

    .line 956
    :try_start_1f
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->handleVolumeUp()V

    .line 964
    :cond_22
    :goto_22
    const/4 v1, 0x1

    .line 968
    :goto_23
    return v1

    .line 957
    :cond_24
    if-ne p1, v4, :cond_22

    .line 958
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->handleVolumeDown()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_29} :catch_2a

    goto :goto_22

    .line 960
    :catch_2a
    move-exception v0

    .line 961
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_22

    .line 968
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2f
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_23
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 10
    .parameter "intent"

    .prologue
    .line 221
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 223
    invoke-virtual {p0, p1}, Lcom/sec/android/app/dlna/ui/AddinActivity;->setIntent(Landroid/content/Intent;)V

    .line 224
    const-string v6, "DLNA_Addin"

    const-string v7, "AddInActivity, onNewIntent()"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 227
    .local v2, i:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 230
    .local v1, b:Landroid/os/Bundle;
    if-nez v1, :cond_1f

    .line 231
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->finish()V

    .line 265
    :cond_1e
    :goto_1e
    return-void

    .line 233
    :cond_1f
    const-string v6, "android.intent.action.SEND"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_55

    .line 234
    const-string v6, "DLNA_Addin"

    const-string v7, "AddInActivity, onNewIntent(), In ACTION_SEND"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 237
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 239
    .local v5, uri:Landroid/net/Uri;
    if-nez v5, :cond_44

    .line 240
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->finish()V

    goto :goto_1e

    .line 242
    :cond_44
    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->uris:Ljava/util/ArrayList;

    if-nez v6, :cond_1e

    .line 243
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->uris:Ljava/util/ArrayList;

    .line 244
    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 248
    .end local v5           #uri:Landroid/net/Uri;
    :cond_55
    const-string v6, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 249
    const-string v6, "DLNA_Addin"

    const-string v7, "AddInActivity, onNewIntent(), In ACTION_SEND_MULTIPLE"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 251
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->uris:Ljava/util/ArrayList;

    .line 253
    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->uris:Ljava/util/ArrayList;

    if-nez v6, :cond_7c

    .line 254
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->finish()V

    goto :goto_1e

    .line 256
    :cond_7c
    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->uris:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_82
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 257
    .restart local v5       #uri:Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/sec/android/app/dlna/dlnaservice/ContentsHelper;->getContentInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 258
    .local v4, map:Ljava/util/HashMap;
    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-virtual {v6, p0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->addDeviceChangeListener(Lcom/samsung/upnp/device/DeviceChangeListener;)V

    .line 259
    iget-object v6, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    iget-object v7, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Lcom/sec/android/app/dlna/DLNAAddinManager;->addGuiHandler(Landroid/os/Handler;)V

    goto :goto_82
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 920
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f09004e

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/ui/AddinActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 921
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAAddinManager;->refreshPlayerList()V

    .line 922
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->fillDeviceList()V

    .line 923
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x44c

    const-wide/16 v3, 0x1e

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 935
    :goto_24
    return v0

    .line 925
    :cond_25
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f09000b

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/ui/AddinActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 926
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->deviceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_48

    .line 927
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->emptytext:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 928
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->emptyview:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 931
    :cond_48
    iput-boolean v3, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->isPlayMode:Z

    goto :goto_24

    .line 935
    :cond_4b
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_24
.end method

.method protected onPause()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 173
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 179
    :cond_12
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->mAllShareReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_23

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->mAllShareReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 182
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->mAllShareReceiver:Landroid/content/BroadcastReceiver;

    .line 185
    :cond_23
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v0, :cond_2e

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    .line 187
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 190
    :cond_2e
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->IsChangePlayer:Z

    if-eqz v0, :cond_37

    iget-boolean v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->bOnCreatePlaylistActivity:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3c

    .line 191
    :cond_37
    iput-boolean v2, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->bOnCreatePlaylistActivity:Z

    .line 192
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 195
    :cond_3c
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    const/16 v2, 0x6f1

    .line 152
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 154
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 156
    const/16 v1, 0x6f1

    :try_start_d
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/AddinActivity;->removeDialog(I)V

    .line 157
    const/16 v1, 0x6f1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/AddinActivity;->showDialog(I)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_15} :catch_28

    .line 165
    :goto_15
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 166
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 169
    :cond_22
    iget-object v1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 170
    return-void

    .line 158
    :catch_28
    move-exception v0

    .line 159
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15

    .line 162
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2d
    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/ui/AddinActivity;->removeDialog(I)V

    goto :goto_15
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 215
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 217
    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/api/DigitalMediaControllerAPI;->addDeviceChangeListener(Lcom/samsung/upnp/device/DeviceChangeListener;)Z

    .line 218
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 268
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 270
    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/api/DigitalMediaControllerAPI;->removeDeviceChangeListener(Lcom/samsung/upnp/device/DeviceChangeListener;)Z

    .line 271
    return-void
.end method

.method public refreshList()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1148
    iput-boolean v1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->mStopAnimation:Z

    .line 1149
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->headerIcon:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1150
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/dlna/ui/AddinActivity$AnimationThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/dlna/ui/AddinActivity$AnimationThread;-><init>(Lcom/sec/android/app/dlna/ui/AddinActivity;Lcom/sec/android/app/dlna/ui/AddinActivity$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->animationThread:Ljava/lang/Thread;

    .line 1151
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->animationThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1153
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->dlna:Lcom/sec/android/app/dlna/DLNAAddinManager;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/DLNAAddinManager;->refreshPlayerList()V

    .line 1154
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->fillDeviceList()V

    .line 1155
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x44c

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1156
    return-void
.end method

.method requestKillProcess(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    .line 770
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 772
    .local v1, sdkVersion:I
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1a

    .line 773
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 774
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/AddinActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    .line 801
    .end local v0           #am:Landroid/app/ActivityManager;
    :goto_19
    return-void

    .line 776
    :cond_1a
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/sec/android/app/dlna/ui/AddinActivity$5;

    invoke-direct {v3, p0, p1}, Lcom/sec/android/app/dlna/ui/AddinActivity$5;-><init>(Lcom/sec/android/app/dlna/ui/AddinActivity;Landroid/content/Context;)V

    const-string v4, "Process Killer"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_19
.end method

.method protected setWifiSettingsLaunched(Z)V
    .registers 2
    .parameter "state"

    .prologue
    .line 912
    iput-boolean p1, p0, Lcom/sec/android/app/dlna/ui/AddinActivity;->isWifiSettingsLaunched:Z

    .line 913
    return-void
.end method
