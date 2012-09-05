.class final Lcom/sdgtl/mediahub/spr/screen/ne;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/nc;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/nc;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/ne;->a:Lcom/sdgtl/mediahub/spr/screen/nc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 5

    const/4 v2, -0x1

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ne;->a:Lcom/sdgtl/mediahub/spr/screen/nc;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/nc;->a(Lcom/sdgtl/mediahub/spr/screen/nc;)Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->W(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_1e
    return-void

    :cond_1f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ne;->a:Lcom/sdgtl/mediahub/spr/screen/nc;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/nc;->a(Lcom/sdgtl/mediahub/spr/screen/nc;)Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;->W(Lcom/sdgtl/mediahub/spr/screen/PurchaseFlow;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1e
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
