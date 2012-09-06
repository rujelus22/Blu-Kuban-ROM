.class LaP;
.super Ljava/lang/Object;
.source "ViewCompatICS.java"


# direct methods
.method public static a(Landroid/view/View;I)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    return v0
.end method
