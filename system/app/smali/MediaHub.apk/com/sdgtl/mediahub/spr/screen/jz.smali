.class final Lcom/sdgtl/mediahub/spr/screen/jz;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/jz;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

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
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/jz;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->finish()V

    goto :goto_5

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_c
        :pswitch_12
        :pswitch_6
    .end packed-switch
.end method