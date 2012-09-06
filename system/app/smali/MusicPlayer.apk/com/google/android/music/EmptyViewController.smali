.class public Lcom/google/android/music/EmptyViewController;
.super Ljava/lang/Object;
.source "EmptyViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/EmptyViewController$8;,
        Lcom/google/android/music/EmptyViewController$EmptyViewStateListener;
    }
.end annotation


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Lcom/google/android/music/activitymanagement/TopLevelActivity;

.field private mCurrentPossibleState:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

.field private mDisplayingLocalOnly:Z

.field private mEmptyMusicView:Lcom/google/android/music/widgets/EmptyMusicView;

.field private mEmptyViewStateListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/music/EmptyViewController$EmptyViewStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstRun:Z

.field private mImportActive:Z

.field private mIsInInitialization:Z

.field private mMediaStoreImporterListener:Landroid/content/BroadcastReceiver;

.field private mMusicAvailable:Z

.field private final mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mPreferenceWatcher:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mPreviousVisibleState:Z

.field private final mRootView:Landroid/view/ViewGroup;

.field private mStoreAvailable:Z

.field private mStreamingEnabled:Z

.field private mSyncObserver:Landroid/content/SyncStatusObserver;

.field private mSyncObserverHandle:Ljava/lang/Object;

.field private mSyncPendingOrActive:Z


# direct methods
.method public constructor <init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;Lcom/google/android/music/jumper/MusicPreferences;Landroid/view/ViewGroup;)V
    .registers 7
    .parameter "topLevel"
    .parameter "preferences"
    .parameter "rootView"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v2, p0, Lcom/google/android/music/EmptyViewController;->mIsInInitialization:Z

    .line 42
    iput-boolean v1, p0, Lcom/google/android/music/EmptyViewController;->mFirstRun:Z

    .line 44
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;->NONE:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    iput-object v0, p0, Lcom/google/android/music/EmptyViewController;->mCurrentPossibleState:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    .line 46
    iput-boolean v2, p0, Lcom/google/android/music/EmptyViewController;->mMusicAvailable:Z

    .line 47
    iput-boolean v1, p0, Lcom/google/android/music/EmptyViewController;->mStreamingEnabled:Z

    .line 48
    iput-boolean v1, p0, Lcom/google/android/music/EmptyViewController;->mSyncPendingOrActive:Z

    .line 49
    iput-boolean v1, p0, Lcom/google/android/music/EmptyViewController;->mImportActive:Z

    .line 50
    iput-boolean v1, p0, Lcom/google/android/music/EmptyViewController;->mDisplayingLocalOnly:Z

    .line 51
    iput-boolean v1, p0, Lcom/google/android/music/EmptyViewController;->mStoreAvailable:Z

    .line 52
    iput-boolean v1, p0, Lcom/google/android/music/EmptyViewController;->mPreviousVisibleState:Z

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/EmptyViewController;->mEmptyMusicView:Lcom/google/android/music/widgets/EmptyMusicView;

    .line 278
    new-instance v0, Lcom/google/android/music/EmptyViewController$4;

    invoke-direct {v0, p0}, Lcom/google/android/music/EmptyViewController$4;-><init>(Lcom/google/android/music/EmptyViewController;)V

    iput-object v0, p0, Lcom/google/android/music/EmptyViewController;->mMediaStoreImporterListener:Landroid/content/BroadcastReceiver;

    .line 293
    new-instance v0, Lcom/google/android/music/EmptyViewController$5;

    sget-object v1, Lcom/google/android/music/utils/async/AsyncWorkers;->sUIBackgroundWorker:Lcom/google/android/music/Worker;

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/EmptyViewController$5;-><init>(Lcom/google/android/music/EmptyViewController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/music/EmptyViewController;->mContentObserver:Landroid/database/ContentObserver;

    .line 302
    new-instance v0, Lcom/google/android/music/EmptyViewController$6;

    invoke-direct {v0, p0}, Lcom/google/android/music/EmptyViewController$6;-><init>(Lcom/google/android/music/EmptyViewController;)V

    iput-object v0, p0, Lcom/google/android/music/EmptyViewController;->mSyncObserver:Landroid/content/SyncStatusObserver;

    .line 312
    new-instance v0, Lcom/google/android/music/EmptyViewController$7;

    invoke-direct {v0, p0}, Lcom/google/android/music/EmptyViewController$7;-><init>(Lcom/google/android/music/EmptyViewController;)V

    iput-object v0, p0, Lcom/google/android/music/EmptyViewController;->mPreferenceWatcher:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 64
    if-nez p1, :cond_46

    .line 65
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "TopLevel was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_46
    if-nez p3, :cond_50

    .line 67
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "rootView was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_50
    iput-object p1, p0, Lcom/google/android/music/EmptyViewController;->mContext:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    .line 71
    iput-object p2, p0, Lcom/google/android/music/EmptyViewController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 72
    iput-object p3, p0, Lcom/google/android/music/EmptyViewController;->mRootView:Landroid/view/ViewGroup;

    .line 73
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/EmptyViewController;->mEmptyViewStateListeners:Ljava/util/Collection;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/EmptyViewController;)Lcom/google/android/music/widgets/EmptyMusicView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/music/EmptyViewController;->mEmptyMusicView:Lcom/google/android/music/widgets/EmptyMusicView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/google/android/music/EmptyViewController;Lcom/google/android/music/widgets/EmptyMusicView;)Lcom/google/android/music/widgets/EmptyMusicView;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/google/android/music/EmptyViewController;->mEmptyMusicView:Lcom/google/android/music/widgets/EmptyMusicView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/music/EmptyViewController;)Landroid/view/ViewGroup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/music/EmptyViewController;->mRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/music/EmptyViewController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/google/android/music/EmptyViewController;->mStreamingEnabled:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/google/android/music/EmptyViewController;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/google/android/music/EmptyViewController;->mStreamingEnabled:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/google/android/music/EmptyViewController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/google/android/music/EmptyViewController;->mDisplayingLocalOnly:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/google/android/music/EmptyViewController;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/google/android/music/EmptyViewController;->mDisplayingLocalOnly:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/google/android/music/EmptyViewController;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/android/music/EmptyViewController;->requestMusicAvailableVariablesUpdate()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/music/EmptyViewController;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/music/EmptyViewController;->emptyViewStateChanged(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/music/EmptyViewController;)Lcom/google/android/music/activitymanagement/TopLevelActivity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/music/EmptyViewController;->mContext:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/music/EmptyViewController;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/android/music/EmptyViewController;->updateMusicAvailableVariables()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/music/EmptyViewController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/google/android/music/EmptyViewController;->mImportActive:Z

    return v0
