.class LaA;
.super Ljava/lang/Object;
.source "MotionEventCompatEclair.java"


# direct methods
.method public static a(Landroid/view/MotionEvent;I)F
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    return v0
.end method

.method public static a(Landroid/view/MotionEvent;I)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/MotionEvent;I)F
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/MotionEvent;I)I
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    return v0
.end method
