.class public Lcom/sec/android/app/dlna/DLNAManager;
.super Ljava/lang/Object;
.source "DLNAManager.java"

# interfaces
.implements Lcom/samsung/sample/networkstate/INetworstateEventListener;
.implements Lcom/sec/android/app/dlna/ControlPointInfo$IControlPointInfoChangedListener;
.implements Lcom/sec/android/app/dlna/view/IControlPointInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dlna/DLNAManager$BrowseHistory;
    }
.end annotation


# static fields
.field private static final DeviceIcon:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field static final INTENTNAME:Ljava/lang/String;

.field private static volatile mInstance:Lcom/sec/android/app/dlna/DLNAManager;

.field protected static mStorageManager:Landroid/os/storage/StorageManager;

.field protected static mStorageVolumes:[Landroid/os/storage/StorageVolume;

.field private static final mThumbnail:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final CLASS_NAME:Ljava/lang/String;

.field public Remembered_Device:Z

.field public Server_Started:Z

.field private final TAG:Ljava/lang/String;

.field public UploadedFileCnt:I

.field private activityDestroyListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dlna/ui/IActivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private defaultStroageInfo:I

.field private device_upload:Ljava/lang/String;

.field isStarted:Z

.field public isUpload:Z

.field public isWaiting:Z

.field private isWifiSettingsLaunched:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

.field private mCurrentApName:Ljava/lang/String;

.field public mDeviceResolution:I

.field private mHandleNextButton:Z

.field private mHistoryStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/sec/android/app/dlna/DLNAManager$BrowseHistory;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLastFileInPlaylist:Z

.field private mMyPlayerSelected:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field mPrevApName:Ljava/lang/String;

.field private mService:Lcom/sec/android/app/dlna/service/DmsLocalService;

.field private mVersion:Ljava/lang/String;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

.field private networkTracerMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

.field public onlyController:Z

.field private settings:Landroid/content/SharedPreferences;

.field private tapMode:Z

.field public uploadHandler:Landroid/os/Handler;

.field private userControl:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

.field public waitScannerforUpload:Z

.field public warningActivity:Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;

.field private wifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/dlna/DLNAManager;->mThumbnail:Ljava/util/HashMap;

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/dlna/DLNAManager;->DeviceIcon:Ljava/util/HashMap;

    .line 555
    const-class v0, Lcom/sec/android/app/dlna/service/DmsLocalService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dlna/DLNAManager;->INTENTNAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-string v0, "DLNA"

    iput-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->TAG:Ljava/lang/String;

    .line 69
    const-string v0, "DLNAManager."

    iput-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->CLASS_NAME:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mCurrentApName:Ljava/lang/String;

    .line 81
    iput-object v1, p0, Lcom/sec/android/app/dlna/DLNAManager;->userControl:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    .line 83
    iput-object v1, p0, Lcom/sec/android/app/dlna/DLNAManager;->mService:Lcom/sec/android/app/dlna/service/DmsLocalService;

    .line 87
    iput-object v1, p0, Lcom/sec/android/app/dlna/DLNAManager;->mHistoryStack:Ljava/util/Stack;

    .line 89
    iput-object v1, p0, Lcom/sec/android/app/dlna/DLNAManager;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 91
    iput-object v1, p0, Lcom/sec/android/app/dlna/DLNAManager;->activityDestroyListenerList:Ljava/util/ArrayList;

    .line 94
    iput-object v1, p0, Lcom/sec/android/app/dlna/DLNAManager;->networkTracerMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    .line 96
    iput-boolean v2, p0, Lcom/sec/android/app/dlna/DLNAManager;->mMyPlayerSelected:Z

    .line 108
    iput-object v1, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    .line 110
    iput-object v1, p0, Lcom/sec/android/app/dlna/DLNAManager;->warningActivity:Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;

    .line 112
    iput-object v1, p0, Lcom/sec/android/app/dlna/DLNAManager;->settings:Landroid/content/SharedPreferences;

    .line 124
    iput v2, p0, Lcom/sec/android/app/dlna/DLNAManager;->UploadedFileCnt:I

    .line 126
    iput-boolean v2, p0, Lcom/sec/android/app/dlna/DLNAManager;->waitScannerforUpload:Z

    .line 128
    const-string v0, "dlna0221svn595"

    iput-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mVersion:Ljava/lang/String;

    .line 130
    iput-object v1, p0, Lcom/sec/android/app/dlna/DLNAManager;->device_upload:Ljava/lang/String;

    .line 134
    iput-boolean v2, p0, Lcom/sec/android/app/dlna/DLNAManager;->Server_Started:Z

    .line 137
    iput-boolean v2, p0, Lcom/sec/android/app/dlna/DLNAManager;->Remembered_Device:Z

    .line 163
    new-instance v0, Lcom/sec/android/app/dlna/DLNAManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dlna/DLNAManager$1;-><init>(Lcom/sec/android/app/dlna/DLNAManager;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->uploadHandler:Landroid/os/Handler;

    .line 762
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mPrevApName:Ljava/lang/String;

    .line 769
    iput v2, p0, Lcom/sec/android/app/dlna/DLNAManager;->defaultStroageInfo:I

    .line 854
    iput-boolean v2, p0, Lcom/sec/android/app/dlna/DLNAManager;->isStarted:Z

    .line 1013
    iput-boolean v2, p0, Lcom/sec/android/app/dlna/DLNAManager;->onlyController:Z

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->activityDestroyListenerList:Ljava/util/ArrayList;

    .line 208
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mHistoryStack:Ljava/util/Stack;

    .line 209
    new-instance v0, Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    invoke-direct {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->userControl:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    .line 210
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/dlna/DLNAManager;Lcom/sec/android/app/dlna/service/DmsLocalService;)Lcom/sec/android/app/dlna/service/DmsLocalService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sec/android/app/dlna/DLNAManager;->mService:Lcom/sec/android/app/dlna/service/DmsLocalService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/dlna/DLNAManager;)Landroid/content/SharedPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->settings:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/dlna/DLNAManager;)Lcom/sec/android/app/dlna/usermodel/UserControlModel;
    .registers 2
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->userControl:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/dlna/DLNAManager;
    .registers 2

    .prologue
    .line 220
    sget-object v0, Lcom/sec/android/app/dlna/DLNAManager;->mInstance:Lcom/sec/android/app/dlna/DLNAManager;

    if-nez v0, :cond_13

    .line 221
    const-class v1, Lcom/sec/android/app/dlna/DLNAManager;

    monitor-enter v1

    .line 222
    :try_start_7
    sget-object v0, Lcom/sec/android/app/dlna/DLNAManager;->mInstance:Lcom/sec/android/app/dlna/DLNAManager;

    if-nez v0, :cond_12

    .line 223
    new-instance v0, Lcom/sec/android/app/dlna/DLNAManager;

    invoke-direct {v0}, Lcom/sec/android/app/dlna/DLNAManager;-><init>()V

    sput-object v0, Lcom/sec/android/app/dlna/DLNAManager;->mInstance:Lcom/sec/android/app/dlna/DLNAManager;

    .line 224
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 226
    :cond_13
    sget-object v0, Lcom/sec/android/app/dlna/DLNAManager;->mInstance:Lcom/sec/android/app/dlna/DLNAManager;

    return-object v0

    .line 224
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static getIpFromInt(I)Ljava/lang/String;
    .registers 4
    .parameter "input"

    .prologue
    .line 849
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v2, p0, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 851
    .local v0, result:Ljava/lang/String;
    return-object v0
