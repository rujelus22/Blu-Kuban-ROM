.class final Landroid/support/v4/view/C;
.super Ljava/lang/Object;
.source "panda.py"


# direct methods
.method public static a(Landroid/view/View;)I
    .registers 2
    .parameter

    .prologue
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    return v0
.end method
