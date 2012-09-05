.class public Lcom/google/android/finsky/services/CheckinAssetStoreListener;
.super Ljava/lang/Object;
.source "CheckinAssetStoreListener.java"

# interfaces
.implements Lcom/google/android/finsky/local/AssetStore$LocalAssetChangeListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDirty:Z

.field private mHandler:Landroid/os/Handler;

.field private mSuspenders:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSyncService:Lcom/google/android/finsky/services/ContentSyncService$Facade;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/services/ContentSyncService$Facade;)V
    .registers 5
    .parameter "context"
    .parameter "syncService"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/services/CheckinAssetStoreListener;->mDirty:Z

    .line 36
    invoke-static {}, Lcom/google/android/finsky/utils/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/services/CheckinAssetStoreListener;->mSuspenders:Ljava/util/HashSet;

    .line 52
    iput-object p1, p0, Lcom/google/android/finsky/services/CheckinAssetStoreListener;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/google/android/finsky/services/CheckinAssetStoreListener;->mSyncService:Lcom/google/android/finsky/services/ContentSyncService$Facade;

    .line 54
    new-instance v0, Lcom/google/android/finsky/services/CheckinAssetStoreListener$1;

    iget-object v1, p0, Lcom/google/android/finsky/services/CheckinAssetStoreListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/finsky/services/CheckinAssetStoreListener$1;-><init>(Lcom/google/android/finsky/services/CheckinAssetStoreListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/finsky/services/CheckinAssetStoreListener;->mHandler:Landroid/os/Handler;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/services/CheckinAssetStoreListener;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/finsky/services/CheckinAssetStoreListener;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/services/CheckinAssetStoreListener;)Lcom/google/android/finsky/services/ContentSyncService$Facade;
    .registers 2
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/finsky/services/CheckinAssetStoreListener;->mSyncService:Lcom/google/android/finsky/services/ContentSyncService$Facade;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/finsky/services/CheckinAssetStoreListener;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/google/android/finsky/services/CheckinAssetStoreListener;->mDirty:Z

    return p1
.end method

.method private postDeferredSync()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 154
    iget-object v0, p0, Lcom/google/android/finsky/services/CheckinAssetStoreListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 156
    iget-object v0, p0, Lcom/google/android/finsky/services/CheckinAssetStoreListener;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3a98

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 157
    return-void
.end method


# virtual methods
.method public onAssetAdded(Lcom/google/android/finsky/local/LocalAsset;)V
    .registers 3
    .parameter "asset"

    .prologue
    .line 91
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/services/CheckinAssetStoreListener;->mDirty:Z

    .line 93
    iget-object v0, p0, Lcom/google/android/finsky/services/CheckinAssetStoreListener;->mSuspenders:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 94
    invoke-direct {p0}, Lcom/google/android/finsky/services/CheckinAssetStoreListener;->postDeferredSync()V

    .line 96
    :cond_11
    return-void
.end method

.method public onAssetChanged(Lcom/google/android/finsky/local/LocalAsset;Lcom/google/android/finsky/local/AssetState;)V
    .registers 5
    .parameter "asset"
    .parameter "previousState"

    .prologue
    .line 76
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 79
    invoke-interface {p1}, Lcom/google/android/finsky/local/LocalAsset;->getState()Lcom/google/android/finsky/local/AssetState;

    move-result-object v0

    .line 80
    .local v0, newState:Lcom/google/android/finsky/local/AssetState;
    if-eq v0, p2, :cond_1f

    sget-object v1, Lcom/google/android/finsky/local/AssetState;->INSTALLED:Lcom/google/android/finsky/local/AssetState;

    if-eq v0, v1, :cond_11

    sget-object v1, Lcom/google/android/finsky/local/AssetState;->UNINSTALLED:Lcom/google/android/finsky/local/AssetState;

    if-ne v0, v1, :cond_1f

    .line 82
    :cond_11
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/finsky/services/CheckinAssetStoreListener;->mDirty:Z

    .line 83
    iget-object v1, p0, Lcom/google/android/finsky/services/CheckinAssetStoreListener;->mSuspenders:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 84
    invoke-direct {p0}, Lcom/google/android/finsky/services/CheckinAssetStoreListener;->postDeferredSync()V

    .line 87
    :cond_1f
    return-void
.end method

.method public onAssetDeleted(Ljava/lang/String;)V
    .registers 3
    .parameter "packageName"

    .prologue
    .line 100
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/services/CheckinAssetStoreListener;->mDirty:Z

    .line 102
    iget-object v0, p0, Lcom/google/android/finsky/services/CheckinAssetStoreListener;->mSuspenders:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 103
    invoke-direct {p0}, Lcom/google/android/finsky/services/CheckinAssetStoreListener;->postDeferredSync()V

    .line 105
    :cond_11
    return-void
.end method

.method public resume(Ljava/lang/String;)V
    .registers 7
    .parameter "tag"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 136
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 137
    iget-object v3, p0, Lcom/google/android/finsky/services/CheckinAssetStoreListener;->mSuspenders:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_35

    move v0, v1

    .line 138
    .local v0, wasSuspended:Z
    :goto_e
    const-string v3, "Resume CheckinAssetStoreListener for %s (prev state=%b)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    iget-object v1, p0, Lcom/google/android/finsky/services/CheckinAssetStoreListener;->mSuspenders:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 144
    iget-boolean v1, p0, Lcom/google/android/finsky/services/CheckinAssetStoreListener;->mDirty:Z

    if-eqz v1, :cond_34

    if-eqz v0, :cond_34

    iget-object v1, p0, Lcom/google/android/finsky/services/CheckinAssetStoreListener;->mSuspenders:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 145
    invoke-direct {p0}, Lcom/google/android/finsky/services/CheckinAssetStoreListener;->postDeferredSync()V

    .line 147
    :cond_34
    return-void

    .end local v0           #wasSuspended:Z
    :cond_35
    move v0, v2

    .line 137
    goto :goto_e
.end method

.method public suspend(Ljava/lang/String;)V
    .registers 8
    .parameter "tag"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 113
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 114
    iget-object v3, p0, Lcom/google/android/finsky/services/CheckinAssetStoreListener;->mSuspenders:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2b

    move v0, v1

    .line 115
    .local v0, wasSuspended:Z
    :goto_e
    const-string v3, "Suspend CheckinAssetStoreListener for %s (prev state=%b)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    iget-object v1, p0, Lcom/google/android/finsky/services/CheckinAssetStoreListener;->mSuspenders:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 121
    if-nez v0, :cond_2a

    .line 122
    iget-object v1, p0, Lcom/google/android/finsky/services/CheckinAssetStoreListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 124
    :cond_2a
    return-void

    .end local v0           #wasSuspended:Z
    :cond_2b
    move v0, v2

    .line 114
    goto :goto_e
.end method
