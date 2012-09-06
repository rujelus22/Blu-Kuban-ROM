.class Lcom/google/android/apps/plus/hangout/VideoTextureView$Renderer;
.super Ljava/lang/Object;
.source "VideoTextureView.java"

# interfaces
.implements Lcom/google/android/apps/plus/views/GLTextureView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/hangout/VideoTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Renderer"
.end annotation


# instance fields
.field private volatile mAttempt:I

.field private volatile mEnabled:Z

.field private volatile mInitializeRendererPending:Z

.field private mPendingHeight:I

.field private mPendingWidth:I

.field private mSurfaceSizePending:Z

.field final synthetic this$0:Lcom/google/android/apps/plus/hangout/VideoTextureView;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/plus/hangout/VideoTextureView;)V
    .registers 2
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/apps/plus/hangout/VideoTextureView$Renderer;->this$0:Lcom/google/android/apps/plus/hangout/VideoTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/hangout/VideoTextureView;Lcom/google/android/apps/plus/hangout/VideoTextureView$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/hangout/VideoTextureView$Renderer;-><init>(Lcom/google/android/apps/plus/hangout/VideoTextureView;)V

    return-void
.end method

.method private handleFailure()Z
    .registers 4

    .prologue
    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, isDisabled:Z
    monitor-enter p0

    .line 161
    :try_start_2
    iget v1, p0, Lcom/google/android/apps/plus/hangout/VideoTextureView$Renderer;->mAttempt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/apps/plus/hangout/VideoTextureView$Renderer;->mAttempt:I

    .line 162
    iget v1, p0, Lcom/google/android/apps/plus/hangout/VideoTextureView$Renderer;->mAttempt:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_1e

    .line 163
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/VideoTextureView$Renderer;->this$0:Lcom/google/android/apps/plus/hangout/VideoTextureView;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/apps/plus/hangout/VideoTextureView;->mIsDecoding:Z
    invoke-static {v1, v2}, Lcom/google/android/apps/plus/hangout/VideoTextureView;->access$302(Lcom/google/android/apps/plus/hangout/VideoTextureView;Z)Z

    .line 164
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/plus/hangout/VideoTextureView$Renderer;->mEnabled:Z

    .line 165
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/plus/hangout/VideoTextureView$Renderer;->mInitializeRendererPending:Z

    .line 166
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/plus/hangout/VideoTextureView$Renderer;->mSurfaceSizePending:Z

    .line 167
    const/4 v0, 0x1

    .line 169
    :cond_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_2 .. :try_end_1f} :catchall_40

    .line 170
    if-eqz v0, :cond_3f

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Configuring native video renderer failed after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/plus/hangout/VideoTextureView$Renderer;->mAttempt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " attempts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    .line 174
    :cond_3f
    return v0

    .line 169
    :catchall_40
    move-exception v1

    :try_start_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v1
.end method

