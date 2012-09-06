.class Lcom/google/googlenav/ui/wizard/fc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/wizard/fb;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/wizard/fb;)V
    .registers 2
    .parameter

    .prologue
    .line 590
    iput-object p1, p0, Lcom/google/googlenav/ui/wizard/fc;->a:Lcom/google/googlenav/ui/wizard/fb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 593
    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/a;

    .line 595
    if-nez v0, :cond_f

    .line 605
    :cond_e
    :goto_e
    return-void

    .line 598
    :cond_f
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/a;->d()Lcom/google/googlenav/ui/view/a;

    move-result-object v0

    .line 599
    if-eqz v0, :cond_e

    .line 602
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fc;->a:Lcom/google/googlenav/ui/wizard/fb;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/fb;->a:Lcom/google/googlenav/ui/wizard/eT;

    invoke-static {v1}, Lcom/google/googlenav/ui/wizard/eT;->a(Lcom/google/googlenav/ui/wizard/eT;)Lcom/google/googlenav/ui/wizard/fb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/ui/wizard/fb;->dismiss()V

    .line 603
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fc;->a:Lcom/google/googlenav/ui/wizard/fb;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/fb;->a:Lcom/google/googlenav/ui/wizard/eT;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/googlenav/ui/wizard/eT;->a(Lcom/google/googlenav/ui/wizard/eT;Lcom/google/googlenav/ui/wizard/fb;)Lcom/google/googlenav/ui/wizard/fb;

    .line 604
    iget-object v1, p0, Lcom/google/googlenav/ui/wizard/fc;->a:Lcom/google/googlenav/ui/wizard/fb;

    iget-object v1, v1, Lcom/google/googlenav/ui/wizard/fb;->a:Lcom/google/googlenav/ui/wizard/eT;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/wizard/eT;->a(Lcom/google/googlenav/ui/wizard/eT;Lcom/google/googlenav/ui/view/a;)V

    goto :goto_e
.end method
