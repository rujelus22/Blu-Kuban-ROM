.class final Lafw;
.super Lafl;
.source "CharMatcher.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 218
    invoke-direct {p0}, Lafl;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)I
    .registers 3
    .parameter

    .prologue
    .line 224
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, -0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public a(Ljava/lang/CharSequence;I)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 228
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 229
    invoke-static {p2, v0}, LafQ;->b(II)I

    .line 230
    if-ne p2, v0, :cond_a

    const/4 p2, -0x1

    :cond_a
    return p2
.end method

.method public a()Lafl;
    .registers 2

    .prologue
    .line 288
    sget-object v0, Lafw;->n:Lafl;

    return-object v0
.end method

.method public a(Lafl;)Lafl;
    .registers 2
    .parameter

    .prologue
    .line 283
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    return-object p0
.end method

.method public a(C)Z
    .registers 3
    .parameter

    .prologue
    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/lang/CharSequence;)Z
    .registers 3
    .parameter

    .prologue
    .line 238
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const/4 v0, 0x1

    return v0
.end method

.method public b()Lafl;
    .registers 1

    .prologue
    .line 292
    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Z
    .registers 3
    .parameter

    .prologue
    .line 243
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
