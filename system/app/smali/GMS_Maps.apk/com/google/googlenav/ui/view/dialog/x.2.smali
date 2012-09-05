.class Lcom/google/googlenav/ui/view/dialog/x;
.super Lcom/google/googlenav/ui/view/dialog/B;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:LaD/f;

.field final synthetic c:Lcom/google/googlenav/ui/view/dialog/q;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/q;Landroid/view/View;LaD/f;)V
    .registers 5

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/x;->c:Lcom/google/googlenav/ui/view/dialog/q;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/x;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/google/googlenav/ui/view/dialog/x;->b:LaD/f;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/dialog/B;-><init>(Lcom/google/googlenav/ui/view/dialog/r;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 5

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/x;->c:Lcom/google/googlenav/ui/view/dialog/q;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/x;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/x;->b:LaD/f;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/view/dialog/q;->a(Landroid/view/View;LaD/f;)V

    return-void
.end method
