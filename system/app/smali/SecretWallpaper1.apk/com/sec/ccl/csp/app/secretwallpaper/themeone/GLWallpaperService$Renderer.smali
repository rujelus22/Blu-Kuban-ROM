.class public interface abstract Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService$Renderer;
.super Ljava/lang/Object;
.source "GLWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ccl/csp/app/secretwallpaper/themeone/GLWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Renderer"
.end annotation


# virtual methods
.method public abstract getSceneDrawStatus()Z
.end method

.method public abstract isEnginePaused()Z
.end method

.method public abstract onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
.end method

.method public abstract onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
.end method

.method public abstract onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
.end method

.method public abstract onSurfaceDestroyed(Ljavax/microedition/khronos/opengles/GL10;)V
.end method

.method public abstract setSceneDrawStatus(Z)V
.end method
