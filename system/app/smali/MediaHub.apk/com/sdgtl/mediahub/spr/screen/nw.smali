.class final Lcom/sdgtl/mediahub/spr/screen/nw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/nw;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 9

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/nw;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->g(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseRequestInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseRequestInfo;->b:Ljava/lang/String;

    const-string v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/nw;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->g(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseRequestInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseRequestInfo;->b:Ljava/lang/String;

    const-string v1, "04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    :cond_20
    const-string v0, "02"

    :goto_22
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/nw;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/nw;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->s(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->a:I

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/nw;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->s(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->e:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;ILjava/lang/String;)J

    move-result-wide v2

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/nw;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->s(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->C:Ljava/util/ArrayList;

    const-string v1, "01"

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/util/ArrayList;Ljava/lang/String;)J

    move-result-wide v0

    :goto_54
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "products_purchase_info"

    iget-object v6, p0, Lcom/sdgtl/mediahub/spr/screen/nw;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v6}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->w(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    cmp-long v0, v2, v0

    if-ltz v0, :cond_91

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/nw;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    const/4 v1, 0x2

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/nw;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->finish()V

    :goto_7c
    return-void

    :cond_7d
    const-string v0, "01"

    goto :goto_22

    :cond_80
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/nw;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->s(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->C:Ljava/util/ArrayList;

    const-string v1, "02"

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/util/ArrayList;Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_54

    :cond_91
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/nw;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_ae

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/nw;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    const/4 v1, 0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/nw;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->finish()V

    goto :goto_7c

    :cond_ae
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/nw;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/a/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cf

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/nw;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/nw;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    const v2, 0x7f0a0120

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/nw;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->i:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/a;->f(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_7c

    :cond_cf
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/nw;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/nw;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    const v2, 0x7f0a0121

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/nw;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->i:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/a;->f(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto :goto_7c
.end method