.end method

.method static synthetic access$502(Lcom/google/android/music/EmptyViewController;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/google/android/music/EmptyViewController;->mImportActive:Z

    return p1
.end method

.method static synthetic access$600(Lcom/google/android/music/EmptyViewController;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/android/music/EmptyViewController;->onVariablesChanged()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/music/EmptyViewController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/android/music/EmptyViewController;->isSyncActiveOrPending()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/music/EmptyViewController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/google/android/music/EmptyViewController;->mSyncPendingOrActive:Z

    return v0
.end method

.method static synthetic access$802(Lcom/google/android/music/EmptyViewController;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/google/android/music/EmptyViewController;->mSyncPendingOrActive:Z

    return p1
.end method

.method static synthetic access$900(Lcom/google/android/music/EmptyViewController;)Lcom/google/android/music/jumper/MusicPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/music/EmptyViewController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    return-object v0
.end method

.method private emptyViewStateChanged(Z)V
    .registers 7
    .parameter "visible"

    .prologue
    .line 247
    iget-object v4, p0, Lcom/google/android/music/EmptyViewController;->mEmptyViewStateListeners:Ljava/util/Collection;

    monitor-enter v4

    .line 248
    :try_start_3
    iget-boolean v3, p0, Lcom/google/android/music/EmptyViewController;->mPreviousVisibleState:Z

    if-ne v3, p1, :cond_9

    monitor-exit v4

    .line 256
    :cond_8
    return-void

    .line 249
    :cond_9
    iput-boolean p1, p0, Lcom/google/android/music/EmptyViewController;->mPreviousVisibleState:Z

    .line 250
    iget-object v3, p0, Lcom/google/android/music/EmptyViewController;->mEmptyViewStateListeners:Ljava/util/Collection;

    invoke-static {v3}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    .line 251
    .local v2, listeners:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/music/EmptyViewController$EmptyViewStateListener;>;"
    monitor-exit v4
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_26

    .line 253
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/EmptyViewController$EmptyViewStateListener;

    .line 254
    .local v1, listener:Lcom/google/android/music/EmptyViewController$EmptyViewStateListener;
    invoke-interface {v1, p1}, Lcom/google/android/music/EmptyViewController$EmptyViewStateListener;->onEmptyViewStateChanged(Z)V

    goto :goto_16

    .line 251
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/google/android/music/EmptyViewController$EmptyViewStateListener;
    .end local v2           #listeners:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/music/EmptyViewController$EmptyViewStateListener;>;"
    :catchall_26
    move-exception v3

    :try_start_27
    monitor-exit v4
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v3
.end method

.method private isSyncActiveOrPending()Z
    .registers 3

    .prologue
    .line 233
    iget-object v1, p0, Lcom/google/android/music/EmptyViewController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 234
    .local v0, account:Landroid/accounts/Account;
    const-string v1, "com.google.android.music.MusicContent"

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "com.google.android.music.MusicContent"

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_16
    const/4 v1, 0x1

    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method private onVariablesChanged()V
    .registers 2

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/google/android/music/EmptyViewController;->mIsInInitialization:Z

    if-eqz v0, :cond_5

    .line 276
    :goto_4
    return-void

    .line 275
    :cond_5
    invoke-direct {p0}, Lcom/google/android/music/EmptyViewController;->updateNoMusicState()V

    goto :goto_4
.end method

.method private requestMusicAvailableVariablesUpdate()V
    .registers 3

    .prologue
    .line 190
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sUIBackgroundWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/EmptyViewController$3;

    invoke-direct {v1, p0}, Lcom/google/android/music/EmptyViewController$3;-><init>(Lcom/google/android/music/EmptyViewController;)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 195
    return-void
.end method

.method private updateMusicAvailableVariables()V
    .registers 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 205
    iget-object v8, p0, Lcom/google/android/music/EmptyViewController;->mContext:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    const-string v9, "Music availability update on the main thread"

    invoke-static {v8, v9}, Lcom/google/android/music/MusicUtils;->checkMainThread(Landroid/content/Context;Ljava/lang/String;)V

    .line 207
    iget-object v8, p0, Lcom/google/android/music/EmptyViewController;->mContext:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-static {v8}, Lcom/google/android/music/store/MusicContent$XAudio;->hasAudio(Landroid/content/Context;)Z

    move-result v2

    .line 208
    .local v2, musicAvailable:Z
    invoke-direct {p0}, Lcom/google/android/music/EmptyViewController;->isSyncActiveOrPending()Z

    move-result v5

    .line 209
    .local v5, syncActiveOrPending:Z
    iget-object v8, p0, Lcom/google/android/music/EmptyViewController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v8}, Lcom/google/android/music/jumper/MusicPreferences;->isStreamingEnabled()Z

    move-result v4

    .line 210
    .local v4, streamingEnabled:Z
    iget-object v8, p0, Lcom/google/android/music/EmptyViewController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v8}, Lcom/google/android/music/jumper/MusicPreferences;->getDisplayOptions()I

    move-result v8

    if-ne v8, v6, :cond_53

    move v1, v6

    .line 212
    .local v1, localOnly:Z
    :goto_22
    iget-object v8, p0, Lcom/google/android/music/EmptyViewController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v8}, Lcom/google/android/music/jumper/MusicPreferences;->getStoreAvailable()Z

    move-result v3

    .line 214
    .local v3, storeAvailable:Z
    iget-boolean v8, p0, Lcom/google/android/music/EmptyViewController;->mMusicAvailable:Z

    if-ne v8, v2, :cond_3c

    iget-boolean v8, p0, Lcom/google/android/music/EmptyViewController;->mSyncPendingOrActive:Z

    if-ne v8, v5, :cond_3c

    iget-boolean v8, p0, Lcom/google/android/music/EmptyViewController;->mStreamingEnabled:Z

    if-ne v4, v8, :cond_3c

    iget-boolean v8, p0, Lcom/google/android/music/EmptyViewController;->mDisplayingLocalOnly:Z

    if-ne v1, v8, :cond_3c

    iget-boolean v8, p0, Lcom/google/android/music/EmptyViewController;->mStoreAvailable:Z

    if-eq v3, v8, :cond_55

    :cond_3c
    move v0, v6

    .line 220
    .local v0, dirty:Z
    :goto_3d
    iput-boolean v2, p0, Lcom/google/android/music/EmptyViewController;->mMusicAvailable:Z

    .line 221
    iput-boolean v5, p0, Lcom/google/android/music/EmptyViewController;->mSyncPendingOrActive:Z

    .line 222
    iput-boolean v4, p0, Lcom/google/android/music/EmptyViewController;->mStreamingEnabled:Z

    .line 223
    iput-boolean v1, p0, Lcom/google/android/music/EmptyViewController;->mDisplayingLocalOnly:Z

    .line 224
    iput-boolean v3, p0, Lcom/google/android/music/EmptyViewController;->mStoreAvailable:Z

    .line 226
    if-nez v0, :cond_4d

    iget-boolean v6, p0, Lcom/google/android/music/EmptyViewController;->mFirstRun:Z

    if-eqz v6, :cond_52

    .line 227
    :cond_4d
    invoke-direct {p0}, Lcom/google/android/music/EmptyViewController;->onVariablesChanged()V

    .line 228
    iput-boolean v7, p0, Lcom/google/android/music/EmptyViewController;->mFirstRun:Z

    .line 230
    :cond_52
    return-void

    .end local v0           #dirty:Z
    .end local v1           #localOnly:Z
    .end local v3           #storeAvailable:Z
    :cond_53
    move v1, v7

    .line 210
    goto :goto_22

    .restart local v1       #localOnly:Z
    .restart local v3       #storeAvailable:Z
    :cond_55
    move v0, v7

    .line 214
    goto :goto_3d
