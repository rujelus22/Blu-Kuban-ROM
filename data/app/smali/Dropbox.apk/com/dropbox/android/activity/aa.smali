.class final Lcom/dropbox/android/activity/aa;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/dropbox/android/activity/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/GalleryActivity;Z)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/dropbox/android/activity/aa;->b:Lcom/dropbox/android/activity/GalleryActivity;

    iput-boolean p2, p0, Lcom/dropbox/android/activity/aa;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 6
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 264
    iget-object v0, p0, Lcom/dropbox/android/activity/aa;->b:Lcom/dropbox/android/activity/GalleryActivity;

    invoke-static {v0}, Lcom/dropbox/android/activity/GalleryActivity;->d(Lcom/dropbox/android/activity/GalleryActivity;)Landroid/view/ViewGroup;

    move-result-object v3

    iget-boolean v0, p0, Lcom/dropbox/android/activity/aa;->a:Z

    if-eqz v0, :cond_2d

    move v0, v1

    :goto_e
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/dropbox/android/activity/aa;->b:Lcom/dropbox/android/activity/GalleryActivity;

    invoke-static {v0}, Lcom/dropbox/android/activity/GalleryActivity;->e(Lcom/dropbox/android/activity/GalleryActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 267
    iget-object v0, p0, Lcom/dropbox/android/activity/aa;->b:Lcom/dropbox/android/activity/GalleryActivity;

    invoke-static {v0}, Lcom/dropbox/android/activity/GalleryActivity;->e(Lcom/dropbox/android/activity/GalleryActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-boolean v3, p0, Lcom/dropbox/android/activity/aa;->a:Z

    if-eqz v3, :cond_2f

    :goto_23
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 269
    :cond_26
    iget-object v0, p0, Lcom/dropbox/android/activity/aa;->b:Lcom/dropbox/android/activity/GalleryActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dropbox/android/activity/GalleryActivity;->a(Lcom/dropbox/android/activity/GalleryActivity;Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation$AnimationListener;

    .line 270
    return-void

    :cond_2d
    move v0, v2

    .line 264
    goto :goto_e

    :cond_2f
    move v1, v2

    .line 267
    goto :goto_23
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter

    .prologue
    .line 260
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter

    .prologue
    .line 257
    return-void
.end method
