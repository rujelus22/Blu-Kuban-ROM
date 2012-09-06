.class final Lamy;
.super Lamm;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lamm",
        "<",
        "Ljava/lang/StringBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 357
    invoke-direct {p0}, Lamm;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(LamW;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 357
    invoke-virtual {p0, p1}, Lamy;->a(LamW;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public a(LamW;)Ljava/lang/StringBuilder;
    .registers 4
    .parameter

    .prologue
    .line 360
    invoke-virtual {p1}, LamW;->a()Lana;

    move-result-object v0

    sget-object v1, Lana;->i:Lana;

    if-ne v0, v1, :cond_d

    .line 361
    invoke-virtual {p1}, LamW;->e()V

    .line 362
    const/4 v0, 0x0

    .line 364
    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LamW;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_c
.end method

.method public bridge synthetic a(Lanb;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 357
    check-cast p2, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Lamy;->a(Lanb;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public a(Lanb;Ljava/lang/StringBuilder;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 368
    if-nez p2, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1, v0}, Lanb;->b(Ljava/lang/String;)Lanb;

    .line 369
    return-void

    .line 368
    :cond_7
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method
