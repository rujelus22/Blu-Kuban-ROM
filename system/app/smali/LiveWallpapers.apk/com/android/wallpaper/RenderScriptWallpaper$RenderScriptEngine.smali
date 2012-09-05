.class Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "RenderScriptWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wallpaper/RenderScriptWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderScriptEngine"
.end annotation


# instance fields
.field private mRenderer:Lcom/android/wallpaper/RenderScriptScene;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mRs:Landroid/renderscript/RenderScriptGL;

.field final synthetic this$0:Lcom/android/wallpaper/RenderScriptWallpaper;


# direct methods
.method private constructor <init>(Lcom/android/wallpaper/RenderScriptWallpaper;)V
    .registers 2
    .parameter

    .prologue
    .line 34
    .local p0, this:Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/wallpaper/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    iput-object p1, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->this$0:Lcom/android/wallpaper/RenderScriptWallpaper;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/wallpaper/RenderScriptWallpaper;Lcom/android/wallpaper/RenderScriptWallpaper$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    .local p0, this:Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/wallpaper/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    invoke-direct {p0, p1}, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;-><init>(Lcom/android/wallpaper/RenderScriptWallpaper;)V

    return-void
.end method

.method private destroyRenderer()V
    .registers 3

    .prologue
    .local p0, this:Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/wallpaper/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    const/4 v1, 0x0

    .line 53
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/wallpaper/RenderScriptScene;

    if-eqz v0, :cond_c

    .line 54
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/wallpaper/RenderScriptScene;

    invoke-virtual {v0}, Lcom/android/wallpaper/RenderScriptScene;->stop()V

    .line 55
    iput-object v1, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/wallpaper/RenderScriptScene;

    .line 57
    :cond_c
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_17

    .line 58
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0}, Landroid/renderscript/RenderScriptGL;->destroy()V

    .line 59
    iput-object v1, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    .line 61
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
    .line 115
    .local p0, this:Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/wallpaper/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/wallpaper/RenderScriptScene;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/wallpaper/RenderScriptScene;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .registers 5
    .parameter "surfaceHolder"

    .prologue
    .line 40
    .local p0, this:Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/wallpaper/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->setTouchEventsEnabled(Z)V

    .line 42
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    .line 43
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->this$0:Lcom/android/wallpaper/RenderScriptWallpaper;

    iget-object v1, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->this$0:Lcom/android/wallpaper/RenderScriptWallpaper;

    invoke-virtual {v1}, Lcom/android/wallpaper/RenderScriptWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/wallpaper/RenderScriptWallpaper;->mEnableTouchEvent:Z

    .line 44
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 48
    .local p0, this:Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/wallpaper/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 49
    invoke-direct {p0}, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->destroyRenderer()V

    .line 50
    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .registers 9
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "xStep"
    .parameter "yStep"
    .parameter "xPixels"
    .parameter "yPixels"

    .prologue
    .line 93
    .local p0, this:Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/wallpaper/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->this$0:Lcom/android/wallpaper/RenderScriptWallpaper;

    iget-boolean v0, v0, Lcom/android/wallpaper/RenderScriptWallpaper;->mEnableTouchEvent:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 94
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/wallpaper/RenderScriptScene;

    invoke-virtual {v0, p1, p2, p5, p6}, Lcom/android/wallpaper/RenderScriptScene;->setOffset(FFII)V

    .line 95
    :cond_c
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 9
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 77
    .local p0, this:Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/wallpaper/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 78
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_c

    .line 79
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0, p1, p3, p4}, Landroid/renderscript/RenderScriptGL;->setSurface(Landroid/view/SurfaceHolder;II)V

    .line 81
    :cond_c
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/wallpaper/RenderScriptScene;

    if-nez v0, :cond_2f

    .line 82
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->this$0:Lcom/android/wallpaper/RenderScriptWallpaper;

    invoke-virtual {v0, p3, p4}, Lcom/android/wallpaper/RenderScriptWallpaper;->createScene(II)Lcom/android/wallpaper/RenderScriptScene;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/wallpaper/RenderScriptScene;

    .line 83
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/wallpaper/RenderScriptScene;

    iget-object v1, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    iget-object v2, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->this$0:Lcom/android/wallpaper/RenderScriptWallpaper;

    invoke-virtual {v2}, Lcom/android/wallpaper/RenderScriptWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->isPreview()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/wallpaper/RenderScriptScene;->init(Landroid/renderscript/RenderScriptGL;Landroid/content/res/Resources;Z)V

    .line 84
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/wallpaper/RenderScriptScene;

    invoke-virtual {v0}, Lcom/android/wallpaper/RenderScriptScene;->start()V

    .line 88
    :goto_2e
    return-void

    .line 86
    :cond_2f
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/wallpaper/RenderScriptScene;

    invoke-virtual {v0, p3, p4}, Lcom/android/wallpaper/RenderScriptScene;->resize(II)V

    goto :goto_2e
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 5
    .parameter "holder"

    .prologue
    .line 99
    .local p0, this:Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/wallpaper/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 101
    new-instance v0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    invoke-direct {v0}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;-><init>()V

    .line 102
    .local v0, sc:Landroid/renderscript/RenderScriptGL$SurfaceConfig;
    new-instance v1, Landroid/renderscript/RenderScriptGL;

    iget-object v2, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->this$0:Lcom/android/wallpaper/RenderScriptWallpaper;

    invoke-direct {v1, v2, v0}, Landroid/renderscript/RenderScriptGL;-><init>(Landroid/content/Context;Landroid/renderscript/RenderScriptGL$SurfaceConfig;)V

    iput-object v1, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    .line 103
    iget-object v1, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    sget-object v2, Landroid/renderscript/RenderScript$Priority;->LOW:Landroid/renderscript/RenderScript$Priority;

    invoke-virtual {v1, v2}, Landroid/renderscript/RenderScriptGL;->setPriority(Landroid/renderscript/RenderScript$Priority;)V

    .line 104
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 2
    .parameter "holder"

    .prologue
    .line 108
    .local p0, this:Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/wallpaper/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 109
    invoke-direct {p0}, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->destroyRenderer()V

    .line 110
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 3
    .parameter "visible"

    .prologue
    .line 65
    .local p0, this:Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;,"Lcom/android/wallpaper/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 66
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/wallpaper/RenderScriptScene;

    if-eqz v0, :cond_e

    .line 67
    if-eqz p1, :cond_f

    .line 68
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/wallpaper/RenderScriptScene;

    invoke-virtual {v0}, Lcom/android/wallpaper/RenderScriptScene;->start()V

    .line 73
    :cond_e
    :goto_e
    return-void

    .line 70
    :cond_f
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/wallpaper/RenderScriptScene;

    invoke-virtual {v0}, Lcom/android/wallpaper/RenderScriptScene;->stop()V

    goto :goto_e
.end method
