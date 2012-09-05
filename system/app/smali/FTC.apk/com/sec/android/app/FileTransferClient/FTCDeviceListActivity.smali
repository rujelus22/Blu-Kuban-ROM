.class public Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;
.super Landroid/preference/PreferenceActivity;
.source "FTCDeviceListActivity.java"


# instance fields
.field private final FILE_WATING_DLG:I

.field MsgHandler:Landroid/os/Handler;

.field private bDirectAlreadyConnected:Z

.field private bDirectUPNPConnecting:Z

.field bRegisterReciver:Z

.field private bShowSendAgainPopup:Z

.field private bThread:Z

.field private bUPNPDiscovery:Z

.field private bWifiTurnOnForced:Z

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mConnectionMode:I

.field private mContext:Landroid/content/Context;

.field private mDefaultDevice:Lcom/samsung/android/application/fileshare/api/DeviceItem;

.field mFileArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mFileThread:Ljava/lang/Thread;

.field private mHandler:Landroid/os/Handler;

.field private mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

.field private mOnCreateBundle:Landroid/os/Bundle;

.field mSelectedDevice:Lcom/samsung/android/application/fileshare/api/DeviceItem;

.field private mServiceList:Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;

.field private mServiceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/preference/Preference;",
            "Lcom/samsung/android/application/fileshare/api/DeviceItem;",
            ">;"
        }
    .end annotation
.end field

