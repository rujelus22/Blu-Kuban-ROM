.class public Lcom/sec/android/app/kieswifi/ui/ConnectActivity;
.super Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;
.source "ConnectActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/kieswifi/ui/ConnectActivity$ClientCloseCheck;,
        Lcom/sec/android/app/kieswifi/ui/ConnectActivity$SyncConnectionThread;,
        Lcom/sec/android/app/kieswifi/ui/ConnectActivity$AnimationThread;
    }
.end annotation


# static fields
.field public static cancel_btn_text:Landroid/widget/TextView;

.field public static connect_text:Landroid/widget/RelativeLayout;

.field public static connected:Z

.field public static connectedText:Landroid/widget/TextView;

.field private static deviceName:Ljava/lang/String;

.field public static deviceName1:Landroid/widget/TextView;

.field public static deviceName2:Landroid/widget/TextView;

.field public static deviceName3:Landroid/widget/TextView;

.field private static intentToBack:Landroid/content/Intent;

.field public static ipAddr:Ljava/lang/String;

.field public static mCancelBtnView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

.field public static mCancelButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field public static mDisconnBtnView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

.field public static mDisconnectButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

.field private static selectedServer:Lcom/samsung/api/DeviceItem;

.field public static syncText:Landroid/widget/TextView;

.field public static waitConfirm:Landroid/widget/TextView;

.field public static waitText:Landroid/widget/TextView;

.field public static wait_bg:Landroid/widget/LinearLayout;

.field public static wait_confirm_bg:Landroid/widget/LinearLayout;

.field public static wifiIcon:Landroid/widget/ImageView;


# instance fields
.field public final FILE_CONTENTS:Ljava/lang/String;

.field public final FILE_NAME:Ljava/lang/String;

.field mGuiHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mUSBReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private mWifiMangager:Landroid/net/wifi/WifiManager;

.field private result:Ljava/lang/String;

.field private upnpConstants:Lcom/sec/android/app/kieswifi/UpnpConstants;

.field private waitProgress:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 70
    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->selectedServer:Lcom/samsung/api/DeviceItem;

    .line 72
    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->wifiIcon:Landroid/widget/ImageView;

    .line 73
    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->waitText:Landroid/widget/TextView;

    .line 74
    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->waitConfirm:Landroid/widget/TextView;

    .line 75
    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->deviceName1:Landroid/widget/TextView;

    .line 76
    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->connectedText:Landroid/widget/TextView;

    .line 77
    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->deviceName2:Landroid/widget/TextView;

    .line 78
    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->syncText:Landroid/widget/TextView;

    .line 79
    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->deviceName3:Landroid/widget/TextView;

    .line 83
    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->wait_bg:Landroid/widget/LinearLayout;

    .line 84
    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->wait_confirm_bg:Landroid/widget/LinearLayout;

    .line 85
    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->cancel_btn_text:Landroid/widget/TextView;

    .line 86
    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->connect_text:Landroid/widget/RelativeLayout;

    .line 88
    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->mCancelBtnView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    .line 89
    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->mDisconnBtnView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    .line 93
    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->ipAddr:Ljava/lang/String;

    .line 95
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->connected:Z

    .line 124
    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->deviceName:Ljava/lang/String;

    .line 126
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->intentToBack:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;-><init>()V

    .line 71
    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->waitProgress:Landroid/widget/ProgressBar;

    .line 91
    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->mGuiHandler:Landroid/os/Handler;

    .line 92
    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->result:Ljava/lang/String;

    .line 97
    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->mPowerManager:Landroid/os/PowerManager;

    .line 99
    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->mWifiMangager:Landroid/net/wifi/WifiManager;

    .line 100
    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 103
    new-instance v0, Lcom/sec/android/app/kieswifi/UpnpConstants;

    invoke-direct {v0}, Lcom/sec/android/app/kieswifi/UpnpConstants;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->upnpConstants:Lcom/sec/android/app/kieswifi/UpnpConstants;

    .line 121
    const-string v0, "data/data/com.sec.android.app.kieswifi/kieswifi.dat"

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->FILE_NAME:Ljava/lang/String;

    .line 122
    const-string v0, "1"

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->FILE_CONTENTS:Ljava/lang/String;

    .line 644
    new-instance v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$8;-><init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->mUSBReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/kieswifi/ui/ConnectActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->result:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Lcom/samsung/api/DeviceItem;
    .registers 1

    .prologue
    .line 61
    sget-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->selectedServer:Lcom/samsung/api/DeviceItem;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/kieswifi/ui/ConnectActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->notifyBar()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/kieswifi/ui/ConnectActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->setSyncConnectionInfo()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/kieswifi/ui/ConnectActivity;)Landroid/os/PowerManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$700()Landroid/content/Intent;
    .registers 1

    .prologue
    .line 61
    sget-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->intentToBack:Landroid/content/Intent;

    return-object v0