.end method

.method private updateNoMusicState()V
    .registers 7

    .prologue
    .line 115
    sget-object v0, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;->NONE:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    .line 116
    .local v0, emptyState:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;
    const/4 v1, 0x0

    .line 118
    .local v1, emptyStateFlags:I
    sget-object v4, Lcom/google/android/music/EmptyViewController$8;->$SwitchMap$com$google$android$music$activitymanagement$MusicFragment$LayoutConfig$NoMusicView:[I

    iget-object v5, p0, Lcom/google/android/music/EmptyViewController;->mCurrentPossibleState:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    invoke-virtual {v5}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_74

    .line 149
    :cond_10
    :goto_10
    :pswitch_10
    sget-object v4, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;->NONE:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    if-ne v0, v4, :cond_59

    .line 151
    iget-object v4, p0, Lcom/google/android/music/EmptyViewController;->mEmptyMusicView:Lcom/google/android/music/widgets/EmptyMusicView;

    if-eqz v4, :cond_22

    .line 152
    iget-object v4, p0, Lcom/google/android/music/EmptyViewController;->mContext:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    new-instance v5, Lcom/google/android/music/EmptyViewController$1;

    invoke-direct {v5, p0}, Lcom/google/android/music/EmptyViewController$1;-><init>(Lcom/google/android/music/EmptyViewController;)V

    invoke-virtual {v4, v5}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 184
    :cond_22
    :goto_22
    return-void

    .line 122
    :pswitch_23
    iget-boolean v4, p0, Lcom/google/android/music/EmptyViewController;->mMusicAvailable:Z

    if-nez v4, :cond_10

    .line 123
    iget-boolean v4, p0, Lcom/google/android/music/EmptyViewController;->mSyncPendingOrActive:Z

    if-eqz v4, :cond_2e

    .line 124
    sget-object v0, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;->SYNC_ACTIVE:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    goto :goto_10

    .line 125
    :cond_2e
    iget-boolean v4, p0, Lcom/google/android/music/EmptyViewController;->mImportActive:Z

    if-eqz v4, :cond_35

    .line 126
    sget-object v0, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;->IMPORT_ACTIVE:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    goto :goto_10

    .line 127
    :cond_35
    iget-boolean v4, p0, Lcom/google/android/music/EmptyViewController;->mDisplayingLocalOnly:Z

    if-eqz v4, :cond_3c

    .line 128
    sget-object v0, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;->NO_MUSIC_LOCAL_ONLY:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    goto :goto_10

    .line 130
    :cond_3c
    sget-object v0, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;->FLAGS:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    .line 131
    const/16 v1, 0x8

    .line 132
    iget-boolean v4, p0, Lcom/google/android/music/EmptyViewController;->mStoreAvailable:Z

    if-eqz v4, :cond_46

    .line 133
    or-int/lit8 v1, v1, 0x2

    .line 135
    :cond_46
    iget-boolean v4, p0, Lcom/google/android/music/EmptyViewController;->mStreamingEnabled:Z

    if-eqz v4, :cond_4c

    .line 136
    or-int/lit8 v1, v1, 0x4

    .line 138
    :cond_4c
    iget-object v4, p0, Lcom/google/android/music/EmptyViewController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v4}, Lcom/google/android/music/jumper/MusicPreferences;->isTvMusic()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 139
    or-int/lit8 v1, v1, 0x40

    .line 142
    or-int/lit8 v1, v1, 0x4

    goto :goto_10

    .line 163
    :cond_59
    iget-object v4, p0, Lcom/google/android/music/EmptyViewController;->mEmptyMusicView:Lcom/google/android/music/widgets/EmptyMusicView;

    if-nez v4, :cond_6a

    .line 164
    move-object v2, v0

    .line 165
    .local v2, finalEmptyState:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;
    move v3, v1

    .line 166
    .local v3, finalEmptyStateFlags:I
    iget-object v4, p0, Lcom/google/android/music/EmptyViewController;->mContext:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    new-instance v5, Lcom/google/android/music/EmptyViewController$2;

    invoke-direct {v5, p0, v2, v3}, Lcom/google/android/music/EmptyViewController$2;-><init>(Lcom/google/android/music/EmptyViewController;Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;I)V

    invoke-virtual {v4, v5}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_22

    .line 180
    .end local v2           #finalEmptyState:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;
    .end local v3           #finalEmptyStateFlags:I
    :cond_6a
    iget-object v4, p0, Lcom/google/android/music/EmptyViewController;->mEmptyMusicView:Lcom/google/android/music/widgets/EmptyMusicView;

    invoke-virtual {v4, v0, v1}, Lcom/google/android/music/widgets/EmptyMusicView;->setEmptyStateWithFlags(Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;I)V

    .line 181
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/google/android/music/EmptyViewController;->emptyViewStateChanged(Z)V

    goto :goto_22

    .line 118
    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_10
        :pswitch_23
    .end packed-switch
