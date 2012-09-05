.class public Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;
.super Ljava/lang/Object;
.source "WidgetServiceConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$MessageMap;,
        Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$HandleMessage;
    }
.end annotation


# static fields
.field private static instance:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;


# instance fields
.field bImageServiceConnected:Z

.field bReqServiceConnected:Z

.field bServiceConnected:Z

.field public bind:Z

.field protected img_msg:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$MessageMap;",
            ">;"
        }
    .end annotation
.end field

.field private mActorList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAppId:I

.field public mAppImageId:I

.field private mCallback:Lcom/sec/android/app/sns/ISnsRequesterCallback;

.field private mContext:Landroid/content/Context;

.field private mIServiceConnectListener:Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/IServiceConnectListener;

.field private mImageCallback:Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;

.field protected mImageService:Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;

.field private mMessageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$HandleMessage;",
            ">;"
        }
    .end annotation
.end field

.field protected mReqConnection:Landroid/content/ServiceConnection;

.field private mRequester:Lcom/sec/android/app/sns/ISnsRequester;

.field private mService:Lcom/sec/android/app/sns/ISnsService;

.field protected mSvcConnection:Landroid/content/ServiceConnection;

.field private mSvcImageConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->instance:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->bind:Z

    .line 43
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->img_msg:Ljava/util/HashMap;

    .line 45
    iput v1, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mAppImageId:I

    .line 47
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->bServiceConnected:Z

    .line 48
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->bReqServiceConnected:Z

    .line 49
    iput-boolean v1, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->bImageServiceConnected:Z

    .line 51
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mService:Lcom/sec/android/app/sns/ISnsService;

    .line 52
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mImageService:Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;

    .line 54
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    .line 56
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mCallback:Lcom/sec/android/app/sns/ISnsRequesterCallback;

    .line 57
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mImageCallback:Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;

    .line 59
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mSvcConnection:Landroid/content/ServiceConnection;

    .line 60
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mReqConnection:Landroid/content/ServiceConnection;

    .line 61
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mSvcImageConnection:Landroid/content/ServiceConnection;

    .line 62
    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mIServiceConnectListener:Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/IServiceConnectListener;

    .line 66
    iput-object p1, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mContext:Landroid/content/Context;

    .line 68
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->initServiceFlag()V

    .line 70
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->initServiceCallback()V

    .line 71
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->initServiceConnection()V

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mActorList:Ljava/util/HashMap;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->img_msg:Ljava/util/HashMap;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mMessageMap:Ljava/util/HashMap;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;)Lcom/sec/android/app/sns/ISnsService;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mService:Lcom/sec/android/app/sns/ISnsService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;Lcom/sec/android/app/sns/ISnsService;)Lcom/sec/android/app/sns/ISnsService;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mService:Lcom/sec/android/app/sns/ISnsService;

    return-object p1
.end method

.method static synthetic access$102(Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mAppId:I

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;)Lcom/sec/android/app/sns/ISnsRequesterCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mCallback:Lcom/sec/android/app/sns/ISnsRequesterCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->getAppId()V

    return-void
.end method

.method static synthetic access$402(Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;Lcom/sec/android/app/sns/ISnsRequester;)Lcom/sec/android/app/sns/ISnsRequester;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;)Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mImageCallback:Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mMessageMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getAppId()V
    .registers 6

    .prologue
    .line 305
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mService:Lcom/sec/android/app/sns/ISnsService;

    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mCallback:Lcom/sec/android/app/sns/ISnsRequesterCallback;

    invoke-interface {v1, v2}, Lcom/sec/android/app/sns/ISnsService;->registerCallback(Lcom/sec/android/app/sns/ISnsRequesterCallback;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mAppId:I

    .line 306
    const-string v1, "WidgetServiceConnector"

    const-string v2, "getAppId"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAppId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mAppId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_26} :catch_27

    .line 312
    :goto_26
    return-void

    .line 308
    :catch_27
    move-exception v0

    .line 310
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_26
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;
    .registers 3
    .parameter

    .prologue
    .line 244
    const-class v1, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    monitor-enter v1

    .line 246
    :try_start_3
    sget-object v0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->instance:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    if-nez v0, :cond_e

    .line 248
    new-instance v0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->instance:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    .line 250
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 251
    sget-object v0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->instance:Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;

    return-object v0

    .line 250
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method