.end method

.method private getIpFromInt(I)Ljava/lang/String;
    .registers 5
    .parameter "input"

    .prologue
    .line 555
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

    .line 559
    .local v0, result:Ljava/lang/String;
    return-object v0
.end method

.method private notifyBar()V
    .registers 7

    .prologue
    .line 401
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 402
    new-instance v1, Landroid/app/Notification;

    const v2, 0x7f020016

    const-string v3, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 403
    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/sec/android/app/kieswifi/ui/MainActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x20

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x1000

    invoke-static {p0, v2, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 406
    const/high16 v3, 0x7f07

    invoke-virtual {p0, v3}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f070017

    invoke-virtual {p0, v4}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p0, v3, v4, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 407
    const/4 v2, 0x2

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 408
    const/16 v2, 0x539

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 409
    return-void
.end method

.method private setSyncConnectionInfo()V
    .registers 13

    .prologue
    const/4 v1, 0x1

    .line 586
    const-string v0, "setSyncConnectionInfo"

    invoke-static {v1, v0}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 587
    const/4 v6, 0x0

    .line 589
    .local v6, SocketServer_result:I
    :try_start_7
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/WifiManager;

    .line 590
    .local v11, wifiMgr:Landroid/net/wifi/WifiManager;
    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    .line 593
    .local v7, connectionInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 594
    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->getIpFromInt(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->ipAddr:Ljava/lang/String;

    .line 596
    :cond_23
    invoke-virtual {v11}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 597
    const-string v0, "192.168.43.1"

    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->ipAddr:Ljava/lang/String;

    .line 600
    :cond_2d
    invoke-static {}, Lcom/sec/android/app/kieswifi/UpnpManager;->getInstance()Lcom/sec/android/app/kieswifi/UpnpManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/kieswifi/UpnpManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->selectedServer:Lcom/samsung/api/DeviceItem;

    .line 603
    const-string v0, "KiesDataRouter"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 605
    sget-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->selectedServer:Lcom/samsung/api/DeviceItem;

    invoke-virtual {v0}, Lcom/samsung/api/DeviceItem;->getDeviceIP()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->ipAddr:Ljava/lang/String;

    const-string v2, "32530"

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->ServerSocket_Create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 607
    new-instance v9, Landroid/content/Intent;

    const-string v0, "com.intent.action.KIES_GET_DEVICE_PROFILE_INFO"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 608
    .local v9, e_book_support:Landroid/content/Intent;
    invoke-virtual {p0, v9}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 610
    new-instance v10, Landroid/content/Intent;

    const-string v0, "com.intent.action.KIES_WSSERVICE_START_WIFI"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 611
    .local v10, intent2:Landroid/content/Intent;
    invoke-virtual {p0, v10}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 613
    if-nez v6, :cond_bc

    .line 615
    invoke-static {}, Lcom/samsung/api/SyncControllerAPI;->getInstance()Lcom/samsung/api/SyncControllerAPI;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->selectedServer:Lcom/samsung/api/DeviceItem;

    sget-object v2, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->ipAddr:Ljava/lang/String;

    const-string v3, "32530"

    const-string v4, "ro.product.model"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Manual"

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/api/SyncControllerAPI;->setSyncConnectionInfo(Lcom/samsung/api/DeviceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->result:Ljava/lang/String;

    .line 616
    const-string v0, "Success"

    iget-object v1, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 618
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->ServerSocket_Connect()I

    move-result v6

    .line 619
    if-eqz v6, :cond_92

    .line 621
    const-string v0, "fail : socket connect fail"

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->result:Ljava/lang/String;

    .line 622
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->ServerSocket_Close()I

    .line 623
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->finish()V

    .line 637
    :cond_92
    :goto_92
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->result:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 642
    .end local v7           #connectionInfo:Landroid/net/wifi/WifiInfo;
    .end local v9           #e_book_support:Landroid/content/Intent;
    .end local v10           #intent2:Landroid/content/Intent;
    .end local v11           #wifiMgr:Landroid/net/wifi/WifiManager;
    :goto_ab
    return-void

    .line 628
    .restart local v7       #connectionInfo:Landroid/net/wifi/WifiInfo;
    .restart local v9       #e_book_support:Landroid/content/Intent;
    .restart local v10       #intent2:Landroid/content/Intent;
    .restart local v11       #wifiMgr:Landroid/net/wifi/WifiManager;
    :cond_ac
    const-string v0, "fail2"

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->result:Ljava/lang/String;

    .line 629
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->ServerSocket_Close()I

    .line 630
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->finish()V
    :try_end_b6
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_7 .. :try_end_b6} :catch_b7

    goto :goto_92

    .line 638
    .end local v7           #connectionInfo:Landroid/net/wifi/WifiInfo;
    .end local v9           #e_book_support:Landroid/content/Intent;
    .end local v10           #intent2:Landroid/content/Intent;
    .end local v11           #wifiMgr:Landroid/net/wifi/WifiManager;
    :catch_b7
    move-exception v8

    .line 639
    .local v8, e:Lcom/samsung/api/DMCAPIException;
    invoke-virtual {v8}, Lcom/samsung/api/DMCAPIException;->printStackTrace()V

    goto :goto_ab

    .line 635
    .end local v8           #e:Lcom/samsung/api/DMCAPIException;
    .restart local v7       #connectionInfo:Landroid/net/wifi/WifiInfo;
    .restart local v9       #e_book_support:Landroid/content/Intent;
    .restart local v10       #intent2:Landroid/content/Intent;
    .restart local v11       #wifiMgr:Landroid/net/wifi/WifiManager;
    :cond_bc
    :try_start_bc
    const-string v0, "fail : socket create fail"

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->result:Ljava/lang/String;
    :try_end_c0
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_bc .. :try_end_c0} :catch_b7

    goto :goto_92
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

    .line 309
    sget-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->wait_bg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 310
    sget-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->wait_confirm_bg:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 311
    sget-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->connect_text:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 313
    const v0, 0x7f05000e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->mCancelBtnView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    .line 314
    sget-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->mCancelBtnView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 315
    const v0, 0x7f050010

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->mDisconnBtnView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    .line 316
    sget-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->mDisconnBtnView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 317
    return-void
.end method

.method public fileCreate()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 208
    const-string v5, "fileCreate"

    invoke-static {v6, v5}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 209
    new-instance v2, Ljava/io/File;

    const-string v5, "data/data/com.sec.android.app.kieswifi/kieswifi.dat"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    .local v2, file:Ljava/io/File;
    const/4 v3, 0x0

    .line 212
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_e
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_57
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_3b

    .line 213
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .local v4, fos:Ljava/io/FileOutputStream;
    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_15
    invoke-virtual {v2, v5, v6}, Ljava/io/File;->setReadable(ZZ)Z

    .line 214
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/io/File;->setWritable(ZZ)Z

    .line 215
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 217
    const-string v5, "1"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 218
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2e
    .catchall {:try_start_15 .. :try_end_2e} :catchall_63
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_2e} :catch_66

    .line 230
    if-eqz v4, :cond_69

    .line 233
    :try_start_30
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_35

    move-object v3, v4

    .line 239
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :cond_34
    :goto_34
    return-void

    .line 234
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_35
    move-exception v1

    .line 235
    .local v1, e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 236
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_34

    .line 219
    .end local v1           #e1:Ljava/io/IOException;
    :catch_3b
    move-exception v0

    .line 220
    .local v0, e:Ljava/io/IOException;
    :goto_3c
    const/4 v5, 0x3

    :try_start_3d
    const-string v6, "file write fail!!"

    invoke-static {v5, v6}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_57

    .line 221
    if-eqz v3, :cond_47

    .line 224
    :try_start_44
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_57
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_52

    .line 230
    :cond_47
    :goto_47
    if-eqz v3, :cond_34

    .line 233
    :try_start_49
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_34

    .line 234
    :catch_4d
    move-exception v1

    .line 235
    .restart local v1       #e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_34

    .line 225
    .end local v1           #e1:Ljava/io/IOException;
    :catch_52
    move-exception v1

    .line 226
    .restart local v1       #e1:Ljava/io/IOException;
    :try_start_53
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_57

    goto :goto_47

    .line 230
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #e1:Ljava/io/IOException;
    :catchall_57
    move-exception v5

    :goto_58
    if-eqz v3, :cond_5d

    .line 233
    :try_start_5a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5e

    .line 236
    :cond_5d
    :goto_5d
    throw v5

    .line 234
    :catch_5e
    move-exception v1

    .line 235
    .restart local v1       #e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5d

    .line 230
    .end local v1           #e1:Ljava/io/IOException;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catchall_63
    move-exception v5

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_58

    .line 219
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
    .line 243
    const/4 v1, 0x1

    const-string v2, "fileDelete"

    invoke-static {v1, v2}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 244
    new-instance v0, Ljava/io/File;

    const-string v1, "data/data/com.sec.android.app.kieswifi/kieswifi.dat"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 245
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 246
    return-void
