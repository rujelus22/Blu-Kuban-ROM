.class Lcom/google/android/apps/unveil/env/gl/GLCameraPreview$GLPreviewFrameLoader;
.super Lcom/google/android/apps/unveil/nonstop/FrameProcessor;
.source "GLCameraPreview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GLPreviewFrameLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;)V
    .registers 2
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/gl/GLCameraPreview$GLPreviewFrameLoader;->this$0:Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;

    invoke-direct {p0}, Lcom/google/android/apps/unveil/nonstop/FrameProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method protected onProcessFrame(Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;)V
    .registers 7
    .parameter "frame"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/gl/GLCameraPreview$GLPreviewFrameLoader;->this$0:Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/apps/unveil/env/gl/GLCameraPreview$GLPreviewFrameLoader;->this$0:Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;

    #getter for: Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;->renderer:Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;
    invoke-static {v0}, Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;->access$000(Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;)Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 76
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/gl/GLCameraPreview$GLPreviewFrameLoader;->this$0:Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;

    #getter for: Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;->renderer:Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;
    invoke-static {v0}, Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;->access$000(Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;)Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getRawData()[B

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/unveil/env/Size;

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/nonstop/TimestampedFrame;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/google/android/apps/unveil/env/Size;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->LoadNV21Data([BLcom/google/android/apps/unveil/env/Size;)V

    .line 77
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/gl/GLCameraPreview$GLPreviewFrameLoader;->this$0:Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/env/gl/GLCameraPreview;->requestRender()V

    .line 79
    :cond_2f
    return-void
.end method
