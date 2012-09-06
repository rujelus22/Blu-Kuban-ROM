.class final LamD;
.super Lamm;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lamm",
        "<",
        "Ljava/util/UUID;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 452
    invoke-direct {p0}, Lamm;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(LamW;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 452
    invoke-virtual {p0, p1}, LamD;->a(LamW;)Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public a(LamW;)Ljava/util/UUID;
    .registers 4
    .parameter

    .prologue
    .line 455
    invoke-virtual {p1}, LamW;->a()Lana;

    move-result-object v0

    sget-object v1, Lana;->i:Lana;

    if-ne v0, v1, :cond_d

    .line 456
    invoke-virtual {p1}, LamW;->e()V

    .line 457
    const/4 v0, 0x0

    .line 459
    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {p1}, LamW;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    goto :goto_c
.end method

.method public bridge synthetic a(Lanb;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 452
    check-cast p2, Ljava/util/UUID;

    invoke-virtual {p0, p1, p2}, LamD;->a(Lanb;Ljava/util/UUID;)V

    return-void
.end method

.method public a(Lanb;Ljava/util/UUID;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 463
    if-nez p2, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1, v0}, Lanb;->b(Ljava/lang/String;)Lanb;

    .line 464
    return-void

    .line 463
    :cond_7
    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method
