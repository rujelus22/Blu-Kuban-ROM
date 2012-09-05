.class final Lcom/sdgtl/mediahub/spr/screen/ow;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/ow;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .registers 8

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ow;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->b(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ow;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->b(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ow;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->b(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->G:I

    if-eq v0, v2, :cond_3b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ow;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->c(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)I

    move-result v0

    if-ge p4, v0, :cond_3b

    add-int v0, p2, p3

    if-ne v0, p4, :cond_3b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ow;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v0, v2}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->a(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;Z)V

    :goto_3a
    return-void

    :cond_3b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ow;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->a(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;Z)V

    goto :goto_3a
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3

    return-void
.end method
