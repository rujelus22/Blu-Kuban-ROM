.class public Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;
.super Ljava/lang/Object;
.source "MiniModeAppCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnCloseRequestedCallback;,
        Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnMoveRequestedCallback;,
        Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;
    }
.end annotation


# static fields
.field private static final CLOSE_REQUESTED_MSG:I = 0x3

.field private static final DEBUG:Z = false

.field private static final DEBUG_MSG_HANDLER:Z = false

.field private static final FOCUS_CHANGED_MSG:I = 0x1

.field private static final MOVEMENT_REQUESTED_MSG:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MiniModeAppCallback"


# instance fields
.field private mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

.field mCallback:Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mOnCloseRequestedCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnCloseRequestedCallback;

.field private mOnFocusChangedCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;

.field private mOnMoveRequestedCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnMoveRequestedCallback;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    .line 21
    iput-object v0, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mContext:Landroid/content/Context;

    .line 94
    new-instance v0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$1;-><init>(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)V

    iput-object v0, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mCallback:Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    .line 139
    new-instance v0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$2;-><init>(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)V

    iput-object v0, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mHandler:Landroid/os/Handler;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    .line 21
    iput-object v0, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mContext:Landroid/content/Context;

    .line 94
    new-instance v0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$1;-><init>(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)V

    iput-object v0, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mCallback:Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    .line 139
    new-instance v0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$2;-><init>(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)V

    iput-object v0, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mHandler:Landroid/os/Handler;

    .line 31
    iput-object p1, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mContext:Landroid/content/Context;

    .line 32
    new-instance v0, Lcom/sec/minimode/manager/MiniModeAppManager;

    iget-object v1, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/minimode/manager/MiniModeAppManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    .line 33
    iget-object v0, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    iget-object v1, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mCallback:Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    invoke-virtual {v0, v1}, Lcom/sec/minimode/manager/MiniModeAppManager;->registerCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;)V

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mOnFocusChangedCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnMoveRequestedCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mOnMoveRequestedCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnMoveRequestedCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;)Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnCloseRequestedCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mOnCloseRequestedCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnCloseRequestedCallback;

    return-object v0
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 212
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 214
    invoke-virtual {p0}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->release()V

    .line 216
    return-void

    .line 214
    :catchall_7
    move-exception v0

    invoke-virtual {p0}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->release()V

    throw v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 6

    .prologue
    .line 187
    const/4 v0, 0x0

    .line 190
    .local v0, cn:Landroid/content/ComponentName;
    :try_start_1
    new-instance v1, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_10

    .end local v0           #cn:Landroid/content/ComponentName;
    .local v1, cn:Landroid/content/ComponentName;
    move-object v0, v1

    .line 196
    .end local v1           #cn:Landroid/content/ComponentName;
    .restart local v0       #cn:Landroid/content/ComponentName;
    :goto_f
    return-object v1

    .line 191
    :catch_10
    move-exception v2

    .line 192
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "MiniModeAppCallback"

    const-string v4, "Creating Component name has faild. "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 193
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public release()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_e

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    iget-object v1, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mCallback:Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;

    invoke-virtual {v0, v1}, Lcom/sec/minimode/manager/MiniModeAppManager;->unregisterCallback(Lcom/sec/android/app/minimode/manager/IMiniModeAppCallback;)V

    .line 202
    iput-object v2, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mContext:Landroid/content/Context;

    .line 204
    :cond_e
    iput-object v2, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mOnFocusChangedCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;

    .line 205
    iput-object v2, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mOnMoveRequestedCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnMoveRequestedCallback;

    .line 206
    iput-object v2, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mOnCloseRequestedCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnCloseRequestedCallback;

    .line 207
    return-void
.end method

.method public setOnCloseRequestedCallback(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnCloseRequestedCallback;)V
    .registers 2
    .parameter "c"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mOnCloseRequestedCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnCloseRequestedCallback;

    .line 92
    return-void
.end method

.method public setOnFocusChangedCallback(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;)V
    .registers 2
    .parameter "c"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mOnFocusChangedCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;

    .line 76
    return-void
.end method

.method public setOnMoveRequestedCallback(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnMoveRequestedCallback;)V
    .registers 2
    .parameter "c"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->mOnMoveRequestedCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnMoveRequestedCallback;

    .line 84
    return-void
.end method