.field private mWIFIState:I

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private uriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private uriStreamFile:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 80
    iput v2, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mWIFIState:I

    .line 82
    iput-boolean v2, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bUPNPDiscovery:Z

    .line 83
    iput-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mSelectedDevice:Lcom/samsung/android/application/fileshare/api/DeviceItem;

    .line 84
    iput-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mFileArrayList:Ljava/util/ArrayList;

    .line 120
    iput-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mContext:Landroid/content/Context;

    .line 122
    iput-boolean v2, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bRegisterReciver:Z

    .line 124
    iput v2, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mConnectionMode:I

    .line 130
    iput-boolean v2, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bDirectUPNPConnecting:Z

    .line 131
    iput-boolean v2, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bDirectAlreadyConnected:Z

    .line 132
    iput-boolean v2, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bWifiTurnOnForced:Z

    .line 144
    iput-boolean v2, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bShowSendAgainPopup:Z

    .line 145
    iput-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mOnCreateBundle:Landroid/os/Bundle;

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mServiceMap:Ljava/util/HashMap;

    .line 152
    iput-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mDefaultDevice:Lcom/samsung/android/application/fileshare/api/DeviceItem;

    .line 153
    iput-boolean v2, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bThread:Z

    .line 154
    iput-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->uriStreamFile:Landroid/net/Uri;

    .line 155
    iput-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->uriList:Ljava/util/ArrayList;

    .line 156
    iput-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mFileThread:Ljava/lang/Thread;

    .line 157
    const/16 v0, 0x22b8

    iput v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->FILE_WATING_DLG:I

    .line 159
    iput-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 160
    iput-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 162
    new-instance v0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$1;-><init>(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mHandler:Landroid/os/Handler;

    .line 810
    new-instance v0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$2;-><init>(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->MsgHandler:Landroid/os/Handler;

    .line 941
    new-instance v0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$3;-><init>(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mConnectionMode:I

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mConnectionMode:I

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mWIFIState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bUPNPDiscovery:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bUPNPDiscovery:Z

    return p1
.end method

.method static synthetic access$102(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput p1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mWIFIState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->upnpDiscovery()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->refreshDeviceList()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->createDeviceListActivity()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->checkNetworkState()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;Ljava/util/ArrayList;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->createServicePreference(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1702(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bDirectUPNPConnecting:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bShowSendAgainPopup:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bShowSendAgainPopup:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->uriList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->uriList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->isP2pConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->uriStreamFile:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->uriStreamFile:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Landroid/os/Bundle;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mOnCreateBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;Landroid/os/Bundle;Z)Z
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->checkFileInfo(Landroid/os/Bundle;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bThread:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Lcom/samsung/android/application/fileshare/api/DeviceItem;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mDefaultDevice:Lcom/samsung/android/application/fileshare/api/DeviceItem;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bDirectAlreadyConnected:Z

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bDirectAlreadyConnected:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mServiceList:Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->destroyDeviceListActivity()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->isP2pEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)Landroid/net/wifi/p2p/WifiP2pManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method private askNetworkAgain()V
    .registers 4

    .prologue
    .line 1306
    const v0, 0x7f06000a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1308
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mServiceList:Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;

    if-eqz v1, :cond_10

    .line 1309
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mServiceList:Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;

    invoke-virtual {v1}, Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;->removeAll()V

    .line 1311
    :cond_10
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f060001

    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060007

    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$8;

    invoke-direct {v2, p0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$8;-><init>(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060009

    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$7;

    invoke-direct {v2, p0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$7;-><init>(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$6;

    invoke-direct {v1, p0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$6;-><init>(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1366
    return-void
.end method

.method private askNetworkConnection()V
    .registers 4

    .prologue
    .line 1267
    const v0, 0x7f06000d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1268
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f060001

    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060007

    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$5;-><init>(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060009

    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$4;-><init>(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1302
    return-void
.end method

.method public static changeIP(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2197
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x5

    if-ge v0, v3, :cond_a

    .line 2225
    :cond_9
    :goto_9
    return-object p0

    .line 2202
    :cond_a
    :try_start_a
    const-string v0, ""

    move-object v3, p0

    move-object p0, v0

    move v0, v2

    .line 2203
    :cond_f
    :goto_f
    if-eqz v0, :cond_9

    .line 2205
    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 2206
    const/4 v5, -0x1

    if-ne v4, v5, :cond_32

    .line 2207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_9

    .line 2209
    :cond_32
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 2210
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 2212
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 2213
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2214
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 2215
    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2216
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2218
    invoke-virtual {v3}, Ljava/lang/String;->length()I
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_53} :catch_58

    move-result v4

    if-ge v4, v2, :cond_f

    move v0, v1

    .line 2219
    goto :goto_f

    .line 2222
    :catch_58
    move-exception v0

    .line 2223
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCDeviceListActivity :change IP Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2225
    const-string p0, ""

    goto :goto_9
.end method

.method private changeUriToFileUri(Landroid/net/Uri;)Z
    .registers 12
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 2053
    const/16 v0, 0x3f5

    invoke-virtual {p0, v0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->showDialog(I)V

    .line 2057
    const/4 v0, 0x1

    :try_start_9
    iput-boolean v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bThread:Z

    .line 2059
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 2062
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2063
    if-eqz v1, :cond_45

    .line 2065
    invoke-interface {v1}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-nez v0, :cond_9a

    .line 2067
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 2068
    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2069
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 2076
    :goto_3e
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2078
    if-nez v0, :cond_47

    move v0, v6

    .line 2192
    :goto_44
    return v0

    :cond_45
    move v0, v6

    .line 2074
    goto :goto_44

    .line 2082
    :cond_47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2086
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$17;

    invoke-direct {v2, p0, v0, p1}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$17;-><init>(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mFileThread:Ljava/lang/Thread;

    .line 2182
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mFileThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_73} :catch_75

    move v0, v7

    .line 2192
    goto :goto_44

    .line 2184
    :catch_75
    move-exception v0

    .line 2186
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCDeviceListActivity :changeUriToFileUri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.FileTransferClient.REMOVE_FILE_POPUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2189
    invoke-virtual {p0, v0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->sendBroadcast(Landroid/content/Intent;)V

    move v0, v6

    .line 2190
    goto :goto_44

    :cond_9a
    move-object v0, v8

    goto :goto_3e
.end method

.method private changeUriVcard(Landroid/net/Uri;)Z
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1889
    const/16 v2, 0x3f5

    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->showDialog(I)V

    .line 1893
    if-eqz p1, :cond_55

    .line 1895
    const/4 v2, 0x1

    :try_start_a
    iput-boolean v2, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bThread:Z

    .line 1897
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1898
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyymmdd_hhmmss"

    sget-object v5, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1899
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 1900
    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 1901
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/VCard_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".vcf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1904
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$16;

    invoke-direct {v4, p0, v2, p1}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$16;-><init>(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mFileThread:Ljava/lang/Thread;

    .line 2027
    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mFileThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 2044
    :goto_54
    return v0

    .line 2032
    :cond_55
    const-string v0, "[FT]-Client"

    const-string v2, "FTCDeviceListActivity :changeUriVcard : uri is null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_5c} :catch_5e

    move v0, v1

    .line 2033
    goto :goto_54

    .line 2036
    :catch_5e
    move-exception v0

    .line 2038
    const-string v2, "[FT]-Client"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FTCDeviceListActivity :changeUriVcard : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.FileTransferClient.REMOVE_FILE_POPUP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2041
    invoke-virtual {p0, v0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->sendBroadcast(Landroid/content/Intent;)V

    move v0, v1

    .line 2042
    goto :goto_54
.end method

.method private changeUriVcardList(Ljava/util/ArrayList;)Z
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1710
    const/16 v2, 0x3f5

    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->showDialog(I)V

    .line 1713
    if-eqz p1, :cond_1e

    .line 1715
    const/4 v2, 0x1

    :try_start_a
    iput-boolean v2, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bThread:Z

    .line 1717
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$15;

    invoke-direct {v3, p0, p1}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$15;-><init>(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;Ljava/util/ArrayList;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mFileThread:Ljava/lang/Thread;

    .line 1863
    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mFileThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1879
    :goto_1d
    return v0

    .line 1867
    :cond_1e
    const-string v0, "[FT]-Client"

    const-string v2, "FTCDeviceListActivity :changeUriVcardList : uris is null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_25} :catch_27

    move v0, v1

    .line 1868
    goto :goto_1d

    .line 1871
    :catch_27
    move-exception v0

    .line 1873
    const-string v2, "[FT]-Client"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FTCDeviceListActivity :changeUriVcard : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.FileTransferClient.REMOVE_FILE_POPUP"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1876
    invoke-virtual {p0, v0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->sendBroadcast(Landroid/content/Intent;)V

    move v0, v1

    .line 1877
    goto :goto_1d
.end method

.method private checkFileInfo(Landroid/os/Bundle;Z)Z
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1107
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1108
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1109
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v3

    if-nez v3, :cond_27

    .line 1110
    const-string v3, "[FT]-Client"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FTCDeviceListActivity :saveFileInfo intent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    :cond_27
    if-nez v2, :cond_50

    .line 1113
    const-string v2, "[FT]-Client"

    const-string v3, "FTCDeviceListActivity :extras is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-nez v2, :cond_4e

    .line 1115
    const-string v2, "[FT]-Client"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FTCDeviceListActivity :intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    move v0, v1

    .line 1261
    :goto_4f
    return v0

    .line 1119
    :cond_50
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1120
    if-eqz v3, :cond_20c

    .line 1124
    :try_start_56
    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15c

    .line 1126
    const-string v3, "[FT]-Client"

    const-string v4, "FTCDeviceListActivity :Intent.ACTION_SEND"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f8

    .line 1129
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1132
    if-eqz v0, :cond_b1

    const-string v2, "content"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    iget-boolean v2, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bThread:Z

    if-nez v2, :cond_b1

    .line 1135
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "contacts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 1137
    invoke-direct {p0, v0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->changeUriVcard(Landroid/net/Uri;)Z

    .line 1138
    const-string v0, "[FT]-Client"

    const-string v2, "FTCDeviceListActivity :checkFileInfo false : changeUriVcard"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1139
    goto :goto_4f

    .line 1142
    :cond_9f
    invoke-direct {p0, v0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->checkFilePermission(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_b1

    .line 1146
    invoke-direct {p0, v0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->changeUriToFileUri(Landroid/net/Uri;)Z

    .line 1147
    const-string v0, "[FT]-Client"

    const-string v2, "FTCDeviceListActivity :checkFileInfo false : changeUriToFileUri "

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1148
    goto :goto_4f

    .line 1151
    :cond_b1
    if-eqz v0, :cond_ee

    .line 1154
    iget-boolean v2, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bThread:Z

    if-eqz v2, :cond_db

    .line 1156
    const-string v0, "[FT]-Client"

    const-string v2, "FTCDeviceListActivity :saveFileInfo : change uri to uriStreamFile"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bThread:Z

    .line 1158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mFileThread:Ljava/lang/Thread;

    .line 1159
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->uriStreamFile:Landroid/net/Uri;

    .line 1170
    :cond_c6
    if-eqz p2, :cond_cf

    .line 1171
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mFileArrayList:Ljava/util/ArrayList;

    .line 1172
    :cond_cf
    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mFileArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1249
    :cond_d4
    :goto_d4
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mFileArrayList:Ljava/util/ArrayList;

    if-nez v0, :cond_209

    move v0, v1

    .line 1251
    goto/16 :goto_4f

    .line 1162
    :cond_db
    invoke-direct {p0, v0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->checkFilePermission(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_c6

    .line 1164
    const-string v2, "[FT]-Client"

    const-string v3, "FTCDeviceListActivity :checkFileInfo false : can not read "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    invoke-direct {p0, v0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->changeUriToFileUri(Landroid/net/Uri;)Z

    move v0, v1

    .line 1166
    goto/16 :goto_4f

    .line 1176
    :cond_ee
    const-string v0, "[FT]-Client"

    const-string v2, "FTCDeviceListActivity :uri:is null  -EXTRA_STREAM "

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1177
    goto/16 :goto_4f

    .line 1181
    :cond_f8
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_141

    .line 1183
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1184
    invoke-direct {p0, v0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->makeHTMLfile(Ljava/lang/CharSequence;)Landroid/net/Uri;

    move-result-object v0

    .line 1185
    if-eqz v0, :cond_137

    .line 1187
    if-eqz p2, :cond_115

    .line 1188
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mFileArrayList:Ljava/util/ArrayList;

    .line 1189
    :cond_115
    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mFileArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_11a
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_11a} :catch_11b

    goto :goto_d4

    .line 1255
    :catch_11b
    move-exception v0

    .line 1257
    const-string v2, "[FT]-Client"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FTCDeviceListActivity : file array make fail :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1258
    goto/16 :goto_4f

    .line 1193
    :cond_137
    :try_start_137
    const-string v0, "[FT]-Client"

    const-string v2, "FTCDeviceListActivity :uri:is null -EXTRA_TEXT"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1194
    goto/16 :goto_4f

    .line 1199
    :cond_141
    const-string v0, "[FT]-Client"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FTCDeviceListActivity :else extras: unknown..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1200
    goto/16 :goto_4f

    .line 1203
    :cond_15c
    const-string v4, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1ee

    .line 1205
    const-string v3, "[FT]-Client"

    const-string v4, "FTCDeviceListActivity :Intent.ACTION_SEND_MULTIPLE"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1ca

    .line 1208
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1212
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "contacts"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b3

    const-string v3, "content"

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b3

    iget-boolean v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bThread:Z

    if-nez v0, :cond_1b3

    .line 1214
    invoke-direct {p0, v2}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->changeUriVcardList(Ljava/util/ArrayList;)Z

    .line 1215
    const-string v0, "[FT]-Client"

    const-string v2, "FTCDeviceListActivity :changeUriVcardList "

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mFileArrayList:Ljava/util/ArrayList;

    move v0, v1

    .line 1217
    goto/16 :goto_4f

    .line 1220
    :cond_1b3
    iget-boolean v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bThread:Z

    if-eqz v0, :cond_20f

    .line 1222
    const-string v0, "[FT]-Client"

    const-string v2, "FTCDeviceListActivity :saveFileInfo : change uris to uriStreamFile"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bThread:Z

    .line 1224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mFileThread:Ljava/lang/Thread;

    .line 1225
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->uriList:Ljava/util/ArrayList;

    .line 1227
    :goto_1c6
    iput-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mFileArrayList:Ljava/util/ArrayList;

    goto/16 :goto_d4

    .line 1231
    :cond_1ca
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d4

    .line 1233
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1234
    invoke-direct {p0, v0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->makeHTMLfile(Ljava/lang/CharSequence;)Landroid/net/Uri;

    move-result-object v0

    .line 1235
    if-eqz p2, :cond_1e5

    .line 1236
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mFileArrayList:Ljava/util/ArrayList;

    .line 1237
    :cond_1e5
    if-eqz v0, :cond_d4

    .line 1239
    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mFileArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d4

    .line 1245
    :cond_1ee
    const-string v0, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FTCDeviceListActivity :Intent.ACtion ???"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_206
    .catch Ljava/lang/Exception; {:try_start_137 .. :try_end_206} :catch_11b

    move v0, v1

    .line 1246
    goto/16 :goto_4f

    .line 1253
    :cond_209
    const/4 v0, 0x1

    goto/16 :goto_4f

    :cond_20c
    move v0, v1

    .line 1261
    goto/16 :goto_4f

    :cond_20f
    move-object v0, v2

    goto :goto_1c6
.end method

.method private checkFilePermission(Landroid/net/Uri;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 1663
    :try_start_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1665
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1667
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-nez v0, :cond_6e

    .line 1669
    const-string v0, "[FT]-Client"

    const-string v1, "FTCDeviceListActivity :checkFilePermission Can not read"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 1705
    :goto_24
    return v0

    .line 1677
    :cond_25
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1678
    if-eqz v0, :cond_6e

    .line 1680
    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v1

    if-nez v1, :cond_6b

    .line 1682
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 1683
    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1684
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 1685
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1687
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_6b

    .line 1689
    const-string v1, "[FT]-Client"

    const-string v2, "FTCDeviceListActivity :checkFilePermission Can not read"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v6

    .line 1692
    goto :goto_24

    .line 1696
    :cond_6b
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6e} :catch_70

    .line 1705
    :cond_6e
    :goto_6e
    const/4 v0, 0x1

    goto :goto_24

    .line 1701
    :catch_70
    move-exception v0

    .line 1703
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCDeviceListActivity :checkContentUriFile error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e
.end method

.method private checkNetworkState()V
    .registers 6

    .prologue
    const/16 v2, 0x4b6

    const/4 v3, 0x0

    .line 357
    iget v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mWIFIState:I

    if-ge v1, v2, :cond_59

    .line 359
    iget v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mWIFIState:I

    const/16 v2, 0x4b0

    if-ne v1, v2, :cond_5a

    .line 361
    iput v3, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mConnectionMode:I

    .line 362
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCDeviceListActivity :5 mConnectionMode is (none 0) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mConnectionMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f060006

    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f060031

    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 364
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->destroyDeviceListActivity()V

    .line 400
    :cond_59
    :goto_59
    return-void

    .line 366
    :cond_5a
    iget v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mWIFIState:I

    const/16 v2, 0x4b1

    if-ne v1, v2, :cond_59

    .line 370
    :try_start_60
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->isP2pConnected()Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 374
    const-string v1, "[FT]-Client"

    const-string v2, "FTCDeviceListActivity : wifi Direct is Connected "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/16 v1, 0x4b6

    iput v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mWIFIState:I

    .line 377
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x44e

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 378
    const/4 v1, 0x3

    iput v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mConnectionMode:I

    .line 379
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCDeviceListActivity : 6 mConnectionMode is (direct 3) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mConnectionMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bDirectUPNPConnecting:Z
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_9a} :catch_c7

    .line 397
    :goto_9a
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mServiceList:Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;

    const v2, 0x7f06003c

    invoke-virtual {v1, v2}, Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;->setTitle(I)V

    goto :goto_59

    .line 384
    :cond_a3
    :try_start_a3
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->askNetworkAgain()V

    .line 385
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mConnectionMode:I

    .line 386
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCDeviceListActivity : 7 mConnectionMode is (none 0) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mConnectionMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bDirectUPNPConnecting:Z
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_c6} :catch_c7

    goto :goto_9a

    .line 392
    :catch_c7
    move-exception v0

    .line 394
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCDeviceListActivity :onResume1 Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9a
.end method

.method private createDeviceListActivity()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 422
    :try_start_1
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->registerNetworkIntentReceiver()V

    .line 423
    iput-object p0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mContext:Landroid/content/Context;

    .line 424
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mWIFIState:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_47

    .line 431
    :goto_9
    :try_start_9
    sget-object v1, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSendingDevices:Ljava/util/ArrayList;

    if-eqz v1, :cond_8c

    sget-object v1, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSendingDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8c

    .line 433
    sget-object v1, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSendingDevices:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/application/fileshare/api/DeviceItem;

    iput-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mDefaultDevice:Lcom/samsung/android/application/fileshare/api/DeviceItem;

    .line 434
    invoke-static {}, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->getCP()Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    move-result-object v1

    if-nez v1, :cond_41

    .line 436
    const-string v1, "[FT]-Client"

    const-string v2, "FTCDeviceListActivity : FATAL: this is second session but CP is null~!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f060045

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 438
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->destroyDeviceListActivity()V

    .line 440
    :cond_41
    const/16 v1, 0x3f4

    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->showDialog(I)V

    .line 459
    :goto_46
    return-void

    .line 426
    :catch_47
    move-exception v0

    .line 428
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCDeviceListActivity : onCreate Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_60} :catch_61

    goto :goto_9

    .line 453
    .end local v0           #e:Ljava/lang/Exception;
    :catch_61
    move-exception v0

    .line 455
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCDeviceListActivity :onCreate2 Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const v1, 0x7f060031

    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 457
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->destroyDeviceListActivity()V

    goto :goto_46

    .line 442
    .end local v0           #e:Ljava/lang/Exception;
    :cond_8c
    :try_start_8c
    sget-object v1, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSendingDevices:Ljava/util/ArrayList;

    if-eqz v1, :cond_9b

    .line 443
    const-string v1, "[FT]-Client"

    const-string v2, "FTCDeviceListActivity : *** SendingDataMem.mSendingDevices!=null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->showDeviceListActivity()V

    goto :goto_46

    .line 450
    :cond_9b
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->showDeviceListActivity()V
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_8c .. :try_end_9e} :catch_61

    goto :goto_46
.end method

.method private createServicePreference(Ljava/util/ArrayList;)V
    .registers 26
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/application/fileshare/api/DeviceItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 620
    .local p1, devices:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/android/application/fileshare/api/DeviceItem;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mServiceList:Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;->removeAll()V

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mServiceMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->clear()V

    .line 622
    const-string v19, "[FT]-Client"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "FTCDeviceListActivity :createServicePreference"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const-string v19, "wifi"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/wifi/WifiManager;

    .line 625
    .local v18, wifiMgr:Landroid/net/wifi/WifiManager;
    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 627
    .local v4, connectionInfo:Landroid/net/wifi/WifiInfo;
    const-string v13, ""

    .line 629
    .local v13, ipAddr:Ljava/lang/String;
    if-nez v4, :cond_b3

    const/4 v3, 0x0

    .line 630
    .local v3, address:I
    :goto_43
    if-eqz v3, :cond_b8

    .line 632
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->getIpFromInt(I)Ljava/lang/String;

    move-result-object v13

    .line 639
    :goto_4d
    const-string v19, "[FT]-Client"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "FTCDeviceListActivity :My FP :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {v13}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->changeIP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 642
    .local v14, otherDevice:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/android/application/fileshare/api/DeviceItem;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 643
    .local v6, devIP:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v19, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSendingDevices:Ljava/util/ArrayList;

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_c3

    .line 645
    sget-object v19, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSendingDevices:Ljava/util/ArrayList;

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_81
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_c3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/samsung/android/application/fileshare/api/DeviceItem;

    .line 647
    .local v17, sendingDev:Lcom/samsung/android/application/fileshare/api/DeviceItem;
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/application/fileshare/api/DeviceItem;->getDeviceIP()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_96} :catch_97

    goto :goto_81

    .line 743
    .end local v3           #address:I
    .end local v4           #connectionInfo:Landroid/net/wifi/WifiInfo;
    .end local v6           #devIP:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v13           #ipAddr:Ljava/lang/String;
    .end local v14           #otherDevice:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/android/application/fileshare/api/DeviceItem;>;"
    .end local v17           #sendingDev:Lcom/samsung/android/application/fileshare/api/DeviceItem;
    .end local v18           #wifiMgr:Landroid/net/wifi/WifiManager;
    :catch_97
    move-exception v10

    .line 745
    .local v10, e:Ljava/lang/Exception;
    const-string v19, "[FT]-Client"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "FTCDeviceListActivity :createServicePreference Exception"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    .end local v10           #e:Ljava/lang/Exception;
    :cond_b2
    :goto_b2
    return-void

    .line 629
    .restart local v4       #connectionInfo:Landroid/net/wifi/WifiInfo;
    .restart local v13       #ipAddr:Ljava/lang/String;
    .restart local v18       #wifiMgr:Landroid/net/wifi/WifiManager;
    :cond_b3
    :try_start_b3
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v3

    goto :goto_43

    .line 636
    .restart local v3       #address:I
    :cond_b8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/application/fileshare/NetworkUtils;->getLocalServerIPAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    goto :goto_4d

    .line 650
    .restart local v6       #devIP:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v14       #otherDevice:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/android/application/fileshare/api/DeviceItem;>;"
    :cond_c3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11       #i$:Ljava/util/Iterator;
    :cond_c7
    :goto_c7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_188

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/application/fileshare/api/DeviceItem;

    .line 652
    .local v5, dev:Lcom/samsung/android/application/fileshare/api/DeviceItem;
    const-string v19, "[FT]-Client"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "FTCDeviceListActivity :other FP :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v5}, Lcom/samsung/android/application/fileshare/api/DeviceItem;->getDeviceIP()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->changeIP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    invoke-virtual {v5}, Lcom/samsung/android/application/fileshare/api/DeviceItem;->getDeviceIP()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_c7

    .line 655
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mConnectionMode:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_121

    invoke-virtual {v5}, Lcom/samsung/android/application/fileshare/api/DeviceItem;->getDeviceIP()Ljava/lang/String;

    move-result-object v19

    const-string v20, "192.168"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_121

    .line 657
    const-string v19, "[FT]-Client"

    const-string v20, "FTCDeviceListActivity :Now Direct Mode- This Ip is not Normal Direct IP"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c7

    .line 661
    :cond_121
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    invoke-virtual {v5}, Lcom/samsung/android/application/fileshare/api/DeviceItem;->getDeviceIP()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_14f

    .line 665
    new-instance v7, Lcom/sec/android/app/FileTransferClient/Ui/DeviceView;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v5}, Lcom/sec/android/app/FileTransferClient/Ui/DeviceView;-><init>(Landroid/content/Context;Lcom/samsung/android/application/fileshare/api/DeviceItem;)V

    .line 666
    .local v7, devView:Lcom/sec/android/app/FileTransferClient/Ui/DeviceView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mServiceList:Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mServiceMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c7

    .line 671
    .end local v7           #devView:Lcom/sec/android/app/FileTransferClient/Ui/DeviceView;
    :cond_14f
    new-instance v15, Landroid/preference/Preference;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 672
    .local v15, pr:Landroid/preference/Preference;
    invoke-virtual {v5}, Lcom/samsung/android/application/fileshare/api/DeviceItem;->getDeviceIP()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 673
    invoke-virtual {v5}, Lcom/samsung/android/application/fileshare/api/DeviceItem;->getFriendlyName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 674
    const v19, 0x7f06002f

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mServiceList:Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mServiceMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c7

    .line 681
    .end local v5           #dev:Lcom/samsung/android/application/fileshare/api/DeviceItem;
    .end local v15           #pr:Landroid/preference/Preference;
    :cond_188
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-nez v19, :cond_1bd

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mConnectionMode:I

    move/from16 v19, v0

    if-eqz v19, :cond_1bd

    .line 683
    new-instance v15, Landroid/preference/Preference;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 684
    .restart local v15       #pr:Landroid/preference/Preference;
    const v19, 0x7f06001b

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mServiceList:Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x450

    const-wide/16 v21, 0x2710

    invoke-virtual/range {v19 .. v22}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 688
    .end local v15           #pr:Landroid/preference/Preference;
    :cond_1bd
    const-string v19, "[FT]-Client"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "FTCDeviceListActivity :bDirectUPNPConnecting= "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bDirectUPNPConnecting:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    const-string v19, "[FT]-Client"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "FTCDeviceListActivity :Very important ::: bDirectAlreadyConnected= "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bDirectAlreadyConnected:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_b2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mWIFIState:I

    move/from16 v19, v0

    const/16 v20, 0x4b6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bDirectUPNPConnecting:Z

    move/from16 v19, v0

    if-nez v19, :cond_b2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mConnectionMode:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bDirectAlreadyConnected:Z

    move/from16 v19, v0

    if-nez v19, :cond_b2

    .line 694
    const-string v19, "192.168.43.1"

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_245

    const-string v19, "192.168.43"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_250

    .line 696
    :cond_245
    const/16 v19, 0x3f3

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->removeDialog(I)V

    goto/16 :goto_b2

    .line 700
    :cond_250
    const/16 v16, 0x0

    .line 701
    .local v16, selectedDevice:Lcom/samsung/android/application/fileshare/api/DeviceItem;
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_256
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_299

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/application/fileshare/api/DeviceItem;

    .line 703
    .local v9, di:Lcom/samsung/android/application/fileshare/api/DeviceItem;
    const-string v19, "192.168.43.1"

    invoke-virtual {v9}, Lcom/samsung/android/application/fileshare/api/DeviceItem;->getDeviceIP()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_278

    .line 705
    move-object/from16 v16, v9

    .line 706
    const-string v19, "[FT]-Client"

    const-string v20, "FTCDeviceListActivity :get the Direct FP : it\'s GO"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_256

    .line 710
    :cond_278
    const-string v19, "[FT]-Client"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "FTCDeviceListActivity :Direct FP :"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v9}, Lcom/samsung/android/application/fileshare/api/DeviceItem;->getDeviceIP()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->changeIP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_256

    .line 713
    .end local v9           #di:Lcom/samsung/android/application/fileshare/api/DeviceItem;
    :cond_299
    if-eqz v16, :cond_b2

    .line 715
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bDirectUPNPConnecting:Z

    .line 716
    new-instance v12, Landroid/content/Intent;

    const-string v19, "com.sec.android.app.FileTransferClient.FTC_SERVICE_START"

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 717
    .local v12, intent:Landroid/content/Intent;
    const-string v19, "FILE_LIST"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mFileArrayList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 718
    const-string v19, "MODE"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mConnectionMode:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 720
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 721
    .local v8, deviceKey:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x5

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 722
    sget-object v19, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mDeviceHash:Ljava/util/HashMap;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    const-string v19, "DEVICE"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 724
    invoke-static {}, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->getCP()Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    move-result-object v19

    if-nez v19, :cond_31c

    .line 726
    const-string v19, "[FT]-Client"

    const-string v20, "FTCDeviceListActivity :(Direct)mControllerAPI is null: why?"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f060045

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    .line 728
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->destroyDeviceListActivity()V

    goto/16 :goto_b2

    .line 733
    :cond_31c
    const/16 v19, 0x3f3

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->removeDialog(I)V

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f060036

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/application/fileshare/api/DeviceItem;->getFriendlyName()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    .line 735
    const-string v19, "[FT]-Client"

    const-string v20, "FTCDeviceListActivity :start Service"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 737
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->finish()V
    :try_end_360
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_360} :catch_97

    goto/16 :goto_b2
.end method

.method private destroyDeviceListActivity()V
    .registers 5

    .prologue
    .line 508
    :try_start_0
    const-string v1, "[FT]-Client"

    const-string v2, "FTCDeviceListActivity : destroyDeviceListActivity"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->runningDeviceList(Z)V

    .line 511
    sget-object v1, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSendingList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 512
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->MsgHandler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->removeEventHandler(Landroid/os/Handler;)V

    .line 513
    :cond_18
    invoke-static {}, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->stop()V

    .line 514
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->removeDataFolder(Landroid/content/Context;)V

    .line 518
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->finish()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    .line 525
    :goto_23
    return-void

    .line 520
    :catch_24
    move-exception v0

    .line 522
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCDeviceListActivity :FATAL: destroyDeviceListActivity Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method private static getIpFromInt(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 1517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1518
    return-object v0
.end method

.method private getMultiLink(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1635
    const-string v0, "\\(?\\b(http://|https://|www[.])[-A-Za-z0-9+&@#/%?=~_()|!:,.;]*[-A-Za-z0-9+&@#/%=~_()|]"

    .line 1637
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1639
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1640
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1641
    :goto_f
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1643
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 1644
    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 1646
    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1648
    :cond_34
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 1651
    :cond_38
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_40

    move-object v0, v1

    .line 1655
    :goto_3f
    return-object v0

    :cond_40
    move-object v0, v1

    goto :goto_3f
.end method

.method private isP2pConnected()Z
    .registers 5

    .prologue
    .line 2235
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2236
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2238
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCDeviceListActivity :isP2pConnected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_3c

    .line 2241
    const/4 v0, 0x1

    .line 2243
    :goto_3b
    return v0

    :cond_3c
    const/4 v0, 0x0

    goto :goto_3b
.end method

.method private isP2pEnabled()Z
    .registers 3

    .prologue
    .line 2229
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2230
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 2231
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    return v0
.end method

.method private makeHTMLfile(Ljava/lang/CharSequence;)Landroid/net/Uri;
    .registers 15
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1523
    if-nez p1, :cond_6

    move-object v0, v2

    .line 1630
    :cond_5
    :goto_5
    return-object v0

    .line 1531
    :cond_6
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyymmdd_hhmmss"

    sget-object v4, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v0, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1532
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 1533
    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1534
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wifi_sending_file"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".html"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1538
    :try_start_31
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_36} :catch_94

    .line 1547
    :goto_36
    :try_start_36
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1551
    invoke-direct {p0, v0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->getMultiLink(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 1553
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 1554
    const-string v3, "[FT]-Client"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "total site count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    const-string v3, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html;charset=UTF-8\"/></head>"

    .line 1556
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "<body>"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1559
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move v3, v1

    .line 1560
    :goto_75
    if-ge v3, v6, :cond_131

    .line 1562
    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 1565
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_ae

    .line 1566
    const-string v0, "[FT]-Client"

    const-string v9, "FTCDeviceListActivity :makeHTMLfile : can\'t find string"

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catchall {:try_start_36 .. :try_end_8e} :catchall_244
    .catch Ljava/io/FileNotFoundException; {:try_start_36 .. :try_end_8e} :catch_1a4
    .catch Ljava/lang/NullPointerException; {:try_start_36 .. :try_end_8e} :catch_1cc
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_8e} :catch_1f4
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_8e} :catch_21c

    move v0, v1

    .line 1560
    :goto_8f
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_75

    .line 1540
    :catch_94
    move-exception v0

    .line 1542
    const-string v3, "[FT]-Client"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FTCDeviceListActivity :Exception 1 - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 1570
    :cond_ae
    :try_start_ae
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    .line 1571
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int v9, v1, v0

    .line 1572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<a href=\""

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, "\">"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, "</a>"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<a href=\""

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, "\">"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, "</a>"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v1, v9, v0}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 1575
    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1576
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_8f

    .line 1579
    :cond_131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</body>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1581
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1583
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1584
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_169
    .catchall {:try_start_ae .. :try_end_169} :catchall_244
    .catch Ljava/io/FileNotFoundException; {:try_start_ae .. :try_end_169} :catch_1a4
    .catch Ljava/lang/NullPointerException; {:try_start_ae .. :try_end_169} :catch_1cc
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_169} :catch_1f4
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_169} :catch_21c

    move-result-object v1

    .line 1585
    if-eqz v1, :cond_283

    .line 1587
    const/4 v3, 0x0

    :try_start_16d
    array-length v5, v0

    invoke-virtual {v1, v0, v3, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 1588
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_17f
    .catchall {:try_start_16d .. :try_end_17f} :catchall_250
    .catch Ljava/io/FileNotFoundException; {:try_start_16d .. :try_end_17f} :catch_276
    .catch Ljava/lang/NullPointerException; {:try_start_16d .. :try_end_17f} :catch_269
    .catch Ljava/io/IOException; {:try_start_16d .. :try_end_17f} :catch_25e
    .catch Ljava/lang/Exception; {:try_start_16d .. :try_end_17f} :catch_253

    move-result-object v3

    .line 1589
    if-eqz v3, :cond_190

    move-object v0, v3

    .line 1620
    :goto_183
    if-eqz v1, :cond_5

    .line 1622
    :try_start_185
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_188
    .catch Ljava/io/IOException; {:try_start_185 .. :try_end_188} :catch_18a

    goto/16 :goto_5

    .line 1625
    :catch_18a
    move-exception v1

    .line 1627
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 1595
    :cond_190
    :try_start_190
    const-string v0, "[FT]-Client"

    const-string v4, "FTCDeviceListActivity :file Uri is null"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_197
    .catchall {:try_start_190 .. :try_end_197} :catchall_250
    .catch Ljava/io/FileNotFoundException; {:try_start_190 .. :try_end_197} :catch_27d
    .catch Ljava/lang/NullPointerException; {:try_start_190 .. :try_end_197} :catch_270
    .catch Ljava/io/IOException; {:try_start_190 .. :try_end_197} :catch_264
    .catch Ljava/lang/Exception; {:try_start_190 .. :try_end_197} :catch_259

    .line 1620
    if-eqz v1, :cond_19c

    .line 1622
    :try_start_199
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_19c
    .catch Ljava/io/IOException; {:try_start_199 .. :try_end_19c} :catch_19f

    :cond_19c
    :goto_19c
    move-object v0, v2

    .line 1628
    goto/16 :goto_5

    .line 1625
    :catch_19f
    move-exception v0

    .line 1627
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19c

    .line 1600
    :catch_1a4
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .line 1602
    :goto_1a7
    :try_start_1a7
    const-string v3, "[FT]-Client"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FTCDeviceListActivity :FileNotFoundException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1bf
    .catchall {:try_start_1a7 .. :try_end_1bf} :catchall_244

    .line 1620
    if-eqz v2, :cond_5

    .line 1622
    :try_start_1c1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1c4
    .catch Ljava/io/IOException; {:try_start_1c1 .. :try_end_1c4} :catch_1c6

    goto/16 :goto_5

    .line 1625
    :catch_1c6
    move-exception v1

    .line 1627
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 1604
    :catch_1cc
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .line 1606
    :goto_1cf
    :try_start_1cf
    const-string v3, "[FT]-Client"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FTCDeviceListActivity :NullPointerException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e7
    .catchall {:try_start_1cf .. :try_end_1e7} :catchall_244

    .line 1620
    if-eqz v2, :cond_5

    .line 1622
    :try_start_1e9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1ec
    .catch Ljava/io/IOException; {:try_start_1e9 .. :try_end_1ec} :catch_1ee

    goto/16 :goto_5

    .line 1625
    :catch_1ee
    move-exception v1

    .line 1627
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 1608
    :catch_1f4
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .line 1610
    :goto_1f7
    :try_start_1f7
    const-string v3, "[FT]-Client"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FTCDeviceListActivity :IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20f
    .catchall {:try_start_1f7 .. :try_end_20f} :catchall_244

    .line 1620
    if-eqz v2, :cond_5

    .line 1622
    :try_start_211
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_214
    .catch Ljava/io/IOException; {:try_start_211 .. :try_end_214} :catch_216

    goto/16 :goto_5

    .line 1625
    :catch_216
    move-exception v1

    .line 1627
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 1612
    :catch_21c
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .line 1614
    :goto_21f
    :try_start_21f
    const-string v3, "[FT]-Client"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FTCDeviceListActivity :Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_237
    .catchall {:try_start_21f .. :try_end_237} :catchall_244

    .line 1620
    if-eqz v2, :cond_5

    .line 1622
    :try_start_239
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_23c
    .catch Ljava/io/IOException; {:try_start_239 .. :try_end_23c} :catch_23e

    goto/16 :goto_5

    .line 1625
    :catch_23e
    move-exception v1

    .line 1627
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 1618
    :catchall_244
    move-exception v0

    .line 1620
    :goto_245
    if-eqz v2, :cond_24a

    .line 1622
    :try_start_247
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_24a
    .catch Ljava/io/IOException; {:try_start_247 .. :try_end_24a} :catch_24b

    .line 1628
    :cond_24a
    :goto_24a
    throw v0

    .line 1625
    :catch_24b
    move-exception v1

    .line 1627
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_24a

    .line 1618
    :catchall_250
    move-exception v0

    move-object v2, v1

    goto :goto_245

    .line 1612
    :catch_253
    move-exception v0

    move-object v12, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v12

    goto :goto_21f

    :catch_259
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_21f

    .line 1608
    :catch_25e
    move-exception v0

    move-object v12, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v12

    goto :goto_1f7

    :catch_264
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1f7

    .line 1604
    :catch_269
    move-exception v0

    move-object v12, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v12

    goto/16 :goto_1cf

    :catch_270
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v3

    goto/16 :goto_1cf

    .line 1600
    :catch_276
    move-exception v0

    move-object v12, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v12

    goto/16 :goto_1a7

    :catch_27d
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v3

    goto/16 :goto_1a7

    :cond_283
    move-object v0, v2

    goto/16 :goto_183
.end method

.method private refreshDeviceList()V
    .registers 5

    .prologue
    .line 590
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mServiceList:Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;->setProgress(Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_14

    .line 604
    :goto_6
    :try_start_6
    invoke-static {}, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->getCP()Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 605
    invoke-static {}, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->getCP()Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->search()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_36

    .line 614
    :goto_13
    return-void

    .line 593
    :catch_14
    move-exception v0

    .line 595
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCDeviceListActivity :refreshDeviceList Exception1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 607
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2e
    :try_start_2e
    const-string v1, "[FT]-Client"

    const-string v2, "FTCDeviceListActivity :refreshDeviceList mController is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_35} :catch_36

    goto :goto_13

    .line 610
    :catch_36
    move-exception v0

    .line 612
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCDeviceListActivity :refreshDeviceList Exception2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method private registerNetworkIntentReceiver()V
    .registers 5

    .prologue
    .line 1040
    iget-boolean v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bRegisterReciver:Z

    if-nez v1, :cond_3e

    .line 1044
    :try_start_4
    const-string v1, "[FT]-Client"

    const-string v2, "FTCDeviceListActivity :registerNetworkIntentReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1048
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.FTC_SERVICE_FINISHED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1049
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.FTC_SAVEFILE_SUCCESS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1050
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.FTC_SAVEFILE_FAIL"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1052
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bRegisterReciver:Z
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3e} :catch_3f

    .line 1059
    :cond_3e
    :goto_3e
    return-void

    .line 1054
    :catch_3f
    move-exception v0

    .line 1056
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCDeviceListActivity :registerNetworkIntentReceiver Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e
.end method

.method private showDeviceListActivity()V
    .registers 6

    .prologue
    .line 463
    const/high16 v3, 0x7f04

    invoke-virtual {p0, v3}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->addPreferencesFromResource(I)V

    .line 464
    const-string v3, "service_list"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;

    iput-object v3, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mServiceList:Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;

    .line 471
    iget-object v3, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mServiceList:Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;

    const v4, 0x7f06003c

    invoke-virtual {v3, v4}, Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;->setTitle(I)V

    .line 473
    new-instance v2, Landroid/preference/Preference;

    invoke-direct {v2, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 474
    .local v2, pr:Landroid/preference/Preference;
    const v3, 0x7f06001b

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 475
    iget-object v3, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mServiceList:Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/FileTransferClient/Ui/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 477
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.FTC_CREATED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 478
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 480
    const/4 v0, 0x0

    .line 481
    .local v0, checkFile:Z
    iget-object v3, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mFileArrayList:Ljava/util/ArrayList;

    if-eqz v3, :cond_4b

    .line 483
    iget-object v3, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mOnCreateBundle:Landroid/os/Bundle;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->checkFileInfo(Landroid/os/Bundle;Z)Z

    move-result v0

    .line 489
    :goto_3d
    if-nez v0, :cond_57

    .line 491
    iget-boolean v3, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bThread:Z

    if-eqz v3, :cond_53

    .line 493
    const-string v3, "[FT]-Client"

    const-string v4, "FTCDeviceListActivity :showDeviceListActivity : Now Thread is running.. return.. "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :goto_4a
    return-void

    .line 487
    :cond_4b
    iget-object v3, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mOnCreateBundle:Landroid/os/Bundle;

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->checkFileInfo(Landroid/os/Bundle;Z)Z

    move-result v0

    goto :goto_3d

    .line 496
    :cond_53
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->destroyDeviceListActivity()V

    goto :goto_4a

    .line 500
    :cond_57
    iget-object v3, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x44c

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4a
.end method

.method private unregisterNetworkIntentReceiver()V
    .registers 5

    .prologue
    .line 1063
    iget-boolean v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bRegisterReciver:Z

    if-eqz v1, :cond_13

    .line 1067
    :try_start_4
    const-string v1, "[FT]-Client"

    const-string v2, "FTCDeviceListActivity :unregisterNetworkIntentReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1069
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bRegisterReciver:Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_13} :catch_14

    .line 1076
    :cond_13
    :goto_13
    return-void

    .line 1071
    :catch_14
    move-exception v0

    .line 1073
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCDeviceListActivity :unregisterNetworkIntentReceiver Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method private upnpDiscovery()V
    .registers 5

    .prologue
    .line 1082
    :try_start_0
    const-string v1, "[FT]-Client"

    const-string v2, "FTCDeviceListActivity :upnpDiscovery start "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    invoke-static {}, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->getCP()Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    move-result-object v1

    if-nez v1, :cond_3a

    .line 1085
    const-string v1, "[FT]-Client"

    const-string v2, "FTCDeviceListActivity : ** Create MControllerAPI "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    new-instance v1, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->init(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;)V

    .line 1089
    invoke-static {}, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->getCP()Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->MsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->setEventHandler(Landroid/os/Handler;)V

    .line 1090
    invoke-static {}, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->getCP()Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    move-result-object v1

    const-string v2, "send via Wifi_sender"

    const-string v3, "This is file sender controller"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->setSenderName(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    invoke-static {}, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->getCP()Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->start()V

    .line 1103
    :goto_39
    return-void

    .line 1093
    :cond_3a
    const-string v1, "[FT]-Client"

    const-string v2, "FTCDeviceListActivity : ** Already MControllerAPI exist"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    invoke-static {}, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->getCP()Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->MsgHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->setEventHandler(Landroid/os/Handler;)V

    .line 1095
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->refreshDeviceList()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4d} :catch_4e

    goto :goto_39

    .line 1098
    :catch_4e
    move-exception v0

    .line 1100
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCDeviceListActivity :upnpDiscovery Exception >"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39
.end method


# virtual methods
.method public onBackPressed()V
    .registers 5

    .prologue
    .line 1503
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x452

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1504
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x454

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1505
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->destroyDeviceListActivity()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_15

    .line 1512
    :goto_11
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 1513
    return-void

    .line 1507
    :catch_15
    move-exception v0

    .line 1509
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCDeviceListActivity :onBackPressed Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 406
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 407
    iput-object p1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mOnCreateBundle:Landroid/os/Bundle;

    .line 408
    const v0, 0x7f06002d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->setTitle(I)V

    .line 410
    const-string v0, "wifip2p"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 411
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 413
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x455

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 414
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .parameter

    .prologue
    const v5, 0x7f060007

    const v3, 0x7f060001

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 1371
    packed-switch p1, :pswitch_data_bc

    .line 1495
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_f
    return-object v0

    .line 1375
    :pswitch_10
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1376
    const v1, 0x7f060047

    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1377
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1378
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1379
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 1380
    invoke-virtual {p0, v3}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1381
    invoke-virtual {p0, v5}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$9;

    invoke-direct {v2, p0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$9;-><init>(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1389
    new-instance v1, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$10;

    invoke-direct {v1, p0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$10;-><init>(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_f

    .line 1403
    :pswitch_44
    iput-boolean v2, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bShowSendAgainPopup:Z

    .line 1404
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1406
    invoke-virtual {p0, v3}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1407
    const v1, 0x7f060003

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mDefaultDevice:Lcom/samsung/android/application/fileshare/api/DeviceItem;

    invoke-virtual {v3}, Lcom/samsung/android/application/fileshare/api/DeviceItem;->getFriendlyName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1408
    invoke-virtual {p0, v5}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$13;

    invoke-direct {v2, p0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$13;-><init>(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f06002e

    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$12;

    invoke-direct {v3, p0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$12;-><init>(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$11;

    invoke-direct {v2, p0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$11;-><init>(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1472
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_f

    .line 1477
    :pswitch_90
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1478
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1479
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1480
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setIcon(I)V

    .line 1481
    const v1, 0x7f060016

    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1482
    const v1, 0x7f060005

    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1484
    new-instance v1, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$14;

    invoke-direct {v1, p0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity$14;-><init>(Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_f

    .line 1371
    :pswitch_data_bc
    .packed-switch 0x3f3
        :pswitch_10
        :pswitch_44
        :pswitch_90
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 5

    .prologue
    .line 540
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v1}, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->runningDeviceList(Z)V

    .line 541
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->MsgHandler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->removeEventHandler(Landroid/os/Handler;)V

    .line 542
    invoke-static {}, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->stop()V

    .line 543
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->removeDataFolder(Landroid/content/Context;)V

    .line 544
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->MsgHandler:Landroid/os/Handler;

    .line 546
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->unregisterNetworkIntentReceiver()V

    .line 547
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 548
    const/16 v1, 0x3f3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->removeDialog(I)V

    .line 550
    const/16 v1, 0x3f4

    invoke-virtual {p0, v1}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->removeDialog(I)V

    .line 551
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mOnCreateBundle:Landroid/os/Bundle;

    .line 552
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mConnectionMode:I

    .line 553
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->bDirectUPNPConnecting:Z

    .line 555
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x44c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 556
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x452

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 557
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x450

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 558
    const-string v1, "[FT]-Client"

    const-string v2, "FTCDeviceListActivity : Activity Destroyed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_49} :catch_4a

    .line 565
    :goto_49
    return-void

    .line 560
    :catch_4a
    move-exception v0

    .line 562
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCDeviceListActivity :FATAL: onDestroy Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 528
    const/4 v0, 0x4

    if-ne p1, v0, :cond_f

    .line 529
    const-string v0, "[FT]-Client"

    const-string v1, "FTCDeviceListActivity : *** onKeyDown "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->destroyDeviceListActivity()V

    .line 531
    const/4 v0, 0x1

    .line 534
    :goto_e
    return v0

    :cond_f
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_e
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 10
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x0

    .line 756
    :try_start_1
    const-string v3, "scanDevice"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 758
    const-string v3, "[FT]-Client"

    const-string v4, "FTCDeviceListActivity :onPreferenceTreeClick : scan"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iget v3, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mWIFIState:I

    const/16 v4, 0x4b1

    if-le v3, v4, :cond_1e

    .line 761
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->refreshDeviceList()V

    .line 806
    :cond_1d
    :goto_1d
    return v6

    .line 765
    :cond_1e
    const-string v3, "[FT]-Client"

    const-string v4, "FTCDeviceListActivity :Can\'t find the device...I think..UPNP is not ready"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    const v3, 0x7f060049

    invoke-virtual {p0, v3}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_34} :catch_35

    goto :goto_1d

    .line 803
    :catch_35
    move-exception v1

    .line 805
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "[FT]-Client"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FTCDeviceListActivity :onPreferenceTreeClick Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 770
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4f
    :try_start_4f
    const-string v3, "search_direct"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 772
    invoke-direct {p0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->askNetworkConnection()V

    goto :goto_1d

    .line 776
    :cond_5f
    iget-object v3, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 778
    iget-object v3, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/application/fileshare/api/DeviceItem;

    iput-object v3, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mSelectedDevice:Lcom/samsung/android/application/fileshare/api/DeviceItem;

    .line 779
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.app.FileTransferClient.FTC_SERVICE_START"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 780
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "FILE_LIST"

    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mFileArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 781
    const-string v3, "MODE"

    iget v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mConnectionMode:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 783
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 784
    .local v0, deviceKey:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x5

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 785
    sget-object v3, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mDeviceHash:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mSelectedDevice:Lcom/samsung/android/application/fileshare/api/DeviceItem;

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    const-string v3, "DEVICE"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 787
    invoke-static {}, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->getCP()Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    move-result-object v3

    if-nez v3, :cond_b3

    .line 789
    const-string v3, "[FT]-Client"

    const-string v4, "FTCDeviceListActivity :cp is null: why?"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 793
    :cond_b3
    const-string v3, "[FT]-Client"

    const-string v4, "FTCDeviceListActivity :cp is not null!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    const-string v3, "[FT]-Client"

    const-string v4, "FTCDeviceListActivity :start Service"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    invoke-virtual {p0, v2}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 797
    invoke-virtual {p0}, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->finish()V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_c7} :catch_35

    goto/16 :goto_1d
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 348
    const-string v0, "[FT]-Client"

    const-string v1, "FTCDeviceListActivity :DEVICE LIST RESUME"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 350
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->runningDeviceList(Z)V

    .line 351
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCDeviceListActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x456

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 352
    return-void
.end method
