.class public Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2;
.super Landroid/opengl/GLSurfaceView;
.source "Ui3dGlSurfaceView2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2$1;,
        Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2$ConfigChooser;,
        Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2$ContextFactory;
    }
.end annotation


# instance fields
.field private mRenderer:Lcom/samsung/stri/ui3dglobe/Ui3dRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 21
    const/16 v0, 0x10

    invoke-direct {p0, v1, v0, v1}, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2;->init(ZII)V

    .line 23
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-static {p0, p1}, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2;->checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V

    return-void
.end method

.method private static checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .registers 4
    .parameter "prompt"
    .parameter "egl"

    .prologue
    .line 84
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 85
    .local v0, error:I
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_8

    .line 88
    :cond_8
    return-void
.end method

.method private init(ZII)V
    .registers 11
    .parameter "translucent"
    .parameter "depth"
    .parameter "stencil"

    .prologue
    const/4 v5, 0x5

    const/16 v1, 0x8

    .line 39
    if-eqz p1, :cond_d

    .line 40
    invoke-virtual {p0}, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v2, -0x3

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 47
    :cond_d
    new-instance v0, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2$ContextFactory;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2$ContextFactory;-><init>(Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2$1;)V

    invoke-virtual {p0, v0}, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2;->setEGLContextFactory(Landroid/opengl/GLSurfaceView$EGLContextFactory;)V

    .line 54
    if-eqz p1, :cond_26

    new-instance v0, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2$ConfigChooser;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2$ConfigChooser;-><init>(IIIIII)V

    :goto_22
    invoke-virtual {p0, v0}, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 57
    return-void

    .line 54
    :cond_26
    new-instance v0, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2$ConfigChooser;

    const/4 v2, 0x6

    const/4 v4, 0x0

    move v1, v5

    move v3, v5

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2$ConfigChooser;-><init>(IIIIII)V

    goto :goto_22
.end method


# virtual methods
.method public SetLogic(Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;)V
    .registers 3
    .parameter "logicManager"

    .prologue
    .line 60
    new-instance v0, Lcom/samsung/stri/ui3dglobe/Ui3dRenderer;

    invoke-direct {v0, p1}, Lcom/samsung/stri/ui3dglobe/Ui3dRenderer;-><init>(Lcom/samsung/stri/ui3dglobe/Ui3dLogicManager;)V

    iput-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2;->mRenderer:Lcom/samsung/stri/ui3dglobe/Ui3dRenderer;

    .line 61
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2;->mRenderer:Lcom/samsung/stri/ui3dglobe/Ui3dRenderer;

    invoke-virtual {p0, v0}, Lcom/samsung/stri/ui3dglobe/Ui3dGlSurfaceView2;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 62
    return-void
.end method