# virtual methods
.method public BindServiceStart()V
    .registers 1

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->bindService()V

    .line 410
    return-void
.end method

.method public ImageServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .parameter "name"
    .parameter "service"

    .prologue
    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->bImageServiceConnected:Z

    .line 258
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->checkConnected()V

    .line 259
    return-void
.end method

.method public ImageServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3
    .parameter "name"

    .prologue
    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->bImageServiceConnected:Z

    .line 264
    return-void
.end method

.method public RequestServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .parameter "name"
    .parameter "service"

    .prologue
    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->bReqServiceConnected:Z

    .line 269
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->checkConnected()V

    .line 270
    return-void
.end method

.method public ServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4
    .parameter "name"
    .parameter "service"

    .prologue
    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->bServiceConnected:Z

    .line 281
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->checkConnected()V

    .line 282
    return-void
.end method

.method public bindService()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 414
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 415
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/sns/ISnsService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mSvcConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 416
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/sns/ISnsRequester;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mReqConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 417
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mSvcImageConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 418
    iput-boolean v3, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->bind:Z

    .line 419
    return-void
.end method

.method public checkConnected()V
    .registers 2

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->bServiceConnected:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->bReqServiceConnected:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->bImageServiceConnected:Z

    if-eqz v0, :cond_1a

    .line 295
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/ImageCacheManager;->setService(Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;)V

    .line 296
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mIServiceConnectListener:Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/IServiceConnectListener;

    invoke-interface {v0}, Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/IServiceConnectListener;->onServiceConnected()V

    .line 298
    :cond_1a
    return-void
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 457
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 459
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->unbindService()V

    .line 460
    return-void
.end method

.method public getImage(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)I
    .registers 13
    .parameter "mContext"
    .parameter "obj"
    .parameter "photoURL"

    .prologue
    .line 486
    iget-object v4, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->img_msg:Ljava/util/HashMap;

    monitor-enter v4

    .line 488
    const/4 v1, -0x1

    .line 491
    .local v1, ret:I
    :try_start_4
    iget-object v3, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mImageService:Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;

    iget v5, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mAppImageId:I

    invoke-interface {v3, v5, p3}, Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;->getImage(ILjava/lang/String;)I

    move-result v1

    .line 493
    if-ltz v1, :cond_1f

    .line 495
    iget-object v3, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->img_msg:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$MessageMap;

    const/16 v7, 0x20

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8, p1, p2}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$MessageMap;-><init>(IILandroid/content/Context;Ljava/lang/Object;)V

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    :cond_1f
    const-string v3, "WidgetServiceConnector"

    const-string v5, "getImage()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reqID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", photoURL = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "SnsType = null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_49
    .catchall {:try_start_4 .. :try_end_49} :catchall_53
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_49} :catch_4c

    .line 505
    :try_start_49
    monitor-exit v4
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_57

    move v2, v1

    .end local v1           #ret:I
    .local v2, ret:I
    :goto_4b
    return v2

    .line 499
    .end local v2           #ret:I
    .restart local v1       #ret:I
    :catch_4c
    move-exception v0

    .line 501
    .local v0, e:Landroid/os/RemoteException;
    :try_start_4d
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_53

    .line 505
    :try_start_50
    monitor-exit v4

    move v2, v1

    .end local v1           #ret:I
    .restart local v2       #ret:I
    goto :goto_4b

    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #ret:I
    .restart local v1       #ret:I
    :catchall_53
    move-exception v3

    monitor-exit v4

    move v2, v1

    .end local v1           #ret:I
    .restart local v2       #ret:I
    goto :goto_4b

    .line 508
    .end local v2           #ret:I
    .restart local v1       #ret:I
    :catchall_57
    move-exception v3

    monitor-exit v4
    :try_end_59
    .catchall {:try_start_50 .. :try_end_59} :catchall_57

    throw v3
