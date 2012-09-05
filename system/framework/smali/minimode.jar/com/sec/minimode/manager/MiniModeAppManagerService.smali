.class public Lcom/sec/minimode/manager/MiniModeAppManagerService;
.super Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;
.source "MiniModeAppManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/minimode/manager/MiniModeAppManagerService$PolicySplitMode;,
        Lcom/sec/minimode/manager/MiniModeAppManagerService$PolicyMiniMode;,
        Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;,
        Lcom/sec/minimode/manager/MiniModeAppManagerService$ClientDescriptor;
    }
.end annotation


# static fields
.field private static final ATTACH_MSG:I = 0x7

.field private static final CLOSE_MSG:I = 0xb

.field private static final DEBUG:Z = false

.field private static final DEBUG_DUMP:Z = false

.field private static final DEBUG_VERBOSE:Z = false

.field private static final DETACH_MSG:I = 0x8

.field private static final MOVE_MSG:I = 0xa

.field private static final REGISTER_CALLBACK_MSG:I = 0x4

.field private static final REQUEST_FOCUS_MSG:I = 0x6

.field private static final SET_POSITION_MSG:I = 0x9

.field private static final START_MSG:I = 0x1

.field private static final START_WITH_POSITION_MSG:I = 0x2

.field private static final STOP_MSG:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MiniModeAppManager"

.field private static final UNREGISTER_CALLBACK_MSG:I = 0x5


# instance fields
.field private mConnectedMiniAppsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mInstanceStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mMiniModeCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mMiniModeCallbacksHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPolicyMiniMode:Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;

.field private mPolicySplitMode:Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 206
    invoke-direct {p0}, Lcom/sec/android/app/minimode/manager/IMiniModeAppManager$Stub;-><init>()V

    .line 47
    new-instance v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$PolicyMiniMode;

    invoke-direct {v0, p0, v1}, Lcom/sec/minimode/manager/MiniModeAppManagerService$PolicyMiniMode;-><init>(Lcom/sec/minimode/manager/MiniModeAppManagerService;Lcom/sec/minimode/manager/MiniModeAppManagerService$1;)V

    iput-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mPolicyMiniMode:Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;

    .line 48
    new-instance v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$PolicySplitMode;

    invoke-direct {v0, p0, v1}, Lcom/sec/minimode/manager/MiniModeAppManagerService$PolicySplitMode;-><init>(Lcom/sec/minimode/manager/MiniModeAppManagerService;Lcom/sec/minimode/manager/MiniModeAppManagerService$1;)V

    iput-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mPolicySplitMode:Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;

    .line 479
    new-instance v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;

    invoke-direct {v0, p0}, Lcom/sec/minimode/manager/MiniModeAppManagerService$2;-><init>(Lcom/sec/minimode/manager/MiniModeAppManagerService;)V

    iput-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    .line 207
    if-nez p1, :cond_23

    .line 208
    const-string v0, "MiniModeAppManager"

    const-string v1, "MiniModeAppManagerService initial failed!! (context is null)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :goto_22
    return-void

    .line 212
    :cond_23
    iput-object p1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mContext:Landroid/content/Context;

    .line 213
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mPm:Landroid/content/pm/PackageManager;

    .line 214
    new-instance v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$1;

    invoke-direct {v0, p0}, Lcom/sec/minimode/manager/MiniModeAppManagerService$1;-><init>(Lcom/sec/minimode/manager/MiniModeAppManagerService;)V

    iput-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mMiniModeCallbacks:Landroid/os/RemoteCallbackList;

    .line 221
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mMiniModeCallbacksHashMap:Ljava/util/HashMap;

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mConnectedMiniAppsList:Ljava/util/List;

    .line 223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mInstanceStateMap:Ljava/util/HashMap;

    goto :goto_22
.end method

