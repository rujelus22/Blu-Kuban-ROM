.class Lcom/google/googlenav/ui/view/dialog/aL;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/aK;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/aK;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/aL;->a:Lcom/google/googlenav/ui/view/dialog/aK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aL;->a:Lcom/google/googlenav/ui/view/dialog/aK;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/aK;->a(Lcom/google/googlenav/ui/view/dialog/aK;)LaY/aG;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/aL;->a:Lcom/google/googlenav/ui/view/dialog/aK;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/aK;->a(Lcom/google/googlenav/ui/view/dialog/aK;)LaY/aG;

    move-result-object v0

    invoke-virtual {v0}, LaY/aG;->e()V

    :cond_11
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
