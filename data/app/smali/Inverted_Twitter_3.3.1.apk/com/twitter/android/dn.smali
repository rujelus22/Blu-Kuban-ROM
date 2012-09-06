.class final Lcom/twitter/android/dn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/animation/TranslateAnimation;

.field final synthetic c:Lcom/twitter/android/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/ProfileFragment;Landroid/view/View;Landroid/view/animation/TranslateAnimation;)V
    .registers 4

    iput-object p1, p0, Lcom/twitter/android/dn;->c:Lcom/twitter/android/ProfileFragment;

    iput-object p2, p0, Lcom/twitter/android/dn;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/twitter/android/dn;->b:Landroid/view/animation/TranslateAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/dn;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/twitter/android/dn;->b:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

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
