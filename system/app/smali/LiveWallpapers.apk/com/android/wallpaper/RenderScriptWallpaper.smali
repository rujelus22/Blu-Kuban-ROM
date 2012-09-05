.class public abstract Lcom/android/wallpaper/RenderScriptWallpaper;
.super Landroid/service/wallpaper/WallpaperService;
.source "RenderScriptWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wallpaper/RenderScriptWallpaper$1;,
        Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/wallpaper/RenderScriptScene;",
        ">",
        "Landroid/service/wallpaper/WallpaperService;"
    }
.end annotation


# instance fields
.field public mEnableTouchEvent:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    .local p0, this:Lcom/android/wallpaper/RenderScriptWallpaper;,"Lcom/android/wallpaper/RenderScriptWallpaper<TT;>;"
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method protected abstract createScene(II)Lcom/android/wallpaper/RenderScriptScene;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .registers 3

    .prologue
    .line 28
    .local p0, this:Lcom/android/wallpaper/RenderScriptWallpaper;,"Lcom/android/wallpaper/RenderScriptWallpaper<TT;>;"
    new-instance v0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;-><init>(Lcom/android/wallpaper/RenderScriptWallpaper;Lcom/android/wallpaper/RenderScriptWallpaper$1;)V

    return-object v0
.end method
