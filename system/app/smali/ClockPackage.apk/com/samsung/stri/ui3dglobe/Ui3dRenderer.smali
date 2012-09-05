.class public Lcom/samsung/stri/ui3dglobe/Ui3dRenderer;
.super Ljava/lang/Object;
.source "Ui3dRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field static final sFpsTimeSec:J = 0x2710L


# instance fields
.field private mLogicManager:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;


# direct methods
.method public constructor <init>(Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;)V
    .registers 2
    .parameter "logicManager"

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dRenderer;->mLogicManager:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    .line 14
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 4
    .parameter "gl"

    .prologue
    .line 41
    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 43
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dRenderer;->mLogicManager:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    invoke-virtual {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->render()V

    .line 44
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 5
    .parameter "gl"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-interface {p1, v0, v0, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 24
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dRenderer;->mLogicManager:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    invoke-virtual {v0, p2, p3}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->renderInit(II)V

    .line 25
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dRenderer;->mLogicManager:Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;

    invoke-virtual {v0, p2, p3}, Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;->resizeView(II)V

    .line 26
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 3
    .parameter "gl"
    .parameter "config"

    .prologue
    .line 19
    return-void
.end method
