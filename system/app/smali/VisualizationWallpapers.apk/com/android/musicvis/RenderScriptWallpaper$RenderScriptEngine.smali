.class Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "RenderScriptWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/musicvis/RenderScriptWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderScriptEngine"
.end annotation


# instance fields
.field private mRenderer:Lcom/android/musicvis/RenderScriptScene;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mRs:Landroid/renderscript/RenderScriptGL;

.field final synthetic this$0:Lcom/android/musicvis/RenderScriptWallpaper;


# direct methods
.method private constructor <init>(Lcom/android/musicvis/RenderScriptWallpaper;)V
    .registers 2
    .parameter

    .prologue
    .line 37
    .local p0, this:Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/musicvis/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    iput-object p1, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->this$0:Lcom/android/musicvis/RenderScriptWallpaper;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/musicvis/RenderScriptWallpaper;Lcom/android/musicvis/RenderScriptWallpaper$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    .local p0, this:Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/musicvis/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    invoke-direct {p0, p1}, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;-><init>(Lcom/android/musicvis/RenderScriptWallpaper;)V

    return-void
.end method

.method private destroyRenderer()V
    .registers 3

    .prologue
    .local p0, this:Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/musicvis/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    const/4 v1, 0x0

    .line 55
    iget-object v0, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/musicvis/RenderScriptScene;

    if-eqz v0, :cond_c

    .line 56
    iget-object v0, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/musicvis/RenderScriptScene;

    invoke-virtual {v0}, Lcom/android/musicvis/RenderScriptScene;->stop()V

    .line 57
    iput-object v1, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/musicvis/RenderScriptScene;

    .line 59
    :cond_c
    iget-object v0, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_17

    .line 60
    iget-object v0, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0}, Landroid/renderscript/RenderScriptGL;->destroy()V

    .line 61
    iput-object v1, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    .line 63
    :cond_17
    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .registers 14
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "extras"
    .parameter "resultRequested"

    .prologue
    .line 121
    .local p0, this:Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/musicvis/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    iget-object v0, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/musicvis/RenderScriptScene;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/musicvis/RenderScriptScene;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .registers 3
    .parameter "surfaceHolder"

    .prologue
    .line 43
    .local p0, this:Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/musicvis/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->setTouchEventsEnabled(Z)V

    .line 45
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    .line 46
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 50
    .local p0, this:Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/musicvis/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 51
    invoke-direct {p0}, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->destroyRenderer()V

    .line 52
    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .registers 8
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "xStep"
    .parameter "yStep"
    .parameter "xPixels"
    .parameter "yPixels"

    .prologue
    .line 100
    .local p0, this:Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/musicvis/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    iget-object v0, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/musicvis/RenderScriptScene;

    invoke-virtual {v0, p1, p2, p5, p6}, Lcom/android/musicvis/RenderScriptScene;->setOffset(FFII)V

    .line 101
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 9
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 79
    .local p0, this:Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/musicvis/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 80
    iget-object v0, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_c

    .line 81
    iget-object v0, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0, p1, p3, p4}, Landroid/renderscript/RenderScriptGL;->setSurface(Landroid/view/SurfaceHolder;II)V

    .line 83
    :cond_c
    iget-object v0, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/musicvis/RenderScriptScene;

    if-nez v0, :cond_2f

    .line 84
    iget-object v0, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->this$0:Lcom/android/musicvis/RenderScriptWallpaper;

    invoke-virtual {v0, p3, p4}, Lcom/android/musicvis/RenderScriptWallpaper;->createScene(II)Lcom/android/musicvis/RenderScriptScene;

    move-result-object v0

    iput-object v0, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/musicvis/RenderScriptScene;

    .line 85
    iget-object v0, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/musicvis/RenderScriptScene;

    iget-object v1, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    iget-object v2, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->this$0:Lcom/android/musicvis/RenderScriptWallpaper;

    invoke-virtual {v2}, Lcom/android/musicvis/RenderScriptWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->isPreview()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/musicvis/RenderScriptScene;->init(Landroid/renderscript/RenderScriptGL;Landroid/content/res/Resources;Z)V

    .line 86
    iget-object v0, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/musicvis/RenderScriptScene;

    invoke-virtual {v0}, Lcom/android/musicvis/RenderScriptScene;->start()V

    .line 90
    :goto_2e
    return-void

    .line 88
    :cond_2f
    iget-object v0, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/musicvis/RenderScriptScene;

    invoke-virtual {v0, p3, p4}, Lcom/android/musicvis/RenderScriptScene;->resize(II)V

    goto :goto_2e
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 5
    .parameter "holder"

    .prologue
    .line 105
    .local p0, this:Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/musicvis/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 107
    new-instance v0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    invoke-direct {v0}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;-><init>()V

    .line 108
    .local v0, sc:Landroid/renderscript/RenderScriptGL$SurfaceConfig;
    new-instance v1, Landroid/renderscript/RenderScriptGL;

    iget-object v2, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->this$0:Lcom/android/musicvis/RenderScriptWallpaper;

    invoke-direct {v1, v2, v0}, Landroid/renderscript/RenderScriptGL;-><init>(Landroid/content/Context;Landroid/renderscript/RenderScriptGL$SurfaceConfig;)V

    iput-object v1, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    .line 109
    iget-object v1, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    sget-object v2, Landroid/renderscript/RenderScript$Priority;->LOW:Landroid/renderscript/RenderScript$Priority;

    invoke-virtual {v1, v2}, Landroid/renderscript/RenderScriptGL;->setPriority(Landroid/renderscript/RenderScript$Priority;)V

    .line 110
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 2
    .parameter "holder"

    .prologue
    .line 114
    .local p0, this:Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/musicvis/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 115
    invoke-direct {p0}, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->destroyRenderer()V

    .line 116
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 3
    .parameter "visible"

    .prologue
    .line 67
    .local p0, this:Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/musicvis/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 68
    iget-object v0, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/musicvis/RenderScriptScene;

    if-eqz v0, :cond_e

    .line 69
    if-eqz p1, :cond_f

    .line 70
    iget-object v0, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/musicvis/RenderScriptScene;

    invoke-virtual {v0}, Lcom/android/musicvis/RenderScriptScene;->start()V

    .line 75
    :cond_e
    :goto_e
    return-void

    .line 72
    :cond_f
    iget-object v0, p0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/musicvis/RenderScriptScene;

    invoke-virtual {v0}, Lcom/android/musicvis/RenderScriptScene;->stop()V

    goto :goto_e
.end method
