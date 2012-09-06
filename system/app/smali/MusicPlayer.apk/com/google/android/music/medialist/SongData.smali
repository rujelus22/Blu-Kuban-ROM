.class public Lcom/google/android/music/medialist/SongData;
.super Lcom/google/api/client/json/GenericJson;
.source "SongData.java"


# static fields
.field private static final LOGV:Z


# instance fields
.field public mAlbum:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "album"
    .end annotation
.end field

.field public mAlbumArtist:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "albumArtist"
    .end annotation
.end field

.field public mAlbumArtistId:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "albumArtistId"
    .end annotation
.end field

.field public mAlbumId:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "albumId"
    .end annotation
.end field

.field public mArtist:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "artist"
    .end annotation
.end field

.field public mArtistSort:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "artistSort"
    .end annotation
.end field

.field public mDomainParam:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "domainParam"
    .end annotation
.end field

.field public mDuration:J
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "duration"
    .end annotation
.end field

.field public mHasLocal:I
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "hasLocal"
    .end annotation
.end field

.field public mHasRemote:I
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "hasRemote"
    .end annotation
.end field

.field public mRating:I
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "rating"
    .end annotation
.end field

.field public mSourceId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "sourceId"
    .end annotation
.end field

.field public mTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "title"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 26
    const-string v0, "SongData"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/medialist/SongData;->LOGV:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    return-void
.end method

.method public static parseFromJson(Ljava/lang/String;)Lcom/google/android/music/medialist/SongData;
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 74
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 75
    sget-object v2, Lcom/google/api/client/json/Json;->JSON_FACTORY:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 77
    const-class v2, Lcom/google/android/music/medialist/SongData;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/google/api/client/json/Json;->parseAndClose(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/medialist/SongData;
    :try_end_1c
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_1 .. :try_end_1c} :catch_1d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1c} :catch_3c

    .line 89
    :goto_1c
    return-object v0

    .line 78
    :catch_1d
    move-exception v0

    .line 79
    sget-boolean v2, Lcom/google/android/music/medialist/SongData;->LOGV:Z

    if-eqz v2, :cond_3a

    .line 80
    const-string v2, "SongData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse song s="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3a
    move-object v0, v1

    .line 83
    goto :goto_1c

    .line 85
    :catch_3c
    move-exception v0

    .line 86
    sget-boolean v2, Lcom/google/android/music/medialist/SongData;->LOGV:Z

    if-eqz v2, :cond_59

    .line 87
    const-string v2, "SongData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse song s="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_59
    move-object v0, v1

    .line 89
    goto :goto_1c
.end method

.method public static toJson(Lcom/google/android/music/medialist/SongData;)Ljava/lang/String;
    .registers 8
    .parameter "song"

    .prologue
    .line 94
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 96
    .local v0, byteStream:Ljava/io/ByteArrayOutputStream;
    :try_start_5
    sget-object v4, Lcom/google/api/client/json/Json;->JSON_FACTORY:Lorg/codehaus/jackson/JsonFactory;

    sget-object v5, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    invoke-virtual {v4, v0, v5}, Lorg/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;Lorg/codehaus/jackson/JsonEncoding;)Lorg/codehaus/jackson/JsonGenerator;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_c} :catch_3e

    move-result-object v2

    .line 99
    .local v2, generator:Lorg/codehaus/jackson/JsonGenerator;
    :try_start_d
    invoke-static {v2, p0}, Lcom/google/api/client/json/Json;->serialize(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_39

    .line 101
    :try_start_10
    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonGenerator;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_3e

    .line 108
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 109
    .local v3, s:Ljava/lang/String;
    sget-boolean v4, Lcom/google/android/music/medialist/SongData;->LOGV:Z

    if-eqz v4, :cond_38

    .line 110
    const-string v4, "SongData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toJson: s="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .end local v2           #generator:Lorg/codehaus/jackson/JsonGenerator;
    .end local v3           #s:Ljava/lang/String;
    :cond_38
    :goto_38
    return-object v3

    .line 101
    .restart local v2       #generator:Lorg/codehaus/jackson/JsonGenerator;
    :catchall_39
    move-exception v4

    :try_start_3a
    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonGenerator;->close()V

    throw v4
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3e} :catch_3e

    .line 103
    .end local v2           #generator:Lorg/codehaus/jackson/JsonGenerator;
    :catch_3e
    move-exception v1

    .line 104
    .local v1, e:Ljava/io/IOException;
    const-string v4, "SongData"

    const-string v5, "Unable to serialize Song as JSON"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    const/4 v3, 0x0

    goto :goto_38
.end method
