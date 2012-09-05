.class final Lcom/sdgtl/mediahub/spr/screen/ll;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/ll;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_16

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ll;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->g(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ll;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->g(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_15
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
