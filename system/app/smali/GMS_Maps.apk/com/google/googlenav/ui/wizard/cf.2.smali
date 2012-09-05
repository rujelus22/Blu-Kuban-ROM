.class Lcom/google/googlenav/ui/wizard/cf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/ce;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/ce;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/cf;->a:Lcom/google/googlenav/ui/wizard/ce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    const/16 v0, 0x43

    const-string v1, "c"

    invoke-static {v0, v1}, Laf/m;->a(ILjava/lang/String;)Z

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cf;->a:Lcom/google/googlenav/ui/wizard/ce;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/ce;->a(Lcom/google/googlenav/ui/wizard/ce;)LaY/Y;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LaY/Y;->b(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/cf;->a:Lcom/google/googlenav/ui/wizard/ce;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/ce;->a()V

    return-void
.end method
