.class Lcom/google/googlenav/ui/view/dialog/D;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/C;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/C;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/D;->a:Lcom/google/googlenav/ui/view/dialog/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/D;->a:Lcom/google/googlenav/ui/view/dialog/C;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/C;->a(Lcom/google/googlenav/ui/view/dialog/C;)Lcom/google/googlenav/ui/view/dialog/H;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/D;->a:Lcom/google/googlenav/ui/view/dialog/C;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/C;->a(Lcom/google/googlenav/ui/view/dialog/C;)Lcom/google/googlenav/ui/view/dialog/H;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/view/dialog/H;->a()V

    :cond_15
    return-void
.end method
