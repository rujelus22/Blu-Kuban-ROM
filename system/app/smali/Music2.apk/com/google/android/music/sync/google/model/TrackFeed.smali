.class public Lcom/google/android/music/sync/google/model/TrackFeed;
.super Lcom/google/api/client/json/GenericJson;
.source "TrackFeed.java"

# interfaces
.implements Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity$Feed;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/sync/google/model/TrackFeed$TrackListData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/client/json/GenericJson;",
        "Lcom/google/android/music/sync/google/model/MusicQueueableSyncEntity$Feed",
        "<",
        "Lcom/google/android/music/sync/google/model/Track;",
        ">;"
    }
.end annotation


# instance fields
.field public nextPageToken:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "nextPageToken"
    .end annotation
.end field

.field public trackListData:Lcom/google/android/music/sync/google/model/TrackFeed$TrackListData;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "data"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .line 35
    return-void
.end method

.method public static parseFromJsonInputStream(Ljava/io/InputStream;)Lcom/google/android/music/sync/google/model/TrackFeed;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    :try_start_0
    sget-object v0, Lcom/google/api/client/json/Json;->JSON_FACTORY:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p0}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 57
    const-class v1, Lcom/google/android/music/sync/google/model/TrackFeed;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/api/client/json/Json;->parse(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/TrackFeed;
    :try_end_12
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v0

    .line 58
    :catch_13
    move-exception v0

    .line 59
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse track feed: "

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
.method public getItemList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/sync/google/model/Track;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/music/sync/google/model/TrackFeed;->trackListData:Lcom/google/android/music/sync/google/model/TrackFeed$TrackListData;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/music/sync/google/model/TrackFeed;->trackListData:Lcom/google/android/music/sync/google/model/TrackFeed$TrackListData;

    iget-object v0, v0, Lcom/google/android/music/sync/google/model/TrackFeed$TrackListData;->items:Ljava/util/List;

    goto :goto_5
.end method

.method public getNextPageToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/music/sync/google/model/TrackFeed;->nextPageToken:Ljava/lang/String;

    return-object v0
.end method
