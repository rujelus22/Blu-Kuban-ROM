.class final Lcom/sdgtl/mediahub/spr/q;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/Main;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/Main;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/q;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2e

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/q;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/Main;->finish()V

    goto :goto_5

    :pswitch_c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/q;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Lcom/sdgtl/mediahub/spr/Main;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_27

    const-string v1, "android.settings.SECURITY_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_21
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/q;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-virtual {v1, v0}, Lcom/sdgtl/mediahub/spr/Main;->startActivity(Landroid/content/Intent;)V

    goto :goto_5

    :cond_27
    const-string v1, "android.settings.APPLICATION_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_21

    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_c
    .end packed-switch
.end method
