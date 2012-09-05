.class final Lcom/sdgtl/mediahub/spr/screen/ln;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/ln;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .registers 8

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ln;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_35

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ln;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ln;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/eu;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/eu;->F:I

    if-eq v0, v2, :cond_35

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ln;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->a(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)I

    move-result v0

    if-ge p4, v0, :cond_35

    add-int v0, p2, p3

    if-ne v0, p4, :cond_35

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ln;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    invoke-static {v0, v2}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->a(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;Z)V

    :goto_34
    return-void

    :cond_35
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ln;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->a(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;Z)V

    goto :goto_34
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3

    return-void
.end method
