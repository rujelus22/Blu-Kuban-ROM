.class Lcom/google/googlenav/ui/wizard/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/am;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/am;)V
    .registers 2
    .parameter

    .prologue
    .line 435
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/ap;->a:Lcom/google/googlenav/ui/wizard/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter

    .prologue
    .line 438
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 440
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ap;->a:Lcom/google/googlenav/ui/wizard/am;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/am;->f(Lcom/google/googlenav/ui/wizard/am;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ap;->a:Lcom/google/googlenav/ui/wizard/am;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/am;->f(Lcom/google/googlenav/ui/wizard/am;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_27

    .line 442
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ap;->a:Lcom/google/googlenav/ui/wizard/am;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/am;->a(Lcom/google/googlenav/ui/wizard/am;)Lcom/google/googlenav/ui/wizard/aB;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/googlenav/ui/wizard/aB;->a(Z)V

    .line 444
    const-string v0, "oii"

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/am;->a(Ljava/lang/String;)V

    .line 446
    :cond_27
    iget-object v0, p0, Lcom/google/googlenav/ui/wizard/ap;->a:Lcom/google/googlenav/ui/wizard/am;

    invoke-static {v0}, Lcom/google/googlenav/ui/wizard/am;->a(Lcom/google/googlenav/ui/wizard/am;)Lcom/google/googlenav/ui/wizard/aB;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/ui/wizard/aB;->d()V

    .line 447
    return-void
.end method
