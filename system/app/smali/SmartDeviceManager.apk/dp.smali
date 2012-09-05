.class public final Ldp;
.super Ldr;
.source "a"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldr",
        "<",
        "Lcs;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ldr;-><init>()V

    return-void
.end method

.method private static b(Lorg/json/JSONObject;)Lcs;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leq;
        }
    .end annotation

    .prologue
    .line 11
    :try_start_0
    new-instance v0, Lcs;

    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "name"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcs;-><init>(ILjava/lang/String;)V
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_11} :catch_12

    return-object v0

    .line 12
    :catch_12
    move-exception v0

    .line 13
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
    .line 7
    invoke-static {p1}, Ldp;->b(Lorg/json/JSONObject;)Lcs;

    move-result-object v0

    return-object v0
.end method
