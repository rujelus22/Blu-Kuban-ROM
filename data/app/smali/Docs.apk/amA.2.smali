.class final LamA;
.super Lamm;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lamm",
        "<",
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 393
    invoke-direct {p0}, Lamm;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(LamW;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 393
    invoke-virtual {p0, p1}, LamA;->a(LamW;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public a(LamW;)Ljava/net/URL;
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 396
    invoke-virtual {p1}, LamW;->a()Lana;

    move-result-object v1

    sget-object v2, Lana;->i:Lana;

    if-ne v1, v2, :cond_d

    .line 397
    invoke-virtual {p1}, LamW;->e()V

    .line 401
    :cond_c
    :goto_c
    return-object v0

    .line 400
    :cond_d
    invoke-virtual {p1}, LamW;->b()Ljava/lang/String;

    move-result-object v1

    .line 401
    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public bridge synthetic a(Lanb;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 393
    check-cast p2, Ljava/net/URL;

    invoke-virtual {p0, p1, p2}, LamA;->a(Lanb;Ljava/net/URL;)V

    return-void
.end method

.method public a(Lanb;Ljava/net/URL;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 405
    if-nez p2, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1, v0}, Lanb;->b(Ljava/lang/String;)Lanb;

    .line 406
    return-void

    .line 405
    :cond_7
    invoke-virtual {p2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method
