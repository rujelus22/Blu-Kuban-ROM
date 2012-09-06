.class Lcom/google/googlenav/ui/view/dialog/bF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/bE;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/bE;)V
    .registers 2
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/bF;->a:Lcom/google/googlenav/ui/view/dialog/bE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bF;->a:Lcom/google/googlenav/ui/view/dialog/bE;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/bE;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/bF;->a:Lcom/google/googlenav/ui/view/dialog/bE;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/dialog/bE;->b:Lcom/google/googlenav/ui/view/dialog/bD;

    iget-object v1, v1, Lcom/google/googlenav/ui/view/dialog/bD;->a:Lcom/google/googlenav/ui/view/android/L;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 105
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bF;->a:Lcom/google/googlenav/ui/view/dialog/bE;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/bE;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/google/googlenav/ui/view/dialog/bG;

    iget-object v2, p0, Lcom/google/googlenav/ui/view/dialog/bF;->a:Lcom/google/googlenav/ui/view/dialog/bE;

    iget-object v2, v2, Lcom/google/googlenav/ui/view/dialog/bE;->b:Lcom/google/googlenav/ui/view/dialog/bD;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/googlenav/ui/view/dialog/bG;-><init>(Lcom/google/googlenav/ui/view/dialog/bD;Lcom/google/googlenav/ui/view/dialog/bE;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bF;->a:Lcom/google/googlenav/ui/view/dialog/bE;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/bE;->a:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 107
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bF;->a:Lcom/google/googlenav/ui/view/dialog/bE;

    iget-object v0, v0, Lcom/google/googlenav/ui/view/dialog/bE;->a:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 108
    return-void
.end method