.end method

.method public notifyActivityEvent(I)V
    .registers 4
    .parameter "code"

    .prologue
    .line 495
    packed-switch p1, :pswitch_data_16

    .line 506
    :goto_3
    :pswitch_3
    invoke-super {p0, p1}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->notifyActivityEvent(I)V

    .line 507
    return-void

    .line 497
    :pswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->finish()V

    goto :goto_3

    .line 500
    :pswitch_b
    const/4 v0, 0x1

    const-string v1, "START_WARNING_ACTIVITY ConnectActivity"

    invoke-static {v0, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 501
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->finish()V

    goto :goto_3

    .line 495
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

    .line 486
    const/4 v0, 0x5

    if-ne p1, v0, :cond_12

    if-ne p2, v2, :cond_12

    .line 487
    const/4 v0, 0x1

    const-string v1, "ConnectActivity onActivityResult inside if"

    invoke-static {v0, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 488
    invoke-virtual {p0, v2}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->setResult(I)V

    .line 489
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->finish()V

    .line 491
    :cond_12
    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 492
    return-void
.end method

.method public onBackPressed()V
    .registers 4

    .prologue
    .line 380
    invoke-super {p0}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->onBackPressed()V

    .line 381
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$4;-><init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivity;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 393
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.intent.action.KIES_WSSERVICE_STOP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 394
    .local v0, sendIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 395
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->ServerSocket_Close()I

    .line 396
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->fileDelete()V

    .line 397
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->finish()V

    .line 398
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x1

    .line 322
    invoke-super {p0, p1}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 323
    const-string v0, "onConfigurationChanged"

    invoke-static {v2, v0}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 325
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->setContentView(I)V

    .line 326
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->viewSetting()V

    .line 328
    sget-boolean v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->connected:Z

    if-eqz v0, :cond_30

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->connected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 331
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->connected()V

    .line 333
    :cond_30
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 130
    invoke-super {p0, p1}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 131
    invoke-virtual {p0, v4}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->requestWindowFeature(I)Z

    .line 132
    const-string v3, "onCreate"

    invoke-static {v4, v3}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/sec/android/app/kieswifi/UpnpManager;->getInstance()Lcom/sec/android/app/kieswifi/UpnpManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/kieswifi/UpnpManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v3

    if-nez v3, :cond_2a

    .line 136
    const-string v3, "KiesDataRouter"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 137
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.intent.action.KIES_WSSERVICE_STOP"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v1, sendIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 139
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->finish()V

    .line 204
    .end local v1           #sendIntent:Landroid/content/Intent;
    :goto_29
    return-void

    .line 144
    :cond_2a
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->fileCreate()V

    .line 146
    invoke-static {}, Lcom/sec/android/app/kieswifi/UpnpManager;->getInstance()Lcom/sec/android/app/kieswifi/UpnpManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/kieswifi/UpnpManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/api/DeviceItem;->getFriendlyName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_49

    .line 148
    invoke-static {}, Lcom/sec/android/app/kieswifi/UpnpManager;->getInstance()Lcom/sec/android/app/kieswifi/UpnpManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/kieswifi/UpnpManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/api/DeviceItem;->getFriendlyName()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->deviceName:Ljava/lang/String;

    .line 151
    :cond_49
    const/high16 v3, 0x7f03

    invoke-virtual {p0, v3}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->setContentView(I)V

    .line 153
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->viewSetting()V

    .line 155
    invoke-static {}, Lcom/sec/android/app/kieswifi/UpnpManager;->getInstance()Lcom/sec/android/app/kieswifi/UpnpManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/sec/android/app/kieswifi/UpnpManager;->init(Landroid/content/Context;)V

    .line 156
    invoke-static {}, Lcom/sec/android/app/kieswifi/UpnpManager;->getInstance()Lcom/sec/android/app/kieswifi/UpnpManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/sec/android/app/kieswifi/UpnpManager;->addActivityDestroyListener(Lcom/sec/android/app/kieswifi/ui/IActivityListener;)V

    .line 158
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->mPowerManager:Landroid/os/PowerManager;

    .line 160
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->mWifiMangager:Landroid/net/wifi/WifiManager;

    .line 161
    iget-object v3, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string v4, "kies_via_wifi"

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 162
    iget-object v3, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 165
    iget-object v3, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->mUSBReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 168
    new-instance v3, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$1;-><init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivity;)V

    iput-object v3, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->mGuiHandler:Landroid/os/Handler;

    .line 198
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$AnimationThread;

    invoke-direct {v3, p0, v6}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$AnimationThread;-><init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivity;Lcom/sec/android/app/kieswifi/ui/ConnectActivity$1;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 199
    .local v0, animationThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 201
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$SyncConnectionThread;

    invoke-direct {v3, p0, v6}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$SyncConnectionThread;-><init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivity;Lcom/sec/android/app/kieswifi/ui/ConnectActivity$1;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 202
    .local v2, syncconnectionThread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_29
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 8
    .parameter "id"

    .prologue
    const v5, 0x7f070004

    .line 412
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 413
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_54

    .line 466
    new-instance v1, Lcom/sec/android/app/kieswifi/view/PopupView;

    invoke-direct {v1, p0}, Lcom/sec/android/app/kieswifi/view/PopupView;-><init>(Landroid/content/Context;)V

    .line 467
    .local v1, dialogView:Lcom/sec/android/app/kieswifi/view/PopupView;
    const v2, 0x7f070002

    invoke-virtual {p0, v2}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/kieswifi/view/PopupView;->setPopupMessage(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$7;

    invoke-direct {v3, p0, p1}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$7;-><init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivity;I)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 482
    .end local v1           #dialogView:Lcom/sec/android/app/kieswifi/view/PopupView;
    :goto_26
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 415
    :pswitch_2b
    const/high16 v2, 0x7f07

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070010

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070003

    new-instance v4, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$6;

    invoke-direct {v4, p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$6;-><init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$5;

    invoke-direct {v3, p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$5;-><init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivity;)V

    invoke-virtual {v2, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_26

    .line 413
    :pswitch_data_54
    .packed-switch 0x44c
        :pswitch_2b
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 7

    .prologue
    .line 346
    const/4 v3, 0x1

    const-string v4, "hConnectActivity Destroy"

    invoke-static {v3, v4}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 348
    iget-object v3, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v3, :cond_12

    .line 349
    iget-object v3, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 350
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 353
    :cond_12
    iget-object v3, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->mGuiHandler:Landroid/os/Handler;

    if-eqz v3, :cond_1d

    .line 354
    iget-object v3, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->mGuiHandler:Landroid/os/Handler;

    const/16 v4, 0x3f0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 356
    :cond_1d
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->fileDelete()V

    .line 357
    const-string v3, ""

    sput-object v3, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->deviceName:Ljava/lang/String;

    .line 358
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 359
    .local v1, notiMgr:Landroid/app/NotificationManager;
    const/16 v3, 0x539

    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 365
    :try_start_31
    iget-object v3, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->mUSBReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_36
    .catch Ljava/lang/IllegalArgumentException; {:try_start_31 .. :try_end_36} :catch_47

    .line 373
    :goto_36
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.intent.action.KIES_WSSERVICE_STOP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 374
    .local v2, sendIntent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 375
    invoke-virtual {p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->ServerSocket_Close()I

    .line 376
    invoke-super {p0}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->onDestroy()V

    .line 377
    return-void

    .line 367
    .end local v2           #sendIntent:Landroid/content/Intent;
    :catch_47
    move-exception v0

    .line 369
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const/4 v3, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receiver Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    goto :goto_36
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 336
    invoke-super {p0}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->onPause()V

    .line 337
    const/4 v0, 0x1

    const-string v1, "hConnectActivity Pause"

    invoke-static {v0, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 338
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 341
    invoke-super {p0}, Lcom/sec/android/app/kieswifi/ui/AbstractUpnpActivity;->onResume()V

    .line 342
    const/4 v0, 0x1

    const-string v1, "ConnectActivity Resume"

    invoke-static {v0, v1}, Lcom/sec/android/app/kieswifi/KiesWiFiDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 343
    return-void
.end method

.method public viewSetting()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 250
    const v0, 0x7f050007

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->waitProgress:Landroid/widget/ProgressBar;

    .line 251
    const v0, 0x7f050008

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->waitText:Landroid/widget/TextView;

    .line 253
    const v0, 0x7f050006

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->wait_bg:Landroid/widget/LinearLayout;

    .line 254
    const v0, 0x7f050009

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->wait_confirm_bg:Landroid/widget/LinearLayout;

    .line 256
    const v0, 0x7f05000a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->waitConfirm:Landroid/widget/TextView;

    .line 257
    sget-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->waitConfirm:Landroid/widget/TextView;

    const v1, 0x7f07000d

    new-array v2, v5, [Ljava/lang/Object;

    sget-object v3, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->deviceName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    const v0, 0x7f05000b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->connect_text:Landroid/widget/RelativeLayout;

    .line 260
    const v0, 0x7f05000c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->connectedText:Landroid/widget/TextView;

    .line 261
    sget-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->connectedText:Landroid/widget/TextView;

    const v1, 0x7f07000e

    new-array v2, v5, [Ljava/lang/Object;

    sget-object v3, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->deviceName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    const v0, 0x7f05000d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->syncText:Landroid/widget/TextView;

    .line 264
    sget-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->syncText:Landroid/widget/TextView;

    const v1, 0x7f07000f

    new-array v2, v5, [Ljava/lang/Object;

    sget-object v3, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->deviceName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    const v0, 0x7f05000f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->mCancelButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 267
    const v0, 0x7f05000e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->mCancelBtnView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    .line 268
    sget-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->mCancelBtnView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 269
    sget-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->mCancelButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    new-instance v1, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$2;-><init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    const v0, 0x7f050011

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->mDisconnectButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    .line 293
    const v0, 0x7f050010

    invoke-virtual {p0, v0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    sput-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->mDisconnBtnView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    .line 294
    sget-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->mDisconnBtnView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 295
    sget-object v0, Lcom/sec/android/app/kieswifi/ui/ConnectActivity;->mDisconnectButton:Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;

    new-instance v1, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/kieswifi/ui/ConnectActivity$3;-><init>(Lcom/sec/android/app/kieswifi/ui/ConnectActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSoftkeyItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    return-void
.end method
