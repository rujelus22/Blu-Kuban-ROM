.class final Lcom/twitter/android/fy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final a:I

.field final b:Landroid/view/animation/Animation;

.field final c:Landroid/view/animation/Animation;

.field final d:Landroid/view/View;

.field final e:Landroid/view/ViewGroup;

.field final synthetic f:Lcom/twitter/android/TweetListFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/TweetListFragment;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/animation/Animation;Landroid/view/animation/Animation;I)V
    .registers 7

    iput-object p1, p0, Lcom/twitter/android/fy;->f:Lcom/twitter/android/TweetListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/twitter/android/fy;->d:Landroid/view/View;

    iput-object p3, p0, Lcom/twitter/android/fy;->e:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/twitter/android/fy;->c:Landroid/view/animation/Animation;

    iput-object p5, p0, Lcom/twitter/android/fy;->b:Landroid/view/animation/Animation;

    iput p6, p0, Lcom/twitter/android/fy;->a:I

    return-void
.end method


# virtual methods
.method final a()V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/fy;->d:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/twitter/android/fy;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/twitter/android/fy;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/twitter/android/fy;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method final b()V
    .registers 3

    iget-object v0, p0, Lcom/twitter/android/fy;->f:Lcom/twitter/android/TweetListFragment;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/twitter/android/TweetListFragment;->d(I)I

    iget-object v0, p0, Lcom/twitter/android/fy;->e:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/twitter/android/fy;->c:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/twitter/android/fy;->d:Landroid/view/View;

    iget-object v1, p0, Lcom/twitter/android/fy;->c:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/fy;->c:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_b

    iget-object v0, p0, Lcom/twitter/android/fy;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/twitter/android/fy;->b:Landroid/view/animation/Animation;

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lcom/twitter/android/fy;->e:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_a
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
