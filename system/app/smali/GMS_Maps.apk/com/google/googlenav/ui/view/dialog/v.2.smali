.class Lcom/google/googlenav/ui/view/dialog/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/google/googlenav/ui/view/dialog/q;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/q;Landroid/view/View;Landroid/view/View;)V
    .registers 4

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/v;->c:Lcom/google/googlenav/ui/view/dialog/q;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/v;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/google/googlenav/ui/view/dialog/v;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/4 v2, 0x0

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/v;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/v;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/v;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/v;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/v;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/v;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/v;->a:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/v;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1d
.end method
