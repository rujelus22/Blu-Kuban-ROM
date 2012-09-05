.class final Lcom/sdgtl/mediahub/spr/screen/nu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/nu;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/nu;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->P(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/dn;

    move-result-object v0

    if-eqz v0, :cond_24

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "eula_typeCode"

    const-string v2, "03"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/nu;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/nu;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v2, 0x3

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->f(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;J)V

    :goto_23
    return-void

    :cond_24
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/nu;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->x(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/dn;

    move-result-object v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/nu;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/nu;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->x(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Lcom/sdgtl/mediahub/spr/common/dn;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->c(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Lcom/sdgtl/mediahub/spr/common/dn;)Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/nu;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->showDialog(I)V

    goto :goto_23

    :cond_42
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/nu;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V

    goto :goto_23
.end method
