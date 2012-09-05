.class final Lcom/sdgtl/mediahub/spr/screen/lc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/lc;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_14

    :goto_7
    return-void

    :sswitch_8
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/lc;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;)Z

    goto :goto_7

    :sswitch_e
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/lc;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->finish()V

    goto :goto_7

    :sswitch_data_14
    .sparse-switch
        0x7f0d00e2 -> :sswitch_e
        0x7f0d00e6 -> :sswitch_8
    .end sparse-switch
.end method
