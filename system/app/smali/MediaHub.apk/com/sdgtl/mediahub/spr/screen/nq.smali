.class final Lcom/sdgtl/mediahub/spr/screen/nq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/nq;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/nq;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/nq;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/nq;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->P(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/dn;

    move-result-object v0

    if-eqz v0, :cond_35

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "eula_typeCode"

    const-string v2, "03"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/nq;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/nq;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v3, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->f(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;J)V

    goto :goto_11

    :cond_35
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/nq;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->x(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/dn;

    move-result-object v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/nq;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/nq;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->x(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/dn;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Lcom/sdgtl/mediahub/spr/common/dn;)Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/nq;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->showDialog(I)V

    goto :goto_11

    :cond_53
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/nq;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V

    goto :goto_11
.end method
