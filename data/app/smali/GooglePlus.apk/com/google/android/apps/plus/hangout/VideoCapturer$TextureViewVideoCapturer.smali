.class public Lcom/google/android/apps/plus/hangout/VideoCapturer$TextureViewVideoCapturer;
.super Lcom/google/android/apps/plus/hangout/VideoCapturer;
.source "VideoCapturer.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/VideoCapturer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextureViewVideoCapturer"
.end annotation


# instance fields
.field protected final textureView:Landroid/view/TextureView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;Landroid/view/TextureView;Lcom/google/android/apps/plus/hangout/VideoCapturer$Host;)V
    .registers 6
    .parameter "context"
    .parameter "nativeWrapper"
    .parameter "texture"
    .parameter "host"

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/apps/plus/hangout/VideoCapturer;-><init>(Landroid/content/Context;Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;Lcom/google/android/apps/plus/hangout/VideoCapturer$Host;)V

    .line 88
    iput-object p3, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer$TextureViewVideoCapturer;->textureView:Landroid/view/TextureView;

    .line 89
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer$TextureViewVideoCapturer;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 90
    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 5
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer$TextureViewVideoCapturer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer$TextureViewVideoCapturer;->isSurfaceReady:Z

    .line 99
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer$TextureViewVideoCapturer;->startCapturingWhenSurfaceReady:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer$TextureViewVideoCapturer;->isCapturing:Z

    if-nez v0, :cond_10

    .line 100
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/VideoCapturer$TextureViewVideoCapturer;->startCapturing()Z

    .line 102
    :cond_10
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 3
    .parameter "surface"

    .prologue
    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer$TextureViewVideoCapturer;->isSurfaceReady:Z

    .line 111
    invoke-virtual {p0}, Lcom/google/android/apps/plus/hangout/VideoCapturer$TextureViewVideoCapturer;->stopCapturing()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/hangout/VideoCapturer$TextureViewVideoCapturer;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 4
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 122
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2
    .parameter "surface"

    .prologue
    .line 130
    return-void
.end method
