.class final Landroid/support/v4/view/I;
.super Ljava/lang/Object;
.source "panda.py"


# direct methods
.method public static a(Landroid/view/ViewConfiguration;)I
    .registers 2
    .parameter

    .prologue
    .line 26
    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    return v0
.end method
