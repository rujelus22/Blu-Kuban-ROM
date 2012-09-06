.class LaO;
.super Ljava/lang/Object;
.source "ViewCompatGingerbread.java"


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
