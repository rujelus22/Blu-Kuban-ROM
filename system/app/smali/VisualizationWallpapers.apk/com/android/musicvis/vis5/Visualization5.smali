.class public Lcom/android/musicvis/vis5/Visualization5;
.super Lcom/android/musicvis/RenderScriptWallpaper;
.source "Visualization5.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/musicvis/RenderScriptWallpaper",
        "<",
        "Lcom/android/musicvis/vis5/Visualization5RS;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/musicvis/RenderScriptWallpaper;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createScene(II)Lcom/android/musicvis/RenderScriptScene;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/android/musicvis/vis5/Visualization5;->createScene(II)Lcom/android/musicvis/vis5/Visualization5RS;

    move-result-object v0

    return-object v0
.end method

.method protected createScene(II)Lcom/android/musicvis/vis5/Visualization5RS;
    .registers 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 26
    new-instance v0, Lcom/android/musicvis/vis5/Visualization5RS;

    invoke-direct {v0, p1, p2}, Lcom/android/musicvis/vis5/Visualization5RS;-><init>(II)V

    return-object v0
.end method
