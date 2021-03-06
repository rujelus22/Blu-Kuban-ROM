.class public Lcom/google/android/music/sync/google/model/TrackStat;
.super Lcom/google/api/client/json/GenericJson;
.source "TrackStat.java"

# interfaces
.implements Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mIncrementalPlays:I
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "incremental_plays"
    .end annotation
.end field

.field private mLocalId:J

.field public mRemoteId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "id"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-class v0, Lcom/google/android/music/sync/google/MusicSyncAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/sync/google/model/TrackStat;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/sync/google/model/TrackStat;->mIncrementalPlays:I

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/music/sync/google/model/TrackStat;->mLocalId:J

    return-void
.end method

.method public static parse(Landroid/database/Cursor;)Lcom/google/android/music/sync/google/model/TrackStat;
    .registers 4
    .parameter "cursor"

    .prologue
    .line 161
    new-instance v0, Lcom/google/android/music/sync/google/model/TrackStat;

    invoke-direct {v0}, Lcom/google/android/music/sync/google/model/TrackStat;-><init>()V

    .line 162
    .local v0, stat:Lcom/google/android/music/sync/google/model/TrackStat;
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/music/sync/google/model/TrackStat;->mLocalId:J

    .line 163
    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/music/sync/google/model/TrackStat;->mRemoteId:Ljava/lang/String;

    .line 164
    const/4 v1, 0x3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/google/android/music/sync/google/model/TrackStat;->mIncrementalPlays:I

    .line 166
    return-object v0
.end method


# virtual methods
.method public getBatchMutationUrl(Landroid/content/Context;)Lcom/google/android/music/sync/api/MusicUrl;
    .registers 3
    .parameter "context"

    .prologue
    .line 126
    invoke-static {}, Lcom/google/android/music/sync/api/MusicUrl;->forTrackStatsBatchReport()Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v0

    return-object v0
.end method

.method public getFeedUrl(Landroid/content/Context;)Lcom/google/android/music/sync/api/MusicUrl;
    .registers 4
    .parameter "context"

    .prologue
    .line 116
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Only BatchMutationUrl is supported on this type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFeedUrlAsPost(Landroid/content/Context;)Lcom/google/android/music/sync/api/MusicUrl;
    .registers 4
    .parameter "context"

    .prologue
    .line 121
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Only BatchMutationUrl is supported on this type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIncrementalPlays()I
    .registers 2

    .prologue
    .line 42
    iget v0, p0, Lcom/google/android/music/sync/google/model/TrackStat;->mIncrementalPlays:I

    return v0
.end method

.method public getLastModifiedTimestamp()J
    .registers 3

    .prologue
    .line 64
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "mLastModifiedTimestamp is not defined for this type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLocalId()J
    .registers 3

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/google/android/music/sync/google/model/TrackStat;->mLocalId:J

    return-wide v0
.end method

.method public getRemoteId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/music/sync/google/model/TrackStat;->mRemoteId:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/music/sync/api/MusicUrl;
    .registers 5
    .parameter "context"
    .parameter "id"

    .prologue
    .line 111
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Only BatchMutationUrl is supported on this type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isDeleted()Z
    .registers 3

    .prologue
    .line 84
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "mIsDeleted is not defined for this type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public serializeAsJson()[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/store/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 96
    .local v0, byteStream:Ljava/io/ByteArrayOutputStream;
    :try_start_5
    sget-object v3, Lcom/google/api/client/json/Json;->JSON_FACTORY:Lorg/codehaus/jackson/JsonFactory;

    sget-object v4, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    invoke-virtual {v3, v0, v4}, Lorg/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;Lorg/codehaus/jackson/JsonEncoding;)Lorg/codehaus/jackson/JsonGenerator;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_c} :catch_1d

    move-result-object v2

    .line 99
    .local v2, generator:Lorg/codehaus/jackson/JsonGenerator;
    :try_start_d
    invoke-static {v2, p0}, Lcom/google/api/client/json/Json;->serialize(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_18

    .line 101
    :try_start_10
    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonGenerator;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_1d

    .line 107
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 101
    :catchall_18
    move-exception v3

    :try_start_19
    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonGenerator;->close()V

    throw v3
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1d} :catch_1d

    .line 103
    .end local v2           #generator:Lorg/codehaus/jackson/JsonGenerator;
    :catch_1d
    move-exception v1

    .line 104
    .local v1, e:Ljava/io/IOException;
    sget-object v3, Lcom/google/android/music/sync/google/model/TrackStat;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to serialize a TrackStat as JSON: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/music/sync/google/model/TrackStat;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    new-instance v3, Lcom/google/android/music/store/InvalidDataException;

    const-string v4, "Unable to serialize track stat for upstream sync."

    invoke-direct {v3, v4, v1}, Lcom/google/android/music/store/InvalidDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setIsDeleted(Z)V
    .registers 4
    .parameter "isDeleted"

    .prologue
    .line 89
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "mIsDeleted is not defined for this type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRemoteId(Ljava/lang/String;)V
    .registers 2
    .parameter "remoteId"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/android/music/sync/google/model/TrackStat;->mRemoteId:Ljava/lang/String;

    .line 61
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
    .line 144
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Upstream deletion is not defined for this type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public validateForUpstreamInsert()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/store/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/music/sync/google/model/TrackStat;->mRemoteId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 131
    new-instance v0, Lcom/google/android/music/store/InvalidDataException;

    const-string v1, "mRemoteId should not be null or empty."

    invoke-direct {v0, v1}, Lcom/google/android/music/store/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_10
    iget v0, p0, Lcom/google/android/music/sync/google/model/TrackStat;->mIncrementalPlays:I

    if-nez v0, :cond_1c

    .line 134
    new-instance v0, Lcom/google/android/music/store/InvalidDataException;

    const-string v1, "mIncrementalPlays should be a positive int."

    invoke-direct {v0, v1}, Lcom/google/android/music/store/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_1c
    return-void
.end method

.method public validateForUpstreamUpdate()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/store/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 139
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Upstream update is not defined for this type."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
