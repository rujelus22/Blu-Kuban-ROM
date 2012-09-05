.class Lcom/google/googlenav/ui/view/dialog/E;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/C;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/C;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/E;->a:Lcom/google/googlenav/ui/view/dialog/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/E;->a:Lcom/google/googlenav/ui/view/dialog/C;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/C;->a(Lcom/google/googlenav/ui/view/dialog/C;)Lcom/google/googlenav/ui/view/dialog/H;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/E;->a:Lcom/google/googlenav/ui/view/dialog/C;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/C;->a(Lcom/google/googlenav/ui/view/dialog/C;)Lcom/google/googlenav/ui/view/dialog/H;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/view/dialog/H;->b()V

    :cond_11
    return-void
.end method
