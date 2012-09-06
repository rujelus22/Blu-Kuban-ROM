.class Lcom/google/android/music/athome/AtHomePlayQueue;
.super Ljava/lang/Object;
.source "AtHomePlayQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/athome/AtHomePlayQueue$OnRemovedHandler;
    }
.end annotation


# static fields
.field private static final LOGV:Z


# instance fields
.field private mAlbumArtMap:Ljava/util/Map;
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

.field private mMaxSize:I

.field private mSessionId:J

.field private mSongs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubmitters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/music/athome/api/SubmitterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/google/android/music/athome/AtHomeUtils;->LOGV:Z

    sput-boolean v0, Lcom/google/android/music/athome/AtHomePlayQueue;->LOGV:Z

    return-void
.end method

.method constructor <init>(IJ)V
    .registers 5
    .parameter "maxSize"
    .parameter "sessionId"

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v0, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mVersion:I

    .line 43
    iput v0, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mMaxSize:I

    .line 44
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSubmitters:Ljava/util/HashMap;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mAlbumArtMap:Ljava/util/Map;

    .line 60
    iput-wide p2, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSessionId:J

    .line 61
    iput p1, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mMaxSize:I

    .line 62
    return-void
.end method

.method private checkSessionLocked(J)Z
    .registers 7
    .parameter "sessionId"

    .prologue
    .line 179
    iget-wide v0, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSessionId:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_2c

    .line 180
    const-string v0, "aah.Music"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to modify queue from a different session. Caller session:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " . Queue session:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSessionId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v0, 0x0

    .line 184
    :goto_2b
    return v0

    :cond_2c
    const/4 v0, 0x1

    goto :goto_2b
.end method

.method private failure()Lcom/google/android/music/athome/api/AtHomeModificationResult;
    .registers 6

    .prologue
    .line 608
    new-instance v0, Lcom/google/android/music/athome/api/AtHomeModificationResult;

    iget-wide v1, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSessionId:J

    const/4 v3, -0x1

    iget v4, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mVersion:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/music/athome/api/AtHomeModificationResult;-><init>(JII)V

    return-object v0
.end method

.method private findAndRemoveSongLocked(J)Lcom/google/android/music/athome/api/AtHomeSongInfo;
    .registers 7
    .parameter "songQueueId"

    .prologue
    .line 747
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 748
    .local v1, songs:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    :cond_6
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 749
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/athome/api/AtHomeSongInfo;

    .line 750
    .local v0, song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    invoke-virtual {v0}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getQueueId()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_6

    .line 751
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 755
    .end local v0           #song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    :goto_1d
    return-object v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public static getMaxSize(Landroid/content/Context;)I
    .registers 4
    .parameter "context"

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "music_at_home_max_queue_size"

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private resyncRequest()Lcom/google/android/music/athome/api/AtHomeModificationResult;
    .registers 6

    .prologue
    .line 618
    new-instance v0, Lcom/google/android/music/athome/api/AtHomeModificationResult;

    iget-wide v1, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSessionId:J

    const/4 v3, -0x2

    iget v4, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mVersion:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/music/athome/api/AtHomeModificationResult;-><init>(JII)V

    return-object v0
.end method

.method private success()Lcom/google/android/music/athome/api/AtHomeModificationResult;
    .registers 6

    .prologue
    .line 613
    new-instance v0, Lcom/google/android/music/athome/api/AtHomeModificationResult;

    iget-wide v1, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSessionId:J

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mVersion:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/music/athome/api/AtHomeModificationResult;-><init>(JII)V

    return-object v0
.end method

.method private updateAlbumArtMapInternalLocked(Lcom/google/android/music/athome/api/AtHomeSongInfo;)V
    .registers 5
    .parameter "song"

    .prologue
    .line 646
    invoke-virtual {p1}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getAlbumArtUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 647
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mAlbumArtMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getAlbumId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getAlbumArtUrl()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    :cond_17
    return-void
.end method

.method private updateAlbumArtMapLocked(Lcom/google/android/music/athome/api/AtHomeSongInfo;)V
    .registers 6
    .parameter "song"

    .prologue
    .line 634
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mAlbumArtMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-le v2, v3, :cond_29

    .line 636
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mAlbumArtMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 637
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/athome/api/AtHomeSongInfo;

    .line 638
    .local v1, s:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    invoke-direct {p0, v1}, Lcom/google/android/music/athome/AtHomePlayQueue;->updateAlbumArtMapInternalLocked(Lcom/google/android/music/athome/api/AtHomeSongInfo;)V

    goto :goto_19

    .line 642
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #s:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    :cond_29
    invoke-direct {p0, p1}, Lcom/google/android/music/athome/AtHomePlayQueue;->updateAlbumArtMapInternalLocked(Lcom/google/android/music/athome/api/AtHomeSongInfo;)V

    .line 643
    return-void
.end method

.method private updateAlbumArtMapLocked(Ljava/util/Collection;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 628
    .local p1, songs:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/athome/api/AtHomeSongInfo;

    .line 629
    .local v1, song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    invoke-direct {p0, v1}, Lcom/google/android/music/athome/AtHomePlayQueue;->updateAlbumArtMapLocked(Lcom/google/android/music/athome/api/AtHomeSongInfo;)V

    goto :goto_4

    .line 631
    .end local v1           #song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    :cond_14
    return-void
.end method


# virtual methods
.method public declared-synchronized addSubmitter(Lcom/google/android/music/athome/api/SubmitterInfo;)V
    .registers 5
    .parameter "info"

    .prologue
    .line 560
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSubmitters:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/android/music/athome/api/SubmitterInfo;->getSubmitterId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 561
    monitor-exit p0

    return-void

    .line 560
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized appendSongs(JILjava/util/Collection;)Lcom/google/android/music/athome/api/AtHomeModificationResult;
    .registers 8
    .parameter "sessionId"
    .parameter "version"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ">;)",
            "Lcom/google/android/music/athome/api/AtHomeModificationResult;"
        }
    .end annotation

    .prologue
    .line 191
    .local p4, songs:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mMaxSize:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_11

    .line 192
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Queue max size must be set before songs can be added"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_e

    .line 191
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 195
    :cond_11
    :try_start_11
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/athome/AtHomePlayQueue;->checkSessionLocked(J)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 196
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->failure()Lcom/google/android/music/athome/api/AtHomeModificationResult;
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_e

    move-result-object v0

    .line 212
    :goto_1b
    monitor-exit p0

    return-object v0

    .line 199
    :cond_1d
    :try_start_1d
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mMaxSize:I

    if-le v0, v1, :cond_69

    .line 200
    const-string v0, "aah.Music"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt to append too many songs. Had: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Adding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Max: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mMaxSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->failure()Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v0

    goto :goto_1b

    .line 205
    :cond_69
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    invoke-virtual {v0, p4}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 206
    invoke-direct {p0, p4}, Lcom/google/android/music/athome/AtHomePlayQueue;->updateAlbumArtMapLocked(Ljava/util/Collection;)V

    .line 208
    iget v0, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mVersion:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mVersion:I

    .line 209
    iget v0, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mVersion:I

    if-ne v0, p3, :cond_80

    .line 210
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->success()Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v0

    goto :goto_1b

    .line 212
    :cond_80
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->resyncRequest()Lcom/google/android/music/athome/api/AtHomeModificationResult;
    :try_end_83
    .catchall {:try_start_1d .. :try_end_83} :catchall_e

    move-result-object v0

    goto :goto_1b
