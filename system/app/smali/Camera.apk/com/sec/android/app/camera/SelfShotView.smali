.class public Lcom/sec/android/app/camera/SelfShotView;
.super Lcom/sec/android/app/camera/MenuBase;
.source "SelfShotView.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V
    .registers 8
    .parameter "activityContext"
    .parameter "layoutId"
    .parameter "viewId"
    .parameter "baseLayout"
    .parameter "menuResourceDepot"
    .parameter "order"

    .prologue
    const/4 v0, 0x1

    .line 27
    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V

    .line 29
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/SelfShotView;->setCaptureEnabled(Z)V

    .line 30
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/SelfShotView;->setTouchHandled(Z)V

    .line 31
    invoke-direct {p0}, Lcom/sec/android/app/camera/SelfShotView;->init()V

    .line 32
    return-void
.end method

.method private init()V
    .registers 1

    .prologue
    .line 36
    return-void
.end method


# virtual methods
.method public onBack()V
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 40
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 43
    const/16 v0, 0x18

    if-eq p1, v0, :cond_c

    const/16 v0, 0x19

    if-eq p1, v0, :cond_c

    const/16 v0, 0x50

    if-ne p1, v0, :cond_e

    .line 46
    :cond_c
    const/4 v0, 0x1

    .line 49
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 53
    const/16 v0, 0x18

    if-eq p1, v0, :cond_c

    const/16 v0, 0x19

    if-eq p1, v0, :cond_c

    const/16 v0, 0x50

    if-ne p1, v0, :cond_e

    .line 56
    :cond_c
    const/4 v0, 0x1

    .line 59
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
