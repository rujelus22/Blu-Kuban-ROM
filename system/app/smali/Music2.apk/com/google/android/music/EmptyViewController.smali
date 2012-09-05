.class public Lcom/google/android/music/EmptyViewController;
.super Ljava/lang/Object;
.source "EmptyViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/EmptyViewController$6;
    }
.end annotation


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentPossibleState:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

.field private mDisplayingLocalOnly:Z

.field private final mEmptyMusicView:Lcom/google/android/music/widgets/EmptyMusicView;

.field private mFirstRun:Z

.field private mImportActive:Z

.field private mIsInInitialization:Z

.field private mMediaStoreImporterListener:Landroid/content/BroadcastReceiver;

.field private mMusicAvailable:Z

.field private final mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mPlaylistsAvailable:Z

.field private mPreferenceWatcher:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mStoreAvailable:Z

.field private mStreamingEnabled:Z

.field private mSyncObserver:Landroid/content/SyncStatusObserver;

.field private mSyncObserverHandle:Ljava/lang/Object;

.field private mSyncPendingOrActive:Z


# direct methods
.method public constructor <init>(Lcom/google/android/music/activitymanagement/TopLevelActivity;Lcom/google/android/music/jumper/MusicPreferences;Lcom/google/android/music/widgets/EmptyMusicView;)V
    .registers 7
    .parameter "topLevel"
    .parameter "preferences"
    .parameter "emptyMusicView"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v2, p0, Lcom/google/android/music/EmptyViewController;->mIsInInitialization:Z

    .line 38
    iput-boolean v1, p0, Lcom/google/android/music/EmptyViewController;->mFirstRun:Z

    .line 40
    sget-object v0, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;->NONE:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    iput-object v0, p0, Lcom/google/android/music/EmptyViewController;->mCurrentPossibleState:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    .line 42
    iput-boolean v2, p0, Lcom/google/android/music/EmptyViewController;->mPlaylistsAvailable:Z

    .line 43
    iput-boolean v2, p0, Lcom/google/android/music/EmptyViewController;->mMusicAvailable:Z

    .line 44
    iput-boolean v1, p0, Lcom/google/android/music/EmptyViewController;->mStreamingEnabled:Z

    .line 45
    iput-boolean v1, p0, Lcom/google/android/music/EmptyViewController;->mSyncPendingOrActive:Z

    .line 46
    iput-boolean v1, p0, Lcom/google/android/music/EmptyViewController;->mImportActive:Z

    .line 47
    iput-boolean v1, p0, Lcom/google/android/music/EmptyViewController;->mDisplayingLocalOnly:Z

    .line 48
    iput-boolean v1, p0, Lcom/google/android/music/EmptyViewController;->mStoreAvailable:Z

    .line 214
    new-instance v0, Lcom/google/android/music/EmptyViewController$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/EmptyViewController$2;-><init>(Lcom/google/android/music/EmptyViewController;)V

    iput-object v0, p0, Lcom/google/android/music/EmptyViewController;->mMediaStoreImporterListener:Landroid/content/BroadcastReceiver;

    .line 230
    new-instance v0, Lcom/google/android/music/EmptyViewController$3;

    sget-object v1, Lcom/google/android/music/utils/async/AsyncWorkers;->sUIBackgroundWorker:Lcom/google/android/music/Worker;

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/EmptyViewController$3;-><init>(Lcom/google/android/music/EmptyViewController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/music/EmptyViewController;->mContentObserver:Landroid/database/ContentObserver;

    .line 239
    new-instance v0, Lcom/google/android/music/EmptyViewController$4;

    invoke-direct {v0, p0}, Lcom/google/android/music/EmptyViewController$4;-><init>(Lcom/google/android/music/EmptyViewController;)V

    iput-object v0, p0, Lcom/google/android/music/EmptyViewController;->mSyncObserver:Landroid/content/SyncStatusObserver;

    .line 249
    new-instance v0, Lcom/google/android/music/EmptyViewController$5;

    invoke-direct {v0, p0}, Lcom/google/android/music/EmptyViewController$5;-><init>(Lcom/google/android/music/EmptyViewController;)V

    iput-object v0, p0, Lcom/google/android/music/EmptyViewController;->mPreferenceWatcher:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 58
    if-nez p1, :cond_43

    .line 59
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "TopLevel was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_43
    if-nez p3, :cond_4d

    .line 61
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "EmptyMusicView was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_4d
    iput-object p1, p0, Lcom/google/android/music/EmptyViewController;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/google/android/music/EmptyViewController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 66
    iput-object p3, p0, Lcom/google/android/music/EmptyViewController;->mEmptyMusicView:Lcom/google/android/music/widgets/EmptyMusicView;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/EmptyViewController;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/music/EmptyViewController;->updateMusicAvailableVariables()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/music/EmptyViewController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/android/music/EmptyViewController;->mImportActive:Z

    return v0
.end method

.method static synthetic access$102(Lcom/google/android/music/EmptyViewController;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/google/android/music/EmptyViewController;->mImportActive:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/music/EmptyViewController;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/music/EmptyViewController;->onVariablesChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/music/EmptyViewController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/google/android/music/EmptyViewController;->isSyncActiveOrPending()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/music/EmptyViewController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/android/music/EmptyViewController;->mSyncPendingOrActive:Z

    return v0
.end method

.method static synthetic access$402(Lcom/google/android/music/EmptyViewController;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/google/android/music/EmptyViewController;->mSyncPendingOrActive:Z

    return p1
.end method

.method static synthetic access$500(Lcom/google/android/music/EmptyViewController;)Lcom/google/android/music/jumper/MusicPreferences;
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/music/EmptyViewController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/music/EmptyViewController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/android/music/EmptyViewController;->mStreamingEnabled:Z

    return v0
.end method

.method static synthetic access$602(Lcom/google/android/music/EmptyViewController;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/google/android/music/EmptyViewController;->mStreamingEnabled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/google/android/music/EmptyViewController;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/google/android/music/EmptyViewController;->mDisplayingLocalOnly:Z

    return v0
.end method

.method static synthetic access$702(Lcom/google/android/music/EmptyViewController;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/google/android/music/EmptyViewController;->mDisplayingLocalOnly:Z

    return p1
.end method

.method private arePlaylistsAvailableOnDevice()Z
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 189
    iget-object v0, p0, Lcom/google/android/music/EmptyViewController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/google/android/music/store/MusicContent$Playlists;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/music/store/MusicContent$CommonColumns;->EXISTS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 192
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1c

    :try_start_f
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_1e

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    .line 194
    :goto_16
    if-eqz v6, :cond_1b

    .line 195
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1b
    return v0

    .line 192
    :cond_1c
    const/4 v0, 0x0

    goto :goto_16

    .line 194
    :catchall_1e
    move-exception v0

    if-eqz v6, :cond_24

    .line 195
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_24
    throw v0
.end method

.method private isMusicAvailableOnDevice()Z
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/music/EmptyViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/MusicContent$XAudio;->hasAudio(Landroid/content/ContentResolver;)Z

    move-result v0

    return v0
.end method

.method private isSyncActiveOrPending()Z
    .registers 3

    .prologue
    .line 202
    iget-object v1, p0, Lcom/google/android/music/EmptyViewController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->getSelectedAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 203
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
    .line 208
    iget-boolean v0, p0, Lcom/google/android/music/EmptyViewController;->mIsInInitialization:Z

    if-eqz v0, :cond_5

    .line 212
    :goto_4
    return-void

    .line 211
    :cond_5
    invoke-direct {p0}, Lcom/google/android/music/EmptyViewController;->updateNoMusicState()V

    goto :goto_4
.end method

.method private updateMusicAvailableVariables()V
    .registers 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 156
    invoke-direct {p0}, Lcom/google/android/music/EmptyViewController;->arePlaylistsAvailableOnDevice()Z

    move-result v3

    .line 157
    .local v3, playlistsAvailable:Z
    invoke-direct {p0}, Lcom/google/android/music/EmptyViewController;->isMusicAvailableOnDevice()Z

    move-result v2

    .line 158
    .local v2, musicAvailable:Z
    invoke-direct {p0}, Lcom/google/android/music/EmptyViewController;->isSyncActiveOrPending()Z

    move-result v6

    .line 159
    .local v6, syncActiveOrPending:Z
    iget-object v9, p0, Lcom/google/android/music/EmptyViewController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v9}, Lcom/google/android/music/jumper/MusicPreferences;->isStreamingEnabled()Z

    move-result v5

    .line 160
    .local v5, streamingEnabled:Z
    iget-object v9, p0, Lcom/google/android/music/EmptyViewController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v9}, Lcom/google/android/music/jumper/MusicPreferences;->getDisplayOptions()I

    move-result v9

    if-ne v9, v7, :cond_54

    move v1, v7

    .line 162
    .local v1, localOnly:Z
    :goto_1d
    iget-object v9, p0, Lcom/google/android/music/EmptyViewController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v9}, Lcom/google/android/music/jumper/MusicPreferences;->getStoreAvailable()Z

    move-result v4

    .line 164
    .local v4, storeAvailable:Z
    iget-boolean v9, p0, Lcom/google/android/music/EmptyViewController;->mPlaylistsAvailable:Z

    if-ne v9, v3, :cond_3b

    iget-boolean v9, p0, Lcom/google/android/music/EmptyViewController;->mMusicAvailable:Z

    if-ne v9, v2, :cond_3b

    iget-boolean v9, p0, Lcom/google/android/music/EmptyViewController;->mSyncPendingOrActive:Z

    if-ne v9, v6, :cond_3b

    iget-boolean v9, p0, Lcom/google/android/music/EmptyViewController;->mStreamingEnabled:Z

    if-ne v5, v9, :cond_3b

    iget-boolean v9, p0, Lcom/google/android/music/EmptyViewController;->mDisplayingLocalOnly:Z

    if-ne v1, v9, :cond_3b

    iget-boolean v9, p0, Lcom/google/android/music/EmptyViewController;->mStoreAvailable:Z

    if-eq v4, v9, :cond_56

    :cond_3b
    move v0, v7

    .line 171
    .local v0, dirty:Z
    :goto_3c
    iput-boolean v3, p0, Lcom/google/android/music/EmptyViewController;->mPlaylistsAvailable:Z

    .line 172
    iput-boolean v2, p0, Lcom/google/android/music/EmptyViewController;->mMusicAvailable:Z

    .line 173
    iput-boolean v6, p0, Lcom/google/android/music/EmptyViewController;->mSyncPendingOrActive:Z

    .line 174
    iput-boolean v5, p0, Lcom/google/android/music/EmptyViewController;->mStreamingEnabled:Z

    .line 175
    iput-boolean v1, p0, Lcom/google/android/music/EmptyViewController;->mDisplayingLocalOnly:Z

    .line 176
    iput-boolean v4, p0, Lcom/google/android/music/EmptyViewController;->mStoreAvailable:Z

    .line 178
    if-nez v0, :cond_4e

    iget-boolean v7, p0, Lcom/google/android/music/EmptyViewController;->mFirstRun:Z

    if-eqz v7, :cond_53

    .line 179
    :cond_4e
    invoke-direct {p0}, Lcom/google/android/music/EmptyViewController;->onVariablesChanged()V

    .line 180
    iput-boolean v8, p0, Lcom/google/android/music/EmptyViewController;->mFirstRun:Z

    .line 182
    :cond_53
    return-void

    .end local v0           #dirty:Z
    .end local v1           #localOnly:Z
    .end local v4           #storeAvailable:Z
    :cond_54
    move v1, v8

    .line 160
    goto :goto_1d

    .restart local v1       #localOnly:Z
    .restart local v4       #storeAvailable:Z
    :cond_56
    move v0, v8

    .line 164
    goto :goto_3c
.end method

.method private updateNoMusicState()V
    .registers 4

    .prologue
    .line 112
    iget-object v1, p0, Lcom/google/android/music/EmptyViewController;->mEmptyMusicView:Lcom/google/android/music/widgets/EmptyMusicView;

    invoke-virtual {v1}, Lcom/google/android/music/widgets/EmptyMusicView;->clearEmptyStateFlags()V

    .line 113
    sget-object v1, Lcom/google/android/music/EmptyViewController$6;->$SwitchMap$com$google$android$music$activitymanagement$MusicFragment$LayoutConfig$NoMusicView:[I

    iget-object v2, p0, Lcom/google/android/music/EmptyViewController;->mCurrentPossibleState:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    invoke-virtual {v2}, Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_86

    .line 153
    :goto_12
    return-void

    .line 115
    :pswitch_13
    iget-object v1, p0, Lcom/google/android/music/EmptyViewController;->mEmptyMusicView:Lcom/google/android/music/widgets/EmptyMusicView;

    sget-object v2, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;->NONE:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    invoke-virtual {v1, v2}, Lcom/google/android/music/widgets/EmptyMusicView;->setEmptyState(Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;)V

    goto :goto_12

    .line 118
    :pswitch_1b
    iget-boolean v1, p0, Lcom/google/android/music/EmptyViewController;->mMusicAvailable:Z

    if-eqz v1, :cond_27

    .line 119
    iget-object v1, p0, Lcom/google/android/music/EmptyViewController;->mEmptyMusicView:Lcom/google/android/music/widgets/EmptyMusicView;

    sget-object v2, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;->NONE:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    invoke-virtual {v1, v2}, Lcom/google/android/music/widgets/EmptyMusicView;->setEmptyState(Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;)V

    goto :goto_12

    .line 121
    :cond_27
    iget-boolean v1, p0, Lcom/google/android/music/EmptyViewController;->mSyncPendingOrActive:Z

    if-eqz v1, :cond_33

    .line 122
    iget-object v1, p0, Lcom/google/android/music/EmptyViewController;->mEmptyMusicView:Lcom/google/android/music/widgets/EmptyMusicView;

    sget-object v2, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;->SYNC_ACTIVE:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    invoke-virtual {v1, v2}, Lcom/google/android/music/widgets/EmptyMusicView;->setEmptyState(Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;)V

    goto :goto_12

    .line 123
    :cond_33
    iget-boolean v1, p0, Lcom/google/android/music/EmptyViewController;->mImportActive:Z

    if-eqz v1, :cond_3f

    .line 124
    iget-object v1, p0, Lcom/google/android/music/EmptyViewController;->mEmptyMusicView:Lcom/google/android/music/widgets/EmptyMusicView;

    sget-object v2, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;->IMPORT_ACTIVE:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    invoke-virtual {v1, v2}, Lcom/google/android/music/widgets/EmptyMusicView;->setEmptyState(Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;)V

    goto :goto_12

    .line 125
    :cond_3f
    iget-boolean v1, p0, Lcom/google/android/music/EmptyViewController;->mDisplayingLocalOnly:Z

    if-eqz v1, :cond_4b

    .line 126
    iget-object v1, p0, Lcom/google/android/music/EmptyViewController;->mEmptyMusicView:Lcom/google/android/music/widgets/EmptyMusicView;

    sget-object v2, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;->NO_MUSIC_LOCAL_ONLY:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    invoke-virtual {v1, v2}, Lcom/google/android/music/widgets/EmptyMusicView;->setEmptyState(Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;)V

    goto :goto_12

    .line 128
    :cond_4b
    iget-object v1, p0, Lcom/google/android/music/EmptyViewController;->mEmptyMusicView:Lcom/google/android/music/widgets/EmptyMusicView;

    sget-object v2, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;->NONE:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    invoke-virtual {v1, v2}, Lcom/google/android/music/widgets/EmptyMusicView;->setEmptyState(Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;)V

    .line 129
    const/16 v0, 0x8

    .line 130
    .local v0, flags:I
    iget-boolean v1, p0, Lcom/google/android/music/EmptyViewController;->mStoreAvailable:Z

    if-eqz v1, :cond_5a

    .line 131
    or-int/lit8 v0, v0, 0x2

    .line 133
    :cond_5a
    iget-boolean v1, p0, Lcom/google/android/music/EmptyViewController;->mStreamingEnabled:Z

    if-eqz v1, :cond_60

    .line 134
    or-int/lit8 v0, v0, 0x4

    .line 136
    :cond_60
    iget-object v1, p0, Lcom/google/android/music/EmptyViewController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->isTvMusic()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 137
    or-int/lit8 v0, v0, 0x40

    .line 140
    or-int/lit8 v0, v0, 0x4

    .line 142
    :cond_6c
    iget-object v1, p0, Lcom/google/android/music/EmptyViewController;->mEmptyMusicView:Lcom/google/android/music/widgets/EmptyMusicView;

    invoke-virtual {v1, v0}, Lcom/google/android/music/widgets/EmptyMusicView;->setEmptyStateFlags(I)V

    goto :goto_12

    .line 147
    .end local v0           #flags:I
    :pswitch_72
    iget-boolean v1, p0, Lcom/google/android/music/EmptyViewController;->mPlaylistsAvailable:Z

    if-eqz v1, :cond_7e

    .line 148
    iget-object v1, p0, Lcom/google/android/music/EmptyViewController;->mEmptyMusicView:Lcom/google/android/music/widgets/EmptyMusicView;

    sget-object v2, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;->NONE:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    invoke-virtual {v1, v2}, Lcom/google/android/music/widgets/EmptyMusicView;->setEmptyState(Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;)V

    goto :goto_12

    .line 150
    :cond_7e
    iget-object v1, p0, Lcom/google/android/music/EmptyViewController;->mEmptyMusicView:Lcom/google/android/music/widgets/EmptyMusicView;

    sget-object v2, Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;->NO_PLAYLISTS:Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;

    invoke-virtual {v1, v2}, Lcom/google/android/music/widgets/EmptyMusicView;->setEmptyState(Lcom/google/android/music/widgets/EmptyMusicView$EmptyState;)V

    goto :goto_12

    .line 113
    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_13
        :pswitch_1b
        :pswitch_72
    .end packed-switch
.end method


# virtual methods
.method public onPause()V
    .registers 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/music/EmptyViewController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/music/EmptyViewController;->mMediaStoreImporterListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 96
    iget-object v0, p0, Lcom/google/android/music/EmptyViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/EmptyViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 97
    iget-object v0, p0, Lcom/google/android/music/EmptyViewController;->mSyncObserverHandle:Ljava/lang/Object;

    invoke-static {v0}, Landroid/content/ContentResolver;->removeStatusChangeListener(Ljava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lcom/google/android/music/EmptyViewController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v1, p0, Lcom/google/android/music/EmptyViewController;->mPreferenceWatcher:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 99
    return-void
.end method

.method public onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 70
    iput-boolean v3, p0, Lcom/google/android/music/EmptyViewController;->mIsInInitialization:Z

    .line 71
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 72
    const-string v1, "com.google.android.music.IMPORT_PENDING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    const-string v1, "com.google.android.music.IMPORT_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/google/android/music/EmptyViewController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/music/EmptyViewController;->mMediaStoreImporterListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 75
    iget-object v0, p0, Lcom/google/android/music/EmptyViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/music/store/MusicContent;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/music/EmptyViewController;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 77
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/music/EmptyViewController;->mSyncObserver:Landroid/content/SyncStatusObserver;

    invoke-static {v0, v1}, Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/EmptyViewController;->mSyncObserverHandle:Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lcom/google/android/music/EmptyViewController;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v1, p0, Lcom/google/android/music/EmptyViewController;->mPreferenceWatcher:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/EmptyViewController;->mIsInInitialization:Z

    .line 83
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/music/EmptyViewController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/google/android/music/store/MediaStoreImportService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    const-string v1, "MediaStoreImportService.status"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    iget-object v1, p0, Lcom/google/android/music/EmptyViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 87
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sUIBackgroundWorker:Lcom/google/android/music/Worker;

    new-instance v1, Lcom/google/android/music/EmptyViewController$1;

    invoke-direct {v1, p0}, Lcom/google/android/music/EmptyViewController$1;-><init>(Lcom/google/android/music/EmptyViewController;)V

    invoke-static {v0, v1}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsync(Lcom/google/android/music/Worker;Ljava/lang/Runnable;)V

    .line 92
    return-void
.end method

.method public setPossibleEmptyView(Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;)V
    .registers 3
    .parameter "noMusicView"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/music/EmptyViewController;->mCurrentPossibleState:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    if-eq v0, p1, :cond_9

    .line 106
    iput-object p1, p0, Lcom/google/android/music/EmptyViewController;->mCurrentPossibleState:Lcom/google/android/music/activitymanagement/MusicFragment$LayoutConfig$NoMusicView;

    .line 107
    invoke-direct {p0}, Lcom/google/android/music/EmptyViewController;->onVariablesChanged()V

    .line 109
    :cond_9
    return-void
.end method
