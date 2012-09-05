.class public Lcom/android/wallpaper/galaxy/Galaxy;
.super Landroid/app/Activity;
.source "Galaxy.java"


# instance fields
.field private mView:Lcom/android/wallpaper/galaxy/GalaxyView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "icicle"

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    new-instance v0, Lcom/android/wallpaper/galaxy/GalaxyView;

    invoke-direct {v0, p0}, Lcom/android/wallpaper/galaxy/GalaxyView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/wallpaper/galaxy/Galaxy;->mView:Lcom/android/wallpaper/galaxy/GalaxyView;

    .line 31
    iget-object v0, p0, Lcom/android/wallpaper/galaxy/Galaxy;->mView:Lcom/android/wallpaper/galaxy/GalaxyView;

    invoke-virtual {p0, v0}, Lcom/android/wallpaper/galaxy/Galaxy;->setContentView(Landroid/view/View;)V

    .line 32
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 42
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 43
    iget-object v0, p0, Lcom/android/wallpaper/galaxy/Galaxy;->mView:Lcom/android/wallpaper/galaxy/GalaxyView;

    invoke-virtual {v0}, Lcom/android/wallpaper/galaxy/GalaxyView;->pause()V

    .line 45
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exit(I)V

    .line 46
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 36
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 37
    iget-object v0, p0, Lcom/android/wallpaper/galaxy/Galaxy;->mView:Lcom/android/wallpaper/galaxy/GalaxyView;

    invoke-virtual {v0}, Lcom/android/wallpaper/galaxy/GalaxyView;->resume()V

    .line 38
    return-void
.end method
