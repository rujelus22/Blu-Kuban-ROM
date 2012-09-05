.class final Lcom/sdgtl/mediahub/spr/common/ga;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/ga;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ga;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->setResult(I)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_28

    :goto_b
    return-void

    :pswitch_c
    const-string v0, "Network Error - Retry selected"

    invoke-static {v0}, Lcom/a/a/a/a/c/a;->b(Ljava/lang/String;)I

    goto :goto_b

    :pswitch_12
    const-string v0, "Network Error - Cancel selected"

    invoke-static {v0}, Lcom/a/a/a/a/c/a;->b(Ljava/lang/String;)I

    goto :goto_b

    :pswitch_18
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ga;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->setResult(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ga;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->a(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/ga;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->finish()V

    goto :goto_b

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_12
        :pswitch_18
        :pswitch_c
    .end packed-switch
.end method