.end method


# virtual methods
.method public onPause()V
    .registers 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/music/EmptyViewController;->mContext:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    iget-object v1, p0, Lcom/google/android/music/EmptyViewController;->mMediaStoreImporterListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 99
    iget-object v0, p0, Lcom/google/android/music/EmptyViewController;->mContext:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/EmptyViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 100
    iget-object v0, p0, Lcom/google/android/music/EmptyViewController;->mSyncObserverHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lcom/google/android/music/EmptyViewController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v1, p0, Lcom/google/android/music/EmptyViewController;->mPreferenceWatcher:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 102
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 77
    iput-boolean v3, p0, Lcom/google/android/music/EmptyViewController;->mIsInInitialization:Z

    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 79
    const-string v1, "com.google.android.music.IMPORT_PENDING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    const-string v1, "com.google.android.music.IMPORT_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/google/android/music/EmptyViewController;->mContext:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    iget-object v2, p0, Lcom/google/android/music/EmptyViewController;->mMediaStoreImporterListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 82
    iget-object v0, p0, Lcom/google/android/music/EmptyViewController;->mContext:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/music/EmptyViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 84
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/music/EmptyViewController;->mSyncObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/EmptyViewController;->mSyncObserverHandle:Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/google/android/music/EmptyViewController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v1, p0, Lcom/google/android/music/EmptyViewController;->mPreferenceWatcher:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/EmptyViewController;->mIsInInitialization:Z

    .line 90
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/music/EmptyViewController;->mContext:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    const-class v2, Lcom/google/android/music/store/MediaStoreImportService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    const-string v1, "MediaStoreImportService.status"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    iget-object v1, p0, Lcom/google/android/music/EmptyViewController;->mContext:Lcom/google/android/music/activitymanagement/TopLevelActivity;

    invoke-virtual {v1, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 94
    invoke-direct {p0}, Lcom/google/android/music/EmptyViewController;->requestMusicAvailableVariablesUpdate()V

    .line 95
    return-void
.end method

.method public registerEmptyViewStateListener(Lcom/google/android/music/EmptyViewController$EmptyViewStateListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 259
    iget-object v1, p0, Lcom/google/android/music/EmptyViewController;->mEmptyViewStateListeners:Ljava/util/Collection;

    monitor-enter v1

    .line 260
    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/EmptyViewController;->mEmptyViewStateListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 261
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_12

    .line 262
    iget-object v0, p0, Lcom/google/android/music/EmptyViewController;->mEmptyMusicView:Lcom/google/android/music/widgets/EmptyMusicView;

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    :goto_e
    invoke-interface {p1, v0}, Lcom/google/android/music/EmptyViewController$EmptyViewStateListener;->onEmptyViewStateChanged(Z)V

    .line 263
    return-void

    .line 261
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0

    .line 262
    :cond_15
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public setPossibleEmptyView(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;)V
    .registers 3
    .parameter "noMusicView"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/music/EmptyViewController;->mCurrentPossibleState:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    if-eq v0, p1, :cond_9

    .line 109
    iput-object p1, p0, Lcom/google/android/music/EmptyViewController;->mCurrentPossibleState:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    .line 110
    invoke-direct {p0}, Lcom/google/android/music/EmptyViewController;->onVariablesChanged()V

    .line 112
    :cond_9
    return-void
.end method
