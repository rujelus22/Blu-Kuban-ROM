.class public abstract Lcom/android/musicvis/RenderScriptWallpaper;
.super Landroid/service/wallpaper/WallpaperService;
.source "RenderScriptWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/musicvis/RenderScriptWallpaper$1;,
        Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/musicvis/RenderScriptScene;",
        ">",
        "Landroid/service/wallpaper/WallpaperService;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    .local p0, this:Lcom/android/musicvis/RenderScriptWallpaper;,"Lcom/android/musicvis/RenderScriptWallpaper<TT;>;"
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method protected abstract createScene(II)Lcom/android/musicvis/RenderScriptScene;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .registers 3

    .prologue
    .line 32
    .local p0, this:Lcom/android/musicvis/RenderScriptWallpaper;,"Lcom/android/musicvis/RenderScriptWallpaper<TT;>;"
    new-instance v0, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/musicvis/RenderScriptWallpaper$RenderScriptEngine;-><init>(Lcom/android/musicvis/RenderScriptWallpaper;Lcom/android/musicvis/RenderScriptWallpaper$1;)V

    return-object v0
.end method
