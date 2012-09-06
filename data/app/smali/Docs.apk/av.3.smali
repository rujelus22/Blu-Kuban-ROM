.class Lav;
.super Ljava/lang/Object;
.source "KeyEventCompatHoneycomb.java"


# direct methods
.method public static a(I)Z
    .registers 2
    .parameter

    .prologue
    .line 34
    invoke-static {p0}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v0

    return v0
.end method

.method public static a(II)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-static {p0, p1}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v0

    return v0
.end method
