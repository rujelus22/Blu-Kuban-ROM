.class final Lafn;
.super Lafl;
.source "CharMatcher.java"


# instance fields
.field final synthetic a:C

.field final synthetic b:C


# direct methods
.method constructor <init>(CC)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 449
    iput-char p1, p0, Lafn;->a:C

    iput-char p2, p0, Lafn;->b:C

    invoke-direct {p0}, Lafl;-><init>()V

    return-void
.end method


# virtual methods
.method a(LafA;)V
    .registers 3
    .parameter

    .prologue
    .line 455
    iget-char v0, p0, Lafn;->a:C

    invoke-virtual {p1, v0}, LafA;->a(C)V

    .line 456
    iget-char v0, p0, Lafn;->b:C

    invoke-virtual {p1, v0}, LafA;->a(C)V

    .line 457
    return-void
.end method

.method public a(C)Z
    .registers 3
    .parameter

    .prologue
    .line 451
    iget-char v0, p0, Lafn;->a:C

    if-eq p1, v0, :cond_8

    iget-char v0, p0, Lafn;->b:C

    if-ne p1, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public b()Lafl;
    .registers 1

    .prologue
    .line 460
    return-object p0
.end method
