.class public Lcom/google/android/music/sync/google/model/MagicPlaylistResponse;
.super Lcom/google/api/client/json/GenericJson;
.source "MagicPlaylistResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field public mPlaylistEntries:Ljava/util/List;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "entries"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/music/sync/google/model/SyncablePlaylistEntry;",
            ">;"
        }
    .end annotation
.end field

.field public mRemotePlaylistId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "id"
    .end annotation
.end field

.field public mStatusCode:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "status_code"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-class v0, Lcom/google/android/music/sync/google/MusicSyncAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .line 23
    return-void
.end method

.method public static parseFromJsonInputStream(Ljava/io/InputStream;)Lcom/google/android/music/sync/google/model/MagicPlaylistResponse;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    :try_start_0
    sget-object v0, Lcom/google/api/client/json/Json;->JSON_FACTORY:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p0}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 49
    const-class v1, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/api/client/json/Json;->parse(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse;
    :try_end_12
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v0

    .line 50
    :catch_13
    move-exception v0

    .line 51
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getStatusCode()Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;
    .registers 8

    .prologue
    .line 56
    invoke-static {}, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;->values()[Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;

    move-result-object v0

    .local v0, arr$:[Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_6
    if-ge v2, v3, :cond_1a

    aget-object v1, v0, v2

    .line 57
    .local v1, code:Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;
    invoke-virtual {v1}, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;->name()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse;->mStatusCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 62
    .end local v1           #code:Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;
    :goto_16
    return-object v1

    .line 56
    .restart local v1       #code:Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 61
    .end local v1           #code:Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;
    :cond_1a
    sget-object v4, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown error code received from server: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse;->mStatusCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    sget-object v1, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;->OK:Lcom/google/android/music/sync/google/model/MagicPlaylistResponse$StatusCode;

    goto :goto_16
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remotePlaylistId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse;->mRemotePlaylistId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; mPlaylistEntries:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/music/sync/google/model/MagicPlaylistResponse;->mPlaylistEntries:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
