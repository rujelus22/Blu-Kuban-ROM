.class public Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$GLEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "GLWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GLEngine"
.end annotation


# instance fields
.field private mEGLConfigChooser:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLConfigChooser;

.field private mEGLContextFactory:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLWindowSurfaceFactory;

.field private mGLThread:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;

.field private mGLWrapper:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWrapper;

.field final synthetic this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService;


# direct methods
.method public constructor <init>(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService;)V
    .registers 2
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$GLEngine;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService;

    .line 87
    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    .line 88
    return-void
.end method

.method private checkRenderThreadState()V
    .registers 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$GLEngine;->mGLThread:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;

    if-eqz v0, :cond_c

    .line 222
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_c
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/view/SurfaceHolder;)V
    .registers 3
    .parameter "surfaceHolder"

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, surface:Landroid/view/Surface;
    :goto_4
    if-nez v0, :cond_b

    .line 106
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_4

    .line 108
    :cond_b
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$GLEngine;->mGLThread:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->requestExitAndWait()V

    .line 115
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 116
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$GLEngine;->mGLThread:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->onPause()V

    .line 210
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$GLEngine;->mGLThread:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->onResume()V

    .line 214
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 7
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 120
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 122
    const-string v0, "GLWallpaperService"

    const-string v1, "onSurfaceChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$GLEngine;->mGLThread:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;

    invoke-virtual {v0, p3, p4}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->onWindowResize(II)V

    .line 125
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter "holder"

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 131
    const-string v0, "GLWallpaperService"

    const-string v1, "onSurfaceCreated()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$GLEngine;->mGLThread:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;

    invoke-virtual {v0, p1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 134
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter "holder"

    .prologue
    .line 138
    const-string v0, "GLWallpaperService"

    const-string v1, "onSurfaceDestroyed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$GLEngine;->mGLThread:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->surfaceDestroyed()V

    .line 140
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 141
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 2
    .parameter "visible"

    .prologue
    .line 92
    if-eqz p1, :cond_9

    .line 93
    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$GLEngine;->onResume()V

    .line 97
    :goto_5
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 98
    return-void

    .line 95
    :cond_9
    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$GLEngine;->onPause()V

    goto :goto_5
.end method

.method public setRenderMode(I)V
    .registers 3
    .parameter "renderMode"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$GLEngine;->mGLThread:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;

    invoke-virtual {v0, p1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->setRenderMode(I)V

    .line 198
    return-void
.end method

.method public setRenderer(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$Renderer;)V
    .registers 8
    .parameter "renderer"

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$GLEngine;->checkRenderThreadState()V

    .line 160
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$GLEngine;->mEGLConfigChooser:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLConfigChooser;

    if-nez v0, :cond_f

    .line 161
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/BaseConfigChooser$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/BaseConfigChooser$SimpleEGLConfigChooser;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$GLEngine;->mEGLConfigChooser:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLConfigChooser;

    .line 163
    :cond_f
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$GLEngine;->mEGLContextFactory:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLContextFactory;

    if-nez v0, :cond_1a

    .line 164
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/DefaultContextFactory;

    invoke-direct {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/DefaultContextFactory;-><init>()V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$GLEngine;->mEGLContextFactory:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLContextFactory;

    .line 166
    :cond_1a
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$GLEngine;->mEGLWindowSurfaceFactory:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLWindowSurfaceFactory;

    if-nez v0, :cond_25

    .line 167
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/DefaultWindowSurfaceFactory;

    invoke-direct {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/DefaultWindowSurfaceFactory;-><init>()V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$GLEngine;->mEGLWindowSurfaceFactory:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLWindowSurfaceFactory;

    .line 169
    :cond_25
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$GLEngine;->mEGLConfigChooser:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLConfigChooser;

    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$GLEngine;->mEGLContextFactory:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLContextFactory;

    iget-object v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$GLEngine;->mEGLWindowSurfaceFactory:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLWindowSurfaceFactory;

    iget-object v5, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$GLEngine;->mGLWrapper:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWrapper;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;-><init>(Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$Renderer;Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLConfigChooser;Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLContextFactory;Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/EGLWindowSurfaceFactory;Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWrapper;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$GLEngine;->mGLThread:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;

    .line 170
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLWallpaperService$GLEngine;->mGLThread:Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themetwo/GLThread;->start()V

    .line 171
    return-void
.end method