.end method

.method private startDLNAManager(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "ipaddr"
    .parameter "apName"

    .prologue
    const/4 v3, 0x1

    .line 857
    iget-boolean v2, p0, Lcom/sec/android/app/dlna/DLNAManager;->isStarted:Z

    if-ne v2, v3, :cond_6

    .line 879
    :goto_5
    return-void

    .line 860
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/dlna/DLNAManager;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-nez v2, :cond_21

    .line 861
    iget-object v2, p0, Lcom/sec/android/app/dlna/DLNAManager;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 862
    .local v1, manager:Landroid/net/wifi/WifiManager;
    const-string v2, "mlock"

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dlna/DLNAManager;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 863
    iget-object v2, p0, Lcom/sec/android/app/dlna/DLNAManager;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    .line 866
    .end local v1           #manager:Landroid/net/wifi/WifiManager;
    :cond_21
    :try_start_21
    invoke-virtual {p0, p2}, Lcom/sec/android/app/dlna/DLNAManager;->setCurrentAPName(Ljava/lang/String;)V

    .line 867
    const-string v2, "DLNA"

    const-string v3, "========= startDLNAManager========== "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    invoke-static {p1}, Lcom/samsung/net/HostInterface;->setInterface(Ljava/lang/String;)V

    .line 871
    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/DigitalMediaControllerAPI;->startDMC()V

    .line 872
    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    invoke-virtual {v2, v3}, Lcom/samsung/api/DigitalMediaControllerAPI;->addDeviceChangeListener(Lcom/samsung/upnp/device/DeviceChangeListener;)Z

    .line 873
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/DLNAManager;->startDMS()Z

    .line 874
    iget-object v2, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/dlna/ControlPointInfo;->addControlPointInfoChangeListener(Lcom/sec/android/app/dlna/ControlPointInfo$IControlPointInfoChangedListener;)V

    .line 875
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/dlna/DLNAManager;->isStarted:Z
    :try_end_49
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_21 .. :try_end_49} :catch_4a

    goto :goto_5

    .line 876
    :catch_4a
    move-exception v0

    .line 877
    .local v0, e:Lcom/samsung/api/DMCAPIException;
    invoke-virtual {v0}, Lcom/samsung/api/DMCAPIException;->printStackTrace()V

    goto :goto_5
.end method

.method private stopDLNAManager()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 895
    iget-boolean v1, p0, Lcom/sec/android/app/dlna/DLNAManager;->isStarted:Z

    if-nez v1, :cond_6

    .line 914
    :cond_5
    :goto_5
    return-void

    .line 898
    :cond_6
    :try_start_6
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/DLNAManager;->setCurrentAPName(Ljava/lang/String;)V

    .line 899
    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/api/DigitalMediaControllerAPI;->terminateDMC()V

    .line 900
    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    invoke-virtual {v1, v2}, Lcom/samsung/api/DigitalMediaControllerAPI;->removeDeviceChangeListener(Lcom/samsung/upnp/device/DeviceChangeListener;)Z

    .line 901
    iget-object v1, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/ControlPointInfo;->setConnectionDisconnected()V

    .line 902
    iget-object v1, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/dlna/ControlPointInfo;->removeControlPointInfoChangeListener(Lcom/sec/android/app/dlna/ControlPointInfo$IControlPointInfoChangedListener;)V

    .line 903
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/DLNAManager;->stopDMS()Z

    .line 904
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/dlna/DLNAManager;->isStarted:Z
    :try_end_2b
    .catchall {:try_start_6 .. :try_end_2b} :catchall_45
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_6 .. :try_end_2b} :catch_37

    .line 908
    iget-object v1, p0, Lcom/sec/android/app/dlna/DLNAManager;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v1, :cond_5

    .line 909
    iget-object v1, p0, Lcom/sec/android/app/dlna/DLNAManager;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    .line 910
    :goto_34
    iput-object v3, p0, Lcom/sec/android/app/dlna/DLNAManager;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    goto :goto_5

    .line 905
    :catch_37
    move-exception v0

    .line 906
    .local v0, e:Lcom/samsung/api/DMCAPIException;
    :try_start_38
    invoke-virtual {v0}, Lcom/samsung/api/DMCAPIException;->printStackTrace()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_45

    .line 908
    iget-object v1, p0, Lcom/sec/android/app/dlna/DLNAManager;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v1, :cond_5

    .line 909
    iget-object v1, p0, Lcom/sec/android/app/dlna/DLNAManager;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    goto :goto_34

    .line 908
    .end local v0           #e:Lcom/samsung/api/DMCAPIException;
    :catchall_45
    move-exception v1

    iget-object v2, p0, Lcom/sec/android/app/dlna/DLNAManager;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v2, :cond_51

    .line 909
    iget-object v2, p0, Lcom/sec/android/app/dlna/DLNAManager;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    .line 910
    iput-object v3, p0, Lcom/sec/android/app/dlna/DLNAManager;->multicastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 908
    :cond_51
    throw v1
.end method


# virtual methods
.method public ClearUploadServerUdn()V
    .registers 2

    .prologue
    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->device_upload:Ljava/lang/String;

    .line 325
    return-void
.end method

.method public GetTapMode()Z
    .registers 2

    .prologue
    .line 1028
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->tapMode:Z

    return v0
.end method

.method public GetUploadFileCnt()Z
    .registers 2

    .prologue
    .line 199
    iget v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->UploadedFileCnt:I

    if-lez v0, :cond_7

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->waitScannerforUpload:Z

    .line 202
    :cond_7
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->waitScannerforUpload:Z

    return v0
.end method

.method public GetUploadServerUdn()Ljava/lang/String;
    .registers 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->device_upload:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 319
    const/4 v0, 0x0

    .line 320
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->device_upload:Ljava/lang/String;

    goto :goto_5
.end method

