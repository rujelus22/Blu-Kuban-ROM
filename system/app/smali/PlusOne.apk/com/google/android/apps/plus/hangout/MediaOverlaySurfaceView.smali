.class public Lcom/google/android/apps/plus/hangout/MediaOverlaySurfaceView;
.super Landroid/view/SurfaceView;
.source "MediaOverlaySurfaceView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/hangout/MediaOverlaySurfaceView;->setZOrderMediaOverlay(Z)V

    .line 20
    return-void
.end method
