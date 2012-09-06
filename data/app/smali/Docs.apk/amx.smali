.class final Lamx;
.super Lamm;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lamm",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 335
    invoke-direct {p0}, Lamm;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(LamW;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 335
    invoke-virtual {p0, p1}, Lamx;->a(LamW;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(LamW;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 338
    invoke-virtual {p1}, LamW;->a()Lana;

    move-result-object v0

    .line 339
    sget-object v1, Lana;->i:Lana;

    if-ne v0, v1, :cond_d

    .line 340
    invoke-virtual {p1}, LamW;->e()V

    .line 341
    const/4 v0, 0x0

    .line 347
    :goto_c
    return-object v0

    .line 344
    :cond_d
    sget-object v1, Lana;->h:Lana;

    if-ne v0, v1, :cond_1a

    .line 345
    invoke-virtual {p1}, LamW;->c()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 347
    :cond_1a
    invoke-virtual {p1}, LamW;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public bridge synthetic a(Lanb;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 335
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lamx;->a(Lanb;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lanb;Ljava/lang/String;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 351
    invoke-virtual {p1, p2}, Lanb;->b(Ljava/lang/String;)Lanb;

    .line 352
    return-void
.end method
