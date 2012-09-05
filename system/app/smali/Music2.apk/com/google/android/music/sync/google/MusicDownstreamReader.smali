.class Lcom/google/android/music/sync/google/MusicDownstreamReader;
.super Lcom/google/android/music/sync/common/DownstreamReader;
.source "MusicDownstreamReader.java"


# instance fields
.field private mProtocolState:Ljava/util/Map;
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

.field private mRemoteAccount:Ljava/lang/String;

.field private final mStore:Lcom/google/android/music/store/Store;


# direct methods
.method public constructor <init>(Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamFetchQueue;ILandroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamFetchQueue;",
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
    .line 44
    invoke-direct {p0, p1, p2, p5}, Lcom/google/android/music/sync/common/DownstreamReader;-><init>(Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamFetchQueue;ILjava/lang/String;)V

    .line 45
    invoke-static {p3}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamReader;->mStore:Lcom/google/android/music/store/Store;

    .line 46
    const-class v0, Ljava/lang/Integer;

    const-string v1, "remote_account"

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamReader;->mRemoteAccount:Ljava/lang/String;

    .line 48
    iput-object p4, p0, Lcom/google/android/music/sync/google/MusicDownstreamReader;->mProtocolState:Ljava/util/Map;

    .line 49
    return-void
.end method


# virtual methods
.method public processServerEntity(Lcom/google/android/music/sync/common/QueueableSyncEntity;)V
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/sync/common/HardSyncException;,
            Lcom/google/android/music/sync/common/SoftSyncException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x2

    .line 54
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamReader;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v0}, Lcom/google/android/music/store/Store;->beginRead()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 57
    :try_start_8
    instance-of v0, p1, Lcom/google/android/music/sync/google/model/Track;

    if-eqz v0, :cond_55

    .line 58
    const-class v0, Lcom/google/android/music/sync/google/model/Track;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/Track;

    .line 59
    iget-object v0, v0, Lcom/google/android/music/sync/google/model/Track;->mRemoteId:Ljava/lang/String;

    .line 60
    const-string v3, "MusicSyncAdapter"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 61
    const-string v3, "MusicSyncAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reader has server track "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_37
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamReader;->mRemoteAccount:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Lcom/google/android/music/store/MusicFile;->readMusicFile(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/music/store/MusicFile;)Lcom/google/android/music/store/MusicFile;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_fa

    .line 66
    invoke-static {v0}, Lcom/google/android/music/sync/google/model/Track;->parse(Lcom/google/android/music/store/MusicFile;)Lcom/google/android/music/sync/google/model/Track;
    :try_end_43
    .catchall {:try_start_8 .. :try_end_43} :catchall_d8

    move-result-object v0

    :goto_44
    move-object v1, v0

    .line 92
    :cond_45
    :goto_45
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamReader;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v0, v2}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 96
    :try_start_4a
    iget-object v0, p0, Lcom/google/android/music/sync/google/MusicDownstreamReader;->mMergeQueue:Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueue;

    new-instance v2, Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueueEntry;

    invoke-direct {v2, p1, v1}, Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueueEntry;-><init>(Lcom/google/android/music/sync/common/QueueableSyncEntity;Lcom/google/android/music/sync/common/QueueableSyncEntity;)V

    invoke-virtual {v0, v2}, Lcom/google/android/music/sync/common/AbstractSyncAdapter$DownstreamMergeQueue;->put(Ljava/lang/Object;)V
    :try_end_54
    .catch Lcom/google/android/music/sync/common/ClosableBlockingQueue$QueueClosedException; {:try_start_4a .. :try_end_54} :catch_df
    .catch Ljava/lang/InterruptedException; {:try_start_4a .. :try_end_54} :catch_f1

    .line 105
    :cond_54
    :goto_54
    return-void

    .line 68
    :cond_55
    :try_start_55
    instance-of v0, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    if-eqz v0, :cond_92

    .line 69
    const-class v0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    iget-object v0, v0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mRemoteId:Ljava/lang/String;

    .line 70
    const-string v3, "MusicSyncAdapter"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_84

    .line 71
    const-string v3, "MusicSyncAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reader has server playlist "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_84
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamReader;->mRemoteAccount:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Lcom/google/android/music/store/PlayList;->readPlayList(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/music/store/PlayList;)Lcom/google/android/music/store/PlayList;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_45

    .line 75
    invoke-static {v0}, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->parse(Lcom/google/android/music/store/PlayList;)Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    move-result-object v1

    goto :goto_45

    .line 77
    :cond_92
    instance-of v0, p1, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    if-eqz v0, :cond_d0

    .line 78
    const-class v0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    iget-object v0, v0, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->mRemoteId:Ljava/lang/String;

    .line 79
    const-string v3, "MusicSyncAdapter"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_c1

    .line 80
    const-string v3, "MusicSyncAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reader has server plentry "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_c1
    iget-object v3, p0, Lcom/google/android/music/sync/google/MusicDownstreamReader;->mRemoteAccount:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Lcom/google/android/music/store/PlayList$Item;->readItem(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/music/store/PlayList$Item;)Lcom/google/android/music/store/PlayList$Item;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_45

    .line 85
    invoke-static {v0}, Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;->parse(Lcom/google/android/music/store/PlayList$Item;)Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;

    move-result-object v1

    goto/16 :goto_45

    .line 88
    :cond_d0
    new-instance v0, Lcom/google/android/music/sync/common/HardSyncException;

    const-string v1, "Received a downstream server entity that is of unknown type.  Fatal error."

    invoke-direct {v0, v1}, Lcom/google/android/music/sync/common/HardSyncException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d8
    .catchall {:try_start_55 .. :try_end_d8} :catchall_d8

    .line 92
    :catchall_d8
    move-exception v0

    iget-object v1, p0, Lcom/google/android/music/sync/google/MusicDownstreamReader;->mStore:Lcom/google/android/music/store/Store;

    invoke-virtual {v1, v2}, Lcom/google/android/music/store/Store;->endRead(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    .line 97
    :catch_df
    move-exception v0

    .line 98
    const-string v0, "MusicSyncAdapter"

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 99
    const-string v0, "MusicSyncAdapter"

    const-string v1, "Failed to put an entry into the merge queue.  Bailing."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_54

    .line 102
    :catch_f1
    move-exception v0

    .line 103
    new-instance v1, Lcom/google/android/music/sync/common/SoftSyncException;

    const-string v2, "Interrupted while putting into merge queue: "

    invoke-direct {v1, v2, v0}, Lcom/google/android/music/sync/common/SoftSyncException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_fa
    move-object v0, v1

    goto/16 :goto_44
.end method
