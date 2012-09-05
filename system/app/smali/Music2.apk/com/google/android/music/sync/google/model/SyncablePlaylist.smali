.class public Lcom/google/android/music/sync/google/model/SyncablePlaylist;
.super Lcom/google/api/client/json/GenericJson;
.source "SyncablePlaylist.java"

# interfaces
.implements Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mCreationTimestamp:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "creationTimestamp"
    .end annotation
.end field

.field public mIsDeleted:Z
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "deleted"
    .end annotation
.end field

.field public mLastModifiedTimestamp:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "lastModifiedTimestamp"
    .end annotation
.end field

.field public mLocalId:J

.field public mName:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "name"
    .end annotation
.end field

.field private mPlayList:Lcom/google/android/music/store/PlayList;

.field public mRemoteId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "id"
    .end annotation
.end field

.field public mType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "type"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-class v0, Lcom/google/android/music/sync/google/MusicSyncAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const-wide/16 v1, -0x1

    .line 28
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .line 37
    iput-wide v1, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mCreationTimestamp:J

    .line 40
    iput-wide v1, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mLastModifiedTimestamp:J

    .line 52
    const-string v0, "USER_GENERATED"

    iput-object v0, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mType:Ljava/lang/String;

    .line 55
    iput-wide v1, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mLocalId:J

    return-void
.end method

.method public static parse(Lcom/google/android/music/store/PlayList;)Lcom/google/android/music/sync/google/model/SyncablePlaylist;
    .registers 5
    .parameter "playList"

    .prologue
    .line 140
    new-instance v1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    invoke-direct {v1}, Lcom/google/android/music/sync/google/model/SyncablePlaylist;-><init>()V

    .line 141
    .local v1, syncable:Lcom/google/android/music/sync/google/model/SyncablePlaylist;
    iput-object p0, v1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mPlayList:Lcom/google/android/music/store/PlayList;

    .line 142
    invoke-virtual {p0}, Lcom/google/android/music/store/PlayList;->getSourceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mRemoteId:Ljava/lang/String;

    .line 143
    invoke-virtual {p0}, Lcom/google/android/music/store/PlayList;->getId()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mLocalId:J

    .line 144
    invoke-virtual {p0}, Lcom/google/android/music/store/PlayList;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 145
    invoke-virtual {p0}, Lcom/google/android/music/store/PlayList;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mName:Ljava/lang/String;

    .line 147
    :cond_1f
    invoke-virtual {p0}, Lcom/google/android/music/store/PlayList;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_39

    .line 148
    const-string v2, "MAGIC"

    iput-object v2, v1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mType:Ljava/lang/String;

    .line 154
    :goto_2a
    :try_start_2a
    invoke-virtual {p0}, Lcom/google/android/music/store/PlayList;->getSourceVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mLastModifiedTimestamp:J
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_38} :catch_3e

    .line 158
    :goto_38
    return-object v1

    .line 150
    :cond_39
    const-string v2, "USER_GENERATED"

    iput-object v2, v1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mType:Ljava/lang/String;

    goto :goto_2a

    .line 155
    :catch_3e
    move-exception v0

    .line 156
    .local v0, e:Ljava/lang/NumberFormatException;
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mLastModifiedTimestamp:J

    goto :goto_38
.end method

