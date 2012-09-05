.class final Ldt;
.super Ldr;
.source "a"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldr",
        "<",
        "Ldz;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ldr;-><init>()V

    return-void
.end method

.method private static b(Lorg/json/JSONObject;)Ldz;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leq;
        }
    .end annotation

    .prologue
    .line 14
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 15
    invoke-static {}, Ldg;->values()[Ldg;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_27

    aget-object v4, v1, v3

    .line 16
    invoke-virtual {v4}, Ldg;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 17
    invoke-virtual {v4}, Ldg;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 20
    :cond_27
    new-instance v1, Ldz;

    const-string v2, "settings"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ldz;-><init>(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_32} :catch_33

    return-object v1

    .line 21
    :catch_33
    move-exception v0

    .line 22
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
    .line 9
    invoke-static {p1}, Ldt;->b(Lorg/json/JSONObject;)Ldz;

    move-result-object v0

    return-object v0
.end method
