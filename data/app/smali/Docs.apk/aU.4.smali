.class LaU;
.super Ljava/lang/Object;
.source "ViewConfigurationCompatFroyo.java"


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
