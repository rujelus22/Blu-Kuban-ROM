.class public Lcom/google/android/music/sync/google/model/BatchMutateResponse;
.super Lcom/google/api/client/json/GenericJson;
.source "BatchMutateResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse;
    }
.end annotation


# instance fields
.field public mMutatePlaylistResponses:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "mutate_response"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/sync/google/model/BatchMutateResponse$MutateResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/sync/google/model/BatchMutateResponse;->mMutatePlaylistResponses:Ljava/util/List;

    .line 22
    return-void
.end method

.method public static parseFromJsonInputStream(Ljava/io/InputStream;)Lcom/google/android/music/sync/google/model/BatchMutateResponse;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    :try_start_0
    sget-object v0, Lcom/google/api/client/json/Json;->JSON_FACTORY:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p0}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 44
    const-class v1, Lcom/google/android/music/sync/google/model/BatchMutateResponse;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/api/client/json/Json;->parse(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/BatchMutateResponse;
    :try_end_12
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v0

    .line 45
    :catch_13
    move-exception v0

    .line 46
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
