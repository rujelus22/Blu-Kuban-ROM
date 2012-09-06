.class final Lafp;
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
    .line 498
    iput-char p1, p0, Lafp;->a:C

    iput-char p2, p0, Lafp;->b:C

    invoke-direct {p0}, Lafl;-><init>()V

    return-void
.end method


# virtual methods
.method a(LafA;)V
    .registers 5
    .parameter

    .prologue
    .line 504
    iget-char v0, p0, Lafp;->a:C

    .line 506
    :goto_2
    invoke-virtual {p1, v0}, LafA;->a(C)V

    .line 507
    add-int/lit8 v1, v0, 0x1

    int-to-char v1, v1

    iget-char v2, p0, Lafp;->b:C

    if-ne v0, v2, :cond_d

    .line 511
    return-void

    :cond_d
    move v0, v1

    goto :goto_2
.end method

.method public a(C)Z
    .registers 3
    .parameter

    .prologue
    .line 500
    iget-char v0, p0, Lafp;->a:C

    if-gt v0, p1, :cond_a

    iget-char v0, p0, Lafp;->b:C

    if-gt p1, v0, :cond_a

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
    .line 514
    return-object p0
.end method
