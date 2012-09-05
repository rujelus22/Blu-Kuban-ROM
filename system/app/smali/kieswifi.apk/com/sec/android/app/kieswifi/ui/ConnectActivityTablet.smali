.class public Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;
.super Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;
.source "ConnectActivityTablet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$ClientCloseCheck;,
        Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$SyncConnectionThread;,
        Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$AnimationThread;
    }
.end annotation


# static fields
.field public static cancel_btn_text:Landroid/widget/TextView;

.field public static connected:Z

.field private static deviceName:Ljava/lang/String;

.field public static deviceName1:Landroid/widget/TextView;

.field public static deviceName2:Landroid/widget/TextView;

.field public static deviceName3:Landroid/widget/TextView;

.field private static intentToBack:Landroid/content/Intent;

.field public static ipAddr:Ljava/lang/String;

.field public static mCancelBtnView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

.field public static mDisconnBtnView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

.field private static selectedServer:Lcom/samsung/api/DeviceItem;

.field public static wait_bg:Landroid/widget/LinearLayout;

.field public static wait_confirm_bg:Landroid/widget/LinearLayout;

.field public static wifiIcon:Landroid/widget/ImageView;


# instance fields
.field public final FILE_CONTENTS:Ljava/lang/String;

.field public final FILE_NAME:Ljava/lang/String;

.field private connectedText:Landroid/widget/TextView;

.field private inflater:Landroid/view/LayoutInflater;

.field private kiesConnect:Landroid/widget/ImageView;

.field private mAniKiesConnect:Landroid/graphics/drawable/AnimationDrawable;

.field mGuiHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mUSBReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private mWifiMangager:Landroid/net/wifi/WifiManager;

.field private progressbar_layout:Landroid/widget/LinearLayout;

.field private result:Ljava/lang/String;

.field private rootLayout:Landroid/view/View;

.field private syncText:Landroid/widget/TextView;

.field public uConstants:Lcom/sec/android/app/kieswifi/UpnpConstants;

.field private waitConfirm:Landroid/widget/TextView;

.field private waitProgress:Landroid/widget/ProgressBar;

.field private waitText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 73
    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->selectedServer:Lcom/samsung/api/DeviceItem;

    .line 75
    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->wifiIcon:Landroid/widget/ImageView;

    .line 76
    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->deviceName1:Landroid/widget/TextView;

    .line 77
    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->deviceName2:Landroid/widget/TextView;

    .line 78
    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->deviceName3:Landroid/widget/TextView;

    .line 82
    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->wait_bg:Landroid/widget/LinearLayout;

    .line 83
    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->wait_confirm_bg:Landroid/widget/LinearLayout;

    .line 84
    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->cancel_btn_text:Landroid/widget/TextView;

    .line 86
    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->mCancelBtnView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    .line 87
    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->mDisconnBtnView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    .line 91
    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->ipAddr:Ljava/lang/String;

    .line 93
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->connected:Z

    .line 117
    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->deviceName:Ljava/lang/String;

    .line 119
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->intentToBack:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;-><init>()V

    .line 74
    iput-object v1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->waitProgress:Landroid/widget/ProgressBar;

    .line 89
    iput-object v1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->mGuiHandler:Landroid/os/Handler;

    .line 90
    iput-object v1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->result:Ljava/lang/String;

    .line 95
    iput-object v1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->mPowerManager:Landroid/os/PowerManager;

    .line 96
    iput-object v1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->mWifiMangager:Landroid/net/wifi/WifiManager;

    .line 97
    iput-object v1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 114
    const-string v0, "data/data/com.sec.android.app.kieswifi/kieswifi.dat"

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->FILE_NAME:Ljava/lang/String;

    .line 115
    const-string v0, "1"

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->FILE_CONTENTS:Ljava/lang/String;

    .line 120
    new-instance v0, Lcom/sec/android/app/kieswifi/UpnpConstants;

    invoke-direct {v0}, Lcom/sec/android/app/kieswifi/UpnpConstants;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->uConstants:Lcom/sec/android/app/kieswifi/UpnpConstants;

    .line 125
    iput-object v1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->inflater:Landroid/view/LayoutInflater;

    .line 126
    iput-object v1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->rootLayout:Landroid/view/View;

    .line 127
    iput-object v1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->mAniKiesConnect:Landroid/graphics/drawable/AnimationDrawable;

    .line 128
    iput-object v1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->kiesConnect:Landroid/widget/ImageView;

    .line 129
    iput-object v1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->waitText:Landroid/widget/TextView;

    .line 130
    iput-object v1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->waitConfirm:Landroid/widget/TextView;

    .line 131
    iput-object v1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->connectedText:Landroid/widget/TextView;

    .line 132
    iput-object v1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->syncText:Landroid/widget/TextView;

    .line 133
    iput-object v1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->progressbar_layout:Landroid/widget/LinearLayout;

    .line 688
    new-instance v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$8;-><init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;)V

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->mUSBReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Lcom/samsung/api/DeviceItem;
    .registers 1

    .prologue
    .line 63
    sget-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->selectedServer:Lcom/samsung/api/DeviceItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;)Landroid/graphics/drawable/AnimationDrawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->mAniKiesConnect:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->result:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->notifyBar()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->setSyncConnectionInfo()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;)Landroid/os/PowerManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$800()Landroid/content/Intent;
    .registers 1

    .prologue
    .line 63
    sget-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->intentToBack:Landroid/content/Intent;

    return-object v0
