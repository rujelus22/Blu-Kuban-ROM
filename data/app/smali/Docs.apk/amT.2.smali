.class final LamT;
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
    .line 220
    invoke-direct {p0}, Lamm;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LamW;)Ljava/lang/Number;
    .registers 4
    .parameter

    .prologue
    .line 223
    invoke-virtual {p1}, LamW;->a()Lana;

    move-result-object v0

    sget-object v1, Lana;->i:Lana;

    if-ne v0, v1, :cond_d

    .line 224
    invoke-virtual {p1}, LamW;->e()V

    .line 225
    const/4 v0, 0x0

    .line 228
    :goto_c
    return-object v0

    :cond_d
    :try_start_d
    invoke-virtual {p1}, LamW;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_14} :catch_16

    move-result-object v0

    goto :goto_c

    .line 229
    :catch_16
    move-exception v0

    .line 230
    new-instance v1, Laml;

    invoke-direct {v1, v0}, Laml;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic a(LamW;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 220
    invoke-virtual {p0, p1}, LamT;->a(LamW;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public a(Lanb;Ljava/lang/Number;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 235
    invoke-virtual {p1, p2}, Lanb;->a(Ljava/lang/Number;)Lanb;

    .line 236
    return-void
.end method

.method public bridge synthetic a(Lanb;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 220
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, LamT;->a(Lanb;Ljava/lang/Number;)V

    return-void
.end method