.method static synthetic access$1000(Lcom/sec/minimode/manager/MiniModeAppManagerService;Ljava/util/List;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->dumpList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/minimode/manager/MiniModeAppManagerService;Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->removeDiedCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/minimode/manager/MiniModeAppManagerService;I)Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->getPolicy(I)Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mMiniModeCallbacksHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/minimode/manager/MiniModeAppManagerService;Ljava/util/Map;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->dumpMap(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Landroid/os/RemoteCallbackList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mMiniModeCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/minimode/manager/MiniModeAppManagerService;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mConnectedMiniAppsList:Ljava/util/List;

    return-object v0
.end method

.method private dumpList(Ljava/util/List;)V
    .registers 2
    .parameter "list"

    .prologue
    .line 449
    return-void
.end method

.method private dumpMap(Ljava/util/Map;)V
    .registers 2
    .parameter "map"

    .prologue
    .line 461
    return-void
.end method

.method private getPolicy(I)Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;
    .registers 3
    .parameter "policyMode"

    .prologue
    .line 194
    packed-switch p1, :pswitch_data_c

    .line 202
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 196
    :pswitch_5
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mPolicyMiniMode:Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;

    goto :goto_4

    .line 199
    :pswitch_8
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mPolicySplitMode:Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;

    goto :goto_4

    .line 194
    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method private removeDiedCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;)V
    .registers 8
    .parameter "cb"

    .prologue
    .line 429
    const-string v1, "MiniModeAppManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeDiedCallback() : cb="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    if-eqz p1, :cond_1e

    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mMiniModeCallbacksHashMap:Ljava/util/HashMap;

    if-nez v1, :cond_1f

    .line 439
    :cond_1e
    :goto_1e
    return-void

    .line 433
    :cond_1f
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mMiniModeCallbacksHashMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 434
    const-string v1, "MiniModeAppManager"

    const-string v2, "removeDiedCallback() : remove cb from mMiniModeCallbacksHashMap"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mMiniModeCallbacksHashMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 436
    .local v0, cn:Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 437
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1e
.end method


# virtual methods
.method public closeAll()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 353
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 354
    return-void
.end method

.method public closeOthers(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 359
    if-nez p1, :cond_3

    .line 363
    :goto_2
    return-void

    .line 362
    :cond_3
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2
.end method

.method public destroy()V
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mMiniModeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 228
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mInstanceStateMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 229
    return-void
.end method

.method public getAllInstalledMiniApps()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 420
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 421
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mPm:Landroid/content/pm/PackageManager;

    const/16 v2, 0xc0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getAllRunningMiniApps()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 377
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mConnectedMiniAppsList:Ljava/util/List;

    return-object v0
.end method

.method public declared-synchronized getInstanceState(Landroid/content/ComponentName;)Landroid/os/Bundle;
    .registers 3
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 372
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mInstanceStateMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLastPosition(I)Landroid/graphics/Rect;
    .registers 4
    .parameter "policyMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 290
    invoke-direct {p0, p1}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->getPolicy(I)Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;

    move-result-object v0

    .line 292
    .local v0, policy:Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;
    if-nez v0, :cond_8

    .line 293
    const/4 v1, 0x0

    .line 295
    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0}, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->getLastPosition()Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_7
.end method

.method public getMiniModeAppCallback(Landroid/content/ComponentName;)Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;
    .registers 7
    .parameter "name"

    .prologue
    .line 383
    const/4 v1, 0x0

    .line 384
    .local v1, cb:Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;
    iget-object v4, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mMiniModeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 385
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_8
    if-ge v3, v0, :cond_20

    .line 386
    iget-object v4, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mMiniModeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 388
    .local v2, cn:Landroid/content/ComponentName;
    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 389
    iget-object v4, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mMiniModeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    .end local v1           #cb:Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;
    check-cast v1, Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    .line 393
    .end local v2           #cn:Landroid/content/ComponentName;
    .restart local v1       #cb:Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;
    :cond_20
    iget-object v4, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mMiniModeCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 394
    return-object v1

    .line 385
    .restart local v2       #cn:Landroid/content/ComponentName;
    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_8
.end method

.method public getPosition(ILandroid/content/ComponentName;)Landroid/graphics/Rect;
    .registers 5
    .parameter "policyMode"
    .parameter "cn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 300
    invoke-direct {p0, p1}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->getPolicy(I)Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;

    move-result-object v0

    .line 302
    .local v0, policy:Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;
    if-nez v0, :cond_8

    .line 303
    const/4 v1, 0x0

    .line 305
    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0, p2}, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->getPosition(Landroid/content/ComponentName;)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_7
.end method

