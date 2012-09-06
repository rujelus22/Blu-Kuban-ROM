.class public Lcom/google/android/music/athome/TokenRetriever$Request;
.super Lcom/google/api/client/json/GenericJson;
.source "TokenRetriever.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/athome/TokenRetriever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# instance fields
.field public mRecipientAccount:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "recipientEmail"
    .end annotation
.end field

.field public mSongIds:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "songIds"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mVersion:I
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "version"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/music/athome/TokenRetriever$Request;->mVersion:I

    return-void
.end method

.method public static serialize(Ljava/lang/String;Ljava/util/List;)[B
    .registers 4
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    .local p1, songIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/google/android/music/athome/TokenRetriever$Request;

    invoke-direct {v0}, Lcom/google/android/music/athome/TokenRetriever$Request;-><init>()V

    .line 71
    .local v0, request:Lcom/google/android/music/athome/TokenRetriever$Request;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/music/athome/TokenRetriever$Request;->mSongIds:Ljava/util/List;

    .line 72
    iget-object v1, v0, Lcom/google/android/music/athome/TokenRetriever$Request;->mSongIds:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 73
    iput-object p0, v0, Lcom/google/android/music/athome/TokenRetriever$Request;->mRecipientAccount:Ljava/lang/String;

    .line 74
    invoke-virtual {v0}, Lcom/google/android/music/athome/TokenRetriever$Request;->serializeAsJson()[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public serializeAsJson()[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 55
    .local v0, byteStream:Ljava/io/ByteArrayOutputStream;
    :try_start_5
    sget-object v3, Lcom/google/api/client/json/Json;->JSON_FACTORY:Lorg/codehaus/jackson/JsonFactory;

    sget-object v4, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    invoke-virtual {v3, v0, v4}, Lorg/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;Lorg/codehaus/jackson/JsonEncoding;)Lorg/codehaus/jackson/JsonGenerator;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_c} :catch_1d

    move-result-object v2

    .line 58
    .local v2, generator:Lorg/codehaus/jackson/JsonGenerator;
    :try_start_d
    invoke-static {v2, p0}, Lcom/google/api/client/json/Json;->serialize(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_18

    .line 60
    :try_start_10
    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonGenerator;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_1d

    .line 66
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 60
    :catchall_18
    move-exception v3

    :try_start_19
    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonGenerator;->close()V

    throw v3
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1d} :catch_1d

    .line 62
    .end local v2           #generator:Lorg/codehaus/jackson/JsonGenerator;
    :catch_1d
    move-exception v1

    .line 63
    .local v1, e:Ljava/io/IOException;
    const-string v3, "aah.Music"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to serialize batched entries as JSON: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/music/athome/TokenRetriever$Request;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    throw v1
.end method
