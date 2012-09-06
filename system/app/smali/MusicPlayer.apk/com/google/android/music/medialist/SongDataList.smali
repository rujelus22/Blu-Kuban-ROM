.class public Lcom/google/android/music/medialist/SongDataList;
.super Lcom/google/api/client/json/GenericJson;
.source "SongDataList.java"


# static fields
.field private static final LOGV:Z


# instance fields
.field public mList:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/music/medialist/SongData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 26
    const-string v0, "SongDataList"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/medialist/SongDataList;->LOGV:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/medialist/SongDataList;->mList:Ljava/util/ArrayList;

    return-void
.end method

.method public static parseFromJson(Ljava/lang/String;)Lcom/google/android/music/medialist/SongDataList;
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 59
    sget-boolean v0, Lcom/google/android/music/medialist/SongDataList;->LOGV:Z

    if-eqz v0, :cond_1d

    .line 60
    const-string v0, "SongDataList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseFromJson: s="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_1d
    :try_start_1d
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 64
    sget-object v2, Lcom/google/api/client/json/Json;->JSON_FACTORY:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v2, v0}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 66
    const-class v2, Lcom/google/android/music/medialist/SongDataList;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/google/api/client/json/Json;->parseAndClose(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/medialist/SongDataList;
    :try_end_38
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_1d .. :try_end_38} :catch_39
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_38} :catch_58

    .line 78
    :goto_38
    return-object v0

    .line 67
    :catch_39
    move-exception v0

    .line 68
    sget-boolean v2, Lcom/google/android/music/medialist/SongDataList;->LOGV:Z

    if-eqz v2, :cond_56

    .line 69
    const-string v2, "SongDataList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse songs s="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_56
    move-object v0, v1

    .line 72
    goto :goto_38

    .line 74
    :catch_58
    move-exception v0

    .line 75
    sget-boolean v2, Lcom/google/android/music/medialist/SongDataList;->LOGV:Z

    if-eqz v2, :cond_75

    .line 76
    const-string v2, "SongDataList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse songs s="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_75
    move-object v0, v1

    .line 78
    goto :goto_38
.end method

.method public static toJson(Lcom/google/android/music/medialist/SongDataList;)Ljava/lang/String;
    .registers 8
    .parameter "songs"

    .prologue
    .line 32
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 34
    .local v0, byteStream:Ljava/io/ByteArrayOutputStream;
    :try_start_5
    sget-object v4, Lcom/google/api/client/json/Json;->JSON_FACTORY:Lorg/codehaus/jackson/JsonFactory;

    sget-object v5, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    invoke-virtual {v4, v0, v5}, Lorg/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;Lorg/codehaus/jackson/JsonEncoding;)Lorg/codehaus/jackson/JsonGenerator;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_c} :catch_3e

    move-result-object v2

    .line 37
    .local v2, generator:Lorg/codehaus/jackson/JsonGenerator;
    :try_start_d
    invoke-static {v2, p0}, Lcom/google/api/client/json/Json;->serialize(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_39

    .line 39
    :try_start_10
    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonGenerator;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_3e

    .line 46
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 47
    .local v3, s:Ljava/lang/String;
    sget-boolean v4, Lcom/google/android/music/medialist/SongDataList;->LOGV:Z

    if-eqz v4, :cond_38

    .line 48
    const-string v4, "SongDataList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "arrayToJson: s="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .end local v2           #generator:Lorg/codehaus/jackson/JsonGenerator;
    .end local v3           #s:Ljava/lang/String;
    :cond_38
    :goto_38
    return-object v3

    .line 39
    .restart local v2       #generator:Lorg/codehaus/jackson/JsonGenerator;
    :catchall_39
    move-exception v4

    :try_start_3a
    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonGenerator;->close()V

    throw v4
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3e} :catch_3e

    .line 41
    .end local v2           #generator:Lorg/codehaus/jackson/JsonGenerator;
    :catch_3e
    move-exception v1

    .line 42
    .local v1, e:Ljava/io/IOException;
    const-string v4, "SongDataList"

    const-string v5, "Unable to serialize Songs as JSON"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    const/4 v3, 0x0

    goto :goto_38
.end method
