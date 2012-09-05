.class final Lcom/sdgtl/mediahub/spr/screen/na;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/na;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/na;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->S(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_15

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/na;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, v2}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;ZLandroid/content/Context;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductPurchaseRequest;)V

    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/na;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/na;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->S(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->b(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/na;->a:Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->a(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)V

    goto :goto_14
.end method
