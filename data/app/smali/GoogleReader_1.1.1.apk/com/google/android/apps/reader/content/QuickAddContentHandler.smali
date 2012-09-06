.class Lcom/google/android/apps/reader/content/QuickAddContentHandler;
.super Lcom/google/android/feeds/JsonContentHandler;
.source "QuickAddContentHandler.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/android/feeds/JsonContentHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected getContent(Ljava/lang/String;)Lcom/google/android/apps/reader/content/QuickAddResponse;
    .registers 10
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 35
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 36
    .local v6, response:Lorg/json/JSONObject;
    const-string v0, "query"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, query:Ljava/lang/String;
    const-string v0, "numResults"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 38
    .local v3, numResults:I
    const-string v0, "moreResults"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 39
    .local v4, moreResults:Z
    const-string v0, "webfeedConfirmation"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 41
    .local v5, webfeedConfirmation:Z
    const-string v0, "streamId"

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, streamId:Ljava/lang/String;
    new-instance v0, Lcom/google/android/apps/reader/content/QuickAddResponse;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/reader/content/QuickAddResponse;-><init>(Ljava/lang/String;Ljava/lang/String;IZZ)V

    return-object v0
.end method

.method protected bridge synthetic getContent(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/google/android/apps/reader/content/QuickAddContentHandler;->getContent(Ljava/lang/String;)Lcom/google/android/apps/reader/content/QuickAddResponse;

    move-result-object v0

    return-object v0
.end method
