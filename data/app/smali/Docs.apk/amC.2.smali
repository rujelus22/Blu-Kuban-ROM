.class final LamC;
.super Lamm;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lamm",
        "<",
        "Ljava/net/InetAddress;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 433
    invoke-direct {p0}, Lamm;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(LamW;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 433
    invoke-virtual {p0, p1}, LamC;->a(LamW;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public a(LamW;)Ljava/net/InetAddress;
    .registers 4
    .parameter

    .prologue
    .line 436
    invoke-virtual {p1}, LamW;->a()Lana;

    move-result-object v0

    sget-object v1, Lana;->i:Lana;

    if-ne v0, v1, :cond_d

    .line 437
    invoke-virtual {p1}, LamW;->e()V

    .line 438
    const/4 v0, 0x0

    .line 441
    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {p1}, LamW;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_c
.end method

.method public bridge synthetic a(Lanb;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 433
    check-cast p2, Ljava/net/InetAddress;

    invoke-virtual {p0, p1, p2}, LamC;->a(Lanb;Ljava/net/InetAddress;)V

    return-void
.end method

.method public a(Lanb;Ljava/net/InetAddress;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 445
    if-nez p2, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1, v0}, Lanb;->b(Ljava/lang/String;)Lanb;

    .line 446
    return-void

    .line 445
    :cond_7
    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method
