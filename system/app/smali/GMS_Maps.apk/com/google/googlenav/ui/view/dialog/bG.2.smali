.class Lcom/google/googlenav/ui/view/dialog/bG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/bD;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/ui/view/dialog/bD;)V
    .registers 2
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/bG;->a:Lcom/google/googlenav/ui/view/dialog/bD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/googlenav/ui/view/dialog/bD;Lcom/google/googlenav/ui/view/dialog/bE;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/google/googlenav/ui/view/dialog/bG;-><init>(Lcom/google/googlenav/ui/view/dialog/bD;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 181
    move-object v0, p1

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ui/view/android/a;

    .line 182
    if-eqz v0, :cond_21

    .line 183
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/android/a;->d()Lcom/google/googlenav/ui/view/a;

    move-result-object v0

    .line 184
    if-nez v0, :cond_16

    .line 193
    :cond_15
    :goto_15
    return-void

    .line 187
    :cond_16
    invoke-virtual {v0}, Lcom/google/googlenav/ui/view/a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 188
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/bG;->a:Lcom/google/googlenav/ui/view/dialog/bD;

    invoke-static {v1, v0}, Lcom/google/googlenav/ui/view/dialog/bD;->a(Lcom/google/googlenav/ui/view/dialog/bD;Ljava/lang/String;)V

    .line 190
    :cond_21
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bG;->a:Lcom/google/googlenav/ui/view/dialog/bD;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/bD;->b(Lcom/google/googlenav/ui/view/dialog/bD;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 191
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bG;->a:Lcom/google/googlenav/ui/view/dialog/bD;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/bD;->b(Lcom/google/googlenav/ui/view/dialog/bD;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    const/4 v3, -0x1

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_15
.end method
