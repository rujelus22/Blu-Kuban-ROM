.class public final Ldbxyzptlk/t/i;
.super Ljava/lang/Object;
.source "panda.py"


# direct methods
.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 38
    if-eq p0, p1, :cond_a

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
