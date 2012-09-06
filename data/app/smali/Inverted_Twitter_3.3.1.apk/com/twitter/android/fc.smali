.class final Lcom/twitter/android/fc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/StartActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/StartActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twitter/android/fc;->a:Lcom/twitter/android/StartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 6

    iget-object v0, p0, Lcom/twitter/android/fc;->a:Lcom/twitter/android/StartActivity;

    iget-object v0, v0, Lcom/twitter/android/StartActivity;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/twitter/android/fc;->a:Lcom/twitter/android/StartActivity;

    invoke-virtual {v1}, Lcom/twitter/android/StartActivity;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/twitter/android/fc;->a:Lcom/twitter/android/StartActivity;

    iget-object v0, v0, Lcom/twitter/android/StartActivity;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/twitter/android/fc;->a:Lcom/twitter/android/StartActivity;

    iget-object v1, v1, Lcom/twitter/android/StartActivity;->h:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/twitter/android/fc;->a:Lcom/twitter/android/StartActivity;

    iget-object v0, v0, Lcom/twitter/android/StartActivity;->i:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/twitter/android/fc;->a:Lcom/twitter/android/StartActivity;

    iget-object v1, v1, Lcom/twitter/android/StartActivity;->g:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/twitter/android/fc;->a:Lcom/twitter/android/StartActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/twitter/android/StartActivity;->d:J

    iget-object v0, p0, Lcom/twitter/android/fc;->a:Lcom/twitter/android/StartActivity;

    iget-object v0, v0, Lcom/twitter/android/StartActivity;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/twitter/android/fc;->a:Lcom/twitter/android/StartActivity;

    iget-object v1, v1, Lcom/twitter/android/StartActivity;->b:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2328

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
