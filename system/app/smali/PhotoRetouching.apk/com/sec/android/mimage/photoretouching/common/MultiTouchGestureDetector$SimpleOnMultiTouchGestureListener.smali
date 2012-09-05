.class public Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$SimpleOnMultiTouchGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MultiTouchGestureDetector.java"

# interfaces
.implements Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector$OnMultiTouchGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/mimage/photoretouching/common/MultiTouchGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOnMultiTouchGestureListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultiTouchDown()Z
    .registers 2

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public onMultiTouchMove()Z
    .registers 2

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public onMultiTouchScale(FFF)Z
    .registers 5
    .parameter "scalefactor"
    .parameter "focusX"
    .parameter "focusY"

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public onMultiTouchScroll(FF)Z
    .registers 4
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public onMultiTouchUp()Z
    .registers 2

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 120
    const/4 v0, 0x1

    return v0
.end method
