.class final Lcom/dropbox/android/activity/r;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/dropbox/android/activity/n;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/n;Landroid/view/View;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 799
    iput-object p1, p0, Lcom/dropbox/android/activity/r;->c:Lcom/dropbox/android/activity/n;

    iput-object p2, p0, Lcom/dropbox/android/activity/r;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/dropbox/android/activity/r;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter

    .prologue
    .line 808
    iget-object v0, p0, Lcom/dropbox/android/activity/r;->c:Lcom/dropbox/android/activity/n;

    iget-object v0, v0, Lcom/dropbox/android/activity/n;->c:Lcom/dropbox/android/activity/CameraUploadDetailsFragment;

    invoke-static {v0}, Lcom/dropbox/android/activity/CameraUploadDetailsFragment;->c(Lcom/dropbox/android/activity/CameraUploadDetailsFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    new-instance v1, Lcom/dropbox/android/activity/s;

    invoke-direct {v1, p0}, Lcom/dropbox/android/activity/s;-><init>(Lcom/dropbox/android/activity/r;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 817
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter

    .prologue
    .line 803
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter

    .prologue
    .line 801
    return-void
.end method
