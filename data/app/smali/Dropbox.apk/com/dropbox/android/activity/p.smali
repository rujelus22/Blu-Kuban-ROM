.class final Lcom/dropbox/android/activity/p;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/n;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/n;)V
    .registers 2
    .parameter

    .prologue
    .line 708
    iput-object p1, p0, Lcom/dropbox/android/activity/p;->a:Lcom/dropbox/android/activity/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter

    .prologue
    .line 719
    iget-object v0, p0, Lcom/dropbox/android/activity/p;->a:Lcom/dropbox/android/activity/n;

    iget-object v0, v0, Lcom/dropbox/android/activity/n;->c:Lcom/dropbox/android/activity/CameraUploadDetailsFragment;

    invoke-static {v0}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->d(Lcom/dropbox/android/activity/CameraUploadDetailsFragment;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/dropbox/android/activity/q;

    invoke-direct {v1, p0}, Lcom/dropbox/android/activity/q;-><init>(Lcom/dropbox/android/activity/p;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 726
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter

    .prologue
    .line 713
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter

    .prologue
    .line 710
    return-void
.end method
