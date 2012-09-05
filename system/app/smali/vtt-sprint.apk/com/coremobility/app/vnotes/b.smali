.class final Lcom/coremobility/app/vnotes/b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/a;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/a;)V
    .registers 2

    iput-object p1, p0, Lcom/coremobility/app/vnotes/b;->a:Lcom/coremobility/app/vnotes/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    const/16 v3, 0x75

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_40

    :cond_7
    :goto_7
    return-void

    :pswitch_8
    iget-object v0, p0, Lcom/coremobility/app/vnotes/b;->a:Lcom/coremobility/app/vnotes/a;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/a;->a(Lcom/coremobility/app/vnotes/a;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->t()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_7

    instance-of v0, v1, Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    if-eqz v0, :cond_34

    const/4 v0, 0x0

    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a()Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    move-result-object v2

    if-eqz v2, :cond_2a

    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a()Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->d()Lcom/coremobility/app/vnotes/be;

    move-result-object v0

    :cond_2a
    if-eqz v0, :cond_30

    invoke-virtual {v0, v3}, Lcom/coremobility/app/vnotes/be;->a(I)V

    goto :goto_7

    :cond_30
    invoke-virtual {v1, v3}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_7

    :cond_34
    instance-of v0, v1, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;

    if-nez v0, :cond_3c

    instance-of v0, v1, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    if-eqz v0, :cond_7

    :cond_3c
    invoke-virtual {v1, v3}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_7

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method
