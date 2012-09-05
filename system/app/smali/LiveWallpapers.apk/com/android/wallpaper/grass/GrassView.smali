.class Lcom/android/wallpaper/grass/GrassView;
.super Landroid/renderscript/RSSurfaceView;
.source "GrassView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 28
    invoke-direct {p0, p1}, Landroid/renderscript/RSSurfaceView;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-virtual {p0, v0}, Lcom/android/wallpaper/grass/GrassView;->setFocusable(Z)V

    .line 30
    invoke-virtual {p0, v0}, Lcom/android/wallpaper/grass/GrassView;->setFocusableInTouchMode(Z)V

    .line 31
    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 11
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v5, 0x0

    .line 34
    invoke-super {p0, p1, p2, p3, p4}, Landroid/renderscript/RSSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 36
    new-instance v2, Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    invoke-direct {v2}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;-><init>()V

    .line 37
    .local v2, sc:Landroid/renderscript/RenderScriptGL$SurfaceConfig;
    invoke-virtual {p0, v2}, Lcom/android/wallpaper/grass/GrassView;->createRenderScriptGL(Landroid/renderscript/RenderScriptGL$SurfaceConfig;)Landroid/renderscript/RenderScriptGL;

    move-result-object v0

    .line 38
    .local v0, RS:Landroid/renderscript/RenderScriptGL;
    new-instance v1, Lcom/android/wallpaper/grass/GrassRS;

    invoke-virtual {p0}, Lcom/android/wallpaper/grass/GrassView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, p3, p4}, Lcom/android/wallpaper/grass/GrassRS;-><init>(Landroid/content/Context;II)V

    .line 39
    .local v1, render:Lcom/android/wallpaper/grass/GrassRS;
    invoke-virtual {p0}, Lcom/android/wallpaper/grass/GrassView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1, v0, v3, v5}, Lcom/android/wallpaper/grass/GrassRS;->init(Landroid/renderscript/RenderScriptGL;Landroid/content/res/Resources;Z)V

    .line 40
    const/high16 v3, 0x3f00

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v5, v5}, Lcom/android/wallpaper/grass/GrassRS;->setOffset(FFII)V

    .line 41
    invoke-virtual {v1}, Lcom/android/wallpaper/grass/GrassRS;->start()V

    .line 42
    return-void
.end method