.method public isInstalledMiniApp(Landroid/content/ComponentName;)Z
    .registers 9
    .parameter "cn"

    .prologue
    const/4 v4, 0x0

    .line 398
    if-nez p1, :cond_4

    .line 416
    :cond_3
    :goto_3
    return v4

    .line 401
    :cond_4
    invoke-virtual {p0}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->getAllInstalledMiniApps()Ljava/util/List;

    move-result-object v3

    .line 402
    .local v3, rList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 405
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 406
    .local v2, rInfo:Landroid/content/pm/ResolveInfo;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    .local v1, miniAppCN:Landroid/content/ComponentName;
    invoke-virtual {v1, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 409
    const/4 v4, 0x1

    goto :goto_3
.end method

.method public isOccupiedPosition(III)Z
    .registers 6
    .parameter "policyMode"
    .parameter "x"
    .parameter "y"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 333
    invoke-direct {p0, p1}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->getPolicy(I)Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;

    move-result-object v0

    .line 335
    .local v0, policy:Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;
    if-nez v0, :cond_8

    .line 336
    const/4 v1, 0x0

    .line 338
    :goto_7
    return v1

    :cond_8
    invoke-virtual {v0, p2, p3}, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->isOccupiedPosition(II)Z

    move-result v1

    goto :goto_7
.end method

.method public move(Landroid/content/ComponentName;II)V
    .registers 7
    .parameter "name"
    .parameter "x"
    .parameter "y"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 344
    if-nez p1, :cond_3

    .line 348
    :goto_2
    return-void

    .line 347
    :cond_3
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2
.end method

.method public registerCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;Landroid/content/ComponentName;I)V
    .registers 8
    .parameter "cb"
    .parameter "name"
    .parameter "policyMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 257
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 262
    .local v0, obj:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/content/ComponentName;Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;>;"
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 263
    return-void
.end method

.method public removePosition(ILandroid/content/ComponentName;)V
    .registers 4
    .parameter "policyMode"
    .parameter "cn"

    .prologue
    .line 322
    invoke-direct {p0, p1}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->getPolicy(I)Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;

    move-result-object v0

    .line 324
    .local v0, policy:Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;
    if-eqz v0, :cond_8

    if-nez p2, :cond_9

    .line 328
    :cond_8
    :goto_8
    return-void

    .line 327
    :cond_9
    invoke-virtual {v0, p2}, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->removePosition(Landroid/content/ComponentName;)V

    goto :goto_8
.end method

.method public requestFocus(Landroid/content/ComponentName;Z)V
    .registers 8
    .parameter "name"
    .parameter "hasFocus"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 274
    if-eqz p2, :cond_11

    const/4 v0, 0x1

    .line 275
    .local v0, focused:I
    :goto_3
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v0, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 276
    return-void

    .line 274
    .end local v0           #focused:I
    :cond_11
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public declared-synchronized setInstanceState(Landroid/content/ComponentName;Landroid/os/Bundle;)V
    .registers 4
    .parameter "name"
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 367
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mInstanceStateMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 368
    monitor-exit p0

    return-void

    .line 367
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPosition(ILandroid/content/ComponentName;II)V
    .registers 9
    .parameter "policyMode"
    .parameter "cn"
    .parameter "x"
    .parameter "y"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 281
    if-nez p2, :cond_3

    .line 286
    :goto_2
    return-void

    .line 284
    :cond_3
    new-instance v0, Lcom/sec/minimode/manager/MiniModeAppManagerService$ClientDescriptor;

    invoke-direct {v0, p0, p2, p1}, Lcom/sec/minimode/manager/MiniModeAppManagerService$ClientDescriptor;-><init>(Lcom/sec/minimode/manager/MiniModeAppManagerService;Landroid/content/ComponentName;I)V

    .line 285
    .local v0, cd:Lcom/sec/minimode/manager/MiniModeAppManagerService$ClientDescriptor;
    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3, p3, p4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2
.end method

.method public start(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 236
    return-void
.end method

.method public startWithPosition(Landroid/content/ComponentName;II)V
    .registers 7
    .parameter "name"
    .parameter "x"
    .parameter "y"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 243
    return-void
.end method

.method public stop(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 250
    return-void
.end method

.method public unregisterCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;)V
    .registers 5
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/minimode/manager/MiniModeAppManagerService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 269
    return-void
.end method

.method public updatePosition(ILandroid/content/ComponentName;II)V
    .registers 6
    .parameter "policyMode"
    .parameter "cn"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 311
    invoke-direct {p0, p1}, Lcom/sec/minimode/manager/MiniModeAppManagerService;->getPolicy(I)Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;

    move-result-object v0

    .line 313
    .local v0, policy:Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;
    if-eqz v0, :cond_8

    if-nez p2, :cond_9

    .line 317
    :cond_8
    :goto_8
    return-void

    .line 316
    :cond_9
    invoke-virtual {v0, p2, p3, p4}, Lcom/sec/minimode/manager/MiniModeAppManagerService$Policy;->updatePosition(Landroid/content/ComponentName;II)V

    goto :goto_8
.end method
