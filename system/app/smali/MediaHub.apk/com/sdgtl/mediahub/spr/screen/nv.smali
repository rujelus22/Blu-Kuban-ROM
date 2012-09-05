.class final Lcom/sdgtl/mediahub/spr/screen/nv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/nv;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/nv;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->Z(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/nv;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->I(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_1f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/nv;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->showDialog(I)V

    goto :goto_8

    :cond_1f
    if-lez p3, :cond_8

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/nv;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->n(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v1, p3, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/nv;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->n(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Ljava/util/ArrayList;

    move-result-object v1

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/common/dn;

    invoke-virtual {v1}, Lcom/sdgtl/mediahub/spr/common/dn;->c()Z

    move-result v1

    if-eqz v1, :cond_4f

    const/4 v1, 0x0

    :goto_44
    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/common/dn;->a(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/nv;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    add-int/lit8 v1, p3, -0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->d(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;I)V

    goto :goto_8

    :cond_4f
    const/4 v1, 0x1

    goto :goto_44
.end method
