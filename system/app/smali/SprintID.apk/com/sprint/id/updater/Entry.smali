.class public Lcom/sprint/id/updater/Entry;
.super Ljava/lang/Object;
.source "Entry.java"


# instance fields
.field force:Z

.field packageName:Ljava/lang/String;

.field url:Ljava/lang/String;

.field validUntil:Ljava/util/Date;

.field versionCode:I

.field versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 5
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v1, "package"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/id/updater/Entry;->packageName:Ljava/lang/String;

    .line 23
    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/id/updater/Entry;->url:Ljava/lang/String;

    .line 24
    const-string v1, "force"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sprint/id/updater/Entry;->force:Z

    .line 25
    const-string v1, "version-code"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sprint/id/updater/Entry;->versionCode:I

    .line 26
    const-string v1, "version-name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/id/updater/Entry;->versionName:Ljava/lang/String;

    .line 27
    const-string v1, "valid-until"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, validUntilString:Ljava/lang/String;
    if-eqz v0, :cond_3a

    .line 29
    invoke-static {v0}, Lcom/sprint/id/updater/DownloadUtil;->parseInternetDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/sprint/id/updater/Entry;->validUntil:Ljava/util/Date;

    .line 31
    :cond_3a
    return-void
.end method
