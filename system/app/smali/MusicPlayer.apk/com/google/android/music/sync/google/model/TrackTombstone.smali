.class public Lcom/google/android/music/sync/google/model/TrackTombstone;
.super Ljava/lang/Object;
.source "TrackTombstone.java"

# interfaces
.implements Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLastModifiedTimestamp:J

.field private mLocalId:J

.field private mRemoteId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-class v0, Lcom/google/android/music/sync/google/MusicSyncAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/sync/google/model/TrackTombstone;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const-wide/16 v1, -0x1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide v1, p0, Lcom/google/android/music/sync/google/model/TrackTombstone;->mLocalId:J

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/sync/google/model/TrackTombstone;->mRemoteId:Ljava/lang/String;

    .line 20
    iput-wide v1, p0, Lcom/google/android/music/sync/google/model/TrackTombstone;->mLastModifiedTimestamp:J

    return-void
.end method

.method public static parse(Lcom/google/android/music/store/MusicFileTombstone;)Lcom/google/android/music/sync/google/model/TrackTombstone;
    .registers 5
    .parameter "tombstone"

    .prologue
    .line 97
    new-instance v1, Lcom/google/android/music/sync/google/model/TrackTombstone;

    invoke-direct {v1}, Lcom/google/android/music/sync/google/model/TrackTombstone;-><init>()V

    .line 98
    .local v1, track:Lcom/google/android/music/sync/google/model/TrackTombstone;
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFileTombstone;->getSourceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/music/sync/google/model/TrackTombstone;->mRemoteId:Ljava/lang/String;

    .line 99
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFileTombstone;->getLocalId()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/music/sync/google/model/TrackTombstone;->mLocalId:J

    .line 101
    :try_start_11
    invoke-virtual {p0}, Lcom/google/android/music/store/MusicFileTombstone;->getSourceVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/music/sync/google/model/TrackTombstone;->mLastModifiedTimestamp:J
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_1b} :catch_1c

    .line 106
    :goto_1b
    return-object v1

    .line 102
    :catch_1c
    move-exception v0

    .line 103
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v2, Lcom/google/android/music/sync/google/model/TrackTombstone;->TAG:Ljava/lang/String;

    const-string v3, "Non-numeric version for music tombstone.  Replacing with 0."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/google/android/music/sync/google/model/TrackTombstone;->mLastModifiedTimestamp:J

    goto :goto_1b
.end method


# virtual methods
.method public getBatchMutationUrl(Landroid/content/Context;)Lcom/google/android/music/sync/api/MusicUrl;
    .registers 3
    .parameter "context"

    .prologue
    .line 72
    invoke-static {}, Lcom/google/android/music/sync/api/MusicUrl;->forTracksBatchMutation()Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v0

    return-object v0
.end method

.method public getFeedUrl(Landroid/content/Context;)Lcom/google/android/music/sync/api/MusicUrl;
    .registers 4
    .parameter "context"

    .prologue
    .line 62
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TrackTombstone: getFeedUrl not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFeedUrlAsPost(Landroid/content/Context;)Lcom/google/android/music/sync/api/MusicUrl;
    .registers 4
    .parameter "context"

    .prologue
    .line 67
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TrackTombstone: getFeedUrlAsPost not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLastModifiedTimestamp()J
    .registers 3

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/google/android/music/sync/google/model/TrackTombstone;->mLastModifiedTimestamp:J

    return-wide v0
.end method

.method public getLocalId()J
    .registers 3

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/google/android/music/sync/google/model/TrackTombstone;->mLocalId:J

    return-wide v0
.end method

.method public getRemoteId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/music/sync/google/model/TrackTombstone;->mRemoteId:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/music/sync/api/MusicUrl;
    .registers 6
    .parameter "context"
    .parameter "id"

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 58
    .local v0, dimension:I
    invoke-static {p2, v0}, Lcom/google/android/music/sync/api/MusicUrl;->forTrack(Ljava/lang/String;I)Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v1

    return-object v1
.end method

.method public isDeleted()Z
    .registers 2

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public serializeAsJson()[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/store/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 92
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TrackTombstone: serializeAsJson not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIsDeleted(Z)V
    .registers 2
    .parameter "isDeleted"

    .prologue
    .line 54
    return-void
.end method

.method public setRemoteId(Ljava/lang/String;)V
    .registers 2
    .parameter "remoteId"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/android/music/sync/google/model/TrackTombstone;->mRemoteId:Ljava/lang/String;

    return-void
.end method

.method public validateForUpstreamDelete()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/store/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/android/music/sync/google/model/TrackTombstone;->mRemoteId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 87
    new-instance v0, Lcom/google/android/music/store/InvalidDataException;

    const-string v1, "Invalid track for upstream delete."

    invoke-direct {v0, v1}, Lcom/google/android/music/store/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_10
    return-void
.end method

.method public validateForUpstreamInsert()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/store/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TrackTombstone: validateForUpstreamInsert not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public validateForUpstreamUpdate()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/store/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TrackTombstone: validateForUpstreamInsert not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
