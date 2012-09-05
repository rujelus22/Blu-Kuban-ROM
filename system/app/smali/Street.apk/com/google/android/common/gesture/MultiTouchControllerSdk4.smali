.class public Lcom/google/android/common/gesture/MultiTouchControllerSdk4;
.super Lcom/google/android/common/gesture/MultiTouchController;
.source "MultiTouchControllerSdk4.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/android/common/gesture/MultiTouchController;-><init>()V

    return-void
.end method


# virtual methods
.method protected initMultiTouchListenerInternal(Landroid/content/Context;)V
    .registers 2
    .parameter "c"

    .prologue
    .line 19
    return-void
.end method

.method public isMultiTouchSupported()Z
    .registers 2

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public setMultiTouchSupported(Landroid/content/pm/PackageManager;)V
    .registers 2
    .parameter "packageManager"

    .prologue
    .line 24
    return-void
.end method
