.class final Lamu;
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
    .line 276
    invoke-direct {p0}, Lamm;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LamW;)Ljava/lang/Number;
    .registers 4
    .parameter

    .prologue
    .line 279
    invoke-virtual {p1}, LamW;->a()Lana;

    move-result-object v0

    sget-object v1, Lana;->i:Lana;

    if-ne v0, v1, :cond_d

    .line 280
    invoke-virtual {p1}, LamW;->e()V

    .line 281
    const/4 v0, 0x0

    .line 283
    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {p1}, LamW;->a()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_c
.end method

.method public bridge synthetic a(LamW;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 276
    invoke-virtual {p0, p1}, Lamu;->a(LamW;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public a(Lanb;Ljava/lang/Number;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 287
    invoke-virtual {p1, p2}, Lanb;->a(Ljava/lang/Number;)Lanb;

    .line 288
    return-void
.end method

.method public bridge synthetic a(Lanb;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 276
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lamu;->a(Lanb;Ljava/lang/Number;)V

    return-void
.end method
