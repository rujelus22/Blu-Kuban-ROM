.class final Lamz;
.super Lamm;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lamm",
        "<",
        "Ljava/lang/StringBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 375
    invoke-direct {p0}, Lamm;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(LamW;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 375
    invoke-virtual {p0, p1}, Lamz;->a(LamW;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public a(LamW;)Ljava/lang/StringBuffer;
    .registers 4
    .parameter

    .prologue
    .line 378
    invoke-virtual {p1}, LamW;->a()Lana;

    move-result-object v0

    sget-object v1, Lana;->i:Lana;

    if-ne v0, v1, :cond_d

    .line 379
    invoke-virtual {p1}, LamW;->e()V

    .line 380
    const/4 v0, 0x0

    .line 382
    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, LamW;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public bridge synthetic a(Lanb;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 375
    check-cast p2, Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1, p2}, Lamz;->a(Lanb;Ljava/lang/StringBuffer;)V

    return-void
.end method

.method public a(Lanb;Ljava/lang/StringBuffer;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 386
    if-nez p2, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1, v0}, Lanb;->b(Ljava/lang/String;)Lanb;

    .line 387
    return-void

    .line 386
    :cond_7
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method
