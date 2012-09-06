.class final Lcom/dropbox/android/activity/j;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/dropbox/android/activity/m;

.field final synthetic b:Lcom/dropbox/android/activity/i;


# direct methods
.method constructor <init>(Lcom/dropbox/android/activity/i;Lcom/dropbox/android/activity/m;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 433
    iput-object p1, p0, Lcom/dropbox/android/activity/j;->b:Lcom/dropbox/android/activity/i;

    iput-object p2, p0, Lcom/dropbox/android/activity/j;->a:Lcom/dropbox/android/activity/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4
    .parameter

    .prologue
    .line 444
    iget-object v0, p0, Lcom/dropbox/android/activity/j;->b:Lcom/dropbox/android/activity/i;

    invoke-static {v0}, Lcom/dropbox/android/activity/i;->a(Lcom/dropbox/android/activity/i;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/dropbox/android/activity/k;

    invoke-direct {v1, p0}, Lcom/dropbox/android/activity/k;-><init>(Lcom/dropbox/android/activity/j;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 455
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter

    .prologue
    .line 438
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2
    .parameter

    .prologue
    .line 435
    return-void
.end method
