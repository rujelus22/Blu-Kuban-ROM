.class final Lcom/sdgtl/mediahub/spr/screen/ns;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/ns;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 10

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2d

    const/16 v0, 0x42

    if-eq p2, v0, :cond_e

    const/16 v0, 0x17

    if-ne p2, v0, :cond_2d

    :cond_e
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ns;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->I(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v1

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ns;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->I(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_2f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ns;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->showDialog(I)V

    :cond_2d
    :goto_2d
    const/4 v0, 0x0

    return v0

    :cond_2f
    if-lez v1, :cond_2d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ns;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->Q(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ns;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->O(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_2d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ns;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->n(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/dn;->d:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2d

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ns;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ns;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->n(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->b(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Lcom/sdgtl/mediahub/spr/common/dn;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ns;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->P(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/dn;

    move-result-object v0

    if-eqz v0, :cond_8f

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "eula_typeCode"

    const-string v2, "03"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ns;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ns;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v2, 0x3

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->f(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;J)V

    goto :goto_2d

    :cond_8f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ns;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->x(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/dn;

    move-result-object v0

    if-eqz v0, :cond_ad

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ns;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ns;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->x(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/dn;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Lcom/sdgtl/mediahub/spr/common/dn;)Z

    move-result v0

    if-eqz v0, :cond_ad

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ns;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->showDialog(I)V

    goto :goto_2d

    :cond_ad
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ns;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V

    goto/16 :goto_2d
.end method
