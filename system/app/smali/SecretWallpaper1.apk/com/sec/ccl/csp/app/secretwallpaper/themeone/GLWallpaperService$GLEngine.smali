.class public Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$GLEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "GLWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GLEngine"
.end annotation


# instance fields
.field private mDebugFlags:I

.field private mEGLConfigChooser:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLConfigChooser;

.field private mEGLContextFactory:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLWindowSurfaceFactory;

.field private mGLThread:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;

.field private mGLWrapper:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWrapper;

.field final synthetic this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService;


# direct methods
.method public constructor <init>(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService;)V
    .registers 3
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$GLEngine;->this$0:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService;

    .line 87
    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    .line 84
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$GLEngine;->mDebugFlags:I

    .line 88
    return-void
.end method

.method private checkRenderThreadState()V
    .registers 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$GLEngine;->mGLThread:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;

    if-eqz v0, :cond_c

    .line 224
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_c
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/view/SurfaceHolder;)V
    .registers 3
    .parameter "surfaceHolder"

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, surface:Landroid/view/Surface;
    :goto_4
    if-nez v0, :cond_b

    .line 107
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    goto :goto_4

    .line 110
    :cond_b
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$GLEngine;->mGLThread:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->requestExitAndWait()V

    .line 116
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 117
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$GLEngine;->mGLThread:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->onPause()V

    .line 212
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$GLEngine;->mGLThread:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->onResume()V

    .line 216
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 7
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 123
    const-string v0, "GLWallpaperService"

    const-string v1, "onSurfaceChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$GLEngine;->mGLThread:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;

    invoke-virtual {v0, p3, p4}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->onWindowResize(II)V

    .line 126
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter "holder"

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 132
    const-string v0, "GLWallpaperService"

    const-string v1, "onSurfaceCreated()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$GLEngine;->mGLThread:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;

    invoke-virtual {v0, p1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 134
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    .line 136
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4
    .parameter "holder"

    .prologue
    .line 140
    const-string v0, "GLWallpaperService"

    const-string v1, "onSurfaceDestroyed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$GLEngine;->mGLThread:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->surfaceDestroyed()V

    .line 142
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 143
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .registers 2
    .parameter "visible"

    .prologue
    .line 92
    if-eqz p1, :cond_9

    .line 93
    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$GLEngine;->onResume()V

    .line 97
    :goto_5
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 98
    return-void

    .line 95
    :cond_9
    invoke-virtual {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$GLEngine;->onPause()V

    goto :goto_5
.end method

.method public setRenderMode(I)V
    .registers 3
    .parameter "renderMode"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$GLEngine;->mGLThread:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;

    invoke-virtual {v0, p1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->setRenderMode(I)V

    .line 200
    return-void
.end method

.method public setRenderer(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$Renderer;)V
    .registers 8
    .parameter "renderer"

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$GLEngine;->checkRenderThreadState()V

    .line 162
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$GLEngine;->mEGLConfigChooser:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLConfigChooser;

    if-nez v0, :cond_f

    .line 163
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/BaseConfigChooser$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/BaseConfigChooser$SimpleEGLConfigChooser;-><init>(Z)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$GLEngine;->mEGLConfigChooser:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLConfigChooser;

    .line 165
    :cond_f
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$GLEngine;->mEGLContextFactory:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLContextFactory;

    if-nez v0, :cond_1a

    .line 166
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/DefaultContextFactory;

    invoke-direct {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/DefaultContextFactory;-><init>()V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$GLEngine;->mEGLContextFactory:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLContextFactory;

    .line 168
    :cond_1a
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$GLEngine;->mEGLWindowSurfaceFactory:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLWindowSurfaceFactory;

    if-nez v0, :cond_25

    .line 169
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/DefaultWindowSurfaceFactory;

    invoke-direct {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/DefaultWindowSurfaceFactory;-><init>()V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$GLEngine;->mEGLWindowSurfaceFactory:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLWindowSurfaceFactory;

    .line 171
    :cond_25
    new-instance v0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;

    iget-object v2, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$GLEngine;->mEGLConfigChooser:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLConfigChooser;

    iget-object v3, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$GLEngine;->mEGLContextFactory:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLContextFactory;

    iget-object v4, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$GLEngine;->mEGLWindowSurfaceFactory:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLWindowSurfaceFactory;

    iget-object v5, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$GLEngine;->mGLWrapper:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWrapper;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;-><init>(Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$Renderer;Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLConfigChooser;Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLContextFactory;Lcom/sec/ccl/csp/app/secretwallpaper/themeone/EGLWindowSurfaceFactory;Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWrapper;)V

    iput-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$GLEngine;->mGLThread:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;

    .line 172
    iget-object v0, p0, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$GLEngine;->mGLThread:Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;

    invoke-virtual {v0}, Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLThread;->start()V

    .line 173
    return-void
.end method
