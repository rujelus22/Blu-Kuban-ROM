.class final LamV;
.super Lamm;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lamm",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 261
    invoke-direct {p0}, Lamm;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LamW;)Ljava/lang/Number;
    .registers 4
    .parameter

    .prologue
    .line 264
    invoke-virtual {p1}, LamW;->a()Lana;

    move-result-object v0

    sget-object v1, Lana;->i:Lana;

    if-ne v0, v1, :cond_d

    .line 265
    invoke-virtual {p1}, LamW;->e()V

    .line 266
    const/4 v0, 0x0

    .line 268
    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {p1}, LamW;->a()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_c
.end method

.method public bridge synthetic a(LamW;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 261
    invoke-virtual {p0, p1}, LamV;->a(LamW;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public a(Lanb;Ljava/lang/Number;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 272
    invoke-virtual {p1, p2}, Lanb;->a(Ljava/lang/Number;)Lanb;

    .line 273
    return-void
.end method

.method public bridge synthetic a(Lanb;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 261
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, LamV;->a(Lanb;Ljava/lang/Number;)V

    return-void
.end method
