.class Lcom/google/googlenav/ui/view/dialog/bf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/be;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/be;)V
    .registers 2
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/bf;->a:Lcom/google/googlenav/ui/view/dialog/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .line 105
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bf;->a:Lcom/google/googlenav/ui/view/dialog/be;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/be;->a(Lcom/google/googlenav/ui/view/dialog/be;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 106
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bf;->a:Lcom/google/googlenav/ui/view/dialog/be;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/be;->a(Lcom/google/googlenav/ui/view/dialog/be;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 108
    :cond_11
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bf;->a:Lcom/google/googlenav/ui/view/dialog/be;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/be;->b(Lcom/google/googlenav/ui/view/dialog/be;)LaM/bU;

    move-result-object v0

    invoke-virtual {v0}, LaM/bU;->a()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 109
    return-void
.end method