.end method

.method protected initImageCacheCallback()V
    .registers 4

    .prologue
    .line 200
    new-instance v0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$5;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$5;-><init>(Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mImageCallback:Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;

    .line 239
    const-string v0, "WidgetServiceConnector"

    const-string v1, "initImageCacheCallback()"

    const-string v2, "init callback is completed"

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public initRequesterCallback()V
    .registers 2

    .prologue
    .line 165
    new-instance v0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$4;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$4;-><init>(Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mCallback:Lcom/sec/android/app/sns/ISnsRequesterCallback;

    .line 196
    return-void
.end method

.method public initServiceCallback()V
    .registers 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->initRequesterCallback()V

    .line 88
    invoke-virtual {p0}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->initImageCacheCallback()V

    .line 89
    return-void
.end method

.method public initServiceConnection()V
    .registers 2

    .prologue
    .line 96
    new-instance v0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$1;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$1;-><init>(Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mSvcConnection:Landroid/content/ServiceConnection;

    .line 121
    new-instance v0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$2;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$2;-><init>(Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mReqConnection:Landroid/content/ServiceConnection;

    .line 135
    new-instance v0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$3;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$3;-><init>(Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mSvcImageConnection:Landroid/content/ServiceConnection;

    .line 160
    return-void
.end method

.method public initServiceFlag()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->bServiceConnected:Z

    .line 81
    iput-boolean v0, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->bReqServiceConnected:Z

    .line 82
    iput-boolean v0, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->bImageServiceConnected:Z

    .line 83
    return-void
.end method

.method public requestActivityRetrieve()I
    .registers 8

    .prologue
    .line 316
    const-string v2, "WidgetServiceConnector"

    const-string v3, "requestActivityRetrieve()"

    const-string v4, "start requestActivityRetrieve"

    invoke-static {v2, v3, v4}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const/4 v1, -0x1

    .line 321
    .local v1, requestId:I
    :try_start_a
    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    if-eqz v2, :cond_1a

    .line 323
    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    iget v3, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mAppId:I

    iget-object v4, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mActorList:Ljava/util/HashMap;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/sec/android/app/sns/ISnsRequester;->activityRetrieve(ILjava/util/Map;ZZ)I

    move-result v1

    .line 326
    :cond_1a
    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mMessageMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$HandleMessage;

    const/4 v5, 0x5

    invoke-direct {v4, p0, v1, v5}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$HandleMessage;-><init>(Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;II)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_29} :catch_2a

    .line 333
    :goto_29
    return v1

    .line 328
    :catch_2a
    move-exception v0

    .line 330
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_29
.end method

.method public requestActivityRetrieveNext()I
    .registers 7

    .prologue
    .line 338
    const-string v2, "WidgetServiceConnector"

    const-string v3, "requestActivityRetrieveNext()"

    const-string v4, "start requestActivityRetrieveNext"

    invoke-static {v2, v3, v4}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const/4 v1, -0x1

    .line 344
    .local v1, requestId:I
    :try_start_a
    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    if-eqz v2, :cond_19

    .line 346
    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    iget v3, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mAppId:I

    iget-object v4, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mActorList:Ljava/util/HashMap;

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/sec/android/app/sns/ISnsRequester;->activityRetrieveNext(ILjava/util/Map;Z)I

    move-result v1

    .line 349
    :cond_19
    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mMessageMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$HandleMessage;

    const/16 v5, 0x2b

    invoke-direct {v4, p0, v1, v5}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$HandleMessage;-><init>(Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;II)V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_29} :catch_2a

    .line 356
    :goto_29
    return v1

    .line 351
    :catch_2a
    move-exception v0

    .line 353
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_29
.end method

.method public requestDeepLinkGet(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 18
    .parameter "snsSp"
    .parameter "actorId"
    .parameter "actorName"
    .parameter "mediaWapPhotoId"
    .parameter "MediaType"

    .prologue
    .line 361
    const-string v0, "WidgetServiceConnector"

    const-string v1, "requestDeepLinkGet()"

    const-string v2, "start requestDeepLinkGet"

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const/4 v10, -0x1

    .line 364
    .local v10, requestId:I
    const/4 v5, 0x0

    .line 367
    .local v5, peopleId:Ljava/lang/String;
    packed-switch p1, :pswitch_data_5e

    .line 376
    :pswitch_e
    move-object v5, p2

    .line 380
    :goto_f
    :try_start_f
    iget-object v11, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    monitor-enter v11
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_59

    .line 382
    :try_start_12
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mRequester:Lcom/sec/android/app/sns/ISnsRequester;

    iget v1, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mAppId:I

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v2, p1

    move-object/from16 v3, p5

    move-object/from16 v6, p4

    invoke-interface/range {v0 .. v8}, Lcom/sec/android/app/sns/ISnsRequester;->serviceProviderDeepLinkGet(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 392
    if-gez v10, :cond_45

    .line 394
    const-string v0, "WidgetServiceConnector"

    const-string v1, "requestProfileUrl()"

    const-string v2, "deeplink req_id is -1!!!!!!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/widgetapp/socialhub/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :goto_2d
    monitor-exit v11
    :try_end_2e
    .catchall {:try_start_12 .. :try_end_2e} :catchall_56

    .line 405
    :goto_2e
    return v10

    .line 370
    :pswitch_2f
    move-object v5, p2

    .line 371
    goto :goto_f

    .line 373
    :pswitch_31
    :try_start_31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_43} :catch_59

    move-result-object v5

    .line 374
    goto :goto_f

    .line 398
    :cond_45
    :try_start_45
    iget-object v0, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mMessageMap:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$HandleMessage;

    const/16 v3, 0x28

    invoke-direct {v2, p0, v10, v3}, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector$HandleMessage;-><init>(Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d

    .line 400
    :catchall_56
    move-exception v0

    monitor-exit v11
    :try_end_58
    .catchall {:try_start_45 .. :try_end_58} :catchall_56

    :try_start_58
    throw v0
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_59} :catch_59

    .line 401
    :catch_59
    move-exception v9

    .line 402
    .local v9, e:Landroid/os/RemoteException;
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2e

    .line 367
    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_e
        :pswitch_31
    .end packed-switch
.end method

.method public setServiceConnectListener(Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/IServiceConnectListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mIServiceConnectListener:Lcom/sec/android/widgetapp/socialhub/feedslist/imagecache/IServiceConnectListener;

    .line 93
    return-void
.end method

.method public unbindService()V
    .registers 5

    .prologue
    .line 425
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mService:Lcom/sec/android/app/sns/ISnsService;

    if-eqz v2, :cond_b

    .line 427
    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mService:Lcom/sec/android/app/sns/ISnsService;

    iget-object v3, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mCallback:Lcom/sec/android/app/sns/ISnsRequesterCallback;

    invoke-interface {v2, v3}, Lcom/sec/android/app/sns/ISnsService;->unregisterCallback(Lcom/sec/android/app/sns/ISnsRequesterCallback;)V

    .line 430
    :cond_b
    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mImageService:Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;

    if-eqz v2, :cond_16

    .line 432
    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mImageService:Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;

    iget-object v3, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mImageCallback:Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;

    invoke-interface {v2, v3}, Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;->unregisterCallback(Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_2f

    .line 442
    :cond_16
    :goto_16
    :try_start_16
    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 443
    .local v0, appContext:Landroid/content/Context;
    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mSvcImageConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 444
    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mReqConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 445
    iget-object v2, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->mSvcImageConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2b} :catch_34

    .line 451
    .end local v0           #appContext:Landroid/content/Context;
    :goto_2b
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/widgetapp/socialhub/util/WidgetServiceConnector;->bind:Z

    .line 452
    return-void

    .line 435
    :catch_2f
    move-exception v1

    .line 437
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_16

    .line 447
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_34
    move-exception v1

    .line 449
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2b
.end method
