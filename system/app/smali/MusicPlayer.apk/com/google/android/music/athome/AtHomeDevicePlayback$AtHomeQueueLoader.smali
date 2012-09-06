.class final Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;
.super Lcom/google/android/music/Worker;
.source "AtHomeDevicePlayback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/athome/AtHomeDevicePlayback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AtHomeQueueLoader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;,
        Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;,
        Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$CancelledException;
    }
.end annotation


# instance fields
.field private final mAlbumArtMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppended:I

.field private mCallbacks:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;

.field private volatile mCancelled:Z

.field private mDeviceAccount:Ljava/lang/String;

.field private mFirstAddedSongId:J

.field private mFreeQueuePositionsCount:I

.field private mGeneratedId:J

.field private mInsertAfterSongId:J

.field private mMedialist:Lcom/google/android/music/medialist/SongList;

.field private mNoUnusedRemoteSongsAfter:I

.field private mNoUnusedRemoteSongsBefore:I

.field private mPlaySongs:Z

.field private mPosition:I

.field private mPreShuffle:Z

.field private mPrepended:I

.field private mQueueOutOfSync:Z

.field private mQueuePositionUpdated:Z

.field private mRatedDownSongs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionId:J

.field private mShuffler:Lcom/google/android/music/StrictShuffler;

.field private mSkipRatedDown:Z

.field private mSkipped:I

.field private final mSongPerToken:I

.field private mSubmitterId:J

.field private mUseRatedDown:Z

.field final synthetic this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;