.method public OnControlPointInfoChanged(II)V
    .registers 7
    .parameter "type"
    .parameter "state"

    .prologue
    const/16 v0, 0x68

    const/16 v3, 0x65

    const/16 v2, 0x67

    const/16 v1, 0x66

    .line 969
    packed-switch p1, :pswitch_data_7a

    .line 1007
    :goto_b
    return-void

    .line 971
    :pswitch_c
    if-ne p2, v1, :cond_16

    .line 972
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->userControl:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    const/16 v1, 0x42e

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->notifyGuiMessage(I)V

    goto :goto_b

    .line 973
    :cond_16
    if-ne p2, v0, :cond_1e

    .line 974
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->userControl:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->notifyGuiMessage(I)V

    goto :goto_b

    .line 976
    :cond_1e
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->userControl:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->notifyGuiMessage(I)V

    goto :goto_b

    .line 980
    :pswitch_24
    if-ne p2, v1, :cond_38

    .line 981
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->userControl:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->init()V

    .line 982
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->userControl:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->clearActionQueue()V

    .line 983
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->userControl:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    const/16 v1, 0x424

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->notifyGuiMessage(I)V

    goto :goto_b

    .line 984
    :cond_38
    if-ne p2, v0, :cond_4d

    .line 986
    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/ControlPointInfo;->getPlayer()Lcom/samsung/api/DeviceItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/api/DigitalMediaControllerAPI;->subscribePlayer(Lcom/samsung/api/DeviceItem;)Z

    .line 988
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->userControl:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->notifyGuiMessage(I)V

    goto :goto_b

    .line 989
    :cond_4d
    if-ne p2, v2, :cond_5f

    .line 990
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->userControl:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->init()V

    .line 991
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->userControl:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->clearActionQueue()V

    .line 992
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->userControl:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->notifyGuiMessage(I)V

    goto :goto_b

    .line 995
    :cond_5f
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->userControl:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->notifyGuiMessage(I)V

    goto :goto_b

    .line 998
    :pswitch_65
    if-ne p2, v1, :cond_74

    .line 999
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->userControl:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    const/16 v1, 0x41a

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->notifyGuiMessage(I)V

    .line 1000
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->userControl:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->requestStop()Z

    goto :goto_b

    .line 1002
    :cond_74
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->userControl:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->notifyGuiMessage(I)V

    goto :goto_b

    .line 969
    :pswitch_data_7a
    .packed-switch 0xc9
        :pswitch_c
        :pswitch_24
        :pswitch_65
    .end packed-switch
.end method

.method public SetTapMode(Z)V
    .registers 2
    .parameter "mode"

    .prologue
    .line 1024
    iput-boolean p1, p0, Lcom/sec/android/app/dlna/DLNAManager;->tapMode:Z

    .line 1025
    return-void
.end method

.method public UploadedFileCntPlus()V
    .registers 3

    .prologue
    .line 194
    const-string v0, "DLNA"

    const-string v1, " finished upload "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->UploadedFileCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->UploadedFileCnt:I

    .line 196
    return-void
.end method

.method public acquireWakeLock()V
    .registers 2

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_16

    .line 1125
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1126
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1128
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1130
    :cond_16
    return-void
.end method

.method public acquireWifiLock()V
    .registers 2

    .prologue
    .line 591
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_11

    .line 592
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 596
    :cond_11
    return-void
.end method