.method public static parseFromJsonInputStream(Ljava/io/InputStream;)Lcom/google/android/music/sync/google/model/SyncablePlaylist;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    :try_start_0
    sget-object v0, Lcom/google/api/client/json/Json;->JSON_FACTORY:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p0}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 96
    const-class v1, Lcom/google/android/music/sync/google/model/SyncablePlaylist;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/api/client/json/Json;->parse(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;
    :try_end_12
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v0

    .line 97
    :catch_13
    move-exception v0

    .line 98
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse playlist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public formatAsPlayList(Lcom/google/android/music/store/PlayList;)Lcom/google/android/music/store/PlayList;
    .registers 4
    .parameter "playlist"

    .prologue
    .line 103
    if-nez p1, :cond_7

    .line 104
    new-instance p1, Lcom/google/android/music/store/PlayList;

    .end local p1
    invoke-direct {p1}, Lcom/google/android/music/store/PlayList;-><init>()V

    .line 106
    .restart local p1
    :cond_7
    iget-object v0, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mRemoteId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/music/store/PlayList;->setSourceId(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/music/store/PlayList;->setName(Ljava/lang/String;)V

    .line 108
    iget-wide v0, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mLastModifiedTimestamp:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/music/store/PlayList;->setSourceVersion(Ljava/lang/String;)V

    .line 109
    const-string v0, "MAGIC"

    iget-object v1, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 110
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/music/store/PlayList;->setType(I)V

    .line 114
    :goto_28
    return-object p1

    .line 112
    :cond_29
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/music/store/PlayList;->setType(I)V

    goto :goto_28
.end method

.method public getBatchMutationUrl(Landroid/content/Context;)Lcom/google/android/music/sync/api/MusicUrl;
    .registers 3
    .parameter "context"

    .prologue
    .line 186
    invoke-static {}, Lcom/google/android/music/sync/api/MusicUrl;->forPlaylistsBatchMutation()Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v0

    return-object v0
.end method

.method public getEncapsulatedPlayList()Lcom/google/android/music/store/PlayList;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mPlayList:Lcom/google/android/music/store/PlayList;

    return-object v0
.end method

.method public getFeedUrl(Landroid/content/Context;)Lcom/google/android/music/sync/api/MusicUrl;
    .registers 3
    .parameter "context"

    .prologue
    .line 178
    invoke-static {}, Lcom/google/android/music/sync/api/MusicUrl;->forPlaylistsFeed()Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v0

    return-object v0
.end method

.method public getFeedUrlAsPost(Landroid/content/Context;)Lcom/google/android/music/sync/api/MusicUrl;
    .registers 3
    .parameter "context"

    .prologue
    .line 182
    invoke-static {}, Lcom/google/android/music/sync/api/MusicUrl;->forPlaylistsFeedAsPost()Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v0

    return-object v0
.end method

.method public getLastModifiedTimestamp()J
    .registers 3

    .prologue
    .line 202
    iget-wide v0, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mLastModifiedTimestamp:J

    return-wide v0
.end method

.method public getLocalId()J
    .registers 3

    .prologue
    .line 190
    iget-wide v0, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mLocalId:J

    return-wide v0
.end method

.method public getRemoteId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mRemoteId:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/music/sync/api/MusicUrl;
    .registers 4
    .parameter "context"
    .parameter "id"

    .prologue
    .line 174
    invoke-static {p2}, Lcom/google/android/music/sync/api/MusicUrl;->forPlaylist(Ljava/lang/String;)Lcom/google/android/music/sync/api/MusicUrl;

    move-result-object v0

    return-object v0
.end method

.method public isDeleted()Z
    .registers 2

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mIsDeleted:Z

    return v0
.end method

.method public serializeAsJson()[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/music/store/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 74
    .local v0, byteStream:Ljava/io/ByteArrayOutputStream;
    :try_start_5
    sget-object v4, Lcom/google/api/client/json/Json;->JSON_FACTORY:Lorg/codehaus/jackson/JsonFactory;

    sget-object v5, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    invoke-virtual {v4, v0, v5}, Lorg/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;Lorg/codehaus/jackson/JsonEncoding;)Lorg/codehaus/jackson/JsonGenerator;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_c} :catch_2f

    move-result-object v2

    .line 77
    .local v2, generator:Lorg/codehaus/jackson/JsonGenerator;
    :try_start_d
    invoke-static {v2, p0}, Lcom/google/api/client/json/Json;->serialize(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_2a

    .line 79
    :try_start_10
    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonGenerator;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_2f

    .line 85
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 86
    .local v3, serialization:[B
    sget-object v4, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->TAG:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 87
    sget-object v4, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_29
    return-object v3

    .line 79
    .end local v3           #serialization:[B
    :catchall_2a
    move-exception v4

    :try_start_2b
    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonGenerator;->close()V

    throw v4
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2f} :catch_2f

    .line 81
    .end local v2           #generator:Lorg/codehaus/jackson/JsonGenerator;
    :catch_2f
    move-exception v1

    .line 82
    .local v1, e:Ljava/io/IOException;
    sget-object v4, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to serialize a playlist as JSON: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    new-instance v4, Lcom/google/android/music/store/InvalidDataException;

    const-string v5, "Unable to serialize playlist for upstream sync."

    invoke-direct {v4, v5, v1}, Lcom/google/android/music/store/InvalidDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public setIsDeleted(Z)V
    .registers 2
    .parameter "isDeleted"

    .prologue
    .line 222
    iput-boolean p1, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mIsDeleted:Z

    .line 223
    return-void
.end method

.method public setRemoteId(Ljava/lang/String;)V
    .registers 2
    .parameter "remoteId"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mRemoteId:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 164
    .local v0, s:Ljava/lang/StringBuffer;
    const-string v1, "; localid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mLocalId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; remoteid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mRemoteId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; ctime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mCreationTimestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; mtime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mLastModifiedTimestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; isDeleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mIsDeleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public validateForUpstreamDelete()V
    .registers 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mRemoteId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 135
    new-instance v0, Lcom/google/android/music/store/InvalidDataException;

    const-string v1, "Invalid playlist for upstream delete."

    invoke-direct {v0, v1}, Lcom/google/android/music/store/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_10
    return-void
.end method

.method public validateForUpstreamInsert()V
    .registers 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 123
    new-instance v0, Lcom/google/android/music/store/InvalidDataException;

    const-string v1, "Invalid playlist for upstream insert."

    invoke-direct {v0, v1}, Lcom/google/android/music/store/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_10
    return-void
.end method

.method public validateForUpstreamUpdate()V
    .registers 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mName:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/android/music/sync/google/model/SyncablePlaylist;->mRemoteId:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 129
    :cond_10
    new-instance v0, Lcom/google/android/music/store/InvalidDataException;

    const-string v1, "Invalid playlist for upstream update."

    invoke-direct {v0, v1}, Lcom/google/android/music/store/InvalidDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_18
    return-void
.end method
