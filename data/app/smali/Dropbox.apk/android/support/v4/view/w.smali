.class final Landroid/support/v4/view/w;
.super Ljava/lang/Object;
.source "panda.py"


# direct methods
.method public static a(Landroid/view/VelocityTracker;I)F
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    return v0
.end method