.method public declared-synchronized addActivityDestroyListener(Lcom/sec/android/app/dlna/ui/IActivityListener;)V
    .registers 5
    .parameter "listener"

    .prologue
    .line 808
    monitor-enter p0

    :try_start_1
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DLNAManager : add ActivityDestroy listener - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->activityDestroyListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 811
    monitor-exit p0

    return-void

    .line 808
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bindDMSService(Landroid/content/Context;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 559
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->onlyController:Z

    if-ne v0, v2, :cond_6

    .line 586
    :goto_5
    return-void

    .line 562
    :cond_6
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 563
    const-string v1, "DLNA Wifi Lock"

    invoke-virtual {v0, v2, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 565
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mPowerManager:Landroid/os/PowerManager;

    .line 566
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "dlna_wakelock"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 569
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/dlna/service/DmsLocalService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 572
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mConnection:Landroid/content/ServiceConnection;

    if-nez v0, :cond_3f

    .line 573
    new-instance v0, Lcom/sec/android/app/dlna/DLNAManager$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dlna/DLNAManager$4;-><init>(Lcom/sec/android/app/dlna/DLNAManager;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mConnection:Landroid/content/ServiceConnection;

    .line 585
    :cond_3f
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/dlna/service/DmsLocalService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/sec/android/app/dlna/DLNAManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_5
.end method

.method public browse(Lcom/samsung/api/ContentItem;)Ljava/util/List;
    .registers 5
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/api/ContentItem;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/api/ContentItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 434
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ControlPointInfo;->isServerWaiting()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 438
    :cond_a
    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/ControlPointInfo;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v1

    invoke-virtual {v0, v1, p1, v2, v2}, Lcom/samsung/api/DigitalMediaControllerAPI;->browseItemsDown(Lcom/samsung/api/DeviceItem;Lcom/samsung/api/ContentItem;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public browse(Lcom/samsung/api/ContentItem;II)Ljava/util/List;
    .registers 6
    .parameter "item"
    .parameter "offset"
    .parameter "requestSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/api/ContentItem;",
            "II)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/api/ContentItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 444
    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/ControlPointInfo;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/samsung/api/DigitalMediaControllerAPI;->browseItemsDown(Lcom/samsung/api/DeviceItem;Lcom/samsung/api/ContentItem;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public clearPlaylist()V
    .registers 3

    .prologue
    .line 1141
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1142
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->clearPlaylist()V

    .line 1143
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dlna/DLNAManager;->selectItem(Lcom/sec/android/app/dlna/model/PlaylistItem;)Z

    .line 1145
    :cond_15
    return-void
.end method

.method public clearThumbnailHash()V
    .registers 3

    .prologue
    .line 148
    const-string v0, "DLNA"

    const-string v1, "HashMap clear"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    sget-object v0, Lcom/sec/android/app/dlna/DLNAManager;->mThumbnail:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 150
    sget-object v0, Lcom/sec/android/app/dlna/DLNAManager;->mThumbnail:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 151
    :cond_14
    return-void
.end method

.method public eventOccured(I)V
    .registers 9
    .parameter

    .prologue
    const/16 v4, 0x2f2

    const/4 v1, 0x0

    .line 917
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 918
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 919
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getIpFromInt(I)Ljava/lang/String;

    move-result-object v2

    .line 920
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 922
    packed-switch p1, :pswitch_data_bc

    .line 966
    :goto_20
    return-void

    .line 924
    :pswitch_21
    invoke-direct {p0}, Lcom/sec/android/app/dlna/DLNAManager;->stopDLNAManager()V

    .line 925
    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/dlna/DLNAManager;->startDLNAManager(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    const/16 v0, 0x2f4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/DLNAManager;->notifyToActivity(I)V

    goto :goto_20

    .line 930
    :pswitch_2d
    const-string v0, "DLNA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DLNAManager : Network Connected : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/dlna/DLNAManager;->warningActivity:Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->warningActivity:Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;

    if-eqz v0, :cond_50

    .line 932
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->warningActivity:Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/warningview/NetworkWarningActivity;->finishSelf()V

    .line 934
    :cond_50
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/DLNAManager;->setAutoIP(Z)V

    .line 936
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 938
    :goto_5d
    if-nez v1, :cond_9c

    iget-object v1, p0, Lcom/sec/android/app/dlna/DLNAManager;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_9c

    .line 939
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v1

    sget-object v4, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1, v4}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 941
    const-string v4, "DLNA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wifi is not connected:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    const-wide/16 v4, 0x64

    :try_start_93
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_96
    .catch Ljava/lang/InterruptedException; {:try_start_93 .. :try_end_96} :catch_97

    goto :goto_5d

    .line 945
    :catch_97
    move-exception v4

    .line 946
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5d

    .line 949
    :cond_9c
    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/dlna/DLNAManager;->startDLNAManager(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    const/16 v0, 0x2f3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/DLNAManager;->notifyToActivity(I)V

    goto/16 :goto_20

    .line 953
    :pswitch_a6
    invoke-direct {p0}, Lcom/sec/android/app/dlna/DLNAManager;->stopDLNAManager()V

    .line 954
    invoke-virtual {p0, v4}, Lcom/sec/android/app/dlna/DLNAManager;->notifyToActivity(I)V

    goto/16 :goto_20

    .line 957
    :pswitch_ae
    const-string v0, "DLNA"

    const-string v1, "DLNAManager : Network Connected :EVENT_NETWORK_CONNECTED_INIT_TIME "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    .line 961
    :pswitch_b7
    invoke-virtual {p0, v4}, Lcom/sec/android/app/dlna/DLNAManager;->notifyToActivity(I)V

    goto/16 :goto_20

    .line 922
    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_a6
        :pswitch_2d
        :pswitch_21
        :pswitch_ae
        :pswitch_b7
    .end packed-switch
.end method

.method public getDLNAContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDeviceIconHash()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    sget-object v0, Lcom/sec/android/app/dlna/DLNAManager;->DeviceIcon:Ljava/util/HashMap;

    return-object v0
.end method

.method public getHistoryStack()Ljava/util/Stack;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack",
            "<",
            "Lcom/sec/android/app/dlna/DLNAManager$BrowseHistory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 804
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mHistoryStack:Ljava/util/Stack;

    return-object v0
.end method

.method public getNetworkState()I
    .registers 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->networkTracerMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    if-nez v0, :cond_6

    .line 281
    const/4 v0, -0x1

    .line 283
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->networkTracerMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    invoke-virtual {v0}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->getStateType()I

    move-result v0

    goto :goto_5
.end method

.method public getPlayer()Lcom/samsung/api/DeviceItem;
    .registers 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    if-nez v0, :cond_6

    .line 377
    const/4 v0, 0x0

    .line 379
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ControlPointInfo;->getPlayer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    goto :goto_5
.end method

.method public getPlayerList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/api/DeviceItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 469
    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Lcom/samsung/api/DigitalMediaControllerAPI;->getDMRList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPlayerName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    if-nez v0, :cond_6

    .line 405
    const/4 v0, 0x0

    .line 407
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ControlPointInfo;->getPlayerName()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getPosition()Lcom/samsung/api/ContentPositionInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 886
    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/ControlPointInfo;->getPlayer()Lcom/samsung/api/DeviceItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/api/DigitalMediaControllerAPI;->getPosition(Lcom/samsung/api/DeviceItem;)Lcom/samsung/api/ContentPositionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItem()Lcom/sec/android/app/dlna/model/PlaylistItem;
    .registers 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    if-nez v0, :cond_6

    .line 391
    const/4 v0, 0x0

    .line 393
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ControlPointInfo;->getItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v0

    goto :goto_5
.end method

.method public getServer()Lcom/samsung/api/DeviceItem;
    .registers 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    if-nez v0, :cond_6

    .line 370
    const/4 v0, 0x0

    .line 372
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ControlPointInfo;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    goto :goto_5
.end method

.method public getServerList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/api/DeviceItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 430
    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Lcom/samsung/api/DigitalMediaControllerAPI;->getDMSList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    if-nez v0, :cond_6

    .line 398
    const/4 v0, 0x0

    .line 400
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ControlPointInfo;->getServerName()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getService()Lcom/sec/android/app/dlna/service/DmsLocalService;
    .registers 2

    .prologue
    .line 549
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mService:Lcom/sec/android/app/dlna/service/DmsLocalService;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .registers 4

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->settings:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1a

    .line 1033
    const-string v0, "DLNA"

    const-string v1, "settings is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    sget-object v0, Lcom/sec/android/app/dlna/ui/PresetModeActivityTab;->mPresetModeActivityContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mContext:Landroid/content/Context;

    .line 1036
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mContext:Landroid/content/Context;

    const-string v1, "AllShare Preference"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->settings:Landroid/content/SharedPreferences;

    .line 1039
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->settings:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getThumbnailHash()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    sget-object v0, Lcom/sec/android/app/dlna/DLNAManager;->mThumbnail:Ljava/util/HashMap;

    return-object v0
.end method

.method public getTotalMatchCount(Lcom/samsung/api/ContentItem;)I
    .registers 4
    .parameter "item"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 1111
    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/ControlPointInfo;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/api/DigitalMediaControllerAPI;->getBrowseTotalMatchCount(Lcom/samsung/api/DeviceItem;Lcom/samsung/api/ContentItem;)I

    move-result v0

    return v0
.end method

.method public getTransportInfo()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 890
    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/ControlPointInfo;->getPlayer()Lcom/samsung/api/DeviceItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/api/DigitalMediaControllerAPI;->getTransportInfo(Lcom/samsung/api/DeviceItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUploadPath()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mService:Lcom/sec/android/app/dlna/service/DmsLocalService;

    if-eqz v0, :cond_23

    .line 1103
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mService:Lcom/sec/android/app/dlna/service/DmsLocalService;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/service/DmsLocalService;->getUploadPath()Ljava/lang/String;

    move-result-object v0

    .line 1104
    const-string v1, "DLNA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DLNAManager.getUploadPath() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    :goto_22
    return-object v0

    :cond_23
    const-string v0, ""

    goto :goto_22
.end method

.method public getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;
    .registers 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->userControl:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    return-object v0
.end method

.method public getVolume()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 537
    iget-object v2, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/ControlPointInfo;->getPlayer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    .line 539
    .local v0, player:Lcom/samsung/api/DeviceItem;
    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "Master"

    invoke-virtual {v2, v0, v3, v4}, Lcom/samsung/api/DigitalMediaControllerAPI;->getVolume(Lcom/samsung/api/DeviceItem;ILjava/lang/String;)I

    move-result v1

    .line 540
    .local v1, vol:I
    const-string v2, "DLNA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DLNAManager.getVolume : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    return v1
.end method

.method public init(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 240
    iput-object p1, p0, Lcom/sec/android/app/dlna/DLNAManager;->mContext:Landroid/content/Context;

    .line 241
    new-instance v0, Lcom/sec/android/app/dlna/ControlPointInfo;

    iget-object v1, p0, Lcom/sec/android/app/dlna/DLNAManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/dlna/ControlPointInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    .line 242
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mContext:Landroid/content/Context;

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    sput-object v0, Lcom/sec/android/app/dlna/DLNAManager;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 243
    sget-object v0, Lcom/sec/android/app/dlna/DLNAManager;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/dlna/DLNAManager;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    .line 244
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->networkTracerMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    if-nez v0, :cond_2c

    .line 245
    new-instance v0, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    iget-object v1, p0, Lcom/sec/android/app/dlna/DLNAManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->networkTracerMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    .line 246
    :cond_2c
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->networkTracerMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    invoke-virtual {v0, p0}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->addEventListener(Lcom/samsung/sample/networkstate/INetworstateEventListener;)V

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->networkTracerMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    invoke-virtual {v0}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->startWorker()V

    .line 248
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dlna/DLNAManager;->bindDMSService(Landroid/content/Context;)V

    .line 249
    return-void
.end method

.method public isExternalStorageSdMounted()Z
    .registers 4

    .prologue
    .line 213
    sget-object v0, Lcom/sec/android/app/dlna/DLNAManager;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v1, Lcom/sec/android/app/dlna/DLNAManager;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isHandleNextButton()Z
    .registers 2

    .prologue
    .line 1116
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mHandleNextButton:Z

    return v0
.end method

.method public isLastFileInPlaylist()Z
    .registers 2

    .prologue
    .line 1148
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mIsLastFileInPlaylist:Z

    return v0
.end method

.method public isMyPlayerSelected()Z
    .registers 2

    .prologue
    .line 1047
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mMyPlayerSelected:Z

    return v0
.end method

.method public isStarted()Z
    .registers 2

    .prologue
    .line 882
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->isStarted:Z

    return v0
.end method

.method public isWifiSettingsLaunched()Z
    .registers 2

    .prologue
    .line 1055
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->isWifiSettingsLaunched:Z

    return v0
.end method

.method public declared-synchronized notifyToActivity(I)V
    .registers 5
    .parameter "code"

    .prologue
    .line 829
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/dlna/DLNAManager;->activityDestroyListenerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/dlna/ui/IActivityListener;

    .line 830
    .local v1, listener:Lcom/sec/android/app/dlna/ui/IActivityListener;
    if-eqz v1, :cond_7

    .line 831
    invoke-interface {v1, p1}, Lcom/sec/android/app/dlna/ui/IActivityListener;->notifyActivityEvent(I)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1c
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_18} :catch_19

    goto :goto_7

    .line 836
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/sec/android/app/dlna/ui/IActivityListener;
    :catch_19
    move-exception v2

    .line 838
    :cond_1a
    monitor-exit p0

    return-void

    .line 829
    :catchall_1c
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public pause()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 512
    iget-object v1, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/ControlPointInfo;->getPlayer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    .line 513
    .local v0, player:Lcom/samsung/api/DeviceItem;
    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/api/DigitalMediaControllerAPI;->pauseItem(Lcom/samsung/api/DeviceItem;)V

    .line 514
    return-void
.end method

.method public play()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 502
    iget-object v1, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/ControlPointInfo;->getPlayer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    .line 503
    .local v0, player:Lcom/samsung/api/DeviceItem;
    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/api/DigitalMediaControllerAPI;->play(Lcom/samsung/api/DeviceItem;)V

    .line 504
    return-void
.end method

.method public refreshPlayerList()V
    .registers 2

    .prologue
    .line 465
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/DLNAManager;->refreshPlayerList(Z)V

    .line 466
    return-void
.end method

.method public refreshPlayerList(Z)V
    .registers 5
    .parameter "clearAll"

    .prologue
    .line 451
    move v0, p1

    .line 452
    .local v0, b_clearAll:Z
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/dlna/DLNAManager$3;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/dlna/DLNAManager$3;-><init>(Lcom/sec/android/app/dlna/DLNAManager;Z)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 462
    return-void
.end method

.method public refreshServerList()V
    .registers 3

    .prologue
    .line 422
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/dlna/DLNAManager$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dlna/DLNAManager$2;-><init>(Lcom/sec/android/app/dlna/DLNAManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 427
    return-void
.end method

.method public releaseWakeLock()V
    .registers 2

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_11

    .line 1134
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1135
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1138
    :cond_11
    return-void
.end method

.method public releaseWifiLock()V
    .registers 3

    .prologue
    .line 599
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 600
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 603
    :cond_12
    return-void
.end method

.method public declared-synchronized removeActivityDestroyListener(Lcom/sec/android/app/dlna/ui/IActivityListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 814
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->activityDestroyListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 815
    monitor-exit p0

    return-void

    .line 814
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetPlayer()V
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    if-eqz v0, :cond_9

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ControlPointInfo;->removePlayer()V

    .line 232
    :cond_9
    return-void
.end method

.method public resetServer()V
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    if-eqz v0, :cond_9

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/dlna/ControlPointInfo;->removeServer()V

    .line 237
    :cond_9
    return-void
.end method

.method public seek(Ljava/lang/String;)V
    .registers 5
    .parameter "target"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 517
    iget-object v1, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/ControlPointInfo;->getPlayer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    .line 518
    .local v0, player:Lcom/samsung/api/DeviceItem;
    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Lcom/samsung/api/DigitalMediaControllerAPI;->seek(Lcom/samsung/api/DeviceItem;ILjava/lang/String;)V

    .line 519
    return-void
.end method

.method public selectItem(Lcom/sec/android/app/dlna/model/PlaylistItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    if-eqz v0, :cond_9

    .line 293
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dlna/ControlPointInfo;->selectItem(Lcom/sec/android/app/dlna/model/PlaylistItem;)V

    .line 294
    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public selectPlayer(Lcom/samsung/api/DeviceItem;)Z
    .registers 7
    .parameter "newPlayer"

    .prologue
    const/4 v2, 0x1

    .line 328
    const/4 v0, 0x0

    .line 330
    .local v0, isSwitchSuccess:Z
    :try_start_2
    iget-object v3, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/ControlPointInfo;->getPlayer()Lcom/samsung/api/DeviceItem;

    move-result-object v1

    .line 332
    .local v1, oldPlayer:Lcom/samsung/api/DeviceItem;
    if-nez v1, :cond_d

    if-nez p1, :cond_d

    .line 365
    .end local v1           #oldPlayer:Lcom/samsung/api/DeviceItem;
    :cond_c
    :goto_c
    return v2

    .line 335
    .restart local v1       #oldPlayer:Lcom/samsung/api/DeviceItem;
    :cond_d
    if-eqz v1, :cond_1f

    if-eqz p1, :cond_1f

    invoke-virtual {v1}, Lcom/samsung/api/DeviceItem;->getUdn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/api/DeviceItem;->getUdn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 339
    :cond_1f
    if-eqz v1, :cond_26

    .line 340
    iget-object v3, p0, Lcom/sec/android/app/dlna/DLNAManager;->userControl:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->forceStop()V

    .line 342
    :cond_26
    iget-object v3, p0, Lcom/sec/android/app/dlna/DLNAManager;->userControl:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->init()V

    .line 347
    iget-object v3, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/dlna/ControlPointInfo;->selectPlayer(Lcom/samsung/api/DeviceItem;)V

    .line 348
    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v3

    invoke-virtual {v3, v1, p1}, Lcom/samsung/api/DigitalMediaControllerAPI;->switchPlayer(Lcom/samsung/api/DeviceItem;Lcom/samsung/api/DeviceItem;)Z

    move-result v0

    .line 350
    if-ne v0, v2, :cond_5c

    .line 352
    iget-object v2, p0, Lcom/sec/android/app/dlna/DLNAManager;->userControl:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->setRendererSelected(Z)V

    .line 353
    iget-object v2, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/ControlPointInfo;->getItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v2

    if-eqz v2, :cond_5a

    .line 354
    const-string v2, "DLNA"

    const-string v3, " mControlPointInfo.getItem()  is not null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v2, p0, Lcom/sec/android/app/dlna/DLNAManager;->userControl:Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    iget-object v3, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/ControlPointInfo;->getItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->playItNow(Lcom/sec/android/app/dlna/model/PlaylistItem;)V

    .end local v1           #oldPlayer:Lcom/samsung/api/DeviceItem;
    :cond_5a
    :goto_5a
    move v2, v0

    .line 365
    goto :goto_c

    .line 359
    .restart local v1       #oldPlayer:Lcom/samsung/api/DeviceItem;
    :cond_5c
    iget-object v2, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/dlna/ControlPointInfo;->selectPlayer(Lcom/samsung/api/DeviceItem;)V

    .line 360
    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/api/DigitalMediaControllerAPI;->subscribePlayer(Lcom/samsung/api/DeviceItem;)Z
    :try_end_68
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_68} :catch_69
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_68} :catch_6b

    goto :goto_5a

    .line 362
    .end local v1           #oldPlayer:Lcom/samsung/api/DeviceItem;
    :catch_69
    move-exception v2

    goto :goto_5a

    .line 363
    :catch_6b
    move-exception v2

    goto :goto_5a
.end method

.method public selectServer(Lcom/samsung/api/DeviceItem;)Z
    .registers 3
    .parameter "device"

    .prologue
    .line 299
    if-eqz p1, :cond_b

    :try_start_2
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mHistoryStack:Ljava/util/Stack;

    if-eqz v0, :cond_b

    .line 300
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mHistoryStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 301
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dlna/ControlPointInfo;->selectServer(Lcom/samsung/api/DeviceItem;)V
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_10} :catch_14
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_12

    .line 305
    :goto_10
    const/4 v0, 0x1

    return v0

    .line 303
    :catch_12
    move-exception v0

    goto :goto_10

    .line 302
    :catch_14
    move-exception v0

    goto :goto_10
.end method

.method public selectUploadServerUdn(Ljava/lang/String;)Z
    .registers 3
    .parameter "device"

    .prologue
    .line 309
    if-eqz p1, :cond_6

    .line 310
    iput-object p1, p0, Lcom/sec/android/app/dlna/DLNAManager;->device_upload:Ljava/lang/String;

    .line 311
    const/4 v0, 0x1

    .line 314
    :goto_5
    return v0

    .line 313
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->device_upload:Ljava/lang/String;

    .line 314
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setAutoIP(Z)V
    .registers 4
    .parameter "setValue"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->networkTracerMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    if-nez v0, :cond_c

    .line 253
    const-string v0, "DLNA"

    const-string v1, "Don\'t start networkTracerMachine ~!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :goto_b
    return-void

    .line 255
    :cond_c
    if-eqz p1, :cond_14

    .line 256
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->networkTracerMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    invoke-virtual {v0}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->EnableAutoIP()V

    goto :goto_b

    .line 258
    :cond_14
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->networkTracerMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    invoke-virtual {v0}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->DisableAutoIP()V

    goto :goto_b
.end method

.method public setAvtTransport(Lcom/sec/android/app/dlna/model/PlaylistItem;)V
    .registers 8
    .parameter "newItem"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 473
    iget-object v4, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/ControlPointInfo;->getPlayer()Lcom/samsung/api/DeviceItem;

    move-result-object v2

    .line 474
    .local v2, player:Lcom/samsung/api/DeviceItem;
    iget-object v4, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/ControlPointInfo;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v3

    .line 476
    .local v3, server:Lcom/samsung/api/DeviceItem;
    iget-object v4, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/ControlPointInfo;->getItem()Lcom/sec/android/app/dlna/model/PlaylistItem;

    move-result-object v1

    .line 477
    .local v1, oldItem:Lcom/sec/android/app/dlna/model/PlaylistItem;
    const/4 v0, 0x0

    .line 478
    .local v0, content:Lcom/samsung/api/ContentItem;
    if-eqz p1, :cond_1a

    .line 479
    invoke-virtual {p1}, Lcom/sec/android/app/dlna/model/PlaylistItem;->getContentItem()Lcom/samsung/api/ContentItem;

    move-result-object v0

    .line 480
    :cond_1a
    iget-boolean v4, p0, Lcom/sec/android/app/dlna/DLNAManager;->onlyController:Z

    if-eq v4, v5, :cond_21

    if-nez v3, :cond_21

    .line 481
    const/4 v0, 0x0

    .line 484
    :cond_21
    if-nez v1, :cond_30

    .line 485
    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, Lcom/samsung/api/DigitalMediaControllerAPI;->setAvtTransport(Lcom/samsung/api/DeviceItem;Lcom/samsung/api/ContentItem;)V

    .line 486
    iget-object v4, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    invoke-virtual {v4, p1}, Lcom/sec/android/app/dlna/ControlPointInfo;->selectItem(Lcom/sec/android/app/dlna/model/PlaylistItem;)V

    .line 499
    :goto_2f
    return-void

    .line 487
    :cond_30
    invoke-virtual {v1, p1}, Lcom/sec/android/app/dlna/model/PlaylistItem;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v5, :cond_54

    .line 489
    iget-object v4, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    invoke-virtual {v4}, Lcom/sec/android/app/dlna/ControlPointInfo;->isContentOnline()Z

    move-result v4

    if-nez v4, :cond_47

    .line 490
    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Lcom/samsung/api/DigitalMediaControllerAPI;->setAvtTransport(Lcom/samsung/api/DeviceItem;Lcom/samsung/api/ContentItem;)V

    goto :goto_2f

    .line 492
    :cond_47
    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, Lcom/samsung/api/DigitalMediaControllerAPI;->setAvtTransport(Lcom/samsung/api/DeviceItem;Lcom/samsung/api/ContentItem;)V

    .line 493
    iget-object v4, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    invoke-virtual {v4, p1}, Lcom/sec/android/app/dlna/ControlPointInfo;->selectItem(Lcom/sec/android/app/dlna/model/PlaylistItem;)V

    goto :goto_2f

    .line 496
    :cond_54
    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, Lcom/samsung/api/DigitalMediaControllerAPI;->setAvtTransport(Lcom/samsung/api/DeviceItem;Lcom/samsung/api/ContentItem;)V

    .line 497
    iget-object v4, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    invoke-virtual {v4, p1}, Lcom/sec/android/app/dlna/ControlPointInfo;->selectItem(Lcom/sec/android/app/dlna/model/PlaylistItem;)V

    goto :goto_2f
.end method

.method public setCreateObjectReceivedListener(Lcom/samsung/api/CreateObjectReceived;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mService:Lcom/sec/android/app/dlna/service/DmsLocalService;

    if-eqz v0, :cond_9

    .line 1067
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mService:Lcom/sec/android/app/dlna/service/DmsLocalService;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dlna/service/DmsLocalService;->setCreateObjectReceivedListener(Lcom/samsung/api/CreateObjectReceived;)V

    .line 1068
    :cond_9
    return-void
.end method

.method public setCurrentAPName(Ljava/lang/String;)V
    .registers 3
    .parameter "ssid"

    .prologue
    .line 765
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mCurrentApName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mPrevApName:Ljava/lang/String;

    .line 766
    iput-object p1, p0, Lcom/sec/android/app/dlna/DLNAManager;->mCurrentApName:Ljava/lang/String;

    .line 767
    return-void
.end method

.method public setHandleNextButton(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 1120
    iput-boolean p1, p0, Lcom/sec/android/app/dlna/DLNAManager;->mHandleNextButton:Z

    .line 1121
    return-void
.end method

.method public setLastFileInPlaylistFlag(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 1152
    iput-boolean p1, p0, Lcom/sec/android/app/dlna/DLNAManager;->mIsLastFileInPlaylist:Z

    .line 1153
    return-void
.end method

.method public setMyPlayerSelected(Z)V
    .registers 2
    .parameter "selected"

    .prologue
    .line 1051
    iput-boolean p1, p0, Lcom/sec/android/app/dlna/DLNAManager;->mMyPlayerSelected:Z

    .line 1052
    return-void
.end method

.method public setUploadFinishedListener(Lcom/samsung/api/UploadFinished;)V
    .registers 4
    .parameter

    .prologue
    .line 1074
    const-string v0, "DLNA"

    const-string v1, " setUploadFinishedListener"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mService:Lcom/sec/android/app/dlna/service/DmsLocalService;

    if-eqz v0, :cond_10

    .line 1076
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mService:Lcom/sec/android/app/dlna/service/DmsLocalService;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dlna/service/DmsLocalService;->setUploadFinishedListener(Lcom/samsung/api/UploadFinished;)V

    .line 1077
    :cond_10
    return-void
.end method

.method public setUploadPath(Ljava/lang/String;)Z
    .registers 5
    .parameter

    .prologue
    .line 1087
    const-string v0, "DLNA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DLNAManager.setUploadPath() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mService:Lcom/sec/android/app/dlna/service/DmsLocalService;

    if-eqz v0, :cond_23

    .line 1090
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mService:Lcom/sec/android/app/dlna/service/DmsLocalService;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/dlna/service/DmsLocalService;->setUploadPath(Ljava/lang/String;)Z

    move-result v0

    .line 1092
    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public setVolume(I)V
    .registers 6
    .parameter "vol"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 522
    iget-object v1, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/ControlPointInfo;->getPlayer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    .line 524
    .local v0, player:Lcom/samsung/api/DeviceItem;
    const/16 v1, 0x64

    if-le p1, v1, :cond_4d

    .line 525
    const-string v1, "DLNA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requested volume is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". set it 100"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/16 p1, 0x64

    .line 531
    :cond_2a
    :goto_2a
    const-string v1, "DLNA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DLNAManager.setVolume : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "Master"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/samsung/api/DigitalMediaControllerAPI;->setVolume(Lcom/samsung/api/DeviceItem;ILjava/lang/String;I)V

    .line 534
    return-void

    .line 527
    :cond_4d
    if-gez p1, :cond_2a

    .line 528
    const-string v1, "DLNA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requested volume is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". set it 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const/4 p1, 0x0

    goto :goto_2a
.end method

.method public setWifiSettingsLaunched(Z)V
    .registers 2
    .parameter "flag"

    .prologue
    .line 1059
    iput-boolean p1, p0, Lcom/sec/android/app/dlna/DLNAManager;->isWifiSettingsLaunched:Z

    .line 1060
    return-void
.end method

.method public startDMS()Z
    .registers 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 632
    const-string v6, "DLNA"

    const-string v7, "  startDMS() -- DMS support.  "

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-boolean v6, p0, Lcom/sec/android/app/dlna/DLNAManager;->onlyController:Z

    if-ne v6, v4, :cond_50

    .line 635
    iget-object v6, p0, Lcom/sec/android/app/dlna/DLNAManager;->mContext:Landroid/content/Context;

    const-string v7, "AllShare Preference"

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/dlna/DLNAManager;->settings:Landroid/content/SharedPreferences;

    .line 636
    iget-object v5, p0, Lcom/sec/android/app/dlna/DLNAManager;->settings:Landroid/content/SharedPreferences;

    const-string v6, "device_name"

    const-string v7, "SPH-D710"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 639
    .local v3, friendlyName:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Mobile]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/http/HTTP;->setDeviceName(Ljava/lang/String;)V

    .line 640
    const-string v5, "DLNA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onlyController - friendlyName"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    .end local v3           #friendlyName:Ljava/lang/String;
    :cond_4f
    :goto_4f
    return v4

    .line 644
    :cond_50
    iget-object v6, p0, Lcom/sec/android/app/dlna/DLNAManager;->mService:Lcom/sec/android/app/dlna/service/DmsLocalService;

    if-nez v6, :cond_56

    move v4, v5

    .line 645
    goto :goto_4f

    .line 647
    :cond_56
    :try_start_56
    iget-object v6, p0, Lcom/sec/android/app/dlna/DLNAManager;->mContext:Landroid/content/Context;

    const-string v7, "AllShare Preference"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/dlna/DLNAManager;->settings:Landroid/content/SharedPreferences;

    .line 648
    iget-object v6, p0, Lcom/sec/android/app/dlna/DLNAManager;->settings:Landroid/content/SharedPreferences;

    const-string v7, "device_name"

    const-string v8, "SPH-D710"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 651
    .restart local v3       #friendlyName:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Mobile]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/http/HTTP;->setDeviceName(Ljava/lang/String;)V

    .line 652
    iget-object v6, p0, Lcom/sec/android/app/dlna/DLNAManager;->mService:Lcom/sec/android/app/dlna/service/DmsLocalService;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Mobile]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/dlna/service/DmsLocalService;->startServerWithFriendlyName(Ljava/lang/String;)Z

    .line 654
    iget-object v6, p0, Lcom/sec/android/app/dlna/DLNAManager;->settings:Landroid/content/SharedPreferences;

    const-string v7, "sharing_video"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_a9

    .line 655
    iget-object v6, p0, Lcom/sec/android/app/dlna/DLNAManager;->mService:Lcom/sec/android/app/dlna/service/DmsLocalService;

    invoke-virtual {v6}, Lcom/sec/android/app/dlna/service/DmsLocalService;->addVideoDirectory()Z

    .line 656
    :cond_a9
    iget-object v6, p0, Lcom/sec/android/app/dlna/DLNAManager;->settings:Landroid/content/SharedPreferences;

    const-string v7, "sharing_audio"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_b9

    .line 657
    iget-object v6, p0, Lcom/sec/android/app/dlna/DLNAManager;->mService:Lcom/sec/android/app/dlna/service/DmsLocalService;

    invoke-virtual {v6}, Lcom/sec/android/app/dlna/service/DmsLocalService;->addAudioDirectory()Z

    .line 658
    :cond_b9
    iget-object v6, p0, Lcom/sec/android/app/dlna/DLNAManager;->settings:Landroid/content/SharedPreferences;

    const-string v7, "sharing_picture"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_c9

    .line 659
    iget-object v6, p0, Lcom/sec/android/app/dlna/DLNAManager;->mService:Lcom/sec/android/app/dlna/service/DmsLocalService;

    invoke-virtual {v6}, Lcom/sec/android/app/dlna/service/DmsLocalService;->addImageDirectory()Z
    :try_end_c9
    .catch Ljava/lang/NullPointerException; {:try_start_56 .. :try_end_c9} :catch_119
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_c9} :catch_11d
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_c9} :catch_124

    .line 668
    :cond_c9
    const-string v5, "DLNA"

    const-string v6, "=========  register uploader =========== "

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    new-instance v5, Lcom/sec/android/app/dlna/DLNAManager$5;

    invoke-direct {v5, p0}, Lcom/sec/android/app/dlna/DLNAManager$5;-><init>(Lcom/sec/android/app/dlna/DLNAManager;)V

    invoke-virtual {p0, v5}, Lcom/sec/android/app/dlna/DLNAManager;->setCreateObjectReceivedListener(Lcom/samsung/api/CreateObjectReceived;)V

    .line 699
    new-instance v5, Lcom/sec/android/app/dlna/DLNAManager$6;

    invoke-direct {v5, p0}, Lcom/sec/android/app/dlna/DLNAManager$6;-><init>(Lcom/sec/android/app/dlna/DLNAManager;)V

    invoke-virtual {p0, v5}, Lcom/sec/android/app/dlna/DLNAManager;->setUploadFinishedListener(Lcom/samsung/api/UploadFinished;)V

    .line 708
    iget-object v5, p0, Lcom/sec/android/app/dlna/DLNAManager;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 711
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    :try_start_e6
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/DLNAManager;->isExternalStorageSdMounted()Z

    move-result v5

    if-nez v5, :cond_128

    .line 712
    iget-object v5, p0, Lcom/sec/android/app/dlna/DLNAManager;->settings:Landroid/content/SharedPreferences;

    const-string v6, "default_storage"

    const-string v7, "0"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 713
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/dlna/DLNAManager;->setUploadPath(Ljava/lang/String;)Z

    .line 714
    const-string v5, "default_storage"

    const-string v6, "0"

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 715
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_e6 .. :try_end_111} :catch_113

    goto/16 :goto_4f

    .line 728
    :catch_113
    move-exception v0

    .line 729
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4f

    .line 660
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v3           #friendlyName:Ljava/lang/String;
    :catch_119
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    move v4, v5

    .line 661
    goto/16 :goto_4f

    .line 662
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_11d
    move-exception v0

    .line 663
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move v4, v5

    .line 664
    goto/16 :goto_4f

    .line 665
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_124
    move-exception v2

    .local v2, ex:Ljava/lang/Exception;
    move v4, v5

    .line 666
    goto/16 :goto_4f

    .line 718
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v1       #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v3       #friendlyName:Ljava/lang/String;
    :cond_128
    :try_start_128
    iget-object v5, p0, Lcom/sec/android/app/dlna/DLNAManager;->settings:Landroid/content/SharedPreferences;

    const-string v6, "default_storage"

    const-string v7, "0"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 719
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/app/dlna/ui/AbstractDlnaActivity;->EXTERNAL_SDCARD_PATH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/app/dlna/DLNAManager;->setUploadPath(Ljava/lang/String;)Z
    :try_end_156
    .catch Ljava/lang/Exception; {:try_start_128 .. :try_end_156} :catch_113

    goto/16 :goto_4f
.end method

.method public stop()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/api/DMCAPIException;
        }
    .end annotation

    .prologue
    .line 507
    iget-object v1, p0, Lcom/sec/android/app/dlna/DLNAManager;->mControlPointInfo:Lcom/sec/android/app/dlna/ControlPointInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/ControlPointInfo;->getPlayer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    .line 508
    .local v0, player:Lcom/samsung/api/DeviceItem;
    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/api/DigitalMediaControllerAPI;->stopItem(Lcom/samsung/api/DeviceItem;)V

    .line 509
    return-void
.end method

.method public stopDMS()Z
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 736
    iget-object v3, p0, Lcom/sec/android/app/dlna/DLNAManager;->mService:Lcom/sec/android/app/dlna/service/DmsLocalService;

    if-nez v3, :cond_7

    .line 758
    :goto_6
    return v1

    .line 738
    :cond_7
    const-string v3, "DLNA"

    const-string v4, "  stopDMS() -- DMS support.  "

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-boolean v3, p0, Lcom/sec/android/app/dlna/DLNAManager;->onlyController:Z

    if-eqz v3, :cond_14

    move v1, v2

    .line 740
    goto :goto_6

    .line 742
    :cond_14
    :try_start_14
    iget-object v3, p0, Lcom/sec/android/app/dlna/DLNAManager;->mService:Lcom/sec/android/app/dlna/service/DmsLocalService;

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/service/DmsLocalService;->stopServer()Z

    .line 743
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/DLNAManager;->GetUploadFileCnt()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 744
    const-string v3, "DLNA"

    const-string v4, "stopDMS : uploader : running media scanner"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/DLNAManager;->getDLNAContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEDIA_MOUNTED"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 751
    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/android/app/dlna/DLNAManager;->UploadedFileCnt:I

    .line 752
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/dlna/DLNAManager;->waitScannerforUpload:Z
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_5d} :catch_5f

    :cond_5d
    move v1, v2

    .line 755
    goto :goto_6

    .line 756
    :catch_5f
    move-exception v0

    .line 757
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6
.end method

.method public stopDMSService(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 624
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->onlyController:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 629
    :cond_5
    :goto_5
    return-void

    .line 627
    :cond_6
    if-eqz p1, :cond_5

    .line 628
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/dlna/service/DmsLocalService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_5
.end method

.method public terminate()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 264
    invoke-direct {p0}, Lcom/sec/android/app/dlna/DLNAManager;->stopDLNAManager()V

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/DLNAManager;->stopDMSService(Landroid/content/Context;)V

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/DLNAManager;->unbindDMSService(Landroid/content/Context;)V

    .line 272
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->networkTracerMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    if-eqz v0, :cond_17

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/dlna/DLNAManager;->networkTracerMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    invoke-virtual {v0}, Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;->stopWorker()V

    .line 274
    :cond_17
    iput-object v1, p0, Lcom/sec/android/app/dlna/DLNAManager;->networkTracerMachine:Lcom/samsung/sample/networkstate/NetworkStateTrackerMachine;

    .line 276
    sput-object v1, Lcom/sec/android/app/dlna/DLNAManager;->mInstance:Lcom/sec/android/app/dlna/DLNAManager;

    .line 277
    return-void
.end method

.method public unbindDMSService(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 606
    iget-boolean v1, p0, Lcom/sec/android/app/dlna/DLNAManager;->onlyController:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 621
    :cond_6
    :goto_6
    return-void

    .line 609
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/dlna/DLNAManager;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_6

    .line 612
    :try_start_b
    iget-object v1, p0, Lcom/sec/android/app/dlna/DLNAManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1c

    .line 617
    :goto_10
    iput-object v3, p0, Lcom/sec/android/app/dlna/DLNAManager;->mConnection:Landroid/content/ServiceConnection;

    .line 618
    const-string v1, "DLNA"

    const-string v2, "unbind"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iput-object v3, p0, Lcom/sec/android/app/dlna/DLNAManager;->mService:Lcom/sec/android/app/dlna/service/DmsLocalService;

    goto :goto_6

    .line 613
    :catch_1c
    move-exception v0

    .line 614
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10
.end method