# direct methods
.method private constructor <init>(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V
    .registers 7
    .parameter

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 312
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    .line 314
    const-string v0, "AtHomeQueueLoader"

    invoke-direct {p0, v0}, Lcom/google/android/music/Worker;-><init>(Ljava/lang/String;)V

    .line 142
    iput-boolean v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mCancelled:Z

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mAlbumArtMap:Ljava/util/Map;

    .line 162
    iput-wide v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mFirstAddedSongId:J

    .line 171
    iput-boolean v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mQueueOutOfSync:Z

    .line 174
    iput-boolean v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mPlaySongs:Z

    .line 178
    iput-boolean v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mQueuePositionUpdated:Z

    .line 181
    iput-boolean v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mUseRatedDown:Z

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mSkipRatedDown:Z

    .line 188
    iput-wide v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mInsertAfterSongId:J

    .line 310
    new-instance v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;

    invoke-direct {v0, p0, v2}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;Lcom/google/android/music/athome/AtHomeDevicePlayback$1;)V

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mCallbacks:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;

    .line 315
    iput v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mPosition:I

    .line 316
    iput-object v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mMedialist:Lcom/google/android/music/medialist/SongList;

    .line 317
    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->getContext()Landroid/content/Context;
    invoke-static {p1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$1500(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "music_at_home_songs_per_token"

    const/16 v2, 0x32

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mSongPerToken:I

    .line 319
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/music/athome/AtHomeDevicePlayback;Lcom/google/android/music/athome/AtHomeDevicePlayback$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->reset()V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mQueueOutOfSync:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mFreeQueuePositionsCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mPlaySongs:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mQueuePositionUpdated:Z

    return v0
.end method

.method static synthetic access$502(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mQueuePositionUpdated:Z

    return p1
.end method

.method static synthetic access$600(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mSessionId:J

    return-wide v0
.end method

.method static synthetic access$7600(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;Lcom/google/android/music/medialist/SongList;IZ)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->addSongs(Lcom/google/android/music/medialist/SongList;IZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mFirstAddedSongId:J

    return-wide v0
.end method

.method private declared-synchronized addSongs(Lcom/google/android/music/medialist/SongList;IZ)V
    .registers 7
    .parameter "songs"
    .parameter "position"
    .parameter "playSongs"

    .prologue
    const/4 v1, 0x1

    .line 339
    monitor-enter p0

    const/4 v2, 0x1

    :try_start_3
    invoke-virtual {p0, v2, p1}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 340
    .local v0, m:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 341
    if-eqz p3, :cond_1c

    :goto_b
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 342
    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 343
    const-string v1, "aah.Music"

    const-string v2, "Failed to add songs"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1e

    .line 345
    :cond_1a
    monitor-exit p0

    return-void

    .line 341
    :cond_1c
    const/4 v1, 0x0

    goto :goto_b

    .line 339
    .end local v0           #m:Landroid/os/Message;
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private appendShuffledSongs(Landroid/content/ContentResolver;Landroid/database/Cursor;I)V
    .registers 15
    .parameter "resolver"
    .parameter "cursor"
    .parameter "firstItemPosition"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$CancelledException;,
            Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1026
    const/4 v7, 0x0

    .line 1027
    .local v7, done:Z
    :goto_2
    iget v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mFreeQueuePositionsCount:I

    if-lez v0, :cond_55

    if-nez v7, :cond_55

    .line 1028
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->throwIfCancelled()V

    .line 1029
    iget v10, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mSongPerToken:I

    .line 1030
    .local v10, toAddInChunk:I
    iget v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mFreeQueuePositionsCount:I

    if-le v10, v0, :cond_13

    .line 1031
    iget v10, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mFreeQueuePositionsCount:I

    .line 1034
    :cond_13
    const/4 v6, 0x0

    .line 1035
    .local v6, addedInChunk:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 1037
    .local v3, songs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 1040
    .local v4, serverIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, -0x1

    if-eq p3, v0, :cond_3b

    invoke-interface {p2, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_3b

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1041
    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->processNewSong(Landroid/content/ContentResolver;Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;Z)Lcom/google/android/music/athome/api/AtHomeSongInfo;

    move-result-object v8

    .line 1043
    .local v8, firstSong:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    if-eqz v8, :cond_3b

    .line 1044
    add-int/lit8 v6, v6, 0x1

    .line 1045
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mShuffler:Lcom/google/android/music/StrictShuffler;

    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/StrictShuffler;->injectHistoricalValue(I)V

    .line 1049
    .end local v8           #firstSong:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    :cond_3b
    :goto_3b
    if-ge v6, v10, :cond_50

    if-nez v7, :cond_50

    .line 1050
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->throwIfCancelled()V

    .line 1051
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->getRandomSong(Landroid/content/ContentResolver;Landroid/database/Cursor;)Lcom/google/android/music/athome/api/AtHomeSongInfo;

    move-result-object v9

    .line 1052
    .local v9, song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    if-nez v9, :cond_4a

    .line 1053
    const/4 v7, 0x1

    goto :goto_3b

    .line 1055
    :cond_4a
    invoke-direct {p0, v9, v3, v4, v5}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->processNewSong(Lcom/google/android/music/athome/api/AtHomeSongInfo;Ljava/util/List;Ljava/util/List;Z)V

    .line 1056
    add-int/lit8 v6, v6, 0x1

    goto :goto_3b

    .line 1059
    .end local v9           #song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    :cond_50
    const/4 v0, 0x0

    invoke-direct {p0, v3, v4, v5, v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->processNewSongs(Ljava/util/List;Ljava/util/List;ZLjava/util/List;)V

    goto :goto_2

    .line 1061
    .end local v3           #songs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    .end local v4           #serverIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #addedInChunk:I
    .end local v10           #toAddInChunk:I
    :cond_55
    return-void
.end method

.method private appendSongs(Landroid/content/ContentResolver;Landroid/database/Cursor;)V
    .registers 12
    .parameter "resolver"
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$CancelledException;,
            Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 700
    :goto_1
    iget v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mFreeQueuePositionsCount:I

    if-lez v0, :cond_3d

    invoke-interface {p2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 701
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->throwIfCancelled()V

    .line 702
    iget v8, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mSongPerToken:I

    .line 703
    .local v8, toAddInChunk:I
    iget v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mFreeQueuePositionsCount:I

    if-le v8, v0, :cond_16

    .line 704
    iget v8, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mFreeQueuePositionsCount:I

    .line 707
    :cond_16
    const/4 v6, 0x0

    .line 708
    .local v6, addedInChunk:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 710
    .local v3, songs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 712
    .local v4, serverIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_21
    :goto_21
    if-ge v6, v8, :cond_2c

    .line 713
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->throwIfCancelled()V

    .line 714
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_31

    .line 724
    :cond_2c
    const/4 v0, 0x0

    invoke-direct {p0, v3, v4, v5, v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->processNewSongs(Ljava/util/List;Ljava/util/List;ZLjava/util/List;)V

    goto :goto_1

    :cond_31
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 718
    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->processNewSong(Landroid/content/ContentResolver;Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;Z)Lcom/google/android/music/athome/api/AtHomeSongInfo;

    move-result-object v7

    .line 720
    .local v7, song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    if-eqz v7, :cond_21

    .line 721
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 726
    .end local v3           #songs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    .end local v4           #serverIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #addedInChunk:I
    .end local v7           #song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    .end local v8           #toAddInChunk:I
    :cond_3d
    return-void
.end method

.method private cleanupShuffler()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1017
    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mShuffler:Lcom/google/android/music/StrictShuffler;

    .line 1018
    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mRatedDownSongs:Ljava/util/LinkedList;

    .line 1019
    return-void
.end method

.method private getRandomSong(Landroid/content/ContentResolver;Landroid/database/Cursor;)Lcom/google/android/music/athome/api/AtHomeSongInfo;
    .registers 16
    .parameter "resolver"
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$CancelledException;
        }
    .end annotation

    .prologue
    .line 1232
    const/4 v0, 0x0

    .line 1233
    .local v0, done:Z
    const/4 v8, 0x0

    .line 1235
    .local v8, song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    iget-boolean v10, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mUseRatedDown:Z

    if-eqz v10, :cond_19

    .line 1236
    iget-object v10, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mRatedDownSongs:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_10

    .line 1238
    const/4 v10, 0x0

    .line 1329
    :goto_f
    return-object v10

    .line 1240
    :cond_10
    iget-object v10, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mRatedDownSongs:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/music/athome/api/AtHomeSongInfo;

    goto :goto_f

    .line 1244
    :cond_19
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 1246
    .local v1, howManyInCursor:I
    :cond_1d
    :goto_1d
    if-nez v8, :cond_f6

    if-nez v0, :cond_f6

    .line 1247
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->throwIfCancelled()V

    .line 1249
    const/4 v6, 0x0

    .line 1250
    .local v6, possiblePosition:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_26
    const/4 v10, 0x3

    if-ge v2, v10, :cond_34

    if-nez v8, :cond_34

    .line 1252
    iget-object v10, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mShuffler:Lcom/google/android/music/StrictShuffler;

    invoke-virtual {v10}, Lcom/google/android/music/StrictShuffler;->getHowManyInHistory()I

    move-result v10

    if-lt v10, v1, :cond_64

    .line 1254
    const/4 v0, 0x1

    .line 1266
    :cond_34
    if-nez v8, :cond_c9

    if-nez v0, :cond_c9

    .line 1269
    iget v10, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mNoUnusedRemoteSongsAfter:I

    if-ge v6, v10, :cond_94

    const/4 v4, 0x1

    .line 1270
    .local v4, lookForward:Z
    :goto_3d
    iget v10, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mNoUnusedRemoteSongsBefore:I

    if-le v6, v10, :cond_96

    const/4 v3, 0x1

    .line 1271
    .local v3, lookBack:Z
    :goto_42
    const/4 v2, 0x0

    .line 1272
    :cond_43
    :goto_43
    if-nez v8, :cond_be

    if-nez v4, :cond_49

    if-eqz v3, :cond_be

    .line 1273
    :cond_49
    add-int/lit8 v2, v2, 0x1

    .line 1274
    if-eqz v4, :cond_56

    .line 1275
    add-int v5, v2, v6

    .line 1276
    .local v5, pos:I
    iget v10, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mNoUnusedRemoteSongsAfter:I

    if-le v5, v10, :cond_98

    .line 1277
    const/4 v4, 0x0

    .line 1278
    iput v6, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mNoUnusedRemoteSongsAfter:I

    .line 1285
    .end local v5           #pos:I
    :cond_56
    :goto_56
    if-nez v8, :cond_43

    if-eqz v3, :cond_43

    .line 1286
    sub-int v5, v6, v2

    .line 1287
    .restart local v5       #pos:I
    iget v10, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mNoUnusedRemoteSongsBefore:I

    if-ge v5, v10, :cond_ab

    .line 1288
    const/4 v3, 0x0

    .line 1289
    iput v6, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mNoUnusedRemoteSongsBefore:I

    goto :goto_43

    .line 1258
    .end local v3           #lookBack:Z
    .end local v4           #lookForward:Z
    .end local v5           #pos:I
    :cond_64
    iget-object v10, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mShuffler:Lcom/google/android/music/StrictShuffler;

    invoke-virtual {v10, v1}, Lcom/google/android/music/StrictShuffler;->nextInt(I)I

    move-result v6

    .line 1259
    invoke-interface {p2, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v10

    if-nez v10, :cond_8d

    .line 1260
    const-string v10, "aah.Music"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to move to position "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/Exception;

    invoke-direct {v12}, Ljava/lang/Exception;-><init>()V

    invoke-static {v10, v11, v12}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1263
    :cond_8d
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->getSongInfoFromMainCursor(Landroid/content/ContentResolver;Landroid/database/Cursor;)Lcom/google/android/music/athome/api/AtHomeSongInfo;

    move-result-object v8

    .line 1250
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 1269
    :cond_94
    const/4 v4, 0x0

    goto :goto_3d

    .line 1270
    .restart local v4       #lookForward:Z
    :cond_96
    const/4 v3, 0x0

    goto :goto_42

    .line 1279
    .restart local v3       #lookBack:Z
    .restart local v5       #pos:I
    :cond_98
    iget-object v10, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mShuffler:Lcom/google/android/music/StrictShuffler;

    invoke-virtual {v10, v5}, Lcom/google/android/music/StrictShuffler;->isInHistory(I)Z

    move-result v10

    if-nez v10, :cond_56

    .line 1280
    invoke-interface {p2, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v10

    if-eqz v10, :cond_56

    .line 1281
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->getSongInfoFromMainCursor(Landroid/content/ContentResolver;Landroid/database/Cursor;)Lcom/google/android/music/athome/api/AtHomeSongInfo;

    move-result-object v8

    goto :goto_56

    .line 1290
    :cond_ab
    iget-object v10, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mShuffler:Lcom/google/android/music/StrictShuffler;

    invoke-virtual {v10, v5}, Lcom/google/android/music/StrictShuffler;->isInHistory(I)Z

    move-result v10

    if-nez v10, :cond_43

    .line 1291
    invoke-interface {p2, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v10

    if-eqz v10, :cond_43

    .line 1292
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->getSongInfoFromMainCursor(Landroid/content/ContentResolver;Landroid/database/Cursor;)Lcom/google/android/music/athome/api/AtHomeSongInfo;

    move-result-object v8

    goto :goto_43

    .line 1297
    .end local v5           #pos:I
    :cond_be
    if-eqz v8, :cond_c9

    .line 1300
    iget-object v10, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mShuffler:Lcom/google/android/music/StrictShuffler;

    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/google/android/music/StrictShuffler;->injectHistoricalValue(I)V

    .line 1303
    .end local v3           #lookBack:Z
    .end local v4           #lookForward:Z
    :cond_c9
    if-nez v8, :cond_ce

    .line 1304
    const/4 v0, 0x1

    goto/16 :goto_1d

    .line 1305
    :cond_ce
    iget-boolean v10, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mSkipRatedDown:Z

    if-eqz v10, :cond_1d

    .line 1308
    const/4 v9, 0x0

    .line 1310
    .local v9, songRating:I
    const/4 v10, 0x1

    if-eq v9, v10, :cond_dc

    const/4 v10, 0x1

    if-eq v9, v10, :cond_dc

    const/4 v10, 0x2

    if-ne v9, v10, :cond_f4

    :cond_dc
    const/4 v7, 0x1

    .line 1313
    .local v7, ratedDown:Z
    :goto_dd
    if-eqz v7, :cond_1d

    .line 1314
    iget-object v10, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mRatedDownSongs:Ljava/util/LinkedList;

    invoke-virtual {v10, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1315
    iget-object v10, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mRatedDownSongs:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v10

    const/16 v11, 0x64

    if-le v10, v11, :cond_f1

    .line 1316
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mSkipRatedDown:Z

    .line 1318
    :cond_f1
    const/4 v8, 0x0

    .line 1319
    goto/16 :goto_1d

    .line 1310
    .end local v7           #ratedDown:Z
    :cond_f4
    const/4 v7, 0x0

    goto :goto_dd

    .line 1324
    .end local v2           #i:I
    .end local v6           #possiblePosition:I
    .end local v9           #songRating:I
    :cond_f6
    if-nez v8, :cond_105

    iget-boolean v10, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mUseRatedDown:Z

    if-nez v10, :cond_105

    .line 1325
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mUseRatedDown:Z

    .line 1326
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->getRandomSong(Landroid/content/ContentResolver;Landroid/database/Cursor;)Lcom/google/android/music/athome/api/AtHomeSongInfo;

    move-result-object v10

    goto/16 :goto_f

    :cond_105
    move-object v10, v8

    .line 1329
    goto/16 :goto_f
.end method

.method private getShareToken(Ljava/lang/String;Ljava/util/List;)Landroid/util/Pair;
    .registers 13
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$CancelledException;,
            Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;
        }
    .end annotation

    .prologue
    const-wide/16 v5, 0x0

    const/4 v9, 0x0

    const/16 v0, 0x1391

    .line 897
    .line 903
    const/4 v1, 0x0

    move v2, v1

    move-wide v3, v5

    :goto_8
    const/16 v1, 0xa

    if-ge v2, v1, :cond_af

    .line 906
    cmp-long v1, v3, v5

    if-lez v1, :cond_16

    .line 907
    const-wide/16 v7, 0x3e8

    mul-long/2addr v3, v7

    :try_start_13
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 909
    :cond_16
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mTokenRetriever:Lcom/google/android/music/athome/TokenRetriever;
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$3900(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/TokenRetriever;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/google/android/music/athome/TokenRetriever;->getShareToken(Ljava/lang/String;Ljava/util/List;)Landroid/util/Pair;
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_1f} :catch_21
    .catch Ljava/io/InterruptedIOException; {:try_start_13 .. :try_end_1f} :catch_2f
    .catch Lcom/google/android/music/dl/ServiceUnavailableException; {:try_start_13 .. :try_end_1f} :catch_3d
    .catch Lcom/google/android/music/dl/ServerRejectionException; {:try_start_13 .. :try_end_1f} :catch_67
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_13 .. :try_end_1f} :catch_85
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1f} :catch_9a

    move-result-object v0

    return-object v0

    .line 910
    :catch_21
    move-exception v0

    .line 911
    const-string v1, "aah.Music"

    const-string v2, "Interrupted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 912
    new-instance v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$CancelledException;

    invoke-direct {v0, p0, v9}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$CancelledException;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;Lcom/google/android/music/athome/AtHomeDevicePlayback$1;)V

    throw v0

    .line 913
    :catch_2f
    move-exception v0

    .line 914
    const-string v1, "aah.Music"

    const-string v2, "Interrupted IO"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 915
    new-instance v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$CancelledException;

    invoke-direct {v0, p0, v9}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$CancelledException;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;Lcom/google/android/music/athome/AtHomeDevicePlayback$1;)V

    throw v0

    .line 916
    :catch_3d
    move-exception v1

    .line 917
    invoke-virtual {v1}, Lcom/google/android/music/dl/ServiceUnavailableException;->getRetryAfterInSeconds()J

    move-result-wide v3

    .line 918
    const-wide/16 v7, 0xf

    cmp-long v7, v3, v7

    if-lez v7, :cond_aa

    .line 919
    new-instance v2, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Server asked to wait for too long ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sec)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v2

    .line 923
    :catch_67
    move-exception v1

    .line 925
    sget-object v2, Lcom/google/android/music/athome/AtHomeDevicePlayback$20;->$SwitchMap$com$google$android$music$dl$ServerRejectionException$RejectionReason:[I

    invoke-virtual {v1}, Lcom/google/android/music/dl/ServerRejectionException;->getRejectionReason()Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/dl/ServerRejectionException$RejectionReason;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_b8

    .line 936
    :goto_77
    new-instance v2, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;

    const-string v3, "Server rejected share token request"

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v2

    .line 927
    :pswitch_7f
    const/4 v0, 0x6

    .line 928
    goto :goto_77

    .line 930
    :pswitch_81
    const/4 v0, 0x5

    .line 931
    goto :goto_77

    .line 933
    :pswitch_83
    const/4 v0, 0x7

    goto :goto_77

    .line 938
    :catch_85
    move-exception v1

    .line 939
    invoke-virtual {v1}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v2

    packed-switch v2, :pswitch_data_c2

    .line 951
    :goto_8d
    :pswitch_8d
    new-instance v2, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;

    const-string v3, "Failed to get share token"

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v2

    .line 941
    :pswitch_95
    const/4 v0, 0x4

    .line 942
    goto :goto_8d

    .line 948
    :pswitch_97
    const/16 v0, 0x138e

    goto :goto_8d

    .line 953
    :catch_9a
    move-exception v1

    .line 954
    const-string v2, "aah.Music"

    const-string v3, "IOException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 955
    new-instance v2, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;

    const-string v3, "Failed to get share token"

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v2

    .line 903
    :cond_aa
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_8

    .line 960
    :cond_af
    new-instance v1, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;

    const-string v2, "Failed to get share token after 10 attemps"

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;Ljava/lang/String;I)V

    throw v1

    .line 925
    nop

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_7f
        :pswitch_81
        :pswitch_83
    .end packed-switch

    .line 939
    :pswitch_data_c2
    .packed-switch 0x191
        :pswitch_95
        :pswitch_8d
        :pswitch_8d
        :pswitch_97
    .end packed-switch
.end method

.method private getSongInfoFromDetailCursor(Landroid/database/Cursor;)Lcom/google/android/music/athome/api/AtHomeSongInfo;
    .registers 10
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x3

    .line 965
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 966
    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 967
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_31

    .line 968
    const-string v2, "aah.Music"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected side-loaded song: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v2, v0, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 994
    :goto_30
    return-object v0

    .line 971
    :cond_31
    new-instance v2, Lcom/google/android/music/athome/api/AtHomeSongInfo;

    invoke-direct {v2}, Lcom/google/android/music/athome/api/AtHomeSongInfo;-><init>()V

    .line 972
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->setAlbum(Ljava/lang/String;)V

    .line 973
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->setAlbumArtist(Ljava/lang/String;)V

    .line 975
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 976
    invoke-virtual {v2, v3, v4}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->setAlbumId(J)V

    .line 977
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->setArtist(Ljava/lang/String;)V

    .line 978
    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->setDuration(J)V

    .line 979
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->setServerId(Ljava/lang/String;)V

    .line 980
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->setTitle(Ljava/lang/String;)V

    .line 981
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->setSongId(J)V

    .line 983
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mAlbumArtMap:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 984
    if-nez v0, :cond_9c

    .line 985
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2800(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/google/android/music/store/Store;->getRemoteArtLocationForAlbum(J)Ljava/lang/String;

    move-result-object v0

    .line 986
    iget-object v5, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mAlbumArtMap:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    :cond_9c
    invoke-virtual {v2, v0}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->setAlbumArtUrl(Ljava/lang/String;)V

    .line 990
    invoke-virtual {v2}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getServerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 991
    const-string v0, "aah.Music"

    const-string v2, "Empty server track id"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 992
    goto/16 :goto_30

    :cond_b3
    move-object v0, v2

    .line 994
    goto/16 :goto_30
.end method

.method private getSongInfoFromMainCursor(Landroid/content/ContentResolver;Landroid/database/Cursor;)Lcom/google/android/music/athome/api/AtHomeSongInfo;
    .registers 13
    .parameter "resolver"
    .parameter "mainCursor"

    .prologue
    const/4 v3, 0x0

    .line 871
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 872
    .local v7, audioId:J
    invoke-static {v7, v8}, Lcom/google/android/music/store/MusicContent$XAudio;->getRemoteAudio(J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/athome/AtHomeConstants;->MUSIC_COLS:[Ljava/lang/String;

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 875
    .local v6, audio:Landroid/database/Cursor;
    if-eqz v6, :cond_30

    .line 877
    :try_start_15
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 878
    invoke-direct {p0, v6}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->getSongInfoFromDetailCursor(Landroid/database/Cursor;)Lcom/google/android/music/athome/api/AtHomeSongInfo;

    move-result-object v9

    .line 879
    .local v9, song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    if-eqz v9, :cond_2d

    .line 880
    iget-wide v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mSubmitterId:J

    invoke-virtual {v9, v0, v1}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->setSubmitterId(J)V

    .line 881
    invoke-virtual {v9, v7, v8}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->setLocalAudioId(J)V
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_38

    .line 886
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 891
    .end local v9           #song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    :goto_2c
    return-object v9

    .line 886
    :cond_2d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 890
    :cond_30
    iget v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mSkipped:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mSkipped:I

    move-object v9, v3

    .line 891
    goto :goto_2c

    .line 886
    :catchall_38
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private initShuffler(II)V
    .registers 6
    .parameter "listSize"
    .parameter "maxSongsToSelect"

    .prologue
    const/4 v2, 0x0

    .line 1000
    mul-int/lit8 v1, p2, 0x4

    add-int/lit8 v0, v1, 0x64

    .line 1002
    .local v0, historySize:I
    if-ge p1, v0, :cond_8

    .line 1003
    move v0, p1

    .line 1005
    :cond_8
    new-instance v1, Lcom/google/android/music/StrictShuffler;

    invoke-direct {v1, v0}, Lcom/google/android/music/StrictShuffler;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mShuffler:Lcom/google/android/music/StrictShuffler;

    .line 1006
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mShuffler:Lcom/google/android/music/StrictShuffler;

    invoke-virtual {v1, v0}, Lcom/google/android/music/StrictShuffler;->setHistorySize(I)V

    .line 1008
    iput v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mNoUnusedRemoteSongsBefore:I

    .line 1009
    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mNoUnusedRemoteSongsAfter:I

    .line 1011
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mRatedDownSongs:Ljava/util/LinkedList;

    .line 1012
    iput-boolean v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mUseRatedDown:Z

    .line 1013
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mSkipRatedDown:Z

    .line 1014
    return-void
.end method

.method private prepareQueue(II)V
    .registers 35
    .parameter "itemsToAdd"
    .parameter "maxQueueSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;,
            Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$CancelledException;
        }
    .end annotation

    .prologue
    .line 607
    invoke-static {}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$1800()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 608
    const-string v3, "aah.Music"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Preparing to add list of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " items. Max q size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_2c
    const-wide/16 v3, -0x1

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mInsertAfterSongId:J

    .line 612
    if-gtz p1, :cond_35

    .line 694
    :cond_34
    :goto_34
    return-void

    .line 621
    :cond_35
    :try_start_35
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->waitForValidQueue()Z
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$3100(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Z

    move-result v3

    if-nez v3, :cond_53

    .line 622
    new-instance v3, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;

    const-string v4, "Failed waiting for current queue"

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;Ljava/lang/String;)V

    throw v3
    :try_end_49
    .catch Ljava/lang/InterruptedException; {:try_start_35 .. :try_end_49} :catch_49

    .line 624
    :catch_49
    move-exception v24

    .line 625
    .local v24, e:Ljava/lang/InterruptedException;
    new-instance v3, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$CancelledException;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$CancelledException;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;Lcom/google/android/music/athome/AtHomeDevicePlayback$1;)V

    throw v3

    .line 627
    .end local v24           #e:Ljava/lang/InterruptedException;
    :cond_53
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/athome/AtHomePlayQueue;->getSize()I

    move-result v3

    sub-int v3, p2, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mFreeQueuePositionsCount:I

    .line 628
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->min(II)I

    move-result v29

    .line 629
    .local v29, wantToAdd:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mFreeQueuePositionsCount:I

    sub-int v25, v29, v3

    .line 632
    .local v25, extraSpacesNeeded:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$200(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v30

    monitor-enter v30

    .line 633
    :try_start_78
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v31

    monitor-enter v31
    :try_end_81
    .catchall {:try_start_78 .. :try_end_81} :catchall_1ad

    .line 634
    if-lez v25, :cond_158

    .line 641
    :try_start_83
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mPreShuffle:Z

    if-nez v3, :cond_19c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mShuffleMode:I
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2200(Lcom/google/android/music/athome/AtHomeDevicePlayback;)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeUtils;->isShuffle(I)Z

    move-result v3

    if-eqz v3, :cond_19c

    const/16 v27, 0x1

    .line 642
    .local v27, shuffleOnTungsten:Z
    :goto_99
    if-eqz v27, :cond_a1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mPlaySongs:Z

    if-eqz v3, :cond_158

    .line 643
    :cond_a1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/athome/AtHomePlayQueue;->getSize()I

    move-result v3

    move/from16 v0, v25

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v28

    .line 644
    .local v28, toRemove:I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mPlaySongs:Z

    if-nez v3, :cond_e4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mCurrentSong:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$3200(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/AtHomeSongInfo;

    move-result-object v3

    if-eqz v3, :cond_e4

    .line 645
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mCurrentSong:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    invoke-static {v4}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$3200(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/AtHomeSongInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getQueueId()J

    move-result-wide v4

    const/4 v7, -0x1

    invoke-virtual {v3, v4, v5, v7}, Lcom/google/android/music/athome/AtHomePlayQueue;->getPosition(JI)I

    move-result v23

    .line 647
    .local v23, currentSongPosition:I
    move/from16 v0, v28

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v28

    .line 649
    .end local v23           #currentSongPosition:I
    :cond_e4
    if-lez v28, :cond_158

    .line 650
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v3

    add-int/lit8 v4, v28, -0x1

    invoke-virtual {v3, v4}, Lcom/google/android/music/athome/AtHomePlayQueue;->getSong(I)Lcom/google/android/music/athome/api/AtHomeSongInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getQueueId()J

    move-result-wide v9

    .line 652
    .local v9, lastSongToRemoveId:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$300(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/MusicConnector;

    move-result-object v3

    if-eqz v3, :cond_1a0

    .line 653
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->throwIfCancelled()V

    .line 654
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/athome/AtHomePlayQueue;->getVersion()I

    move-result v3

    add-int/lit8 v6, v3, 0x1

    .line 655
    .local v6, version:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mSessionId:J

    const-wide/16 v7, -0x1

    const/4 v11, 0x0

    invoke-virtual/range {v3 .. v11}, Lcom/google/android/music/athome/AtHomePlayQueue;->removeSongsInRange(JIJJLcom/google/android/music/athome/AtHomePlayQueue$OnRemovedHandler;)Lcom/google/android/music/athome/api/AtHomeModificationResult;

    .line 658
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$300(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/MusicConnector;

    move-result-object v11

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mSessionId:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mSubmitterId:J

    const-wide/16 v17, -0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mCallbacks:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->mRemoveSongsInRangeHandler:Lcom/google/android/music/athome/api/MusicConnector$OnRemoveSongsInRange;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->access$3300(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;)Lcom/google/android/music/athome/api/MusicConnector$OnRemoveSongsInRange;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mCallbacks:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->mQueueLoaderErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->access$2700(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;)Landroid/support/place/rpc/RpcErrorHandler;

    move-result-object v22

    move/from16 v16, v6

    move-wide/from16 v19, v9

    invoke-virtual/range {v11 .. v22}, Lcom/google/android/music/athome/api/MusicConnector;->removeSongsInRange(JJIJJLcom/google/android/music/athome/api/MusicConnector$OnRemoveSongsInRange;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 664
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mFreeQueuePositionsCount:I

    add-int v3, v3, v28

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mFreeQueuePositionsCount:I

    .line 672
    .end local v6           #version:I
    .end local v9           #lastSongToRemoveId:J
    .end local v27           #shuffleOnTungsten:Z
    .end local v28           #toRemove:I
    :cond_158
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/athome/AtHomePlayQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_182

    .line 673
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mPlaySongs:Z

    if-eqz v3, :cond_1b0

    .line 674
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/athome/AtHomePlayQueue;->getLastSong()Lcom/google/android/music/athome/api/AtHomeSongInfo;

    move-result-object v26

    .line 675
    .local v26, lastSong:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    if-eqz v26, :cond_182

    .line 676
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getQueueId()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mInsertAfterSongId:J

    .line 682
    .end local v26           #lastSong:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    :cond_182
    :goto_182
    monitor-exit v31
    :try_end_183
    .catchall {:try_start_83 .. :try_end_183} :catchall_1aa

    .line 683
    :try_start_183
    monitor-exit v30
    :try_end_184
    .catchall {:try_start_183 .. :try_end_184} :catchall_1ad

    .line 686
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mPlaySongs:Z

    if-nez v3, :cond_34

    .line 687
    sget-object v3, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    new-instance v4, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$1;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$1;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;II)V

    invoke-virtual {v3, v4}, Lcom/google/android/music/Worker;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_34

    .line 641
    :cond_19c
    const/16 v27, 0x0

    goto/16 :goto_99

    .line 666
    .restart local v9       #lastSongToRemoveId:J
    .restart local v27       #shuffleOnTungsten:Z
    .restart local v28       #toRemove:I
    :cond_1a0
    :try_start_1a0
    new-instance v3, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;

    const-string v4, "Disconnected"

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;Ljava/lang/String;)V

    throw v3

    .line 682
    .end local v9           #lastSongToRemoveId:J
    .end local v27           #shuffleOnTungsten:Z
    .end local v28           #toRemove:I
    :catchall_1aa
    move-exception v3

    monitor-exit v31
    :try_end_1ac
    .catchall {:try_start_1a0 .. :try_end_1ac} :catchall_1aa

    :try_start_1ac
    throw v3

    .line 683
    :catchall_1ad
    move-exception v3

    monitor-exit v30
    :try_end_1af
    .catchall {:try_start_1ac .. :try_end_1af} :catchall_1ad

    throw v3

    .line 678
    :cond_1b0
    :try_start_1b0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mCurrentSong:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$3200(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/AtHomeSongInfo;

    move-result-object v3

    if-eqz v3, :cond_182

    .line 679
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mCurrentSong:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$3200(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/AtHomeSongInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getQueueId()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mInsertAfterSongId:J
    :try_end_1ca
    .catchall {:try_start_1b0 .. :try_end_1ca} :catchall_1aa

    goto :goto_182
.end method

.method private prepareToSubmitSongs(Lcom/google/android/music/medialist/SongList;IZ)V
    .registers 11
    .parameter "songs"
    .parameter "position"
    .parameter "playSongs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$CancelledException;,
            Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 396
    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$700(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->getAtHomeSubmitterId()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mSubmitterId:J

    .line 397
    iput v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mAppended:I

    .line 398
    iput v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mPrepended:I

    .line 399
    iput v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mSkipped:I

    .line 400
    iput-object p1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mMedialist:Lcom/google/android/music/medialist/SongList;

    .line 401
    iput p2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mPosition:I

    .line 402
    iput-boolean p3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mPlaySongs:Z

    .line 404
    iput-boolean v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mQueuePositionUpdated:Z

    .line 405
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mFirstAddedSongId:J

    .line 411
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->waitForDeviceAccount()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mDeviceAccount:Ljava/lang/String;

    .line 414
    const/4 v0, 0x0

    .line 415
    .local v0, profileGetter:Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;
    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$200(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    monitor-enter v3

    .line 416
    :try_start_2d
    iget-object v4, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSession:Lcom/google/android/music/athome/api/AtHomeSessionInfo;
    invoke-static {v4}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2000(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    move-result-object v4

    if-nez v4, :cond_40

    .line 417
    new-instance v2, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;

    const-string v4, "No session"

    invoke-direct {v2, p0, v4}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;Ljava/lang/String;)V

    throw v2

    .line 425
    :catchall_3d
    move-exception v2

    monitor-exit v3
    :try_end_3f
    .catchall {:try_start_2d .. :try_end_3f} :catchall_3d

    throw v2

    .line 419
    :cond_40
    :try_start_40
    iget-object v4, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSession:Lcom/google/android/music/athome/api/AtHomeSessionInfo;
    invoke-static {v4}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2000(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getSessionId()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mSessionId:J

    .line 420
    iget-object v4, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mVersionCheck:Lcom/google/android/music/athome/api/AtHomeVersionCheck;
    invoke-static {v4}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2100(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/AtHomeVersionCheck;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/music/athome/api/AtHomeVersionCheck;->hasPreshuffleSupport()Z

    move-result v4

    if-eqz v4, :cond_65

    iget-object v4, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mShuffleMode:I
    invoke-static {v4}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2200(Lcom/google/android/music/athome/AtHomeDevicePlayback;)I

    move-result v4

    invoke-static {v4}, Lcom/google/android/music/athome/AtHomeUtils;->isShuffle(I)Z

    move-result v4

    if-eqz v4, :cond_65

    const/4 v2, 0x1

    :cond_65
    iput-boolean v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mPreShuffle:Z

    .line 422
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSubmitterNeedsRegistering:Z
    invoke-static {v2}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2300(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 423
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mProfileGetter:Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;
    invoke-static {v2}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2400(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;

    move-result-object v0

    .line 425
    :cond_75
    monitor-exit v3
    :try_end_76
    .catchall {:try_start_40 .. :try_end_76} :catchall_3d

    .line 426
    if-eqz v0, :cond_83

    .line 430
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    const-wide/16 v3, 0x7530

    invoke-virtual {v0, v3, v4}, Lcom/google/android/music/utils/ProfileRequest$AsyncGetter;->waitForProfile(J)Lcom/google/android/music/utils/ProfileRequest$ProfileInfo;

    move-result-object v3

    #setter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mProfile:Lcom/google/android/music/utils/ProfileRequest$ProfileInfo;
    invoke-static {v2, v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2502(Lcom/google/android/music/athome/AtHomeDevicePlayback;Lcom/google/android/music/utils/ProfileRequest$ProfileInfo;)Lcom/google/android/music/utils/ProfileRequest$ProfileInfo;

    .line 433
    :cond_83
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v2}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$200(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    monitor-enter v3

    .line 434
    :try_start_8a
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->throwIfCancelled()V

    .line 435
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;
    invoke-static {v2}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$300(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/MusicConnector;

    move-result-object v2

    if-nez v2, :cond_a0

    .line 436
    new-instance v2, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;

    const-string v4, "Disconnected"

    invoke-direct {v2, p0, v4}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;Ljava/lang/String;)V

    throw v2

    .line 448
    :catchall_9d
    move-exception v2

    monitor-exit v3
    :try_end_9f
    .catchall {:try_start_8a .. :try_end_9f} :catchall_9d

    throw v2

    .line 439
    :cond_a0
    :try_start_a0
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSubmitterNeedsRegistering:Z
    invoke-static {v2}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2300(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Z

    move-result v2

    if-eqz v2, :cond_f5

    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mProfile:Lcom/google/android/music/utils/ProfileRequest$ProfileInfo;
    invoke-static {v2}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2500(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/utils/ProfileRequest$ProfileInfo;

    move-result-object v2

    if-eqz v2, :cond_f5

    .line 440
    new-instance v1, Lcom/google/android/music/athome/api/SubmitterInfo;

    invoke-direct {v1}, Lcom/google/android/music/athome/api/SubmitterInfo;-><init>()V

    .line 441
    .local v1, submitter:Lcom/google/android/music/athome/api/SubmitterInfo;
    iget-wide v4, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mSubmitterId:J

    invoke-virtual {v1, v4, v5}, Lcom/google/android/music/athome/api/SubmitterInfo;->setSubmitterId(J)V

    .line 442
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mProfile:Lcom/google/android/music/utils/ProfileRequest$ProfileInfo;
    invoke-static {v2}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2500(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/utils/ProfileRequest$ProfileInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/music/utils/ProfileRequest$ProfileInfo;->mGivenName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/music/athome/api/SubmitterInfo;->setGivenName(Ljava/lang/String;)V

    .line 443
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mProfile:Lcom/google/android/music/utils/ProfileRequest$ProfileInfo;
    invoke-static {v2}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2500(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/utils/ProfileRequest$ProfileInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/music/utils/ProfileRequest$ProfileInfo;->mFamilyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/music/athome/api/SubmitterInfo;->setFamilyName(Ljava/lang/String;)V

    .line 444
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mProfile:Lcom/google/android/music/utils/ProfileRequest$ProfileInfo;
    invoke-static {v2}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2500(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/utils/ProfileRequest$ProfileInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/music/utils/ProfileRequest$ProfileInfo;->mPhotoUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/music/athome/api/SubmitterInfo;->setPictureUrl(Ljava/lang/String;)V

    .line 445
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v2}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/music/athome/AtHomePlayQueue;->addSubmitter(Lcom/google/android/music/athome/api/SubmitterInfo;)V

    .line 446
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;
    invoke-static {v2}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$300(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/MusicConnector;

    move-result-object v2

    iget-wide v4, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mSessionId:J

    iget-object v6, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mCallbacks:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->mQueueLoaderErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;
    invoke-static {v6}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->access$2700(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;)Landroid/support/place/rpc/RpcErrorHandler;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v1, v6}, Lcom/google/android/music/athome/api/MusicConnector;->registerSubmitter(JLcom/google/android/music/athome/api/SubmitterInfo;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 448
    .end local v1           #submitter:Lcom/google/android/music/athome/api/SubmitterInfo;
    :cond_f5
    monitor-exit v3
    :try_end_f6
    .catchall {:try_start_a0 .. :try_end_f6} :catchall_9d

    .line 449
    return-void
.end method

.method private prependSongs(Landroid/content/ContentResolver;Landroid/database/Cursor;)V
    .registers 12
    .parameter "resolver"
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$CancelledException;,
            Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 730
    :goto_1
    iget v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mFreeQueuePositionsCount:I

    if-lez v0, :cond_3d

    invoke-interface {p2}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 731
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->throwIfCancelled()V

    .line 732
    iget v8, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mSongPerToken:I

    .line 733
    .local v8, toAddInChunk:I
    iget v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mFreeQueuePositionsCount:I

    if-le v8, v0, :cond_16

    .line 734
    iget v8, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mFreeQueuePositionsCount:I

    .line 736
    :cond_16
    const/4 v6, 0x0

    .line 737
    .local v6, addedInChunk:I
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 738
    .local v3, songs:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 740
    .local v4, serverIds:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    :cond_21
    :goto_21
    if-ge v6, v8, :cond_2c

    .line 741
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->throwIfCancelled()V

    .line 742
    invoke-interface {p2}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0

    if-nez v0, :cond_31

    .line 751
    :cond_2c
    const/4 v0, 0x0

    invoke-direct {p0, v3, v4, v5, v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->processNewSongs(Ljava/util/List;Ljava/util/List;ZLjava/util/List;)V

    goto :goto_1

    :cond_31
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 746
    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->processNewSong(Landroid/content/ContentResolver;Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;Z)Lcom/google/android/music/athome/api/AtHomeSongInfo;

    move-result-object v7

    .line 747
    .local v7, song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    if-eqz v7, :cond_21

    .line 748
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 753
    .end local v3           #songs:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    .end local v4           #serverIds:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v6           #addedInChunk:I
    .end local v7           #song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    .end local v8           #toAddInChunk:I
    :cond_3d
    return-void
.end method

.method private processAddSongs(Lcom/google/android/music/medialist/SongList;IZ)V
    .registers 9
    .parameter "songs"
    .parameter "position"
    .parameter "playSongs"

    .prologue
    .line 356
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->prepareToSubmitSongs(Lcom/google/android/music/medialist/SongList;IZ)V

    .line 357
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->processMediaList()V

    .line 358
    iget-boolean v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mQueueOutOfSync:Z

    if-eqz v1, :cond_13

    iget-boolean v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mCancelled:Z

    if-nez v1, :cond_13

    .line 359
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->resyncPlayQueue()V
    invoke-static {v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$1700(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V
    :try_end_13
    .catchall {:try_start_0 .. :try_end_13} :catchall_df
    .catch Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$CancelledException; {:try_start_0 .. :try_end_13} :catch_46
    .catch Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException; {:try_start_0 .. :try_end_13} :catch_87

    .line 369
    :cond_13
    const-string v1, "aah.Music"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Queue Loaded. Appended: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mAppended:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Prepended: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mPrepended:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Skipped: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mSkipped:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :goto_45
    return-void

    .line 361
    :catch_46
    move-exception v0

    .line 362
    .local v0, e:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$CancelledException;
    :try_start_47
    invoke-static {}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$1800()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 363
    const-string v1, "aah.Music"

    const-string v2, "Cancelled queue loading"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catchall {:try_start_47 .. :try_end_54} :catchall_df

    .line 369
    :cond_54
    const-string v1, "aah.Music"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Queue Loaded. Appended: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mAppended:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Prepended: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mPrepended:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Skipped: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mSkipped:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 365
    .end local v0           #e:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$CancelledException;
    :catch_87
    move-exception v0

    .line 366
    .local v0, e:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;
    :try_start_88
    const-string v1, "aah.Music"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error loading queue. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;->getErrorType()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->reportQueueLoadingFailure(I)V
    :try_end_ab
    .catchall {:try_start_88 .. :try_end_ab} :catchall_df

    .line 369
    const-string v1, "aah.Music"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Queue Loaded. Appended: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mAppended:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Prepended: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mPrepended:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Skipped: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mSkipped:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_45

    .end local v0           #e:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;
    :catchall_df
    move-exception v1

    const-string v2, "aah.Music"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Queue Loaded. Appended: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mAppended:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Prepended: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mPrepended:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Skipped: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mSkipped:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    throw v1
.end method

.method private processMediaList()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$CancelledException;,
            Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    const/4 v9, 0x0

    .line 514
    iget-object v10, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mMedialist:Lcom/google/android/music/medialist/SongList;

    instance-of v3, v10, Lcom/google/android/music/medialist/PlaylistSongList;

    .line 516
    .local v3, isPlayList:Z
    if-eqz v3, :cond_55

    .line 517
    sget-object v2, Lcom/google/android/music/athome/AtHomeConstants;->PLAYLIST_AUDIO_ID_COLS:[Ljava/lang/String;

    .line 522
    .local v2, cursorCols:[Ljava/lang/String;
    :goto_a
    iget-object v10, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mMedialist:Lcom/google/android/music/medialist/SongList;

    iget-object v11, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2800(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v2, v12}, Lcom/google/android/music/medialist/SongList;->getSyncMediaCursor(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/music/medialist/MediaList$MediaCursor;

    move-result-object v1

    .line 525
    .local v1, cursor:Landroid/database/Cursor;
    :try_start_17
    iget-object v10, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v10}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$200(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v10

    monitor-enter v10
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_5b

    .line 526
    :try_start_1e
    iget-object v11, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSession:Lcom/google/android/music/athome/api/AtHomeSessionInfo;
    invoke-static {v11}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2000(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getMaxQueueSize()I

    move-result v6

    .line 527
    .local v6, maxQueueSize:I
    monitor-exit v10
    :try_end_29
    .catchall {:try_start_1e .. :try_end_29} :catchall_58

    .line 528
    :try_start_29
    iget-boolean v10, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mPlaySongs:Z

    if-eqz v10, :cond_35

    .line 530
    if-eqz v3, :cond_6d

    .line 532
    const/16 v10, 0x3e8

    if-le v6, v10, :cond_35

    .line 533
    const/16 v6, 0x3e8

    .line 541
    :cond_35
    :goto_35
    if-eqz v1, :cond_71

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-nez v10, :cond_71

    .line 542
    const-string v8, "aah.Music"

    const-string v10, "Empty song list."

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catchall {:try_start_29 .. :try_end_44} :catchall_5b

    .line 589
    iget-object v8, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #setter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlaylistLoading:Z
    invoke-static {v8, v9}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2902(Lcom/google/android/music/athome/AtHomeDevicePlayback;Z)Z

    .line 590
    invoke-static {v1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 591
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->throwIfCancelled()V

    .line 592
    iget-object v8, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->updateAtHomeMediaList()V
    invoke-static {v8}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$3000(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V

    .line 594
    :goto_54
    return-void

    .line 519
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v2           #cursorCols:[Ljava/lang/String;
    .end local v6           #maxQueueSize:I
    :cond_55
    sget-object v2, Lcom/google/android/music/athome/AtHomeConstants;->MUSIC_AUDIO_ID_COLS:[Ljava/lang/String;

    .restart local v2       #cursorCols:[Ljava/lang/String;
    goto :goto_a

    .line 527
    .restart local v1       #cursor:Landroid/database/Cursor;
    :catchall_58
    move-exception v8

    :try_start_59
    monitor-exit v10
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    :try_start_5a
    throw v8
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_5b

    .line 589
    :catchall_5b
    move-exception v8

    iget-object v10, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #setter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlaylistLoading:Z
    invoke-static {v10, v9}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2902(Lcom/google/android/music/athome/AtHomeDevicePlayback;Z)Z

    .line 590
    invoke-static {v1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 591
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->throwIfCancelled()V

    .line 592
    iget-object v9, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->updateAtHomeMediaList()V
    invoke-static {v9}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$3000(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V

    throw v8

    .line 537
    .restart local v6       #maxQueueSize:I
    :cond_6d
    :try_start_6d
    div-int/lit8 v10, v6, 0x5

    sub-int/2addr v6, v10

    goto :goto_35

    .line 546
    :cond_71
    iget v10, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mPosition:I

    if-ne v10, v8, :cond_f1

    const/4 v0, 0x1

    .line 547
    .local v0, autoSelect:Z
    :goto_76
    if-eqz v0, :cond_f3

    move v5, v9

    .line 549
    .local v5, listPosition:I
    :goto_79
    if-eqz v1, :cond_f6

    .line 552
    add-int/lit8 v10, v5, -0x1

    invoke-interface {v1, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v10

    if-nez v10, :cond_a4

    if-lez v5, :cond_a4

    .line 553
    const-string v10, "aah.Music"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to move to position "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v5, -0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/Exception;

    invoke-direct {v12}, Ljava/lang/Exception;-><init>()V

    invoke-static {v10, v11, v12}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 561
    :cond_a4
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 562
    .local v4, itemsToAdd:I
    invoke-direct {p0, v4, v6}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->prepareQueue(II)V

    .line 568
    new-instance v10, Ljava/security/SecureRandom;

    invoke-direct {v10}, Ljava/security/SecureRandom;-><init>()V

    const/16 v11, 0x7fff

    invoke-virtual {v10, v11}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v10

    shl-int/lit8 v10, v10, 0x10

    int-to-long v10, v10

    iput-wide v10, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mGeneratedId:J

    .line 569
    iget-object v10, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2800(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 570
    .local v7, resolver:Landroid/content/ContentResolver;
    iget-boolean v10, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mPreShuffle:Z

    if-eqz v10, :cond_10c

    .line 571
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v10

    iget v11, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mFreeQueuePositionsCount:I

    invoke-direct {p0, v10, v11}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->initShuffler(II)V

    .line 572
    iget-boolean v10, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mPlaySongs:Z

    if-eqz v10, :cond_108

    .line 573
    if-eqz v0, :cond_d9

    move v5, v8

    .end local v5           #listPosition:I
    :cond_d9
    invoke-direct {p0, v7, v1, v5}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->appendShuffledSongs(Landroid/content/ContentResolver;Landroid/database/Cursor;I)V

    .line 577
    :goto_dc
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->cleanupShuffler()V
    :try_end_df
    .catchall {:try_start_6d .. :try_end_df} :catchall_5b

    .line 589
    :cond_df
    :goto_df
    iget-object v8, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #setter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlaylistLoading:Z
    invoke-static {v8, v9}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2902(Lcom/google/android/music/athome/AtHomeDevicePlayback;Z)Z

    .line 590
    invoke-static {v1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 591
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->throwIfCancelled()V

    .line 592
    iget-object v8, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->updateAtHomeMediaList()V
    invoke-static {v8}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$3000(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V

    goto/16 :goto_54

    .end local v0           #autoSelect:Z
    .end local v4           #itemsToAdd:I
    .end local v7           #resolver:Landroid/content/ContentResolver;
    :cond_f1
    move v0, v9

    .line 546
    goto :goto_76

    .line 547
    .restart local v0       #autoSelect:Z
    :cond_f3
    :try_start_f3
    iget v5, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mPosition:I
    :try_end_f5
    .catchall {:try_start_f3 .. :try_end_f5} :catchall_5b

    goto :goto_79

    .line 589
    .restart local v5       #listPosition:I
    :cond_f6
    iget-object v8, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #setter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlaylistLoading:Z
    invoke-static {v8, v9}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2902(Lcom/google/android/music/athome/AtHomeDevicePlayback;Z)Z

    .line 590
    invoke-static {v1}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 591
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->throwIfCancelled()V

    .line 592
    iget-object v8, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->updateAtHomeMediaList()V
    invoke-static {v8}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$3000(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V

    goto/16 :goto_54

    .line 575
    .restart local v4       #itemsToAdd:I
    .restart local v7       #resolver:Landroid/content/ContentResolver;
    :cond_108
    :try_start_108
    invoke-direct {p0, v7, v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->sprinkleSongs(Landroid/content/ContentResolver;Landroid/database/Cursor;)V

    goto :goto_dc

    .line 579
    :cond_10c
    invoke-direct {p0, v7, v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->appendSongs(Landroid/content/ContentResolver;Landroid/database/Cursor;)V

    .line 580
    if-lez v5, :cond_df

    .line 581
    invoke-interface {v1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v8

    if-eqz v8, :cond_df

    .line 582
    invoke-direct {p0, v7, v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->prependSongs(Landroid/content/ContentResolver;Landroid/database/Cursor;)V
    :try_end_11a
    .catchall {:try_start_108 .. :try_end_11a} :catchall_5b

    goto :goto_df
.end method

.method private processNewSong(Landroid/content/ContentResolver;Landroid/database/Cursor;Ljava/util/List;Ljava/util/List;Z)Lcom/google/android/music/athome/api/AtHomeSongInfo;
    .registers 7
    .parameter "resolver"
    .parameter "cursor"
    .parameter
    .parameter
    .parameter "prepend"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Landroid/database/Cursor;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;"
        }
    .end annotation

    .prologue
    .line 839
    .local p3, songs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    .local p4, serverIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->getSongInfoFromMainCursor(Landroid/content/ContentResolver;Landroid/database/Cursor;)Lcom/google/android/music/athome/api/AtHomeSongInfo;

    move-result-object v0

    .line 840
    .local v0, song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    if-eqz v0, :cond_9

    .line 841
    invoke-direct {p0, v0, p3, p4, p5}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->processNewSong(Lcom/google/android/music/athome/api/AtHomeSongInfo;Ljava/util/List;Ljava/util/List;Z)V

    .line 844
    :cond_9
    return-object v0
.end method

.method private processNewSong(Lcom/google/android/music/athome/api/AtHomeSongInfo;Ljava/util/List;Ljava/util/List;Z)V
    .registers 11
    .parameter "song"
    .parameter
    .parameter
    .parameter "prepend"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 852
    .local p2, songs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    .local p3, serverIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-wide v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mGeneratedId:J

    const-wide/16 v4, 0x1

    add-long v0, v2, v4

    iput-wide v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mGeneratedId:J

    .line 853
    .local v0, queueId:J
    invoke-virtual {p1, v0, v1}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->setQueueId(J)V

    .line 854
    if-eqz p4, :cond_29

    .line 855
    const/4 v2, 0x0

    invoke-interface {p2, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 859
    :goto_11
    invoke-virtual {p1}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getServerId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 861
    iget-wide v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mFirstAddedSongId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_22

    .line 862
    iput-wide v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mFirstAddedSongId:J

    .line 864
    :cond_22
    iget v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mFreeQueuePositionsCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mFreeQueuePositionsCount:I

    .line 865
    return-void

    .line 857
    :cond_29
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11
.end method

.method private processNewSongs(Ljava/util/List;Ljava/util/List;ZLjava/util/List;)V
    .registers 46
    .parameter
    .parameter
    .parameter "prepend"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$CancelledException;,
            Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;
        }
    .end annotation

    .prologue
    .line 759
    .local p1, songs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    .local p2, serverIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p4, insertPositions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v32

    .line 760
    .local v32, chunkSize:I
    if-gtz v32, :cond_7

    .line 833
    :goto_6
    return-void

    .line 764
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    const/4 v4, 0x0

    #setter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlaylistLoading:Z
    invoke-static {v3, v4}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2902(Lcom/google/android/music/athome/AtHomeDevicePlayback;Z)Z

    .line 765
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->throwIfCancelled()V

    .line 766
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mDeviceAccount:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->getShareToken(Ljava/lang/String;Ljava/util/List;)Landroid/util/Pair;

    move-result-object v37

    .line 768
    .local v37, shareTokenAndExpiration:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    move-object/from16 v0, v37

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v33

    .line 769
    .local v33, expireTime:J
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v35

    .local v35, i$:Ljava/util/Iterator;
    :goto_2c
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/google/android/music/athome/api/AtHomeSongInfo;

    .line 770
    .local v38, song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    move-object/from16 v0, v38

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->setExpireTime(J)V

    goto :goto_2c

    .line 773
    .end local v38           #song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    :cond_40
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$200(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v39

    monitor-enter v39

    .line 774
    :try_start_49
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->throwIfCancelled()V

    .line 775
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$300(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/MusicConnector;

    move-result-object v3

    if-nez v3, :cond_5b

    .line 776
    monitor-exit v39

    goto :goto_6

    .line 832
    :catchall_58
    move-exception v3

    monitor-exit v39
    :try_end_5a
    .catchall {:try_start_49 .. :try_end_5a} :catchall_58

    throw v3

    .line 779
    :cond_5b
    :try_start_5b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v40

    monitor-enter v40
    :try_end_64
    .catchall {:try_start_5b .. :try_end_64} :catchall_58

    .line 780
    :try_start_64
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/athome/AtHomePlayQueue;->getVersion()I

    move-result v3

    add-int/lit8 v8, v3, 0x1

    .line 782
    .local v8, version:I
    move-object/from16 v0, v37

    iget-object v10, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    .line 783
    .local v10, token:Ljava/lang/String;
    if-eqz p3, :cond_157

    .line 785
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mInsertAfterSongId:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_f9

    .line 786
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mSessionId:J

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v5, v8, v0}, Lcom/google/android/music/athome/AtHomePlayQueue;->prependSongs(JILjava/util/Collection;)Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v36

    .line 787
    .local v36, result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    invoke-virtual/range {v36 .. v36}, Lcom/google/android/music/athome/api/AtHomeModificationResult;->modificationApplied()Z

    move-result v3

    if-eqz v3, :cond_ce

    .line 788
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$300(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/MusicConnector;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mSessionId:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mSubmitterId:J

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mCallbacks:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->mPrependSongsHandler:Lcom/google/android/music/athome/api/MusicConnector$OnPrependSongs;
    invoke-static {v9}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->access$3500(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;)Lcom/google/android/music/athome/api/MusicConnector$OnPrependSongs;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mCallbacks:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->mQueueLoaderErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;
    invoke-static {v9}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->access$2700(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;)Landroid/support/place/rpc/RpcErrorHandler;

    move-result-object v12

    move-object/from16 v9, p1

    invoke-virtual/range {v3 .. v12}, Lcom/google/android/music/athome/api/MusicConnector;->prependSongs(JJILjava/util/List;Ljava/lang/String;Lcom/google/android/music/athome/api/MusicConnector$OnPrependSongs;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 792
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mPrepended:I

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mPrepended:I

    .line 827
    :cond_ce
    :goto_ce
    invoke-virtual/range {v36 .. v36}, Lcom/google/android/music/athome/api/AtHomeModificationResult;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_ee

    .line 828
    const-string v3, "aah.Music"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected local queue modification failure: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    :cond_ee
    monitor-exit v40
    :try_end_ef
    .catchall {:try_start_64 .. :try_end_ef} :catchall_154

    .line 831
    :try_start_ef
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->updateAtHomeMediaList()V
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$3000(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V

    .line 832
    monitor-exit v39
    :try_end_f7
    .catchall {:try_start_ef .. :try_end_f7} :catchall_58

    goto/16 :goto_6

    .line 796
    .end local v36           #result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    :cond_f9
    :try_start_f9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v11

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mSessionId:J

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mInsertAfterSongId:J

    move v14, v8

    move-object/from16 v17, p1

    invoke-virtual/range {v11 .. v17}, Lcom/google/android/music/athome/AtHomePlayQueue;->insertSongs(JIJLjava/util/Collection;)Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v36

    .line 798
    .restart local v36       #result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    invoke-virtual/range {v36 .. v36}, Lcom/google/android/music/athome/api/AtHomeModificationResult;->modificationApplied()Z

    move-result v3

    if-eqz v3, :cond_ce

    .line 799
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$300(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/MusicConnector;

    move-result-object v11

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mSessionId:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mSubmitterId:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mInsertAfterSongId:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mCallbacks:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->mInsertSongsHandler:Lcom/google/android/music/athome/api/MusicConnector$OnInsertSongs;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->access$3600(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;)Lcom/google/android/music/athome/api/MusicConnector$OnInsertSongs;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mCallbacks:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->mQueueLoaderErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->access$2700(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;)Landroid/support/place/rpc/RpcErrorHandler;

    move-result-object v22

    move/from16 v16, v8

    move-object/from16 v19, p1

    move-object/from16 v20, v10

    invoke-virtual/range {v11 .. v22}, Lcom/google/android/music/athome/api/MusicConnector;->insertSongs(JJIJLjava/util/List;Ljava/lang/String;Lcom/google/android/music/athome/api/MusicConnector$OnInsertSongs;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 803
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mPrepended:I

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mPrepended:I

    goto/16 :goto_ce

    .line 830
    .end local v8           #version:I
    .end local v10           #token:Ljava/lang/String;
    .end local v36           #result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    :catchall_154
    move-exception v3

    monitor-exit v40
    :try_end_156
    .catchall {:try_start_f9 .. :try_end_156} :catchall_154

    :try_start_156
    throw v3
    :try_end_157
    .catchall {:try_start_156 .. :try_end_157} :catchall_58

    .line 806
    .restart local v8       #version:I
    .restart local v10       #token:Ljava/lang/String;
    :cond_157
    if-eqz p4, :cond_1c0

    .line 807
    :try_start_159
    invoke-static/range {p4 .. p4}, Lcom/google/common/primitives/Longs;->toArray(Ljava/util/Collection;)[J

    move-result-object v18

    .line 808
    .local v18, precedingIds:[J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v11

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mSessionId:J

    move-object/from16 v0, p0

    iget-wide v15, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mInsertAfterSongId:J

    move v14, v8

    move-object/from16 v17, p1

    invoke-virtual/range {v11 .. v18}, Lcom/google/android/music/athome/AtHomePlayQueue;->insertAndPositionSongs(JIJLjava/util/Collection;[J)Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v36

    .line 810
    .restart local v36       #result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    invoke-virtual/range {v36 .. v36}, Lcom/google/android/music/athome/api/AtHomeModificationResult;->modificationApplied()Z

    move-result v3

    if-eqz v3, :cond_ce

    .line 811
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$300(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/MusicConnector;

    move-result-object v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mSessionId:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mSubmitterId:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mInsertAfterSongId:J

    move-wide/from16 v25, v0

    invoke-static/range {v18 .. v18}, Lcom/google/android/music/athome/api/AtHomeApiUtils;->toRpcData([J)Landroid/support/place/rpc/RpcData;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mCallbacks:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->mInsertAndPositionSongsHandler:Lcom/google/android/music/athome/api/MusicConnector$OnInsertAndPositionSongs;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->access$3700(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;)Lcom/google/android/music/athome/api/MusicConnector$OnInsertAndPositionSongs;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mCallbacks:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->mQueueLoaderErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->access$2700(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;)Landroid/support/place/rpc/RpcErrorHandler;

    move-result-object v31

    move/from16 v24, v8

    move-object/from16 v27, p1

    move-object/from16 v29, v10

    invoke-virtual/range {v19 .. v31}, Lcom/google/android/music/athome/api/MusicConnector;->insertAndPositionSongs(JJIJLjava/util/List;Landroid/support/place/rpc/RpcData;Ljava/lang/String;Lcom/google/android/music/athome/api/MusicConnector$OnInsertAndPositionSongs;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 816
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mAppended:I

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mAppended:I

    goto/16 :goto_ce

    .line 819
    .end local v18           #precedingIds:[J
    .end local v36           #result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    :cond_1c0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mSessionId:J

    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v5, v8, v0}, Lcom/google/android/music/athome/AtHomePlayQueue;->appendSongs(JILjava/util/Collection;)Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v36

    .line 820
    .restart local v36       #result:Lcom/google/android/music/athome/api/AtHomeModificationResult;
    invoke-virtual/range {v36 .. v36}, Lcom/google/android/music/athome/api/AtHomeModificationResult;->modificationApplied()Z

    move-result v3

    if-eqz v3, :cond_ce

    .line 821
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$300(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/MusicConnector;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mSessionId:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mSubmitterId:J

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mCallbacks:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->mAppendSongsHandler:Lcom/google/android/music/athome/api/MusicConnector$OnAppendSongs;
    invoke-static {v9}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->access$3800(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;)Lcom/google/android/music/athome/api/MusicConnector$OnAppendSongs;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mCallbacks:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->mQueueLoaderErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;
    invoke-static {v9}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->access$2700(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;)Landroid/support/place/rpc/RpcErrorHandler;

    move-result-object v12

    move-object/from16 v9, p1

    invoke-virtual/range {v3 .. v12}, Lcom/google/android/music/athome/api/MusicConnector;->appendSongs(JJILjava/util/List;Ljava/lang/String;Lcom/google/android/music/athome/api/MusicConnector$OnAppendSongs;Landroid/support/place/rpc/RpcErrorHandler;)V

    .line 824
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mAppended:I

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mAppended:I
    :try_end_20a
    .catchall {:try_start_159 .. :try_end_20a} :catchall_154

    goto/16 :goto_ce
.end method

.method private declared-synchronized processReset()V
    .registers 3

    .prologue
    .line 379
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mCancelled:Z

    .line 383
    new-instance v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;Lcom/google/android/music/athome/AtHomeDevicePlayback$1;)V

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mCallbacks:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_e

    .line 384
    monitor-exit p0

    return-void

    .line 379
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private reportQueueLoadingFailure(I)V
    .registers 5
    .parameter "errorType"

    .prologue
    .line 497
    iget-boolean v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mCancelled:Z

    if-eqz v0, :cond_5

    .line 510
    :goto_4
    return-void

    .line 498
    :cond_5
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$200(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    monitor-enter v1

    .line 499
    :try_start_c
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mConnector:Lcom/google/android/music/athome/api/MusicConnector;
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$300(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/MusicConnector;

    move-result-object v0

    if-nez v0, :cond_19

    .line 501
    monitor-exit v1

    goto :goto_4

    .line 508
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_16

    throw v0

    .line 504
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeError:Z
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$1100(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Z

    move-result v0

    if-eqz v0, :cond_23

    monitor-exit v1

    goto :goto_4

    .line 505
    :cond_23
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    const/4 v2, 0x1

    #setter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeError:Z
    invoke-static {v0, v2}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$1102(Lcom/google/android/music/athome/AtHomeDevicePlayback;Z)Z

    .line 506
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #setter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeErrorType:I
    invoke-static {v0, p1}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$1202(Lcom/google/android/music/athome/AtHomeDevicePlayback;I)I

    .line 507
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback;->onNonFatalErrorLocked()V
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$1300(Lcom/google/android/music/athome/AtHomeDevicePlayback;)V

    .line 508
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_19 .. :try_end_34} :catchall_16

    .line 509
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    invoke-virtual {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->notifyFailure()V

    goto :goto_4
.end method

.method private declared-synchronized reset()V
    .registers 2

    .prologue
    .line 348
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->removeMessages(I)V

    .line 349
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mCallbacks:Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;

    #calls: Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->ignore()V
    invoke-static {v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;->access$1600(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$Callbacks;)V

    .line 350
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mCancelled:Z

    .line 351
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->sendMessage(Landroid/os/Message;)Z
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_17

    .line 352
    monitor-exit p0

    return-void

    .line 348
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private sprinkleSongs(Landroid/content/ContentResolver;Landroid/database/Cursor;)V
    .registers 37
    .parameter "resolver"
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$CancelledException;,
            Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;
        }
    .end annotation

    .prologue
    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    move-object/from16 v30, v0

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static/range {v30 .. v30}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/music/athome/AtHomePlayQueue;->isEmpty()Z

    move-result v30

    if-eqz v30, :cond_1e

    .line 1076
    const/16 v30, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->appendShuffledSongs(Landroid/content/ContentResolver;Landroid/database/Cursor;I)V

    .line 1223
    :cond_1d
    return-void

    .line 1080
    :cond_1e
    new-instance v20, Ljava/util/Random;

    invoke-direct/range {v20 .. v20}, Ljava/util/Random;-><init>()V

    .line 1082
    .local v20, rand:Ljava/util/Random;
    const/4 v8, 0x0

    .line 1083
    .local v8, done:Z
    :goto_24
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mFreeQueuePositionsCount:I

    move/from16 v30, v0

    if-lez v30, :cond_1d

    if-nez v8, :cond_1d

    .line 1084
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->throwIfCancelled()V

    .line 1085
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mSongPerToken:I

    move/from16 v27, v0

    .line 1086
    .local v27, toAddInChunk:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mFreeQueuePositionsCount:I

    move/from16 v30, v0

    move/from16 v0, v27

    move/from16 v1, v30

    if-le v0, v1, :cond_49

    .line 1087
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mFreeQueuePositionsCount:I

    move/from16 v27, v0

    .line 1104
    :cond_49
    const/4 v5, 0x0

    .line 1105
    .local v5, addedInChunk:I
    new-instance v25, Ljava/util/ArrayList;

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1106
    .local v25, songs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    new-instance v23, Ljava/util/ArrayList;

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1108
    .local v23, serverIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v11, Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1111
    .local v11, insertPositionsSongIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    move-object/from16 v30, v0

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayQueue:Lcom/google/android/music/athome/AtHomePlayQueue;
    invoke-static/range {v30 .. v30}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2600(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/AtHomePlayQueue;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/music/athome/AtHomePlayQueue;->getSongs()[Lcom/google/android/music/athome/api/AtHomeSongInfo;

    move-result-object v17

    .line 1112
    .local v17, queue:[Lcom/google/android/music/athome/api/AtHomeSongInfo;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    .line 1116
    .local v18, queueLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    move-object/from16 v30, v0

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mPlayState:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static/range {v30 .. v30}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$4000(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/google/android/music/athome/api/AtHomePlayState;

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/music/athome/api/AtHomePlayState;->getCurrentSongQueueId()J

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mInsertAfterSongId:J

    .line 1117
    move/from16 v26, v18

    .line 1118
    .local v26, startingPosition:I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mInsertAfterSongId:J

    move-wide/from16 v30, v0

    const-wide/16 v32, -0x1

    cmp-long v30, v30, v32

    if-eqz v30, :cond_ea

    .line 1119
    const/4 v10, 0x0

    .local v10, i:I
    :goto_9f
    move/from16 v0, v18

    if-ge v10, v0, :cond_b5

    .line 1120
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mInsertAfterSongId:J

    move-wide/from16 v30, v0

    aget-object v32, v17, v10

    invoke-virtual/range {v32 .. v32}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getQueueId()J

    move-result-wide v32

    cmp-long v30, v30, v32

    if-nez v30, :cond_e7

    .line 1121
    add-int/lit8 v26, v10, 0x1

    .line 1131
    .end local v10           #i:I
    :cond_b5
    :goto_b5
    move/from16 v0, v26

    move/from16 v1, v18

    if-lt v0, v1, :cond_ed

    const/4 v12, 0x1

    .line 1156
    .local v12, justAppend:Z
    :goto_bc
    sub-int v19, v18, v26

    .line 1157
    .local v19, queueRange:I
    move/from16 v22, v19

    .line 1160
    .local v22, randomRange:I
    new-instance v29, Ljava/util/HashMap;

    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 1162
    .local v29, usedPositions:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_c9
    :goto_c9
    move/from16 v0, v27

    if-ge v5, v0, :cond_162

    if-nez v8, :cond_162

    .line 1163
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->throwIfCancelled()V

    .line 1170
    invoke-direct/range {p0 .. p2}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->getRandomSong(Landroid/content/ContentResolver;Landroid/database/Cursor;)Lcom/google/android/music/athome/api/AtHomeSongInfo;

    move-result-object v24

    .line 1178
    .local v24, song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_e3

    .line 1179
    const/4 v8, 0x1

    .line 1182
    :cond_e3
    if-nez v24, :cond_ef

    .line 1183
    const/4 v8, 0x1

    goto :goto_c9

    .line 1119
    .end local v12           #justAppend:Z
    .end local v19           #queueRange:I
    .end local v22           #randomRange:I
    .end local v24           #song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    .end local v29           #usedPositions:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v10       #i:I
    :cond_e7
    add-int/lit8 v10, v10, 0x1

    goto :goto_9f

    .line 1126
    .end local v10           #i:I
    :cond_ea
    const/16 v26, 0x0

    goto :goto_b5

    .line 1131
    :cond_ed
    const/4 v12, 0x0

    goto :goto_bc

    .line 1185
    .restart local v12       #justAppend:Z
    .restart local v19       #queueRange:I
    .restart local v22       #randomRange:I
    .restart local v24       #song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    .restart local v29       #usedPositions:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    :cond_ef
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v23

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->processNewSong(Lcom/google/android/music/athome/api/AtHomeSongInfo;Ljava/util/List;Ljava/util/List;Z)V

    .line 1186
    add-int/lit8 v5, v5, 0x1

    .line 1187
    if-nez v12, :cond_c9

    .line 1188
    add-int/lit8 v22, v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v21

    .line 1190
    .local v21, randomPosition:I
    move/from16 v0, v21

    move/from16 v1, v19

    if-gt v0, v1, :cond_141

    .line 1191
    add-int v30, v26, v21

    add-int/lit8 v14, v30, -0x1

    .line 1192
    .local v14, precedingQueuePosition:I
    if-gez v14, :cond_13a

    .line 1194
    const-wide/16 v15, -0x1

    .line 1203
    .end local v14           #precedingQueuePosition:I
    .local v15, previousQueueId:J
    :goto_11a
    invoke-virtual/range {v24 .. v24}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getQueueId()J

    move-result-wide v6

    .line 1204
    .local v6, currentId:J
    const/4 v9, 0x0

    .line 1206
    .local v9, foundUnused:Z
    :goto_11f
    if-nez v9, :cond_157

    .line 1207
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Long;

    .line 1209
    .local v28, usedBy:Ljava/lang/Long;
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    invoke-virtual/range {v29 .. v31}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    if-nez v28, :cond_152

    .line 1211
    const/4 v9, 0x1

    goto :goto_11f

    .line 1196
    .end local v6           #currentId:J
    .end local v9           #foundUnused:Z
    .end local v15           #previousQueueId:J
    .end local v28           #usedBy:Ljava/lang/Long;
    .restart local v14       #precedingQueuePosition:I
    :cond_13a
    aget-object v30, v17, v14

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getQueueId()J

    move-result-wide v15

    .restart local v15       #previousQueueId:J
    goto :goto_11a

    .line 1200
    .end local v14           #precedingQueuePosition:I
    .end local v15           #previousQueueId:J
    :cond_141
    sub-int v30, v21, v19

    add-int/lit8 v13, v30, -0x1

    .line 1201
    .local v13, precedingChunkPosition:I
    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/google/android/music/athome/api/AtHomeSongInfo;

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getQueueId()J

    move-result-wide v15

    .restart local v15       #previousQueueId:J
    goto :goto_11a

    .line 1213
    .end local v13           #precedingChunkPosition:I
    .restart local v6       #currentId:J
    .restart local v9       #foundUnused:Z
    .restart local v28       #usedBy:Ljava/lang/Long;
    :cond_152
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    goto :goto_11f

    .line 1217
    .end local v28           #usedBy:Ljava/lang/Long;
    :cond_157
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c9

    .line 1221
    .end local v6           #currentId:J
    .end local v9           #foundUnused:Z
    .end local v15           #previousQueueId:J
    .end local v21           #randomPosition:I
    .end local v24           #song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    :cond_162
    const/16 v30, 0x0

    if-eqz v12, :cond_167

    const/4 v11, 0x0

    .end local v11           #insertPositionsSongIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_167
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3, v11}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->processNewSongs(Ljava/util/List;Ljava/util/List;ZLjava/util/List;)V

    goto/16 :goto_24
.end method

.method private waitForDeviceAccount()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;,
            Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$CancelledException;
        }
    .end annotation

    .prologue
    .line 453
    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$200(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    monitor-enter v4

    .line 455
    :cond_7
    :try_start_7
    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$200(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 456
    .local v2, state:I
    packed-switch v2, :pswitch_data_aa

    .line 489
    new-instance v3, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v5}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;Ljava/lang/String;)V

    throw v3

    .line 492
    .end local v2           #state:I
    :catchall_2d
    move-exception v3

    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_2d

    throw v3

    .line 458
    .restart local v2       #state:I
    :pswitch_30
    :try_start_30
    new-instance v3, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;

    const-string v5, "AtHomePlayback is not active"

    invoke-direct {v3, p0, v5}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;Ljava/lang/String;)V

    throw v3

    .line 460
    :pswitch_38
    new-instance v3, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;

    const-string v5, "AtHomePlayback is in error state"

    invoke-direct {v3, p0, v5}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;Ljava/lang/String;)V

    throw v3
    :try_end_40
    .catchall {:try_start_30 .. :try_end_40} :catchall_2d

    .line 466
    :pswitch_40
    :try_start_40
    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$200(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    const-wide/16 v5, 0x7530

    invoke-virtual {v3, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 467
    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mAtHomeState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$200(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-ne v3, v2, :cond_7

    .line 469
    new-instance v3, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Timed out while in state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v5}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;Ljava/lang/String;)V

    throw v3
    :try_end_70
    .catchall {:try_start_40 .. :try_end_70} :catchall_2d
    .catch Ljava/lang/InterruptedException; {:try_start_40 .. :try_end_70} :catch_70

    .line 472
    :catch_70
    move-exception v1

    .line 473
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_71
    const-string v3, "aah.Music"

    const-string v5, "Interrupted while waiting for session"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    new-instance v3, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$CancelledException;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v5}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$CancelledException;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;Lcom/google/android/music/athome/AtHomeDevicePlayback$1;)V

    throw v3

    .line 480
    .end local v1           #e:Ljava/lang/InterruptedException;
    :pswitch_7f
    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSession:Lcom/google/android/music/athome/api/AtHomeSessionInfo;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2000(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    move-result-object v3

    if-nez v3, :cond_8f

    .line 481
    new-instance v3, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;

    const-string v5, "Unknown session"

    invoke-direct {v3, p0, v5}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;Ljava/lang/String;)V

    throw v3

    .line 483
    :cond_8f
    iget-object v3, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->this$0:Lcom/google/android/music/athome/AtHomeDevicePlayback;

    #getter for: Lcom/google/android/music/athome/AtHomeDevicePlayback;->mSession:Lcom/google/android/music/athome/api/AtHomeSessionInfo;
    invoke-static {v3}, Lcom/google/android/music/athome/AtHomeDevicePlayback;->access$2000(Lcom/google/android/music/athome/AtHomeDevicePlayback;)Lcom/google/android/music/athome/api/AtHomeSessionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/athome/api/AtHomeSessionInfo;->getAtHomeDeviceAccount()Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, deviceAccount:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a7

    .line 485
    new-instance v3, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;

    const-string v5, "Unknown device account"

    invoke-direct {v3, p0, v5}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$QueueLoadingException;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;Ljava/lang/String;)V

    throw v3

    .line 487
    :cond_a7
    monitor-exit v4
    :try_end_a8
    .catchall {:try_start_71 .. :try_end_a8} :catchall_2d

    return-object v0

    .line 456
    nop

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_30
        :pswitch_40
        :pswitch_40
        :pswitch_7f
        :pswitch_7f
        :pswitch_38
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 323
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3a

    .line 334
    :pswitch_5
    const-string v0, "aah.Music"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 336
    :goto_24
    return-void

    .line 328
    :pswitch_25
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/music/medialist/SongList;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_34

    const/4 v1, 0x1

    :goto_30
    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->processAddSongs(Lcom/google/android/music/medialist/SongList;IZ)V

    goto :goto_24

    :cond_34
    const/4 v1, 0x0

    goto :goto_30

    .line 331
    :pswitch_36
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->processReset()V

    goto :goto_24

    .line 323
    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_25
        :pswitch_5
        :pswitch_36
    .end packed-switch
.end method

.method throwIfCancelled()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$CancelledException;
        }
    .end annotation

    .prologue
    .line 387
    iget-boolean v0, p0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;->mCancelled:Z

    if-eqz v0, :cond_b

    .line 388
    new-instance v0, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$CancelledException;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader$CancelledException;-><init>(Lcom/google/android/music/athome/AtHomeDevicePlayback$AtHomeQueueLoader;Lcom/google/android/music/athome/AtHomeDevicePlayback$1;)V

    throw v0

    .line 390
    :cond_b
    return-void
.end method
