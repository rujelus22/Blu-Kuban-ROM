.class public Lcom/google/android/music/sharedpreview/PreviewResponse;
.super Lcom/google/api/client/json/GenericJson;
.source "PreviewResponse.java"

# interfaces
.implements Lcom/google/android/music/sharedpreview/JsonResponse;


# instance fields
.field public mDurationMillis:I
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "durationMillis"
    .end annotation
.end field

.field public mNextPlayType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "nextPlayType"
    .end annotation
.end field

.field public mPlayType:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "playType"
    .end annotation
.end field

.field public mPreviewDurationMillis:I
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "previewDurationMillis"
    .end annotation
.end field

.field public mUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
        value = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Lcom/google/api/client/json/GenericJson;-><init>()V

    .line 18
    iput v0, p0, Lcom/google/android/music/sharedpreview/PreviewResponse;->mPreviewDurationMillis:I

    .line 21
    iput v0, p0, Lcom/google/android/music/sharedpreview/PreviewResponse;->mDurationMillis:I

    return-void
.end method

.method public static convertPreviewType(Ljava/lang/String;)I
    .registers 3
    .parameter "previewType"

    .prologue
    .line 44
    const/4 v0, 0x1

    .line 45
    .local v0, type:I
    if-eqz p0, :cond_c

    .line 46
    const-string v1, "90SP"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 47
    const/4 v0, 0x2

    .line 54
    :cond_c
    :goto_c
    return v0

    .line 48
    :cond_d
    const-string v1, "30SP"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 49
    const/4 v0, 0x3

    goto :goto_c

    .line 50
    :cond_17
    const-string v1, "FULL"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 51
    const/4 v0, 0x1

    goto :goto_c
.end method

.method public static parseFromJsonInputStream(Ljava/io/InputStream;)Lcom/google/android/music/sharedpreview/PreviewResponse;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    :try_start_0
    sget-object v0, Lcom/google/api/client/json/Json;->JSON_FACTORY:Lorg/codehaus/jackson/JsonFactory;

    invoke-virtual {v0, p0}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 37
    const-class v1, Lcom/google/android/music/sharedpreview/PreviewResponse;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/api/client/json/Json;->parse(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/sharedpreview/PreviewResponse;
    :try_end_12
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v0

    .line 38
    :catch_13
    move-exception v0

    .line 39
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse preview: "

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
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "mPreviewDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget v1, p0, Lcom/google/android/music/sharedpreview/PreviewResponse;->mPreviewDurationMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, " mDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget v1, p0, Lcom/google/android/music/sharedpreview/PreviewResponse;->mDurationMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, " mPlayType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object v1, p0, Lcom/google/android/music/sharedpreview/PreviewResponse;->mPlayType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v1, " mNextPlayType"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object v1, p0, Lcom/google/android/music/sharedpreview/PreviewResponse;->mNextPlayType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, " mUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-object v1, p0, Lcom/google/android/music/sharedpreview/PreviewResponse;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