.end method

.method public declared-synchronized clear(JZ)Lcom/google/android/music/athome/api/AtHomeModificationResult;
    .registers 5
    .parameter "sessionId"
    .parameter "clearSubmitters"

    .prologue
    .line 159
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/athome/AtHomePlayQueue;->checkSessionLocked(J)Z

    move-result v0

    if-nez v0, :cond_d

    .line 160
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->failure()Lcom/google/android/music/athome/api/AtHomeModificationResult;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_23

    move-result-object v0

    .line 167
    :goto_b
    monitor-exit p0

    return-object v0

    .line 162
    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 163
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mAlbumArtMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 164
    if-eqz p3, :cond_1e

    .line 165
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSubmitters:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 167
    :cond_1e
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->success()Lcom/google/android/music/athome/api/AtHomeModificationResult;
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_23

    move-result-object v0

    goto :goto_b

    .line 159
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized findSong(J)Lcom/google/android/music/athome/api/AtHomeSongInfo;
    .registers 7
    .parameter "songQueueId"

    .prologue
    .line 110
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/athome/api/AtHomeSongInfo;

    .line 111
    .local v1, song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    invoke-virtual {v1}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getQueueId()J
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1f

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_7

    .line 115
    .end local v1           #song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    :goto_1b
    monitor-exit p0

    return-object v1

    :cond_1d
    const/4 v1, 0x0

    goto :goto_1b

    .line 110
    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_1f
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getAlbumArtUrl(J)Ljava/lang/String;
    .registers 5
    .parameter "albumId"

    .prologue
    .line 175
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mAlbumArtMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getContent()Lcom/google/android/music/athome/api/AtHomePlayQueueContent;
    .registers 8

    .prologue
    .line 93
    monitor-enter p0

    :try_start_1
    new-instance v6, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSubmitters:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 94
    .local v6, submitterList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/SubmitterInfo;>;"
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSubmitters:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 97
    new-instance v0, Lcom/google/android/music/athome/api/AtHomePlayQueueContent;

    iget-wide v1, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSessionId:J

    iget v3, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mVersion:I

    iget v4, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mMaxSize:I

    iget-object v5, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/music/athome/api/AtHomePlayQueueContent;-><init>(JIILjava/util/List;Ljava/util/List;)V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    monitor-exit p0

    return-object v0

    .line 93
    .end local v6           #submitterList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/SubmitterInfo;>;"
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastSong()Lcom/google/android/music/athome/api/AtHomeSongInfo;
    .registers 2

    .prologue
    .line 76
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_15

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    :goto_a
    monitor-exit p0

    return-object v0

    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/athome/api/AtHomeSongInfo;
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    goto :goto_a

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMaxSize()I
    .registers 2

    .prologue
    .line 69
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mMaxSize:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPosition(JI)I
    .registers 6
    .parameter "songQueueId"
    .parameter "lastKnownPosition"

    .prologue
    .line 543
    monitor-enter p0

    if-ltz p3, :cond_1d

    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, p3, :cond_1d

    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    invoke-virtual {v0, p3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/athome/api/AtHomeSongInfo;

    invoke-virtual {v0}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getQueueId()J
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_29

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_1d

    .line 547
    .end local p3
    :goto_1b
    monitor-exit p0

    return p3

    .restart local p3
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    new-instance v1, Lcom/google/android/music/athome/api/AtHomeSongInfo;

    invoke-direct {v1, p1, p2}, Lcom/google/android/music/athome/api/AtHomeSongInfo;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_29

    move-result p3

    goto :goto_1b

    .line 543
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSessionId()J
    .registers 3

    .prologue
    .line 65
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSessionId:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSize()I
    .registers 2

    .prologue
    .line 171
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSong(I)Lcom/google/android/music/athome/api/AtHomeSongInfo;
    .registers 3
    .parameter "index"

    .prologue
    .line 102
    monitor-enter p0

    if-ltz p1, :cond_15

    :try_start_3
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge p1, v0, :cond_15

    .line 103
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/athome/api/AtHomeSongInfo;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_17

    .line 105
    :goto_13
    monitor-exit p0

    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_13

    .line 102
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSongs()[Lcom/google/android/music/athome/api/AtHomeSongInfo;
    .registers 3

    .prologue
    .line 119
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/android/music/athome/api/AtHomeSongInfo;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/music/athome/api/AtHomeSongInfo;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSubmitter(J)Lcom/google/android/music/athome/api/SubmitterInfo;
    .registers 5
    .parameter "submitterId"

    .prologue
    .line 556
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSubmitters:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/athome/api/SubmitterInfo;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getVersion()I
    .registers 2

    .prologue
    .line 89
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mVersion:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insertAndPositionSongs(JIJLjava/util/Collection;[J)Lcom/google/android/music/athome/api/AtHomeModificationResult;
    .registers 26
    .parameter "sessionId"
    .parameter "version"
    .parameter "lastUnaffectedSong"
    .parameter
    .parameter "precedingIds"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIJ",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ">;[J)",
            "Lcom/google/android/music/athome/api/AtHomeModificationResult;"
        }
    .end annotation

    .prologue
    .line 277
    .local p6, newSongs:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    monitor-enter p0

    :try_start_1
    invoke-direct/range {p0 .. p2}, Lcom/google/android/music/athome/AtHomePlayQueue;->checkSessionLocked(J)Z

    move-result v14

    if-nez v14, :cond_d

    .line 278
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->failure()Lcom/google/android/music/athome/api/AtHomeModificationResult;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_176

    move-result-object v14

    .line 382
    :goto_b
    monitor-exit p0

    return-object v14

    .line 281
    :cond_d
    :try_start_d
    move-object/from16 v0, p7

    array-length v4, v0

    .line 283
    .local v4, howManyToInsert:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    invoke-virtual {v14}, Ljava/util/LinkedList;->size()I

    move-result v14

    add-int/2addr v14, v4

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/android/music/athome/AtHomePlayQueue;->mMaxSize:I

    if-le v14, v15, :cond_64

    .line 284
    const-string v14, "aah.Music"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Attempt to insert too many songs. Had: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " Adding: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface/range {p6 .. p6}, Ljava/util/Collection;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " Max: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/athome/AtHomePlayQueue;->mMaxSize:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->failure()Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v14

    goto :goto_b

    .line 289
    :cond_64
    invoke-interface/range {p6 .. p6}, Ljava/util/Collection;->size()I

    move-result v14

    if-eq v4, v14, :cond_96

    .line 290
    const-string v14, "aah.Music"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Mismatch. precedingIds size is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ". songs size is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface/range {p6 .. p6}, Ljava/util/Collection;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->failure()Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v14

    goto/16 :goto_b

    .line 295
    :cond_96
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 296
    .local v7, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    invoke-interface/range {p6 .. p6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 297
    .local v9, newSongsIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_a0
    if-ge v5, v4, :cond_ec

    .line 298
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/music/athome/api/AtHomeSongInfo;

    .line 299
    .local v12, song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    aget-wide v14, p7, v5

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v7, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/music/athome/api/AtHomeSongInfo;

    .line 300
    .local v10, previous:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    if-eqz v10, :cond_e9

    .line 301
    const-string v14, "aah.Music"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Same previous position ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-wide v16, p7, v5

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ") used for multiple songs. 1: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ". 2:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v16, Ljava/lang/Exception;

    invoke-direct/range {v16 .. v16}, Ljava/lang/Exception;-><init>()V

    invoke-static/range {v14 .. v16}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 297
    :cond_e9
    add-int/lit8 v5, v5, 0x1

    goto :goto_a0

    .line 308
    .end local v10           #previous:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    .end local v12           #song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    :cond_ec
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 310
    .local v8, newList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    const/4 v11, 0x0

    .line 311
    .local v11, resyncIsNeeded:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    invoke-virtual {v14}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 312
    .local v2, currentSongsIter:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    const-wide/16 v14, -0x1

    cmp-long v14, p4, v14

    if-eqz v14, :cond_179

    .line 314
    const/4 v3, 0x0

    .line 315
    .local v3, foundBoundary:Z
    :goto_101
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_119

    .line 316
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/music/athome/api/AtHomeSongInfo;

    .line 317
    .restart local v12       #song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    invoke-virtual {v12}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getQueueId()J

    move-result-wide v14

    cmp-long v14, v14, p4

    if-nez v14, :cond_172

    .line 319
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 320
    const/4 v3, 0x1

    .line 325
    .end local v12           #song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    :cond_119
    if-nez v3, :cond_141

    .line 326
    const/4 v11, 0x1

    .line 327
    const-string v14, "aah.Music"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "insertAndOrderSongs: lastUnaffectedSong is not found. Id: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-wide/from16 v0, p4

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-virtual {v8}, Ljava/util/LinkedList;->clear()V

    .line 331
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    invoke-virtual {v14}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 343
    .end local v3           #foundBoundary:Z
    :cond_141
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_19a

    .line 344
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/music/athome/api/AtHomeSongInfo;

    .line 345
    .restart local v12       #song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    invoke-virtual {v8, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 350
    invoke-virtual {v12}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getQueueId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    check-cast v12, Lcom/google/android/music/athome/api/AtHomeSongInfo;

    .line 351
    .restart local v12       #song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    :goto_15e
    if-eqz v12, :cond_141

    .line 352
    invoke-virtual {v8, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 353
    invoke-virtual {v12}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getQueueId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    check-cast v12, Lcom/google/android/music/athome/api/AtHomeSongInfo;

    .restart local v12       #song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    goto :goto_15e

    .line 323
    .restart local v3       #foundBoundary:Z
    :cond_172
    invoke-virtual {v8, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_175
    .catchall {:try_start_d .. :try_end_175} :catchall_176

    goto :goto_101

    .line 277
    .end local v2           #currentSongsIter:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    .end local v3           #foundBoundary:Z
    .end local v4           #howManyToInsert:I
    .end local v5           #i:I
    .end local v7           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    .end local v8           #newList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    .end local v9           #newSongsIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    .end local v11           #resyncIsNeeded:Z
    .end local v12           #song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    :catchall_176
    move-exception v14

    monitor-exit p0

    throw v14

    .line 336
    .restart local v2       #currentSongsIter:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    .restart local v4       #howManyToInsert:I
    .restart local v5       #i:I
    .restart local v7       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    .restart local v8       #newList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    .restart local v9       #newSongsIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    .restart local v11       #resyncIsNeeded:Z
    :cond_179
    :try_start_179
    new-instance v14, Ljava/lang/Long;

    const-wide/16 v15, -0x1

    invoke-direct/range {v14 .. v16}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v7, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/music/athome/api/AtHomeSongInfo;

    .line 337
    .restart local v12       #song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    :goto_186
    if-eqz v12, :cond_141

    .line 338
    invoke-virtual {v8, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 339
    invoke-virtual {v12}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getQueueId()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    check-cast v12, Lcom/google/android/music/athome/api/AtHomeSongInfo;

    .restart local v12       #song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    goto :goto_186

    .line 357
    .end local v12           #song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    :cond_19a
    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_1c0

    .line 361
    const/4 v11, 0x1

    .line 362
    invoke-interface/range {p6 .. p6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 363
    .local v13, songToInsert:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    const/4 v6, 0x0

    .local v6, j:I
    :goto_1a6
    if-ge v6, v4, :cond_1c0

    .line 364
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/music/athome/api/AtHomeSongInfo;

    .line 365
    .restart local v12       #song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    aget-wide v14, p7, v6

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_1bd

    .line 366
    invoke-virtual {v8, v12}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_1bd
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a6

    .line 371
    .end local v6           #j:I
    .end local v12           #song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    .end local v13           #songToInsert:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    :cond_1c0
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    .line 372
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lcom/google/android/music/athome/AtHomePlayQueue;->updateAlbumArtMapLocked(Ljava/util/Collection;)V

    .line 374
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/music/athome/AtHomePlayQueue;->mVersion:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/android/music/athome/AtHomePlayQueue;->mVersion:I

    .line 375
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/music/athome/AtHomePlayQueue;->mVersion:I

    move/from16 v0, p3

    if-ne v14, v0, :cond_1f2

    .line 376
    if-eqz v11, :cond_1ec

    .line 377
    const-string v14, "aah.Music"

    const-string v15, "Resync needed without version detection"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->resyncRequest()Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v14

    goto/16 :goto_b

    .line 380
    :cond_1ec
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->success()Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v14

    goto/16 :goto_b

    .line 382
    :cond_1f2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->resyncRequest()Lcom/google/android/music/athome/api/AtHomeModificationResult;
    :try_end_1f5
    .catchall {:try_start_179 .. :try_end_1f5} :catchall_176

    move-result-object v14

    goto/16 :goto_b
.end method

.method public declared-synchronized insertSongs(JIJLjava/util/Collection;)Lcom/google/android/music/athome/api/AtHomeModificationResult;
    .registers 11
    .parameter "sessionId"
    .parameter "version"
    .parameter "insertAfterQueueId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIJ",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ">;)",
            "Lcom/google/android/music/athome/api/AtHomeModificationResult;"
        }
    .end annotation

    .prologue
    .local p6, songs:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    const/4 v3, -0x1

    .line 246
    monitor-enter p0

    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/athome/AtHomePlayQueue;->checkSessionLocked(J)Z

    move-result v1

    if-nez v1, :cond_e

    .line 247
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->failure()Lcom/google/android/music/athome/api/AtHomeModificationResult;
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_9e

    move-result-object v1

    .line 270
    :goto_c
    monitor-exit p0

    return-object v1

    .line 250
    :cond_e
    :try_start_e
    invoke-interface {p6}, Ljava/util/Collection;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mMaxSize:I

    if-le v1, v2, :cond_5a

    .line 251
    const-string v1, "aah.Music"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to insert too many songs. Had: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Adding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p6}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Max: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mMaxSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->failure()Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v1

    goto :goto_c

    .line 256
    :cond_5a
    const/4 v1, -0x1

    invoke-virtual {p0, p4, p5, v1}, Lcom/google/android/music/athome/AtHomePlayQueue;->getPosition(JI)I

    move-result v0

    .line 257
    .local v0, location:I
    if-ne v0, v3, :cond_7e

    .line 258
    const-string v1, "aah.Music"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to insert songs because song marking insert position is not found:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->failure()Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v1

    goto :goto_c

    .line 263
    :cond_7e
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2, p6}, Ljava/util/LinkedList;->addAll(ILjava/util/Collection;)Z

    .line 264
    invoke-direct {p0, p6}, Lcom/google/android/music/athome/AtHomePlayQueue;->updateAlbumArtMapLocked(Ljava/util/Collection;)V

    .line 266
    iget v1, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mVersion:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mVersion:I

    .line 267
    iget v1, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mVersion:I

    if-ne v1, p3, :cond_98

    .line 268
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->success()Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v1

    goto/16 :goto_c

    .line 270
    :cond_98
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->resyncRequest()Lcom/google/android/music/athome/api/AtHomeModificationResult;
    :try_end_9b
    .catchall {:try_start_e .. :try_end_9b} :catchall_9e

    move-result-object v1

    goto/16 :goto_c

    .line 246
    .end local v0           #location:I
    :catchall_9e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isEmpty()Z
    .registers 2

    .prologue
    .line 551
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized moveSong(JIJJ)Lcom/google/android/music/athome/api/AtHomeModificationResult;
    .registers 14
    .parameter "sessionId"
    .parameter "version"
    .parameter "songIdToMove"
    .parameter "desiredPositionSongId"

    .prologue
    const/4 v5, -0x1

    .line 510
    monitor-enter p0

    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/athome/AtHomePlayQueue;->checkSessionLocked(J)Z

    move-result v3

    if-nez v3, :cond_e

    .line 511
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->failure()Lcom/google/android/music/athome/api/AtHomeModificationResult;
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_6b

    move-result-object v3

    .line 538
    :goto_c
    monitor-exit p0

    return-object v3

    .line 514
    :cond_e
    cmp-long v3, p4, p6

    if-nez v3, :cond_17

    .line 515
    :try_start_12
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->failure()Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v3

    goto :goto_c

    .line 517
    :cond_17
    iget-object v3, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    new-instance v4, Lcom/google/android/music/athome/api/AtHomeSongInfo;

    invoke-direct {v4, p6, p7}, Lcom/google/android/music/athome/api/AtHomeSongInfo;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 518
    .local v1, desiredPosition:I
    if-ne v1, v5, :cond_29

    .line 519
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->failure()Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v3

    goto :goto_c

    .line 521
    :cond_29
    iget-object v3, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    new-instance v4, Lcom/google/android/music/athome/api/AtHomeSongInfo;

    invoke-direct {v4, p4, p5}, Lcom/google/android/music/athome/api/AtHomeSongInfo;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 522
    .local v0, currentPosition:I
    if-ne v0, v5, :cond_3b

    .line 523
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->failure()Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v3

    goto :goto_c

    .line 525
    :cond_3b
    iget-object v3, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/athome/api/AtHomeSongInfo;

    .line 526
    .local v2, song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    if-eq v0, v1, :cond_61

    .line 527
    iget-object v3, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 528
    iget-object v3, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    invoke-virtual {v3, v1, v2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 529
    invoke-direct {p0, v2}, Lcom/google/android/music/athome/AtHomePlayQueue;->updateAlbumArtMapLocked(Lcom/google/android/music/athome/api/AtHomeSongInfo;)V

    .line 530
    iget v3, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mVersion:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mVersion:I

    .line 535
    iget v3, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mVersion:I

    if-ne v3, p3, :cond_66

    .line 536
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->success()Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v3

    goto :goto_c

    .line 532
    :cond_61
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->failure()Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v3

    goto :goto_c

    .line 538
    :cond_66
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->resyncRequest()Lcom/google/android/music/athome/api/AtHomeModificationResult;
    :try_end_69
    .catchall {:try_start_12 .. :try_end_69} :catchall_6b

    move-result-object v3

    goto :goto_c

    .line 510
    .end local v0           #currentPosition:I
    .end local v1           #desiredPosition:I
    .end local v2           #song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    :catchall_6b
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized prependSongs(JILjava/util/Collection;)Lcom/google/android/music/athome/api/AtHomeModificationResult;
    .registers 10
    .parameter "sessionId"
    .parameter "version"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ">;)",
            "Lcom/google/android/music/athome/api/AtHomeModificationResult;"
        }
    .end annotation

    .prologue
    .line 219
    .local p4, songs:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/athome/AtHomePlayQueue;->checkSessionLocked(J)Z

    move-result v2

    if-nez v2, :cond_d

    .line 220
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->failure()Lcom/google/android/music/athome/api/AtHomeModificationResult;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_88

    move-result-object v2

    .line 239
    :goto_b
    monitor-exit p0

    return-object v2

    .line 223
    :cond_d
    :try_start_d
    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mMaxSize:I

    if-le v2, v3, :cond_59

    .line 224
    const-string v2, "aah.Music"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt to prepend too many songs. Had: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Adding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p4}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Max: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mMaxSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->failure()Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v2

    goto :goto_b

    .line 229
    :cond_59
    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/android/music/athome/api/AtHomeSongInfo;

    invoke-interface {p4, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/music/athome/api/AtHomeSongInfo;

    .line 230
    .local v0, array:[Lcom/google/android/music/athome/api/AtHomeSongInfo;
    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_65
    if-ltz v1, :cond_71

    .line 231
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 230
    add-int/lit8 v1, v1, -0x1

    goto :goto_65

    .line 233
    :cond_71
    invoke-direct {p0, p4}, Lcom/google/android/music/athome/AtHomePlayQueue;->updateAlbumArtMapLocked(Ljava/util/Collection;)V

    .line 235
    iget v2, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mVersion:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mVersion:I

    .line 236
    iget v2, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mVersion:I

    if-ne v2, p3, :cond_83

    .line 237
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->success()Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v2

    goto :goto_b

    .line 239
    :cond_83
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->resyncRequest()Lcom/google/android/music/athome/api/AtHomeModificationResult;
    :try_end_86
    .catchall {:try_start_d .. :try_end_86} :catchall_88

    move-result-object v2

    goto :goto_b

    .line 219
    .end local v0           #array:[Lcom/google/android/music/athome/api/AtHomeSongInfo;
    .end local v1           #i:I
    :catchall_88
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized removeSong(JIJ)Lcom/google/android/music/athome/api/AtHomeModificationResult;
    .registers 8
    .parameter "sessionId"
    .parameter "version"
    .parameter "songQueueId"

    .prologue
    .line 425
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/athome/AtHomePlayQueue;->checkSessionLocked(J)Z

    move-result v0

    if-nez v0, :cond_d

    .line 426
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->failure()Lcom/google/android/music/athome/api/AtHomeModificationResult;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_33

    move-result-object v0

    .line 437
    :goto_b
    monitor-exit p0

    return-object v0

    .line 429
    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    new-instance v1, Lcom/google/android/music/athome/api/AtHomeSongInfo;

    invoke-direct {v1, p4, p5}, Lcom/google/android/music/athome/api/AtHomeSongInfo;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 430
    iget v0, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mVersion:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mVersion:I

    .line 431
    iget v0, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mVersion:I

    if-ne v0, p3, :cond_29

    .line 432
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->success()Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v0

    goto :goto_b

    .line 434
    :cond_29
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->resyncRequest()Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v0

    goto :goto_b

    .line 437
    :cond_2e
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->failure()Lcom/google/android/music/athome/api/AtHomeModificationResult;
    :try_end_31
    .catchall {:try_start_d .. :try_end_31} :catchall_33

    move-result-object v0

    goto :goto_b

    .line 425
    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeSongsInRange(JIJJLcom/google/android/music/athome/AtHomePlayQueue$OnRemovedHandler;)Lcom/google/android/music/athome/api/AtHomeModificationResult;
    .registers 15
    .parameter "sessionId"
    .parameter "version"
    .parameter "firstSongId"
    .parameter "lastSongId"
    .parameter "handler"

    .prologue
    .line 567
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/athome/AtHomePlayQueue;->checkSessionLocked(J)Z

    move-result v4

    if-nez v4, :cond_d

    .line 568
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->failure()Lcom/google/android/music/athome/api/AtHomeModificationResult;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_89

    move-result-object v4

    .line 603
    :goto_b
    monitor-exit p0

    return-object v4

    .line 571
    :cond_d
    const-wide/16 v4, -0x1

    cmp-long v4, p4, v4

    if-nez v4, :cond_23

    const/4 v0, 0x0

    .line 572
    .local v0, firstSongPosition:I
    :goto_14
    const/4 v4, -0x1

    if-ne v0, v4, :cond_29

    .line 573
    :try_start_17
    const-string v4, "aah.Music"

    const-string v5, "removeSongsInRange failed. First song not found"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->failure()Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v4

    goto :goto_b

    .line 571
    .end local v0           #firstSongPosition:I
    :cond_23
    const/4 v4, -0x1

    invoke-virtual {p0, p4, p5, v4}, Lcom/google/android/music/athome/AtHomePlayQueue;->getPosition(JI)I

    move-result v0

    goto :goto_14

    .line 576
    .restart local v0       #firstSongPosition:I
    :cond_29
    const-wide/16 v4, -0x1

    cmp-long v4, p6, v4

    if-eqz v4, :cond_51

    .line 577
    const/4 v4, -0x1

    invoke-virtual {p0, p6, p7, v4}, Lcom/google/android/music/athome/AtHomePlayQueue;->getPosition(JI)I

    move-result v2

    .line 578
    .local v2, lastSongPosition:I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_43

    .line 579
    const-string v4, "aah.Music"

    const-string v5, "removeSongsInRange failed. Last song not found"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->failure()Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v4

    goto :goto_b

    .line 581
    :cond_43
    if-ge v2, v0, :cond_51

    .line 582
    const-string v4, "aah.Music"

    const-string v5, "removeSongsInRange failed. Last song is before first song"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->failure()Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v4

    goto :goto_b

    .line 586
    .end local v2           #lastSongPosition:I
    :cond_51
    iget-object v4, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 587
    .local v1, i:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    :cond_57
    :goto_57
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_74

    .line 588
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/athome/api/AtHomeSongInfo;

    .line 589
    .local v3, song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 590
    const-wide/16 v4, -0x1

    cmp-long v4, p6, v4

    if-eqz v4, :cond_83

    invoke-virtual {v3}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getQueueId()J

    move-result-wide v4

    cmp-long v4, v4, p6

    if-nez v4, :cond_83

    .line 599
    .end local v3           #song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    :cond_74
    iget v4, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mVersion:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mVersion:I

    .line 600
    iget v4, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mVersion:I

    if-ne v4, p3, :cond_8c

    .line 601
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->success()Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v4

    goto :goto_b

    .line 593
    .restart local v3       #song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    :cond_83
    if-eqz p8, :cond_57

    .line 594
    invoke-interface {p8, v3}, Lcom/google/android/music/athome/AtHomePlayQueue$OnRemovedHandler;->onRemoved(Lcom/google/android/music/athome/api/AtHomeSongInfo;)V
    :try_end_88
    .catchall {:try_start_17 .. :try_end_88} :catchall_89

    goto :goto_57

    .line 567
    .end local v0           #firstSongPosition:I
    .end local v1           #i:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    .end local v3           #song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    :catchall_89
    move-exception v4

    monitor-exit p0

    throw v4

    .line 603
    .restart local v0       #firstSongPosition:I
    .restart local v1       #i:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    :cond_8c
    :try_start_8c
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->resyncRequest()Lcom/google/android/music/athome/api/AtHomeModificationResult;
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_89

    move-result-object v4

    goto/16 :goto_b
.end method

.method public declared-synchronized removeSubmitterSongs(JIJ)Lcom/google/android/music/athome/api/AtHomeModificationResult;
    .registers 9
    .parameter "sessionId"
    .parameter "version"
    .parameter "submitterToRemove"

    .prologue
    .line 444
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/athome/AtHomePlayQueue;->checkSessionLocked(J)Z

    move-result v1

    if-nez v1, :cond_d

    .line 445
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->failure()Lcom/google/android/music/athome/api/AtHomeModificationResult;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_2b

    move-result-object v1

    .line 459
    :goto_b
    monitor-exit p0

    return-object v1

    .line 448
    :cond_d
    :try_start_d
    iget-object v1, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 449
    .local v0, i:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 450
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/athome/api/AtHomeSongInfo;

    invoke-virtual {v1}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getSubmitterId()J

    move-result-wide v1

    cmp-long v1, p4, v1

    if-nez v1, :cond_13

    .line 451
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V
    :try_end_2a
    .catchall {:try_start_d .. :try_end_2a} :catchall_2b

    goto :goto_13

    .line 444
    .end local v0           #i:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    :catchall_2b
    move-exception v1

    monitor-exit p0

    throw v1

    .line 455
    .restart local v0       #i:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    :cond_2e
    :try_start_2e
    iget v1, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mVersion:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mVersion:I

    .line 456
    iget v1, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mVersion:I

    if-ne v1, p3, :cond_3d

    .line 457
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->success()Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v1

    goto :goto_b

    .line 459
    :cond_3d
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->resyncRequest()Lcom/google/android/music/athome/api/AtHomeModificationResult;
    :try_end_40
    .catchall {:try_start_2e .. :try_end_40} :catchall_2b

    move-result-object v1

    goto :goto_b
.end method

.method public declared-synchronized reorderOrder(JIJ[J)Lcom/google/android/music/athome/api/AtHomeModificationResult;
    .registers 15
    .parameter "sessionId"
    .parameter "version"
    .parameter "lastUnaffectedSong"
    .parameter "orderedIds"

    .prologue
    .line 700
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/athome/AtHomePlayQueue;->checkSessionLocked(J)Z

    move-result v5

    if-nez v5, :cond_d

    .line 701
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->failure()Lcom/google/android/music/athome/api/AtHomeModificationResult;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_81

    move-result-object v5

    .line 742
    :goto_b
    monitor-exit p0

    return-object v5

    .line 704
    :cond_d
    :try_start_d
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 706
    .local v2, newList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    const-wide/16 v5, -0x1

    cmp-long v5, p4, v5

    if-eqz v5, :cond_59

    .line 708
    const/4 v0, 0x0

    .line 709
    .local v0, foundBoundary:Z
    iget-object v5, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 710
    .local v3, orderedSongs:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    :cond_1f
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 711
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/music/athome/api/AtHomeSongInfo;

    .line 712
    .local v4, song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 713
    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    .line 714
    invoke-virtual {v4}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getQueueId()J

    move-result-wide v5

    cmp-long v5, p4, v5

    if-nez v5, :cond_1f

    .line 715
    const/4 v0, 0x1

    .line 720
    .end local v4           #song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    :cond_3a
    if-nez v0, :cond_59

    .line 722
    const-string v5, "aah.Music"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not reorder songs. lastUnaffectedSong is not found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->failure()Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v5

    goto :goto_b

    .line 729
    .end local v0           #foundBoundary:Z
    .end local v3           #orderedSongs:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    :cond_59
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5a
    array-length v5, p6

    if-ge v1, v5, :cond_6b

    .line 730
    aget-wide v5, p6, v1

    invoke-direct {p0, v5, v6}, Lcom/google/android/music/athome/AtHomePlayQueue;->findAndRemoveSongLocked(J)Lcom/google/android/music/athome/api/AtHomeSongInfo;

    move-result-object v4

    .line 731
    .restart local v4       #song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    if-eqz v4, :cond_68

    .line 732
    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 729
    :cond_68
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 736
    .end local v4           #song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    :cond_6b
    iput-object v2, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    .line 738
    iget v5, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mVersion:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mVersion:I

    .line 739
    iget v5, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mVersion:I

    if-ne v5, p3, :cond_7c

    .line 740
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->success()Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v5

    goto :goto_b

    .line 742
    :cond_7c
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->resyncRequest()Lcom/google/android/music/athome/api/AtHomeModificationResult;
    :try_end_7f
    .catchall {:try_start_d .. :try_end_7f} :catchall_81

    move-result-object v5

    goto :goto_b

    .line 700
    .end local v1           #i:I
    .end local v2           #newList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    :catchall_81
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized resetQueue(JI)V
    .registers 5
    .parameter "id"
    .parameter "newMaxSize"

    .prologue
    .line 80
    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSessionId:J

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mVersion:I

    .line 82
    iput p3, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mMaxSize:I

    .line 83
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 84
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mAlbumArtMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 85
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSubmitters:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 86
    monitor-exit p0

    return-void

    .line 80
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setContent(Lcom/google/android/music/athome/api/AtHomePlayQueueContent;)V
    .registers 8
    .parameter "content"

    .prologue
    .line 127
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/music/athome/api/AtHomePlayQueueContent;->getSessionId()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSessionId:J

    .line 128
    invoke-virtual {p1}, Lcom/google/android/music/athome/api/AtHomePlayQueueContent;->getVersion()I

    move-result v3

    iput v3, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mVersion:I

    .line 129
    invoke-virtual {p1}, Lcom/google/android/music/athome/api/AtHomePlayQueueContent;->getMaxSize()I

    move-result v3

    iput v3, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mMaxSize:I

    .line 131
    iget-object v3, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 132
    iget-object v3, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    invoke-virtual {p1}, Lcom/google/android/music/athome/api/AtHomePlayQueueContent;->getSongs()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 133
    invoke-virtual {p1}, Lcom/google/android/music/athome/api/AtHomePlayQueueContent;->getSongs()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/music/athome/AtHomePlayQueue;->updateAlbumArtMapLocked(Ljava/util/Collection;)V

    .line 135
    iget-object v3, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSubmitters:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 136
    invoke-virtual {p1}, Lcom/google/android/music/athome/api/AtHomePlayQueueContent;->getSubmitters()Ljava/util/List;

    move-result-object v2

    .line 137
    .local v2, submitterList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/SubmitterInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 138
    .local v0, i:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/google/android/music/athome/api/SubmitterInfo;>;"
    :goto_35
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 139
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/athome/api/SubmitterInfo;

    .line 140
    .local v1, submitter:Lcom/google/android/music/athome/api/SubmitterInfo;
    iget-object v3, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSubmitters:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/google/android/music/athome/api/SubmitterInfo;->getSubmitterId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4e
    .catchall {:try_start_1 .. :try_end_4e} :catchall_4f

    goto :goto_35

    .line 127
    .end local v0           #i:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/google/android/music/athome/api/SubmitterInfo;>;"
    .end local v1           #submitter:Lcom/google/android/music/athome/api/SubmitterInfo;
    .end local v2           #submitterList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/SubmitterInfo;>;"
    :catchall_4f
    move-exception v3

    monitor-exit p0

    throw v3

    .line 142
    .restart local v0       #i:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/google/android/music/athome/api/SubmitterInfo;>;"
    .restart local v2       #submitterList:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/music/athome/api/SubmitterInfo;>;"
    :cond_52
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setEmptyContent(I)V
    .registers 3
    .parameter "version"

    .prologue
    .line 145
    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mVersion:I

    .line 146
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 147
    iget-object v0, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mAlbumArtMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 148
    monitor-exit p0

    return-void

    .line 145
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shuffle(JJI)[J
    .registers 20
    .parameter "sessionId"
    .parameter "lastUnaffectedSong"
    .parameter "lastUnaffectedSongPosition"

    .prologue
    .line 654
    monitor-enter p0

    :try_start_1
    invoke-direct/range {p0 .. p2}, Lcom/google/android/music/athome/AtHomePlayQueue;->checkSessionLocked(J)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_48

    move-result v12

    if-nez v12, :cond_a

    .line 655
    const/4 v9, 0x0

    .line 694
    :goto_8
    monitor-exit p0

    return-object v9

    .line 658
    :cond_a
    const/4 v3, 0x0

    .line 659
    .local v3, position:I
    const-wide/16 v12, -0x1

    cmp-long v12, p3, v12

    if-eqz v12, :cond_20

    .line 660
    :try_start_11
    move-wide/from16 v0, p3

    move/from16 v2, p5

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/music/athome/AtHomePlayQueue;->getPosition(JI)I

    move-result v3

    .line 661
    const/4 v12, -0x1

    if-ne v3, v12, :cond_1e

    .line 662
    const/4 v9, 0x0

    goto :goto_8

    .line 664
    :cond_1e
    add-int/lit8 v3, v3, 0x1

    .line 667
    :cond_20
    iget-object v12, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v5

    .line 668
    .local v5, size:I
    sub-int v4, v5, v3

    .line 670
    .local v4, shuffleSize:I
    if-gtz v4, :cond_2c

    .line 671
    const/4 v9, 0x0

    goto :goto_8

    .line 677
    :cond_2c
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 678
    .local v8, songsToShuffle:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    iget-object v12, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    invoke-virtual {v12, v3}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v7

    .line 679
    .local v7, songs:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    :goto_37
    invoke-interface {v7}, Ljava/util/ListIterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4b

    .line 680
    invoke-interface {v7}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    invoke-interface {v7}, Ljava/util/ListIterator;->remove()V
    :try_end_47
    .catchall {:try_start_11 .. :try_end_47} :catchall_48

    goto :goto_37

    .line 654
    .end local v3           #position:I
    .end local v4           #shuffleSize:I
    .end local v5           #size:I
    .end local v7           #songs:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    .end local v8           #songsToShuffle:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    :catchall_48
    move-exception v12

    monitor-exit p0

    throw v12

    .line 683
    .restart local v3       #position:I
    .restart local v4       #shuffleSize:I
    .restart local v5       #size:I
    .restart local v7       #songs:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    .restart local v8       #songsToShuffle:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    :cond_4b
    :try_start_4b
    invoke-static {v8}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 684
    iget-object v12, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    invoke-virtual {v12, v8}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 686
    new-array v9, v4, [J

    .line 687
    .local v9, updatedOrder:[J
    const/4 v10, 0x0

    .line 688
    .local v10, updatedOrderIndex:I
    invoke-virtual {v8}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v6

    .local v6, song:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    move v11, v10

    .line 689
    .end local v10           #updatedOrderIndex:I
    .local v11, updatedOrderIndex:I
    :goto_5b
    invoke-interface {v6}, Ljava/util/ListIterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_71

    .line 690
    add-int/lit8 v10, v11, 0x1

    .end local v11           #updatedOrderIndex:I
    .restart local v10       #updatedOrderIndex:I
    invoke-interface {v6}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/music/athome/api/AtHomeSongInfo;

    invoke-virtual {v12}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getQueueId()J

    move-result-wide v12

    aput-wide v12, v9, v11

    move v11, v10

    .end local v10           #updatedOrderIndex:I
    .restart local v11       #updatedOrderIndex:I
    goto :goto_5b

    .line 693
    :cond_71
    iget v12, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mVersion:I

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mVersion:I
    :try_end_77
    .catchall {:try_start_4b .. :try_end_77} :catchall_48

    goto :goto_8
.end method

.method public declared-synchronized skipSongsFromSubmitter(JJ)Lcom/google/android/music/athome/api/AtHomeSongInfo;
    .registers 9
    .parameter "startingSongQueueId"
    .parameter "submitterToSkip"

    .prologue
    .line 466
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 469
    .local v0, i:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    :cond_7
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 470
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/athome/api/AtHomeSongInfo;

    .line 471
    .local v1, song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    invoke-virtual {v1}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getQueueId()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_7

    .line 474
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 481
    .end local v1           #song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    :cond_1e
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 482
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/athome/api/AtHomeSongInfo;

    .line 483
    .restart local v1       #song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    invoke-virtual {v1}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getSubmitterId()J
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_36

    move-result-wide v2

    cmp-long v2, p3, v2

    if-eqz v2, :cond_1e

    .line 488
    .end local v1           #song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    :goto_32
    monitor-exit p0

    return-object v1

    :cond_34
    const/4 v1, 0x0

    goto :goto_32

    .line 466
    .end local v0           #i:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    :catchall_36
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->getContent()Lcom/google/android/music/athome/api/AtHomePlayQueueContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/athome/api/AtHomePlayQueueContent;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized updateSongs(JILjava/util/Collection;)Lcom/google/android/music/athome/api/AtHomeModificationResult;
    .registers 11
    .parameter "sessionId"
    .parameter "version"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/music/athome/api/AtHomeSongInfo;",
            ">;)",
            "Lcom/google/android/music/athome/api/AtHomeModificationResult;"
        }
    .end annotation

    .prologue
    .line 390
    .local p4, songsToUpdate:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/athome/AtHomePlayQueue;->checkSessionLocked(J)Z

    move-result v4

    if-nez v4, :cond_d

    .line 391
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->failure()Lcom/google/android/music/athome/api/AtHomeModificationResult;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_55

    move-result-object v4

    .line 418
    :goto_b
    monitor-exit p0

    return-object v4

    .line 394
    :cond_d
    const/4 v0, 0x1

    .line 395
    .local v0, allUpdated:Z
    :try_start_e
    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 396
    const-string v4, "aah.Music"

    const-string v5, "updateSongs has no songs to update"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :goto_1b
    iget v4, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mVersion:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mVersion:I

    .line 415
    iget v4, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mVersion:I

    if-ne v4, p3, :cond_58

    if-eqz v0, :cond_58

    .line 416
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->success()Lcom/google/android/music/athome/api/AtHomeModificationResult;

    move-result-object v4

    goto :goto_b

    .line 398
    :cond_2c
    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 399
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    const/4 v2, -0x1

    .line 400
    .local v2, queuePosition:I
    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_51

    .line 401
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/music/athome/api/AtHomeSongInfo;

    .line 402
    .local v3, song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    invoke-virtual {v3}, Lcom/google/android/music/athome/api/AtHomeSongInfo;->getQueueId()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5, v2}, Lcom/google/android/music/athome/AtHomePlayQueue;->getPosition(JI)I

    move-result v2

    .line 403
    if-ltz v2, :cond_4f

    .line 404
    iget-object v4, p0, Lcom/google/android/music/athome/AtHomePlayQueue;->mSongs:Ljava/util/LinkedList;

    invoke-virtual {v4, v2, v3}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 406
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 408
    :cond_4f
    const/4 v0, 0x0

    goto :goto_31

    .line 411
    .end local v3           #song:Lcom/google/android/music/athome/api/AtHomeSongInfo;
    :cond_51
    invoke-direct {p0, p4}, Lcom/google/android/music/athome/AtHomePlayQueue;->updateAlbumArtMapLocked(Ljava/util/Collection;)V
    :try_end_54
    .catchall {:try_start_e .. :try_end_54} :catchall_55

    goto :goto_1b

    .line 390
    .end local v0           #allUpdated:Z
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/google/android/music/athome/api/AtHomeSongInfo;>;"
    .end local v2           #queuePosition:I
    :catchall_55
    move-exception v4

    monitor-exit p0

    throw v4

    .line 418
    .restart local v0       #allUpdated:Z
    :cond_58
    :try_start_58
    invoke-direct {p0}, Lcom/google/android/music/athome/AtHomePlayQueue;->resyncRequest()Lcom/google/android/music/athome/api/AtHomeModificationResult;
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_55

    move-result-object v4

    goto :goto_b
.end method
