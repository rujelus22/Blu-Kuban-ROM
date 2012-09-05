.class public Lcom/android/wallpaper/fall/FallWallpaper;
.super Lcom/android/wallpaper/RenderScriptWallpaper;
.source "FallWallpaper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/wallpaper/RenderScriptWallpaper;-><init>()V

    return-void
.end method


# virtual methods
.method protected createScene(II)Lcom/android/wallpaper/RenderScriptScene;
    .registers 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 24
    new-instance v0, Lcom/android/wallpaper/fall/FallRS;

    invoke-direct {v0, p1, p2}, Lcom/android/wallpaper/fall/FallRS;-><init>(II)V

    return-object v0
.end method
