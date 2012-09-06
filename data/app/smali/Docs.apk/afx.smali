.class final Lafx;
.super Lafl;
.source "CharMatcher.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 298
    invoke-direct {p0}, Lafl;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)I
    .registers 3
    .parameter

    .prologue
    .line 304
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const/4 v0, -0x1

    return v0
.end method

.method public a(Ljava/lang/CharSequence;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 309
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 310
    invoke-static {p2, v0}, LafQ;->b(II)I

    .line 311
    const/4 v0, -0x1

    return v0
.end method

.method public a()Lafl;
    .registers 2

    .prologue
    .line 364
    sget-object v0, Lafx;->m:Lafl;

    return-object v0
.end method

.method public a(Lafl;)Lafl;
    .registers 3
    .parameter

    .prologue
    .line 360
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lafl;

    return-object v0
.end method

.method a(LafA;)V
    .registers 2
    .parameter

    .prologue
    .line 367
    return-void
.end method

.method public a(C)Z
    .registers 3
    .parameter

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/lang/CharSequence;)Z
    .registers 3
    .parameter

    .prologue
    .line 320
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public b()Lafl;
    .registers 1

    .prologue
    .line 370
    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Z
    .registers 3
    .parameter

    .prologue
    .line 324
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const/4 v0, 0x1

    return v0
.end method