.end method

.method private getIpFromInt(I)Ljava/lang/String;
    .registers 5
    .parameter "input"

    .prologue
    .line 600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v2, p1, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 604
    .local v0, result:Ljava/lang/String;
    return-object v0
.end method

.method private notifyBar()V
    .registers 7

    .prologue
    .line 376
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 377
    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f020016

    const-string v3, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 378
    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/sec/android/app/kieswifi/ui/MainActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x20

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x1000

    invoke-static {p0, v2, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 380
    const/high16 v3, 0x7f07

    invoke-virtual {p0, v3}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v1, p0, v3, v4, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 381
    const/4 v2, 0x2

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 382
    const/16 v2, 0x539

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 383
    return-void
.end method

.method private setSyncConnectionInfo()V
    .registers 12

    .prologue
    const/4 v1, 0x1

    .line 632
    const/4 v6, 0x0

    .line 633
    .local v6, SocketServer_result:I
    const-string v0, "setSyncConnectionInfo"

    invoke-static {v1, v0}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 635
    :try_start_7
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiManager;

    .line 636
    .local v10, wifiMgr:Landroid/net/wifi/WifiManager;
    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    .line 639
    .local v7, connectionInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 640
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->getIpFromInt(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->ipAddr:Ljava/lang/String;

    .line 642
    :cond_23
    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 643
    const-string v0, "192.168.43.1"

    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->ipAddr:Ljava/lang/String;

    .line 646
    :cond_2d
    invoke-static {}, Lcom/sec/android/app/kieswifi/UpnpManager;->getInstance()Lcom/sec/android/app/kieswifi/UpnpManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/kieswifi/UpnpManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->selectedServer:Lcom/samsung/api/DeviceItem;

    .line 649
    const-string v0, "KiesDataRouter"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 651
    sget-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->selectedServer:Lcom/samsung/api/DeviceItem;

    invoke-virtual {v0}, Lcom/samsung/api/DeviceItem;->getDeviceIP()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->ipAddr:Ljava/lang/String;

    const-string v2, "32530"

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->ServerSocket_Create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 652
    new-instance v9, Landroid/content/Intent;

    const-string v0, "com.intent.action.KIES_WSSERVICE_START_WIFI"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 653
    .local v9, intent2:Landroid/content/Intent;
    const/16 v0, 0x20

    invoke-virtual {v9, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 654
    invoke-virtual {p0, v9}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->sendBroadcast(Landroid/content/Intent;)V

    .line 656
    if-nez v6, :cond_b7

    .line 658
    invoke-static {}, Lcom/samsung/api/SyncControllerAPI;->getInstance()Lcom/samsung/api/SyncControllerAPI;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->selectedServer:Lcom/samsung/api/DeviceItem;

    sget-object v2, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->ipAddr:Ljava/lang/String;

    const-string v3, "32530"

    const-string v4, "ro.product.model"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Manual"

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/api/SyncControllerAPI;->setSyncConnectionInfo(Lcom/samsung/api/DeviceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->result:Ljava/lang/String;

    .line 659
    const-string v0, "Success"

    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 661
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->ServerSocket_Connect()I

    move-result v6

    .line 662
    if-eqz v6, :cond_8d

    .line 664
    const-string v0, "fail : socket connect fail"

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->result:Ljava/lang/String;

    .line 665
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->ServerSocket_Close()I

    .line 666
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->finish()V

    .line 680
    :cond_8d
    :goto_8d
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->result:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 686
    .end local v7           #connectionInfo:Landroid/net/wifi/WifiInfo;
    .end local v9           #intent2:Landroid/content/Intent;
    .end local v10           #wifiMgr:Landroid/net/wifi/WifiManager;
    :goto_a6
    return-void

    .line 671
    .restart local v7       #connectionInfo:Landroid/net/wifi/WifiInfo;
    .restart local v9       #intent2:Landroid/content/Intent;
    .restart local v10       #wifiMgr:Landroid/net/wifi/WifiManager;
    :cond_a7
    const-string v0, "fail2"

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->result:Ljava/lang/String;

    .line 672
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->ServerSocket_Close()I

    .line 673
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->finish()V
    :try_end_b1
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_7 .. :try_end_b1} :catch_b2

    goto :goto_8d

    .line 682
    .end local v7           #connectionInfo:Landroid/net/wifi/WifiInfo;
    .end local v9           #intent2:Landroid/content/Intent;
    .end local v10           #wifiMgr:Landroid/net/wifi/WifiManager;
    :catch_b2
    move-exception v8

    .line 683
    .local v8, e:Lcom/samsung/api/DMCAPIException;
    invoke-virtual {v8}, Lcom/samsung/api/DMCAPIException;->printStackTrace()V

    goto :goto_a6

    .line 678
    .end local v8           #e:Lcom/samsung/api/DMCAPIException;
    .restart local v7       #connectionInfo:Landroid/net/wifi/WifiInfo;
    .restart local v9       #intent2:Landroid/content/Intent;
    .restart local v10       #wifiMgr:Landroid/net/wifi/WifiManager;
    :cond_b7
    :try_start_b7
    const-string v0, "fail : socket create fail"

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->result:Ljava/lang/String;
    :try_end_bb
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_b7 .. :try_end_bb} :catch_b2

    goto :goto_8d
.end method


# virtual methods
.method public native ClientStart_Check()I
.end method

.method public native ServerSocket_Check()I
.end method

.method public native ServerSocket_Close()I
.end method

.method public native ServerSocket_Connect()I
.end method

.method public native ServerSocket_Create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public connected()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 293
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->waitText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->waitConfirm:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->progressbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->connectedText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->syncText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 298
    return-void
.end method

.method public fileCreate()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 251
    const-string v5, "fileCreate"

    invoke-static {v6, v5}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 252
    new-instance v2, Ljava/io/File;

    const-string v5, "data/data/com.sec.android.app.kieswifi/kieswifi.dat"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 253
    .local v2, file:Ljava/io/File;
    const/4 v3, 0x0

    .line 255
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_e
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_57
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_3b

    .line 256
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .local v4, fos:Ljava/io/FileOutputStream;
    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_15
    invoke-virtual {v2, v5, v6}, Ljava/io/File;->setReadable(ZZ)Z

    .line 257
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/io/File;->setWritable(ZZ)Z

    .line 258
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 260
    const-string v5, "1"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 261
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2e
    .catchall {:try_start_15 .. :try_end_2e} :catchall_63
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_2e} :catch_66

    .line 273
    if-eqz v4, :cond_69

    .line 276
    :try_start_30
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_35

    move-object v3, v4

    .line 282
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :cond_34
    :goto_34
    return-void

    .line 277
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_35
    move-exception v1

    .line 278
    .local v1, e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 279
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_34

    .line 262
    .end local v1           #e1:Ljava/io/IOException;
    :catch_3b
    move-exception v0

    .line 263
    .local v0, e:Ljava/io/IOException;
    :goto_3c
    const/4 v5, 0x3

    :try_start_3d
    const-string v6, "file write fail!!"

    invoke-static {v5, v6}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_57

    .line 264
    if-eqz v3, :cond_47

    .line 267
    :try_start_44
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_57
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_52

    .line 273
    :cond_47
    :goto_47
    if-eqz v3, :cond_34

    .line 276
    :try_start_49
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_34

    .line 277
    :catch_4d
    move-exception v1

    .line 278
    .restart local v1       #e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_34

    .line 268
    .end local v1           #e1:Ljava/io/IOException;
    :catch_52
    move-exception v1

    .line 269
    .restart local v1       #e1:Ljava/io/IOException;
    :try_start_53
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_57

    goto :goto_47

    .line 273
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #e1:Ljava/io/IOException;
    :catchall_57
    move-exception v5

    :goto_58
    if-eqz v3, :cond_5d

    .line 276
    :try_start_5a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    .line 279
    :cond_5d
    :goto_5d
    throw v5

    .line 277
    :catch_5e
    move-exception v1

    .line 278
    .restart local v1       #e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5d

    .line 273
    .end local v1           #e1:Ljava/io/IOException;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catchall_63
    move-exception v5

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_58

    .line 262
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_66
    move-exception v0

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_3c

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :cond_69
    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_34
.end method

.method public fileDelete()V
    .registers 4

    .prologue
    .line 286
    const/4 v1, 0x1

    const-string v2, "fileDelete"

    invoke-static {v1, v2}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 287
    new-instance v0, Ljava/io/File;

    const-string v1, "data/data/com.sec.android.app.kieswifi/kieswifi.dat"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 289
    return-void
.end method

.method public notifyActivityEvent(I)V
    .registers 4
    .parameter "code"

    .prologue
    .line 541
    packed-switch p1, :pswitch_data_16

    .line 552
    :goto_3
    :pswitch_3
    invoke-super {p0, p1}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->notifyActivityEvent(I)V

    .line 553
    return-void

    .line 543
    :pswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->finish()V

    goto :goto_3

    .line 546
    :pswitch_b
    const/4 v0, 0x1

    const-string v1, "START_WARNING_ACTIVITY ConnectActivity"

    invoke-static {v0, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 547
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->finish()V

    goto :goto_3

    .line 541
    nop

    :pswitch_data_16
    .packed-switch 0x2f2
        :pswitch_b
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, -0x1

    .line 532
    const/4 v0, 0x5

    if-ne p1, v0, :cond_12

    if-ne p2, v2, :cond_12

    .line 533
    const/4 v0, 0x1

    const-string v1, "ConnectActivity onActivityResult inside if"

    invoke-static {v0, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 534
    invoke-virtual {p0, v2}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->setResult(I)V

    .line 535
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->finish()V

    .line 537
    :cond_12
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 538
    return-void
.end method

.method public onBackPressed()V
    .registers 9

    .prologue
    .line 358
    invoke-super {p0}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->onBackPressed()V

    .line 361
    :try_start_3
    invoke-static {}, Lcom/samsung/api/SyncControllerAPI;->getInstance()Lcom/samsung/api/SyncControllerAPI;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->selectedServer:Lcom/samsung/api/DeviceItem;

    sget-object v2, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->ipAddr:Ljava/lang/String;

    const-string v3, "Cancel"

    const-string v4, "SetSyncConnectionInfo"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/api/SyncControllerAPI;->optionalCommand(Lcom/samsung/api/DeviceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_13
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_3 .. :try_end_13} :catch_2c

    .line 367
    :goto_13
    new-instance v7, Landroid/content/Intent;

    const-string v0, "com.intent.action.KIES_WSSERVICE_STOP"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 368
    .local v7, sendIntent:Landroid/content/Intent;
    const/16 v0, 0x20

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 369
    invoke-virtual {p0, v7}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->sendBroadcast(Landroid/content/Intent;)V

    .line 370
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->ServerSocket_Close()I

    .line 371
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->fileDelete()V

    .line 372
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->finish()V

    .line 373
    return-void

    .line 362
    .end local v7           #sendIntent:Landroid/content/Intent;
    :catch_2c
    move-exception v6

    .line 364
    .local v6, e:Lcom/samsung/api/DMCAPIException;
    invoke-virtual {v6}, Lcom/samsung/api/DMCAPIException;->printStackTrace()V

    goto :goto_13
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "newConfig"

    .prologue
    .line 304
    const/4 v0, 0x1

    const-string v1, "ConnectActivity onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 305
    invoke-super {p0, p1}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 306
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/high16 v8, 0x41a0

    const/4 v7, 0x1

    .line 137
    invoke-super {p0, p1}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 138
    invoke-virtual {p0, v7}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->requestWindowFeature(I)Z

    .line 139
    const-string v3, "onCreate"

    invoke-static {v7, v3}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 141
    invoke-static {}, Lcom/sec/android/app/kieswifi/UpnpManager;->getInstance()Lcom/sec/android/app/kieswifi/UpnpManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/kieswifi/UpnpManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v3

    if-nez v3, :cond_3f

    .line 143
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$1;-><init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 156
    const-string v3, "KiesDataRouter"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 157
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.intent.action.KIES_WSSERVICE_STOP"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .local v1, sendIntent:Landroid/content/Intent;
    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 159
    invoke-virtual {p0, v1}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->sendBroadcast(Landroid/content/Intent;)V

    .line 160
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->finish()V

    .line 247
    .end local v1           #sendIntent:Landroid/content/Intent;
    :goto_3e
    return-void

    .line 165
    :cond_3f
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->fileCreate()V

    .line 167
    invoke-static {}, Lcom/sec/android/app/kieswifi/UpnpManager;->getInstance()Lcom/sec/android/app/kieswifi/UpnpManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/kieswifi/UpnpManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/api/DeviceItem;->getFriendlyName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5e

    .line 169
    invoke-static {}, Lcom/sec/android/app/kieswifi/UpnpManager;->getInstance()Lcom/sec/android/app/kieswifi/UpnpManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/kieswifi/UpnpManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/api/DeviceItem;->getFriendlyName()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->deviceName:Ljava/lang/String;

    .line 172
    :cond_5e
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->inflater:Landroid/view/LayoutInflater;

    .line 173
    iget-object v4, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->inflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030001

    const v3, 0x7f050012

    invoke-virtual {p0, v3}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->rootLayout:Landroid/view/View;

    .line 174
    iget-object v3, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->rootLayout:Landroid/view/View;

    const v4, 0x7f050014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->kiesConnect:Landroid/widget/ImageView;

    .line 175
    iget-object v3, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->kiesConnect:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v3, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->mAniKiesConnect:Landroid/graphics/drawable/AnimationDrawable;

    .line 176
    iget-object v3, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->rootLayout:Landroid/view/View;

    const v4, 0x7f050008

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->waitText:Landroid/widget/TextView;

    .line 177
    iget-object v3, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->rootLayout:Landroid/view/View;

    const v4, 0x7f050017

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->progressbar_layout:Landroid/widget/LinearLayout;

    .line 178
    iget-object v3, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->rootLayout:Landroid/view/View;

    const v4, 0x7f05000a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->waitConfirm:Landroid/widget/TextView;

    .line 179
    iget-object v3, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->waitConfirm:Landroid/widget/TextView;

    const v4, 0x7f07000d

    new-array v5, v7, [Ljava/lang/Object;

    sget-object v6, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->deviceName:Ljava/lang/String;

    aput-object v6, v5, v9

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v3, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->rootLayout:Landroid/view/View;

    const v4, 0x7f05000c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->connectedText:Landroid/widget/TextView;

    .line 181
    iget-object v3, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->connectedText:Landroid/widget/TextView;

    const v4, 0x7f07000e

    new-array v5, v7, [Ljava/lang/Object;

    sget-object v6, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->deviceName:Ljava/lang/String;

    aput-object v6, v5, v9

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v3, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->rootLayout:Landroid/view/View;

    const v4, 0x7f05000d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->syncText:Landroid/widget/TextView;

    .line 183
    iget-object v3, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->syncText:Landroid/widget/TextView;

    const v4, 0x7f07000f

    new-array v5, v7, [Ljava/lang/Object;

    sget-object v6, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->deviceName:Ljava/lang/String;

    aput-object v6, v5, v9

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v3, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->uConstants:Lcom/sec/android/app/kieswifi/UpnpConstants;

    invoke-virtual {v3}, Lcom/sec/android/app/kieswifi/UpnpConstants;->getDeviceType()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_133

    .line 188
    iget-object v3, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->waitText:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 189
    iget-object v3, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->waitConfirm:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 190
    iget-object v3, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->connectedText:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 191
    iget-object v3, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->syncText:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 194
    :cond_133
    const/16 v3, 0x44d

    invoke-virtual {p0, v3}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->showDialog(I)V

    .line 196
    invoke-static {}, Lcom/sec/android/app/kieswifi/UpnpManager;->getInstance()Lcom/sec/android/app/kieswifi/UpnpManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/sec/android/app/kieswifi/UpnpManager;->init(Landroid/content/Context;)V

    .line 197
    invoke-static {}, Lcom/sec/android/app/kieswifi/UpnpManager;->getInstance()Lcom/sec/android/app/kieswifi/UpnpManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/sec/android/app/kieswifi/UpnpManager;->addActivityDestroyListener(Lcom/sec/android/app/kieswifi/ui/IActivityListener;)V

    .line 199
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->mPowerManager:Landroid/os/PowerManager;

    .line 201
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->mWifiMangager:Landroid/net/wifi/WifiManager;

    .line 202
    iget-object v3, p0, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v4, "kies_via_wifi"

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 203
    iget-object v3, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 206
    iget-object v3, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->mUSBReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 209
    new-instance v3, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$2;-><init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;)V

    iput-object v3, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->mGuiHandler:Landroid/os/Handler;

    .line 241
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$AnimationThread;

    invoke-direct {v3, p0, v10}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$AnimationThread;-><init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$1;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 242
    .local v0, animationThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 244
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$SyncConnectionThread;

    invoke-direct {v3, p0, v10}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$SyncConnectionThread;-><init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$1;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 245
    .local v2, syncconnectionThread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_3e
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .parameter "id"

    .prologue
    const v5, 0x7f070004

    const/high16 v2, 0x7f07

    .line 386
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 387
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_70

    .line 512
    new-instance v1, Lcom/sec/android/app/kieswifi/view/PopupView;

    invoke-direct {v1, p0}, Lcom/sec/android/app/kieswifi/view/PopupView;-><init>(Landroid/content/Context;)V

    .line 513
    .local v1, dialogView:Lcom/sec/android/app/kieswifi/view/PopupView;
    const v2, 0x7f070002

    invoke-virtual {p0, v2}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/kieswifi/view/PopupView;->setPopupMessage(Ljava/lang/String;)V

    .line 515
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$7;

    invoke-direct {v3, p0, p1}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$7;-><init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;I)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 528
    .end local v1           #dialogView:Lcom/sec/android/app/kieswifi/view/PopupView;
    :goto_28
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 389
    :pswitch_2d
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070010

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070003

    new-instance v4, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$4;

    invoke-direct {v4, p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$4;-><init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$3;

    invoke-direct {v3, p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$3;-><init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_28

    .line 456
    :pswitch_54
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 457
    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->rootLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 458
    new-instance v2, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$5;-><init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 486
    const v2, 0x7f070006

    new-instance v3, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$6;

    invoke-direct {v3, p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet$6;-><init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_28

    .line 387
    :pswitch_data_70
    .packed-switch 0x44c
        :pswitch_2d
        :pswitch_54
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 8

    .prologue
    .line 319
    const/4 v4, 0x1

    const-string v5, "ConnectActivity Destroy"

    invoke-static {v4, v5}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 321
    iget-object v4, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v4, :cond_12

    .line 322
    iget-object v4, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 323
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 326
    :cond_12
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->fileDelete()V

    .line 327
    const-string v4, ""

    sput-object v4, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->deviceName:Ljava/lang/String;

    .line 328
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 329
    .local v2, notiMgr:Landroid/app/NotificationManager;
    const/16 v4, 0x539

    invoke-virtual {v2, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 335
    :try_start_26
    iget-object v4, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->mUSBReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_26 .. :try_end_2b} :catch_46

    .line 344
    :goto_2b
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->ServerSocket_Close()I

    .line 346
    const-wide/16 v4, 0x1f4

    :try_start_30
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_30 .. :try_end_33} :catch_63

    .line 350
    :goto_33
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.intent.action.KIES_WSSERVICE_STOP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 351
    .local v3, sendIntent:Landroid/content/Intent;
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 352
    invoke-virtual {p0, v3}, Lcom/sec/android/app/kieswifi/ui/ConnectActivityTablet;->sendBroadcast(Landroid/content/Intent;)V

    .line 354
    invoke-super {p0}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->onDestroy()V

    .line 355
    return-void

    .line 337
    .end local v3           #sendIntent:Landroid/content/Intent;
    :catch_46
    move-exception v1

    .line 339
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    const/4 v4, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Receiver Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_2b

    .line 347
    .end local v1           #ex:Ljava/lang/IllegalArgumentException;
    :catch_63
    move-exception v0

    .line 348
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_33
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 309
    invoke-super {p0}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->onPause()V

    .line 310
    const/4 v0, 0x1

    const-string v1, "ConnectActivity Pause"

    invoke-static {v0, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 311
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 314
    invoke-super {p0}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->onResume()V

    .line 315
    const/4 v0, 0x1

    const-string v1, "ConnectActivity Resume"

    invoke-static {v0, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 316
    return-void
.end method
