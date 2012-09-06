.class Lcom/google/googlenav/ui/view/dialog/bI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/google/googlenav/ui/view/dialog/bH;


# direct methods
.method constructor <init>(Lcom/google/googlenav/ui/view/dialog/bH;)V
    .registers 2
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/googlenav/ui/view/dialog/bI;->a:Lcom/google/googlenav/ui/view/dialog/bH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/googlenav/ui/view/dialog/bI;->a:Lcom/google/googlenav/ui/view/dialog/bH;

    invoke-static {v0}, Lcom/google/googlenav/ui/view/dialog/bH;->a(Lcom/google/googlenav/ui/view/dialog/bH;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 95
    iget-object v1, p0, Lcom/google/googlenav/ui/view/dialog/bI;->a:Lcom/google/googlenav/ui/view/dialog/bH;

    invoke-static {v1}, Lcom/google/googlenav/ui/view/dialog/bH;->b(Lcom/google/googlenav/ui/view/dialog/bH;)Lcom/google/googlenav/ui/view/dialog/bJ;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/googlenav/ui/view/dialog/bJ;->a(Landroid/location/Address;)V

    .line 97
    return-void
.end method
