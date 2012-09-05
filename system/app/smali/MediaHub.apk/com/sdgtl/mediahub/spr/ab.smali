.class final Lcom/sdgtl/mediahub/spr/ab;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/Main;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/Main;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/ab;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_36

    :cond_5
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
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/ab;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->e(Lcom/sdgtl/mediahub/spr/Main;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/ab;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->f(Lcom/sdgtl/mediahub/spr/Main;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    :cond_22
    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->a()Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->a()Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/FrontPageCategory;->finish()V

    :cond_2f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/ab;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/Main;->finish()V

    goto :goto_5

    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_c
        :pswitch_12
        :pswitch_6
    .end packed-switch
.end method
