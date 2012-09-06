.class final Lafy;
.super Lafl;
.source "CharMatcher.java"


# instance fields
.field final synthetic a:C


# direct methods
.method constructor <init>(C)V
    .registers 2
    .parameter

    .prologue
    .line 380
    iput-char p1, p0, Lafy;->a:C

    invoke-direct {p0}, Lafl;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lafl;
    .registers 2

    .prologue
    .line 398
    iget-char v0, p0, Lafy;->a:C

    invoke-static {v0}, Lafy;->b(C)Lafl;

    move-result-object v0

    return-object v0
.end method

.method public a(Lafl;)Lafl;
    .registers 3
    .parameter

    .prologue
    .line 394
    iget-char v0, p0, Lafy;->a:C

    invoke-virtual {p1, v0}, Lafl;->a(C)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-object p1

    :cond_9
    invoke-super {p0, p1}, Lafl;->a(Lafl;)Lafl;

    move-result-object p1

    goto :goto_8
.end method

.method a(LafA;)V
    .registers 3
    .parameter

    .prologue
    .line 402
    iget-char v0, p0, Lafy;->a:C

    invoke-virtual {p1, v0}, LafA;->a(C)V

    .line 403
    return-void
.end method

.method public a(C)Z
    .registers 3
    .parameter

    .prologue
    .line 382
    iget-char v0, p0, Lafy;->a:C

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public b()Lafl;
    .registers 1

    .prologue
    .line 406
    return-object p0
.end method
