.class Lcom/infraware/office/baseframe/EvContentView$Renderer;
.super Ljava/lang/Thread;
.source "EvContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/office/baseframe/EvContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Renderer"
.end annotation


# instance fields
.field private _run:Z

.field private _surfaceHolder:Landroid/view/SurfaceHolder;

.field private _view:Lcom/infraware/office/baseframe/EvContentView;

.field final synthetic this$0:Lcom/infraware/office/baseframe/EvContentView;


# direct methods
.method constructor <init>(Lcom/infraware/office/baseframe/EvContentView;Landroid/view/SurfaceHolder;Lcom/infraware/office/baseframe/EvContentView;)V
    .registers 5
    .parameter
    .parameter "surfaceHolder"
    .parameter "view"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/infraware/office/baseframe/EvContentView$Renderer;->this$0:Lcom/infraware/office/baseframe/EvContentView;

    .line 89
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/office/baseframe/EvContentView$Renderer;->_run:Z

    .line 90
    iput-object p2, p0, Lcom/infraware/office/baseframe/EvContentView$Renderer;->_surfaceHolder:Landroid/view/SurfaceHolder;

    .line 91
    iput-object p3, p0, Lcom/infraware/office/baseframe/EvContentView$Renderer;->_view:Lcom/infraware/office/baseframe/EvContentView;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 101
    :goto_0
    iget-boolean v2, p0, Lcom/infraware/office/baseframe/EvContentView$Renderer;->_run:Z

    if-nez v2, :cond_5

    .line 119
    return-void

    .line 102
    :cond_5
    const/4 v0, 0x0

    .line 104
    .local v0, c:Landroid/graphics/Canvas;
    :try_start_6
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvContentView$Renderer;->_surfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    .line 105
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvContentView$Renderer;->_surfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v3
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_2b

    .line 106
    :try_start_10
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvContentView$Renderer;->_view:Lcom/infraware/office/baseframe/EvContentView;

    invoke-virtual {v2, v0}, Lcom/infraware/office/baseframe/EvContentView;->onDraw(Landroid/graphics/Canvas;)V

    .line 105
    monitor-exit v3
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_28

    .line 109
    if-eqz v0, :cond_1d

    .line 110
    iget-object v2, p0, Lcom/infraware/office/baseframe/EvContentView$Renderer;->_surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 114
    :cond_1d
    const-wide/16 v2, 0xa

    :try_start_1f
    invoke-static {v2, v3}, Lcom/infraware/office/baseframe/EvContentView$Renderer;->sleep(J)V
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_22} :catch_23

    goto :goto_0

    .line 115
    :catch_23
    move-exception v1

    .line 116
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 105
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_28
    move-exception v2

    :try_start_29
    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    :try_start_2a
    throw v2
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_2b

    .line 108
    :catchall_2b
    move-exception v2

    .line 109
    if-eqz v0, :cond_33

    .line 110
    iget-object v3, p0, Lcom/infraware/office/baseframe/EvContentView$Renderer;->_surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 112
    :cond_33
    throw v2
.end method

.method public setRunning(Z)V
    .registers 2
    .parameter "run"

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/infraware/office/baseframe/EvContentView$Renderer;->_run:Z

    .line 96
    return-void
.end method
