.class public Lcom/sec/android/app/camera/EmptyView;
.super Lcom/sec/android/app/camera/MenuBase;
.source "EmptyView.java"


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

    .line 28
    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V

    .line 31
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/EmptyView;->setCaptureEnabled(Z)V

    .line 32
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/EmptyView;->setTouchHandled(Z)V

    .line 33
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 38
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 39
    return-void
.end method

.method public onBack()V
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v0, :cond_5

    .line 47
    :goto_4
    return-void

    .line 45
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 46
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onBack()V

    goto :goto_4
.end method
