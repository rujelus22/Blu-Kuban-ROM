.class public Lcom/android/wallpaper/galaxy/GalaxyWallpaper;
.super Lcom/android/wallpaper/RenderScriptWallpaper;
.source "GalaxyWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/wallpaper/RenderScriptWallpaper",
        "<",
        "Lcom/android/wallpaper/galaxy/GalaxyRS;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/wallpaper/RenderScriptWallpaper;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createScene(II)Lcom/android/wallpaper/RenderScriptScene;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/android/wallpaper/galaxy/GalaxyWallpaper;->createScene(II)Lcom/android/wallpaper/galaxy/GalaxyRS;

    move-result-object v0

    return-object v0
.end method

.method protected createScene(II)Lcom/android/wallpaper/galaxy/GalaxyRS;
    .registers 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 23
    new-instance v0, Lcom/android/wallpaper/galaxy/GalaxyRS;

    invoke-direct {v0, p1, p2}, Lcom/android/wallpaper/galaxy/GalaxyRS;-><init>(II)V

    return-object v0
.end method
