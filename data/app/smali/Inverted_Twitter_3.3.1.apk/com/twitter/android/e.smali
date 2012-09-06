.class final Lcom/twitter/android/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private a:Landroid/view/animation/Animation;

.field private b:Landroid/view/animation/Animation;

.field private c:Landroid/view/View;

.field private d:Lcom/twitter/android/f;

.field private e:Landroid/accounts/Account;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/twitter/android/f;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f040006

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/e;->a:Landroid/view/animation/Animation;

    const v0, 0x7f040007

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/e;->b:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/twitter/android/e;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iput-object p2, p0, Lcom/twitter/android/e;->c:Landroid/view/View;

    iput-object p3, p0, Lcom/twitter/android/e;->d:Lcom/twitter/android/f;

    return-void
.end method


# virtual methods
.method public final a(Landroid/accounts/Account;)V
    .registers 4

    iput-object p1, p0, Lcom/twitter/android/e;->e:Landroid/accounts/Account;

    iget-object v0, p0, Lcom/twitter/android/e;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/twitter/android/e;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object v0, p0, Lcom/twitter/android/e;->d:Lcom/twitter/android/f;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/twitter/android/e;->d:Lcom/twitter/android/f;

    iget-object v1, p0, Lcom/twitter/android/e;->e:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/twitter/android/f;->a(Ljava/lang/String;)V

    :cond_d
    iget-object v0, p0, Lcom/twitter/android/e;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/twitter/android/e;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/e;->e:Landroid/accounts/Account;

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
