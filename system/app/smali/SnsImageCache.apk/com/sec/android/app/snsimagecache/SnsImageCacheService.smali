.class public Lcom/sec/android/app/snsimagecache/SnsImageCacheService;
.super Landroid/app/Service;
.source "SnsImageCacheService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/snsimagecache/SnsImageCacheService$DoDeliverResponse;
    }
.end annotation


# static fields
.field private static mClientAppID:I

.field public static mbIsLoggable:Z


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mFramework:Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;

.field private mHandler:Landroid/os/Handler;

.field private mHttpMgr:Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;

.field private final mSnsImageCacheServiceBinder:Lcom/sec/android/app/snsimagecache/ISnsImageCacheService$Stub;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 50
    sput v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->mClientAppID:I

    .line 52
    sput-boolean v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->mbIsLoggable:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 55
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 222
    new-instance v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheService$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/snsimagecache/SnsImageCacheService$2;-><init>(Lcom/sec/android/app/snsimagecache/SnsImageCacheService;)V

    iput-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->mSnsImageCacheServiceBinder:Lcom/sec/android/app/snsimagecache/ISnsImageCacheService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/snsimagecache/SnsImageCacheService;)Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->mHttpMgr:Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/snsimagecache/SnsImageCacheService;)Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->mFramework:Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/snsimagecache/SnsImageCacheService;Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->invokeCallback(Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;)V

    return-void
.end method

.method static synthetic access$300()I
    .registers 1

    .prologue
    .line 42
    sget v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->mClientAppID:I

    return v0
.end method

.method static synthetic access$308()I
    .registers 2

    .prologue
    .line 42
    sget v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->mClientAppID:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->mClientAppID:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/snsimagecache/SnsImageCacheService;)Landroid/os/RemoteCallbackList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/snsimagecache/SnsImageCacheService;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private initMainThreadHandler()V
    .registers 2

    .prologue
    .line 61
    new-instance v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheService$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/snsimagecache/SnsImageCacheService$1;-><init>(Lcom/sec/android/app/snsimagecache/SnsImageCacheService;)V

    iput-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->mHandler:Landroid/os/Handler;

    .line 82
    return-void
.end method

.method private invokeCallback(Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;)V
    .registers 13
    .parameter "data"

    .prologue
    .line 123
    const-string v1, "SNS_IMAGE_CACHE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeCallback() : reqID = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;->getReqID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], result = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;->isSuccess()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v1, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v10

    .line 129
    .local v10, n:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_37
    if-ge v9, v10, :cond_7c

    .line 130
    :try_start_39
    iget-object v1, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v9}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    move-object v8, v0

    .line 131
    .local v8, handle:Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;->getAppID()I

    move-result v2

    if-ne v1, v2, :cond_6e

    .line 132
    iget-object v1, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v9}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;

    invoke-virtual {p1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;->getReqID()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;->isSuccess()Z

    move-result v3

    invoke-virtual {p1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;->getStatusCode()I

    move-result v5

    invoke-virtual {p1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;->getDescription()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;->onImageGetResponse(IZLandroid/net/Uri;ILjava/lang/String;)V
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_6e} :catch_71

    .line 129
    :cond_6e
    add-int/lit8 v9, v9, 0x1

    goto :goto_37

    .line 137
    .end local v8           #handle:Ljava/lang/Integer;
    :catch_71
    move-exception v7

    .line 138
    .local v7, e:Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    .line 139
    const-string v1, "SNS_IMAGE_CACHE"

    const-string v2, "SnsImageCacheService : invokeCallback() : FAILED !!!"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_7c
    iget-object v1, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 143
    return-void
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public newDeliverResponseRunnable(Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;)Ljava/lang/Runnable;
    .registers 3
    .parameter "data"

    .prologue
    .line 93
    new-instance v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheService$DoDeliverResponse;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/snsimagecache/SnsImageCacheService$DoDeliverResponse;-><init>(Lcom/sec/android/app/snsimagecache/SnsImageCacheService;Lcom/sec/android/app/snsimagecache/SnsImageCacheCallbackData;)V

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .parameter

    .prologue
    .line 204
    const-string v0, "SNS_IMAGE_CACHE"

    const-string v1, "SnsImageCacheService : onBind() Called !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const-class v0, Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 207
    iget-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->mSnsImageCacheServiceBinder:Lcom/sec/android/app/snsimagecache/ISnsImageCacheService$Stub;

    .line 210
    :goto_19
    return-object v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 174
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 176
    const-string v0, "SNS_IMAGE_CACHE"

    const-string v1, "SnsImageCacheService : onCreate() Called !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-direct {p0}, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->initMainThreadHandler()V

    .line 179
    new-instance v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;

    invoke-direct {v0, p0}, Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->mFramework:Lcom/sec/android/app/snsimagecache/SnsImageCacheFramework;

    .line 180
    new-instance v0, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;

    invoke-direct {v0, p0}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->mHttpMgr:Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->mHttpMgr:Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;

    invoke-virtual {v0}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_2a

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/snsimagecache/SnsImageCacheService;->mHttpMgr:Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;

    invoke-virtual {v0}, Lcom/sec/android/app/snsimagecache/SnsImageCacheHttpMgr;->initAndStart()V

    .line 186
    :cond_2a
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 190
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 191
    const-string v0, "SNS_IMAGE_CACHE"

    const-string v1, "SnsImageCacheService : onDestroy() Called !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 6
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 196
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 198
    const-string v0, "SNS_IMAGE_CACHE"

    const-string v1, "SnsImageCacheService : onStartCommand() Called !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v0, 0x3

    return v0
.end method
