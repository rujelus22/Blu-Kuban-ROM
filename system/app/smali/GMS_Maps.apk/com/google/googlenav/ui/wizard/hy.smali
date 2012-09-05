.class Lcom/google/googlenav/ui/wizard/hy;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/hw;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/hw;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/hy;->a:Lcom/google/googlenav/ui/wizard/hw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hy;->a:Lcom/google/googlenav/ui/wizard/hw;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/hw;->a:Lcom/google/googlenav/ui/wizard/hz;

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/hz;->b()V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/hy;->a:Lcom/google/googlenav/ui/wizard/hw;

    iget-object v0, v0, Lcom/google/googlenav/ui/wizard/hw;->b:Lcom/google/googlenav/ui/wizard/hv;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hv;->a()V

    return-void
.end method
