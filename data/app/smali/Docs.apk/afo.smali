.class final Lafo;
.super Lafl;
.source "CharMatcher.java"


# instance fields
.field final synthetic a:[C


# direct methods
.method constructor <init>([C)V
    .registers 2
    .parameter

    .prologue
    .line 468
    iput-object p1, p0, Lafo;->a:[C

    invoke-direct {p0}, Lafl;-><init>()V

    return-void
.end method


# virtual methods
.method a(LafA;)V
    .registers 6
    .parameter

    .prologue
    .line 474
    iget-object v1, p0, Lafo;->a:[C

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    aget-char v3, v1, v0

    .line 475
    invoke-virtual {p1, v3}, LafA;->a(C)V

    .line 474
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 477
    :cond_e
    return-void
.end method

.method public a(C)Z
    .registers 3
    .parameter

    .prologue
    .line 470
    iget-object v0, p0, Lafo;->a:[C

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
