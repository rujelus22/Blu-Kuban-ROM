.class Lcom/google/googlenav/ui/wizard/am;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/aj;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/aj;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/am;->a:Lcom/google/googlenav/ui/wizard/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->a:Lcom/google/googlenav/ui/wizard/aj;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/aj;->f(Lcom/google/googlenav/ui/wizard/aj;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->a:Lcom/google/googlenav/ui/wizard/aj;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/aj;->f(Lcom/google/googlenav/ui/wizard/aj;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->a:Lcom/google/googlenav/ui/wizard/aj;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/aj;->a(Lcom/google/googlenav/ui/wizard/aj;)Lcom/google/googlenav/ui/wizard/ay;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/wizard/ay;->a(Z)V

    const-string v0, "oii"

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/aj;->a(Ljava/lang/String;)V

    :cond_27
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/am;->a:Lcom/google/googlenav/ui/wizard/aj;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/aj;->a(Lcom/google/googlenav/ui/wizard/aj;)Lcom/google/googlenav/ui/wizard/ay;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/ay;->c()V

    return-void
.end method
