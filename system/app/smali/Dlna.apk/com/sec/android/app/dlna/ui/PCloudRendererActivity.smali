.class public Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;
.super Landroid/app/Activity;
.source "PCloudRendererActivity.java"

# interfaces
.implements Lcom/samsung/upnp/device/DeviceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$AnimationThread;
    }
.end annotation


# instance fields
.field protected final CONNECT_WIFI:I

.field protected final FILL_LIST:I

.field protected final REFRESH_HEADER:I

.field protected final REFRESH_LIST:I

.field protected final STOP_ANIMATION:I

.field protected final WIFI_SETTING_START_CODE:I

.field animationThread:Ljava/lang/Thread;

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

.field private emptytext:Landroid/widget/TextView;

.field private emptyview:Landroid/widget/ImageView;

.field private headerIcon:Landroid/widget/ProgressBar;

.field private mAllShareReceiver:Landroid/content/BroadcastReceiver;

.field mHandler:Landroid/os/Handler;

.field private mStopAnimation:Z

.field private refreshButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 79
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->FILL_LIST:I

    .line 80
    const/16 v0, 0x1f6

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->REFRESH_LIST:I

    .line 81
    const/16 v0, 0x3ef

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->WIFI_SETTING_START_CODE:I

    .line 82
    const/16 v0, 0x44c

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->REFRESH_HEADER:I

    .line 83
    const/16 v0, 0x6f1

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->CONNECT_WIFI:I

    .line 84
    const/16 v0, 0x44d

    iput v0, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->STOP_ANIMATION:I

    .line 86
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->refreshButton:Landroid/widget/Button;

    .line 87
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->cancelButton:Landroid/widget/Button;

    .line 89
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->deviceListView:Landroid/widget/ListView;

    .line 90
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->deviceAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    .line 91
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->mHandler:Landroid/os/Handler;

    .line 93
    iput-object v1, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->headerIcon:Landroid/widget/ProgressBar;

    .line 99
    new-instance v0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$1;-><init>(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->mAllShareReceiver:Landroid/content/BroadcastReceiver;

    .line 388
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->deviceList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->deviceAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->mStopAnimation:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->mStopAnimation:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->emptytext:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->emptyview:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->headerIcon:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private fillDeviceList()V
    .registers 3

    .prologue
    .line 384
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_b

    .line 385
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 386
    :cond_b
    return-void
.end method

.method private tempFunction()V
    .registers 15

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 492
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2b

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v12, "PCloudIntent.SEND_MULTI"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2b

    .line 493
    const-string v11, "PCloud.URLs"

    invoke-virtual {v1, v11}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 494
    .local v10, urls:Ljava/util/ArrayList;
    const-string v11, "PCloud.MetaURLs"

    invoke-virtual {v1, v11}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 495
    .local v8, metaUrls:Ljava/util/ArrayList;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 497
    .local v7, metaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v10, :cond_2b

    if-nez v8, :cond_2c

    .line 516
    .end local v7           #metaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v8           #metaUrls:Ljava/util/ArrayList;
    .end local v10           #urls:Ljava/util/ArrayList;
    :cond_2b
    return-void

    .line 499
    .restart local v7       #metaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v8       #metaUrls:Ljava/util/ArrayList;
    .restart local v10       #urls:Ljava/util/ArrayList;
    :cond_2c
    const/4 v2, 0x0

    .local v2, idx:I
    :goto_2d
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v2, v11, :cond_51

    .line 501
    :try_start_33
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    new-instance v12, Lcom/sec/android/app/DefaultHttpResponseHandler;

    invoke-direct {v12}, Lcom/sec/android/app/DefaultHttpResponseHandler;-><init>()V

    invoke-static {v11, v12}, Lcom/sec/android/app/dlna/PCloudUtil;->getStringFromUrl(Ljava/lang/String;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/String;

    move-result-object v5

    .line 502
    .local v5, jsonResult:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/dlna/PCloudUtil;->getContentItem(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v6

    .line 503
    .local v6, mapString:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_49} :catch_4c

    .line 499
    .end local v5           #jsonResult:Ljava/lang/String;
    .end local v6           #mapString:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 504
    :catch_4c
    move-exception v0

    .line 505
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_49

    .line 509
    .end local v0           #e:Ljava/io/IOException;
    :cond_51
    const/4 v4, 0x0

    .local v4, j:I
    :goto_52
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v4, v11, :cond_2b

    .line 510
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    const-string v12, "contentUrl"

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    invoke-static {v11}, Lcom/sec/android/app/dlna/PCloudUtil;->ItemInfo2ContentItem(Ljava/util/HashMap;)Lcom/samsung/api/ContentItem;

    move-result-object v3

    .line 512
    .local v3, item:Lcom/samsung/api/ContentItem;
    new-instance v9, Lcom/sec/android/app/dlna/model/PlaylistItem;

    const/4 v11, 0x0

    invoke-direct {v9, v11, v3}, Lcom/sec/android/app/dlna/model/PlaylistItem;-><init>(Lcom/samsung/api/DeviceItem;Lcom/samsung/api/ContentItem;)V

    .line 513
    .local v9, playListItem:Lcom/sec/android/app/dlna/model/PlaylistItem;
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPlaylist()Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/sec/android/app/dlna/model/Playlist;->add(Lcom/sec/android/app/dlna/model/PlaylistItem;)Z

    .line 509
    add-int/lit8 v4, v4, 0x1

    goto :goto_52
.end method


# virtual methods
.method public deviceAdded(Lcom/samsung/upnp/Device;)V
    .registers 2
    .parameter "dev"

    .prologue
    .line 519
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->fillDeviceList()V

    .line 520
    return-void
.end method

.method public deviceRemoved(Lcom/samsung/upnp/Device;)V
    .registers 2
    .parameter "dev"

    .prologue
    .line 523
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->fillDeviceList()V

    .line 524
    return-void
.end method

.method protected isConnected()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 300
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 301
    .local v1, wifi:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-nez v4, :cond_10

    .line 309
    :cond_f
    :goto_f
    return v3

    .line 304
    :cond_10
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 305
    .local v2, wifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    .line 306
    .local v0, ipAddress:I
    if-eqz v0, :cond_f

    .line 309
    const/4 v3, 0x1

    goto :goto_f
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .registers 6
    .parameter "theme"
    .parameter "resid"
    .parameter "first"

    .prologue
    .line 288
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 289
    const v0, 0x1030059

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 290
    return-void
.end method

.method public onBackPressed()V
    .registers 4

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 280
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PCloudIntent.SEND_MULTI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MAIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 282
    :cond_1c
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dlna/DLNAManager;->terminate()V

    .line 284
    :cond_23
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 285
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 110
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0, v5}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->requestWindowFeature(I)Z

    .line 113
    const v3, 0x7f030004

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->setContentView(I)V

    .line 115
    const v3, 0x7f07001f

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->refreshButton:Landroid/widget/Button;

    .line 116
    const v3, 0x7f070020

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->cancelButton:Landroid/widget/Button;

    .line 118
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->refreshButton:Landroid/widget/Button;

    new-instance v4, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$2;

    invoke-direct {v4, p0}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$2;-><init>(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->cancelButton:Landroid/widget/Button;

    new-instance v4, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$3;

    invoke-direct {v4, p0}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$3;-><init>(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_75

    const-string v3, "PCloudIntent.SEND_MULTI"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_52

    const-string v3, "MAIN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_75

    .line 135
    :cond_52
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v3

    iput-boolean v5, v3, Lcom/sec/android/app/dlna/DLNAManager;->onlyController:Z

    .line 136
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/dlna/DLNAManager;->init(Landroid/content/Context;)V

    .line 137
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/DLNAManager;->getUserControl()Lcom/sec/android/app/dlna/usermodel/UserControlModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/usermodel/UserControlModel;->getPlaylist()Lcom/sec/android/app/dlna/model/Playlist;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dlna/model/Playlist;->clear()V

    .line 139
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->tempFunction()V

    .line 142
    :cond_75
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.startPcloud"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v2, intentAddin:Landroid/content/Intent;
    :try_start_7c
    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_7f} :catch_106

    .line 149
    :goto_7f
    const v3, 0x7f070014

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->deviceListView:Landroid/widget/ListView;

    .line 151
    :try_start_8a
    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x1e

    invoke-virtual {v3, v4, v5}, Lcom/samsung/api/DigitalMediaControllerAPI;->getDMRList(II)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->deviceList:Ljava/util/List;
    :try_end_97
    .catch Lcom/samsung/api/DMCAPIException; {:try_start_8a .. :try_end_97} :catch_110

    .line 156
    :goto_97
    new-instance v3, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    const v4, 0x7f030006

    iget-object v5, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->deviceList:Ljava/util/List;

    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v6

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/sec/android/app/dlna/view/IControlPointInfo;)V

    iput-object v3, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->deviceAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    .line 157
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->deviceListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->deviceAdapter:Lcom/sec/android/app/dlna/view/DLNAContentsAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 158
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->deviceListView:Landroid/widget/ListView;

    new-instance v4, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$4;

    invoke-direct {v4, p0}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$4;-><init>(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 172
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->mAllShareReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.startAllShare"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 173
    const v3, 0x7f07001c

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->headerIcon:Landroid/widget/ProgressBar;

    .line 174
    const v3, 0x7f070013

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->emptytext:Landroid/widget/TextView;

    .line 175
    const v3, 0x7f070012

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->emptyview:Landroid/widget/ImageView;

    .line 177
    new-instance v3, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$5;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$5;-><init>(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)V

    iput-object v3, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->mHandler:Landroid/os/Handler;

    .line 235
    iput-boolean v7, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->mStopAnimation:Z

    .line 236
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->headerIcon:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 237
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$AnimationThread;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$AnimationThread;-><init>(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$1;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->animationThread:Ljava/lang/Thread;

    .line 238
    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->animationThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 240
    return-void

    .line 145
    :catch_106
    move-exception v1

    .line 146
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "DLNA"

    const-string v4, "Fail to broadcast \'startPcloud intent\'"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7f

    .line 152
    .end local v1           #e:Ljava/lang/Exception;
    :catch_110
    move-exception v1

    .line 153
    .local v1, e:Lcom/samsung/api/DMCAPIException;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->deviceList:Ljava/util/List;

    .line 154
    invoke-virtual {v1}, Lcom/samsung/api/DMCAPIException;->printStackTrace()V

    goto/16 :goto_97
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    .line 314
    packed-switch p1, :pswitch_data_48

    .line 351
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_7
    return-object v1

    .line 316
    :pswitch_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 317
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f09000f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090004

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09003f

    new-instance v3, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$8;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$8;-><init>(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$7;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$7;-><init>(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity$6;-><init>(Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 349
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_7

    .line 314
    :pswitch_data_48
    .packed-switch 0x6f1
        :pswitch_8
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->mAllShareReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_9

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->mAllShareReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 274
    :cond_9
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 275
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .parameter "intent"

    .prologue
    .line 244
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 245
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 266
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 267
    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/api/DigitalMediaControllerAPI;->removeDeviceChangeListener(Lcom/samsung/upnp/device/DeviceChangeListener;)Z

    .line 268
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    const/16 v1, 0x6f1

    .line 249
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 250
    invoke-virtual {p0}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 251
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->removeDialog(I)V

    .line 252
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->showDialog(I)V

    .line 255
    :goto_11
    invoke-static {}, Lcom/samsung/api/DigitalMediaControllerAPI;->getInstance()Lcom/samsung/api/DigitalMediaControllerAPI;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/api/DigitalMediaControllerAPI;->addDeviceChangeListener(Lcom/samsung/upnp/device/DeviceChangeListener;)Z

    .line 256
    invoke-direct {p0}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->fillDeviceList()V

    .line 257
    return-void

    .line 254
    :cond_1c
    invoke-virtual {p0, v1}, Lcom/sec/android/app/dlna/ui/PCloudRendererActivity;->removeDialog(I)V

    goto :goto_11
.end method

.method protected onStart()V
    .registers 1

    .prologue
    .line 261
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 262
    return-void
.end method
