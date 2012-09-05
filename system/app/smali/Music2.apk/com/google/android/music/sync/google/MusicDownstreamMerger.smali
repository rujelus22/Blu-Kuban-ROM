.class Lcom/google/android/music/sync/google/MusicDownstreamMerger;
.super Lcom/google/android/music/sync/common/DownstreamMerger;
.source "MusicDownstreamMerger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;
    }
.end annotation


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private mBlockMerger:Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;

.field private final mContext:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private final mProtocolState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoteAccount:I

.field private final mStore:Lcom/google/android/music/store/Store;

.field private mUpdateRecentItemsIncrementally:Z

.field private final mUseVerboseLogging:Z


# direct methods
.method public constructor <init>(Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueue;ILandroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueue;",
            "I",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p5}, Lcom/google/android/music/sync/common/DownstreamMerger;-><init>(Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueue;ILjava/lang/String;)V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mUpdateRecentItemsIncrementally:Z

    .line 60
    const-class v0, Ljava/lang/Integer;

    const-string v1, "remote_account"

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mRemoteAccount:I

    .line 61
    invoke-static {p3}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mStore:Lcom/google/android/music/store/Store;

    .line 62
    iput-object p4, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mProtocolState:Ljava/util/Map;

    .line 63
    const-class v0, Landroid/accounts/Account;

    const-string v1, "account"

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    iput-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mAccount:Landroid/accounts/Account;

    .line 64
    iput-object p3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mContext:Landroid/content/Context;

    .line 65
    invoke-static {p5}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mUseVerboseLogging:Z

    .line 66
    return-void
.end method

.method private saveLastModifiedTimeIfLatest(Lcom/google/android/music/sync/common/QueueableSyncEntity;)V
    .registers 7
    .parameter

    .prologue
    .line 77
    instance-of v0, p1, Lcom/google/android/music/sync/google/model/Track;

    if-eqz v0, :cond_32

    .line 78
    const-class v0, Lcom/google/android/music/sync/google/model/Track;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/Track;

    iget-wide v1, v0, Lcom/google/android/music/sync/google/model/Track;->mLastModifiedTimestamp:J

    .line 79
    const-class v0, Ljava/lang/Long;

    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mProtocolState:Ljava/util/Map;

    const-string v4, "merger_track_version"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-gez v0, :cond_31

    .line 81
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mProtocolState:Ljava/util/Map;

    const-string v3, "merger_track_version"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_31
    :goto_31
    return-void

    .line 83
    :cond_32
    instance-of v0, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    if-eqz v0, :cond_64

    .line 84
    const-class v0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    iget-wide v1, v0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mLastModifiedTimestamp:J

    .line 86
    const-class v0, Ljava/lang/Long;

    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mProtocolState:Ljava/util/Map;

    const-string v4, "merger_playlist_version"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-gez v0, :cond_31

    .line 88
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mProtocolState:Ljava/util/Map;

    const-string v3, "merger_playlist_version"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_31

    .line 91
    :cond_64
    instance-of v0, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    if-eqz v0, :cond_31

    .line 92
    const-class v0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    iget-wide v1, v0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mLastModifiedTimestamp:J

    .line 94
    const-class v0, Ljava/lang/Long;

    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mProtocolState:Ljava/util/Map;

    const-string v4, "merger_plentry_version"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-gez v0, :cond_31

    .line 96
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mProtocolState:Ljava/util/Map;

    const-string v3, "merger_plentry_version"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_31
.end method


