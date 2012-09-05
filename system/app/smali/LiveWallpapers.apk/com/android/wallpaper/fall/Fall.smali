.class public Lcom/android/wallpaper/fall/Fall;
.super Landroid/app/Activity;
.source "Fall.java"


# instance fields
.field private mView:Lcom/android/wallpaper/fall/FallView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "icicle"

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    new-instance v0, Lcom/android/wallpaper/fall/FallView;

    invoke-direct {v0, p0}, Lcom/android/wallpaper/fall/FallView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/wallpaper/fall/Fall;->mView:Lcom/android/wallpaper/fall/FallView;

    .line 30
    iget-object v0, p0, Lcom/android/wallpaper/fall/Fall;->mView:Lcom/android/wallpaper/fall/FallView;

    invoke-virtual {p0, v0}, Lcom/android/wallpaper/fall/Fall;->setContentView(Landroid/view/View;)V

    .line 31
    return-void
.end method

.method protected onPause()V
    .registers 3

    .prologue
    .line 41
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 42
    iget-object v0, p0, Lcom/android/wallpaper/fall/Fall;->mView:Lcom/android/wallpaper/fall/FallView;

    invoke-virtual {v0}, Lcom/android/wallpaper/fall/FallView;->pause()V

    .line 44
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exit(I)V

    .line 45
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 35
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 36
    iget-object v0, p0, Lcom/android/wallpaper/fall/Fall;->mView:Lcom/android/wallpaper/fall/FallView;

    invoke-virtual {v0}, Lcom/android/wallpaper/fall/FallView;->resume()V

    .line 37
    return-void
.end method
