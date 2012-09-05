.class public final Ldo;
.super Ldr;
.source "a"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldr",
        "<",
        "Lcq;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ldr;-><init>()V

    return-void
.end method

.method private static b(Lorg/json/JSONObject;)Lcq;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leq;
        }
    .end annotation

    .prologue
    .line 18
    :try_start_0
    new-instance v0, Lcq;

    invoke-direct {v0}, Lcq;-><init>()V

    .line 20
    const-string v1, "moSmsNumber"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "moSmsNumber"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcq;->c:Ljava/lang/String;

    .line 21
    :cond_19
    const-string v1, "moSmsPrefix"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    const-string v1, "moSmsPrefix"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcq;->d:Ljava/lang/String;

    .line 22
    :cond_2d
    const-string v1, "oauth_token"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    const-string v1, "oauth_token"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcq;->a:Ljava/lang/String;

    .line 23
    :cond_41
    const-string v1, "oauth_token_secret"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_55

    const-string v1, "oauth_token_secret"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcq;->b:Ljava/lang/String;
    :try_end_55
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_55} :catch_56

    .line 25
    :cond_55
    return-object v0

    .line 26
    :catch_56
    move-exception v0

    .line 27
    new-instance v1, Leq;

    invoke-direct {v1, v0}, Leq;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final bridge synthetic a(Lorg/json/JSONObject;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leq;
        }
    .end annotation

    .prologue
    .line 10
    invoke-static {p1}, Ldo;->b(Lorg/json/JSONObject;)Lcq;

    move-result-object v0

    return-object v0
.end method
