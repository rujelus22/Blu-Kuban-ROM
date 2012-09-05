.class final Lcom/sdgtl/mediahub/spr/screen/lh;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/lh;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_18

    :goto_5
    return-void

    :pswitch_6
    const-string v0, "Network Error - Retry selected"

    invoke-static {v0}, Lcom/a/a/a/a/c/a;->b(Ljava/lang/String;)I

    goto :goto_5

    :pswitch_c
    const-string v0, "Network Error - Cancel selected"

    invoke-static {v0}, Lcom/a/a/a/a/c/a;->b(Ljava/lang/String;)I

    goto :goto_5

    :pswitch_12
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/lh;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->finish()V

    goto :goto_5

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_c
        :pswitch_12
        :pswitch_6
    .end packed-switch
.end method