# virtual methods
.method public onEndMergeBlock(Z)V
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/SoftSyncException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 116
    if-eqz p1, :cond_ae

    .line 117
    :try_start_3
    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mAccount:Landroid/accounts/Account;

    invoke-static {}, Lcom/google/android/music/sync/google/ClientSyncState;->newBuilder()Lcom/google/android/music/sync/google/ClientSyncState$Builder;

    move-result-object v3

    const-class v0, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mProtocolState:Ljava/util/Map;

    const-string v5, "remote_account"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->setRemoteAccount(I)Lcom/google/android/music/sync/google/ClientSyncState$Builder;

    move-result-object v3

    const-class v0, Ljava/lang/Long;

    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mProtocolState:Ljava/util/Map;

    const-string v5, "merger_track_version"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->setRemoteTrackVersion(J)Lcom/google/android/music/sync/google/ClientSyncState$Builder;

    move-result-object v3

    const-class v0, Ljava/lang/Long;

    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mProtocolState:Ljava/util/Map;

    const-string v5, "merger_playlist_version"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->setRemotePlaylistVersion(J)Lcom/google/android/music/sync/google/ClientSyncState$Builder;

    move-result-object v3

    const-class v0, Ljava/lang/Long;

    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mProtocolState:Ljava/util/Map;

    const-string v5, "merger_plentry_version"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->setRemotePlentryVersion(J)Lcom/google/android/music/sync/google/ClientSyncState$Builder;

    move-result-object v3

    const-class v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mProtocolState:Ljava/util/Map;

    const-string v5, "etag_track"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->setEtagTrack(Ljava/lang/String;)Lcom/google/android/music/sync/google/ClientSyncState$Builder;

    move-result-object v3

    const-class v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mProtocolState:Ljava/util/Map;

    const-string v5, "etag_playlist"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->setEtagPlaylist(Ljava/lang/String;)Lcom/google/android/music/sync/google/ClientSyncState$Builder;

    move-result-object v3

    const-class v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mProtocolState:Ljava/util/Map;

    const-string v5, "etag_playlist_entry"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->setEtagPlaylistEntry(Ljava/lang/String;)Lcom/google/android/music/sync/google/ClientSyncState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/sync/google/ClientSyncState$Builder;->build()Lcom/google/android/music/sync/google/ClientSyncState;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/google/android/music/sync/google/ClientSyncState$Helpers;->set(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;Lcom/google/android/music/sync/google/ClientSyncState;)V
    :try_end_ae
    .catchall {:try_start_3 .. :try_end_ae} :catchall_f0
    .catch Lcom/google/android/music/sync/common/ProviderException; {:try_start_3 .. :try_end_ae} :catch_e7

    .line 140
    :cond_ae
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mBlockMerger:Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;

    invoke-virtual {v0}, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->safelyCloseStatements()V

    .line 141
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mStore:Lcom/google/android/music/store/Store;

    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 142
    iput-object v6, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 143
    if-eqz p1, :cond_c3

    .line 144
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mBlockMerger:Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;

    invoke-virtual {v0}, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->cleanupLocallyCachedFiles()V

    .line 147
    :cond_c3
    const-string v0, "MusicSyncAdapter"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 148
    const-string v0, "MusicSyncAdapter"

    const-string v1, "Merger: End of block."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_d3
    if-eqz p1, :cond_e6

    .line 151
    iget-boolean v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mUpdateRecentItemsIncrementally:Z

    if-eqz v0, :cond_e6

    .line 152
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/music/store/RecentItemsManager;->countRecentItems(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_107

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mUpdateRecentItemsIncrementally:Z

    .line 164
    :cond_e6
    :goto_e6
    return-void

    .line 137
    :catch_e7
    move-exception v0

    .line 138
    :try_start_e8
    new-instance v1, Lcom/google/android/music/sync/common/SoftSyncException;

    const-string v2, "Unable to set the sync state: "

    invoke-direct {v1, v2, v0}, Lcom/google/android/music/sync/common/SoftSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_f0
    .catchall {:try_start_e8 .. :try_end_f0} :catchall_f0

    .line 140
    :catchall_f0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mBlockMerger:Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;

    invoke-virtual {v1}, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->safelyCloseStatements()V

    .line 141
    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mStore:Lcom/google/android/music/store/Store;

    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v2, p1}, Lcom/google/android/music/store/Store;->endWriteTxn(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 142
    iput-object v6, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 143
    if-eqz p1, :cond_106

    .line 144
    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mBlockMerger:Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;

    invoke-virtual {v1}, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->cleanupLocallyCachedFiles()V

    :cond_106
    throw v0

    .line 160
    :cond_107
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/music/store/RecentItemsManager;->updateRecentItemsAsync(Landroid/content/Context;)V

    goto :goto_e6
.end method

.method public onStartMergeBlock()V
    .registers 7

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v0}, Lcom/google/android/music/store/Store;->beginWriteTxn()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 72
    new-instance v0, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;

    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mProtocolState:Ljava/util/Map;

    iget-boolean v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mUseVerboseLogging:Z

    iget-object v4, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mTag:Ljava/lang/String;

    iget v5, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mRemoteAccount:I

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;ZLjava/lang/String;I)V

    iput-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mBlockMerger:Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;

    .line 74
    return-void
.end method

.method public processMergeItem(Lcom/google/android/music/sync/common/QueueableSyncEntity;Lcom/google/android/music/sync/common/QueueableSyncEntity;)V
    .registers 5
    .parameter "serverEntity"
    .parameter "clientEntity"

    .prologue
    .line 105
    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->mBlockMerger:Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/music/sync/google/MusicDownstreamMerger$MusicBlockMerger;->processMergeItem(Lcom/google/android/music/sync/common/QueueableSyncEntity;Lcom/google/android/music/sync/common/QueueableSyncEntity;)Z

    move-result v0

    .line 106
    .local v0, processSuccessful:Z
    if-eqz v0, :cond_b

    .line 109
    invoke-direct {p0, p1}, Lcom/google/android/music/sync/google/MusicDownstreamMerger;->saveLastModifiedTimeIfLatest(Lcom/google/android/music/sync/common/QueueableSyncEntity;)V

    .line 111
    :cond_b
    return-void
.end method
