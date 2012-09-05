.class public final Lds;
.super Ldr;
.source "a"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldr",
        "<",
        "Lbj;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ldg;


# direct methods
.method public constructor <init>(Ldg;)V
    .registers 2
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ldr;-><init>()V

    .line 20
    iput-object p1, p0, Lds;->a:Ldg;

    .line 21
    return-void
.end method

.method private b(Lorg/json/JSONObject;)Lbj;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leq;
        }
    .end annotation

    .prologue
    .line 28
    :try_start_0
    new-instance v0, Lhn;

    invoke-direct {v0}, Lhn;-><init>()V

    .line 31
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lbj;

    invoke-virtual {v0, v1, v2}, Lhn;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbj;

    .line 35
    iget-object v1, p0, Lds;->a:Ldg;

    invoke-virtual {v0, v1}, Lbj;->setFeature(Ldg;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_16} :catch_17

    .line 43
    :goto_16
    return-object v0

    .line 37
    :catch_17
    move-exception v0

    .line 41
    const-string v1, "jackson error reading FeatureStateResponse"

    invoke-static {v1, v0}, Li;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    const/4 v0, 0x0

    goto :goto_16
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
    .line 14
    invoke-direct {p0, p1}, Lds;->b(Lorg/json/JSONObject;)Lbj;

    move-result-object v0

    return-object v0
.end method