.method private initializeRenderer()V
    .registers 6

    .prologue
    .line 122
    iget-boolean v1, p0, Lcom/google/android/apps/plus/hangout/VideoTextureView$Renderer;->mInitializeRendererPending:Z

    if-eqz v1, :cond_1e

    .line 123
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/VideoTextureView$Renderer;->this$0:Lcom/google/android/apps/plus/hangout/VideoTextureView;

    #getter for: Lcom/google/android/apps/plus/hangout/VideoTextureView;->mGcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/VideoTextureView;->access$200(Lcom/google/android/apps/plus/hangout/VideoTextureView;)Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/VideoTextureView$Renderer;->this$0:Lcom/google/android/apps/plus/hangout/VideoTextureView;

    #getter for: Lcom/google/android/apps/plus/hangout/VideoTextureView;->mRequestID:I
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/VideoTextureView;->access$100(Lcom/google/android/apps/plus/hangout/VideoTextureView;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->initializeIncomingVideoRenderer(I)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 125
    monitor-enter p0

    .line 126
    const/4 v1, 0x1

    :try_start_18
    iput-boolean v1, p0, Lcom/google/android/apps/plus/hangout/VideoTextureView$Renderer;->mEnabled:Z

    .line 127
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/apps/plus/hangout/VideoTextureView$Renderer;->mInitializeRendererPending:Z

    .line 128
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_42

    .line 140
    :cond_1e
    iget-boolean v1, p0, Lcom/google/android/apps/plus/hangout/VideoTextureView$Renderer;->mEnabled:Z

    if-eqz v1, :cond_41

    iget-boolean v1, p0, Lcom/google/android/apps/plus/hangout/VideoTextureView$Renderer;->mSurfaceSizePending:Z

    if-eqz v1, :cond_41

    .line 141
    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/VideoTextureView$Renderer;->this$0:Lcom/google/android/apps/plus/hangout/VideoTextureView;

    #getter for: Lcom/google/android/apps/plus/hangout/VideoTextureView;->mGcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/VideoTextureView;->access$200(Lcom/google/android/apps/plus/hangout/VideoTextureView;)Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/plus/hangout/VideoTextureView$Renderer;->this$0:Lcom/google/android/apps/plus/hangout/VideoTextureView;

    #getter for: Lcom/google/android/apps/plus/hangout/VideoTextureView;->mRequestID:I
    invoke-static {v2}, Lcom/google/android/apps/plus/hangout/VideoTextureView;->access$100(Lcom/google/android/apps/plus/hangout/VideoTextureView;)I

    move-result v2

    iget v3, p0, Lcom/google/android/apps/plus/hangout/VideoTextureView$Renderer;->mPendingWidth:I

    iget v4, p0, Lcom/google/android/apps/plus/hangout/VideoTextureView$Renderer;->mPendingHeight:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->setIncomingVideoRendererSurfaceSize(III)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 144
    monitor-enter p0

    .line 145
    const/4 v1, 0x0

    :try_start_3e
    iput-boolean v1, p0, Lcom/google/android/apps/plus/hangout/VideoTextureView$Renderer;->mSurfaceSizePending:Z

    .line 146
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_51

    .line 156
    :cond_41
    :goto_41
    return-void

    .line 128
    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v1

    .line 131
    :cond_45
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/VideoTextureView$Renderer;->handleFailure()Z

    move-result v0

    .line 132
    .local v0, disabled:Z
    if-eqz v0, :cond_1e

    .line 133
    const-string v1, "initializeIncomingVideoRenderer failed. Rendering disabled"

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    goto :goto_41

    .line 146
    .end local v0           #disabled:Z
    :catchall_51
    move-exception v1

    :try_start_52
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw v1

    .line 149
    :cond_54
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/VideoTextureView$Renderer;->handleFailure()Z

    move-result v0

    .line 150
    .restart local v0       #disabled:Z
    if-eqz v0, :cond_41

    .line 151
    const-string v1, "setIncomingVideoRendererSurfaceSize failed. Rendering disabled"

    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/Log;->debug(Ljava/lang/String;)V

    goto :goto_41
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 4
    .parameter "gl"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/VideoTextureView$Renderer;->initializeRenderer()V

    .line 85
    iget-boolean v0, p0, Lcom/google/android/apps/plus/hangout/VideoTextureView$Renderer;->mEnabled:Z

    if-eqz v0, :cond_1e

    .line 86
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/VideoTextureView$Renderer;->this$0:Lcom/google/android/apps/plus/hangout/VideoTextureView;

    #getter for: Lcom/google/android/apps/plus/hangout/VideoTextureView;->mGcommNativeWrapper:Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;
    invoke-static {v0}, Lcom/google/android/apps/plus/hangout/VideoTextureView;->access$200(Lcom/google/android/apps/plus/hangout/VideoTextureView;)Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/plus/hangout/VideoTextureView$Renderer;->this$0:Lcom/google/android/apps/plus/hangout/VideoTextureView;

    #getter for: Lcom/google/android/apps/plus/hangout/VideoTextureView;->mRequestID:I
    invoke-static {v1}, Lcom/google/android/apps/plus/hangout/VideoTextureView;->access$100(Lcom/google/android/apps/plus/hangout/VideoTextureView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/plus/hangout/GCommNativeWrapper;->renderIncomingVideoFrame(I)Z

    .line 87
    monitor-enter p0

    .line 88
    :try_start_17
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/VideoTextureView$Renderer;->this$0:Lcom/google/android/apps/plus/hangout/VideoTextureView;

    const/4 v1, 0x1

    #setter for: Lcom/google/android/apps/plus/hangout/VideoTextureView;->mIsDecoding:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/VideoTextureView;->access$302(Lcom/google/android/apps/plus/hangout/VideoTextureView;Z)Z

    .line 89
    monitor-exit p0

    .line 91
    :cond_1e
    return-void

    .line 89
    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 5
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 100
    monitor-enter p0

    .line 101
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/VideoTextureView$Renderer;->mSurfaceSizePending:Z

    .line 102
    iput p3, p0, Lcom/google/android/apps/plus/hangout/VideoTextureView$Renderer;->mPendingHeight:I

    .line 103
    iput p2, p0, Lcom/google/android/apps/plus/hangout/VideoTextureView$Renderer;->mPendingWidth:I

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/plus/hangout/VideoTextureView$Renderer;->mAttempt:I

    .line 105
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_10

    .line 106
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/VideoTextureView$Renderer;->initializeRenderer()V

    .line 107
    return-void

    .line 105
    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 3
    .parameter "gl"
    .parameter "config"

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/android/apps/plus/hangout/VideoTextureView$Renderer;->initializeRenderer()V

    .line 96
    return-void
.end method

.method public final reinitialize()V
    .registers 3

    .prologue
    .line 113
    monitor-enter p0

    .line 114
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/apps/plus/hangout/VideoTextureView$Renderer;->mInitializeRendererPending:Z

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/plus/hangout/VideoTextureView$Renderer;->mAttempt:I

    .line 116
    iget-object v0, p0, Lcom/google/android/apps/plus/hangout/VideoTextureView$Renderer;->this$0:Lcom/google/android/apps/plus/hangout/VideoTextureView;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/apps/plus/hangout/VideoTextureView;->mIsDecoding:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/plus/hangout/VideoTextureView;->access$302(Lcom/google/android/apps/plus/hangout/VideoTextureView;Z)Z

    .line 117
    monitor-exit p0

    .line 118
    return-void

    .line 117
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_f

    throw v0
.end method
