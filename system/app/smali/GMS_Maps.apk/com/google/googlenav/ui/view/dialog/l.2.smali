.class Lcom/google/googlenav/ui/view/dialog/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lam/f;

.field final synthetic c:Lcom/google/googlenav/ui/view/dialog/F;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/F;Landroid/view/View;Lam/f;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 479
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/L;->c:Lcom/google/googlenav/ui/view/dialog/F;

    iput-object p2, p0, Lcom/google/googlenav/ui/view/dialog/L;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/google/googlenav/ui/view/dialog/L;->b:Lam/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 482
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/L;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/L;->b:Lam/f;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/view/dialog/R;->a(Landroid/view/View;Lam/f;)V

    .line 483
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/L;->c:Lcom/google/googlenav/ui/view/dialog/F;

    iget-boolean v0, v0, Lcom/google/googlenav/ui/view/dialog/F;->m:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/L;->b:Lam/f;

    invoke-virtual {v0}, Lam/f;->a()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 486
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/L;->c:Lcom/google/googlenav/ui/view/dialog/F;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/F;->b(Lcom/google/googlenav/ui/view/dialog/F;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 488
    :cond_1f
    return-void
.end method
