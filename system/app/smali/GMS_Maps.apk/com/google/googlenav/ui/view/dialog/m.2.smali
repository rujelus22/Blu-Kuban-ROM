.class Lcom/google/googlenav/ui/view/dialog/M;
.super Lcom/google/googlenav/ui/view/dialog/Q;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lam/f;

.field final synthetic c:Lcom/google/googlenav/ui/view/dialog/F;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/F;Landroid/view/View;Lam/f;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 491
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/M;->c:Lcom/google/googlenav/ui/view/dialog/F;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/M;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/google/googlenav/ui/view/dialog/M;->b:Lam/f;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/googlenav/ui/view/dialog/Q;-><init>(Lcom/google/googlenav/ui/view/dialog/G;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 5
    .parameter

    .prologue
    .line 494
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/M;->c:Lcom/google/googlenav/ui/view/dialog/F;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/M;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/M;->b:Lam/f;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/ui/view/dialog/F;->a(Landroid/view/View;Lam/f;)V

    .line 495
    return-void
.end method
