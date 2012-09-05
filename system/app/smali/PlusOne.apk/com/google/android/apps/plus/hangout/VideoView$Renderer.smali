.class Lcom/google/android/apps/plus/hangout/VideoView$Renderer;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Renderer"
.end annotation


# instance fields
.field private disabled:Z

.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/VideoView;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/hangout/VideoView;)V
    .registers 2
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/VideoView$Renderer;->this$0:Lcom/google/android/apps/plus/hangout/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/hangout/VideoView;Lcom/google/android/apps/plus/hangout/VideoView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/VideoView$Renderer;-><init>(Lcom/google/android/apps/plus/hangout/VideoView;)V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 5
    .parameter "gl"

    .prologue
    const/4 v1, 0x0

    .line 56
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/VideoView$Renderer;->this$0:Lcom/google/android/apps/plus/hangout/VideoView;

    #getter for: Lcom/google/android/apps/plus/hangout/VideoView;->reinitializeRenderer:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/VideoView;->access$100(Lcom/google/android/apps/plus/hangout/VideoView;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 57
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/VideoView$Renderer;->this$0:Lcom/google/android/apps/plus/hangout/VideoView;

    #getter for: Lcom/google/android/apps/plus/hangout/VideoView;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/VideoView;->access$300(Lcom/google/android/apps/plus/hangout/VideoView;)Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/VideoView$Renderer;->this$0:Lcom/google/android/apps/plus/hangout/VideoView;

    #getter for: Lcom/google/android/apps/plus/hangout/VideoView;->requestID:I
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/VideoView;->access$200(Lcom/google/android/apps/plus/hangout/VideoView;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->initializeIncomingVideoRenderer(I)Z

    move-result v0

    if-nez v0, :cond_31

    const/4 v0, 0x1

    :goto_1c
    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/VideoView$Renderer;->disabled:Z

    .line 58
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/VideoView$Renderer;->disabled:Z

    if-eqz v0, :cond_27

    .line 59
    const-string v0, "initializeIncomingVideoRenderer failed. Rendering disabled"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 61
    :cond_27
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/VideoView$Renderer;->this$0:Lcom/google/android/apps/plus/hangout/VideoView;

    #setter for: Lcom/google/android/apps/plus/hangout/VideoView;->reinitializeRenderer:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/VideoView;->access$102(Lcom/google/android/apps/plus/hangout/VideoView;Z)Z

    .line 64
    :cond_2c
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/VideoView$Renderer;->disabled:Z

    if-eqz v0, :cond_33

    .line 69
    :goto_30
    return-void

    :cond_31
    move v0, v1

    .line 57
    goto :goto_1c

    .line 68
    :cond_33
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/VideoView$Renderer;->this$0:Lcom/google/android/apps/plus/hangout/VideoView;

    #getter for: Lcom/google/android/apps/plus/hangout/VideoView;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/VideoView;->access$300(Lcom/google/android/apps/plus/hangout/VideoView;)Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/VideoView$Renderer;->this$0:Lcom/google/android/apps/plus/hangout/VideoView;

    #getter for: Lcom/google/android/apps/plus/hangout/VideoView;->requestID:I
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/VideoView;->access$200(Lcom/google/android/apps/plus/hangout/VideoView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->renderIncomingVideoFrame(I)Z

    goto :goto_30
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 8
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 73
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/VideoView$Renderer;->this$0:Lcom/google/android/apps/plus/hangout/VideoView;

    #getter for: Lcom/google/android/apps/plus/hangout/VideoView;->reinitializeRenderer:Z
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/VideoView;->access$100(Lcom/google/android/apps/plus/hangout/VideoView;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 74
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/VideoView$Renderer;->this$0:Lcom/google/android/apps/plus/hangout/VideoView;

    #getter for: Lcom/google/android/apps/plus/hangout/VideoView;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/VideoView;->access$300(Lcom/google/android/apps/plus/hangout/VideoView;)Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/VideoView$Renderer;->this$0:Lcom/google/android/apps/plus/hangout/VideoView;

    #getter for: Lcom/google/android/apps/plus/hangout/VideoView;->requestID:I
    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/VideoView;->access$200(Lcom/google/android/apps/plus/hangout/VideoView;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->initializeIncomingVideoRenderer(I)Z

    move-result v0

    if-nez v0, :cond_32

    move v0, v1

    :goto_1d
    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/VideoView$Renderer;->disabled:Z

    .line 75
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/VideoView$Renderer;->disabled:Z

    if-eqz v0, :cond_28

    .line 76
    const-string v0, "initializeIncomingVideoRenderer failed. Rendering disabled"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 78
    :cond_28
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/VideoView$Renderer;->this$0:Lcom/google/android/apps/plus/hangout/VideoView;

    #setter for: Lcom/google/android/apps/plus/hangout/VideoView;->reinitializeRenderer:Z
    invoke-static {v0, v2}, Lcom/google/android/apps/plus/hangout/VideoView;->access$102(Lcom/google/android/apps/plus/hangout/VideoView;Z)Z

    .line 81
    :cond_2d
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/VideoView$Renderer;->disabled:Z

    if-eqz v0, :cond_34

    .line 90
    :cond_31
    :goto_31
    return-void

    :cond_32
    move v0, v2

    .line 74
    goto :goto_1d

    .line 85
    :cond_34
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/VideoView$Renderer;->this$0:Lcom/google/android/apps/plus/hangout/VideoView;

    #getter for: Lcom/google/android/apps/plus/hangout/VideoView;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/VideoView;->access$300(Lcom/google/android/apps/plus/hangout/VideoView;)Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/apps/plus/hangout/VideoView$Renderer;->this$0:Lcom/google/android/apps/plus/hangout/VideoView;

    #getter for: Lcom/google/android/apps/plus/hangout/VideoView;->requestID:I
    invoke-static {v3}, Lcom/google/android/apps/plus/hangout/VideoView;->access$200(Lcom/google/android/apps/plus/hangout/VideoView;)I

    move-result v3

    invoke-virtual {v0, v3, p2, p3}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->setIncomingVideoRendererSurfaceSize(III)Z

    move-result v0

    if-nez v0, :cond_52

    :goto_46
    iput-boolean v1, p0, Lcom/google/android/apps/plus/hangout/VideoView$Renderer;->disabled:Z

    .line 87
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/VideoView$Renderer;->disabled:Z

    if-eqz v0, :cond_31

    .line 88
    const-string v0, "setIncomingVideoRendererSurfaceSize failed. Rendering disabled"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    goto :goto_31

    :cond_52
    move v1, v2

    .line 85
    goto :goto_46
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/VideoView$Renderer;->this$0:Lcom/google/android/apps/plus/hangout/VideoView;

    #getter for: Lcom/google/android/apps/plus/hangout/VideoView;->gcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/VideoView;->access$300(Lcom/google/android/apps/plus/hangout/VideoView;)Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/VideoView$Renderer;->this$0:Lcom/google/android/apps/plus/hangout/VideoView;

    #getter for: Lcom/google/android/apps/plus/hangout/VideoView;->requestID:I
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/VideoView;->access$200(Lcom/google/android/apps/plus/hangout/VideoView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->initializeIncomingVideoRenderer(I)Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    :goto_13
    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/VideoView$Renderer;->disabled:Z

    .line 95
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/VideoView$Renderer;->disabled:Z

    if-eqz v0, :cond_1e

    .line 96
    const-string v0, "initializeIncomingVideoRenderer failed. Rendering disabled"

    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 98
    :cond_1e
    return-void

    .line 94
    :cond_1f
    const/4 v0, 0x0

    goto :goto_13
.end method
