.class final Lcom/sdgtl/mediahub/spr/screen/om;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/om;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 10

    const/16 v3, 0xb

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/om;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->a(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Lcom/sdgtl/mediahub/spr/screen/pe;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sdgtl/mediahub/spr/screen/pe;->a(I)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->G:I

    if-eq v0, v2, :cond_2a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/om;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/om;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->a(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Lcom/sdgtl/mediahub/spr/screen/pe;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/sdgtl/mediahub/spr/screen/pe;->a(I)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->a(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/om;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-virtual {v0, v3}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->removeDialog(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/om;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-virtual {v0, v3}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->showDialog(I)V

    :cond_2a
    return v2
.end method
