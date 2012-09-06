.class final Lafz;
.super Lafl;
.source "CharMatcher.java"


# instance fields
.field final synthetic a:C


# direct methods
.method constructor <init>(C)V
    .registers 2
    .parameter

    .prologue
    .line 417
    iput-char p1, p0, Lafz;->a:C

    invoke-direct {p0}, Lafl;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lafl;
    .registers 2

    .prologue
    .line 431
    iget-char v0, p0, Lafz;->a:C

    invoke-static {v0}, Lafz;->a(C)Lafl;

    move-result-object v0

    return-object v0
.end method

.method public a(Lafl;)Lafl;
    .registers 3
    .parameter

    .prologue
    .line 427
    iget-char v0, p0, Lafz;->a:C

    invoke-virtual {p1, v0}, Lafl;->a(C)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object p0, Lafz;->m:Lafl;

    :cond_a
    return-object p0
.end method

.method public a(C)Z
    .registers 3
    .parameter

    .prologue
    .line 419
    iget-char v0, p0, Lafz;->a:C

    if-eq p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
