.class final LamB;
.super Lamm;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lamm",
        "<",
        "Ljava/net/URI;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 411
    invoke-direct {p0}, Lamm;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(LamW;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 411
    invoke-virtual {p0, p1}, LamB;->a(LamW;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method public a(LamW;)Ljava/net/URI;
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 414
    invoke-virtual {p1}, LamW;->a()Lana;

    move-result-object v1

    sget-object v2, Lana;->i:Lana;

    if-ne v1, v2, :cond_d

    .line 415
    invoke-virtual {p1}, LamW;->e()V

    .line 420
    :cond_c
    :goto_c
    return-object v0

    .line 419
    :cond_d
    :try_start_d
    invoke-virtual {p1}, LamW;->b()Ljava/lang/String;

    move-result-object v1

    .line 420
    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/net/URISyntaxException; {:try_start_d .. :try_end_1e} :catch_1f

    goto :goto_c

    .line 421
    :catch_1f
    move-exception v0

    .line 422
    new-instance v1, Lamf;

    invoke-direct {v1, v0}, Lamf;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic a(Lanb;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 411
    check-cast p2, Ljava/net/URI;

    invoke-virtual {p0, p1, p2}, LamB;->a(Lanb;Ljava/net/URI;)V

    return-void
.end method

.method public a(Lanb;Ljava/net/URI;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 427
    if-nez p2, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1, v0}, Lanb;->b(Ljava/lang/String;)Lanb;

    .line 428
    return-void

    .line 427
    :cond_7
    invoke-virtual {p2}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method
