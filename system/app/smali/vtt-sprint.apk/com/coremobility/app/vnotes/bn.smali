.class final Lcom/coremobility/app/vnotes/bn;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/coremobility/app/vnotes/bn;->a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 8

    const/16 v0, 0x79

    const/16 v1, 0x78

    const/16 v5, 0x76

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_a0

    :goto_b
    return-void

    :pswitch_c
    iget-object v0, p0, Lcom/coremobility/app/vnotes/bn;->a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->finish()V

    iget v0, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cf;->j(I)V

    goto :goto_b

    :pswitch_17
    iget-object v0, p0, Lcom/coremobility/app/vnotes/bn;->a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->a(Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/bn;->a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/bn;->a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->b(Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->a(Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;Ljava/lang/String;)V

    goto :goto_b

    :pswitch_28
    iget-object v0, p0, Lcom/coremobility/app/vnotes/bn;->a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->c(Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;)V

    goto :goto_b

    :pswitch_2e
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3e

    :goto_33
    iget-object v1, p0, Lcom/coremobility/app/vnotes/bn;->a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->d(Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/bn;->a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;

    invoke-virtual {v1, v0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->showDialog(I)V

    goto :goto_b

    :cond_3e
    move v0, v1

    goto :goto_33

    :pswitch_40
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p0, Lcom/coremobility/app/vnotes/bn;->a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;

    invoke-static {v4}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->d(Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;)V

    packed-switch v2, :pswitch_data_ae

    goto :goto_b

    :pswitch_4d
    sparse-switch v3, :sswitch_data_b6

    goto :goto_b

    :sswitch_51
    iget-object v0, p0, Lcom/coremobility/app/vnotes/bn;->a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;

    invoke-virtual {v0, v5}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->showDialog(I)V

    goto :goto_b

    :sswitch_57
    iget-object v1, p0, Lcom/coremobility/app/vnotes/bn;->a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;

    invoke-virtual {v1, v0}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->showDialog(I)V

    goto :goto_b

    :sswitch_5d
    iget-object v0, p0, Lcom/coremobility/app/vnotes/bn;->a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;

    const/16 v1, 0x7a

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->showDialog(I)V

    goto :goto_b

    :sswitch_65
    iget-object v0, p0, Lcom/coremobility/app/vnotes/bn;->a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->showDialog(I)V

    goto :goto_b

    :sswitch_6d
    iget-object v0, p0, Lcom/coremobility/app/vnotes/bn;->a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;

    const/16 v1, 0x84

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->showDialog(I)V

    goto :goto_b

    :pswitch_75
    sparse-switch v3, :sswitch_data_d0

    goto :goto_b

    :sswitch_79
    iget-object v0, p0, Lcom/coremobility/app/vnotes/bn;->a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->showDialog(I)V

    goto :goto_b

    :sswitch_81
    iget-object v0, p0, Lcom/coremobility/app/vnotes/bn;->a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;

    invoke-virtual {v0, v5}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->showDialog(I)V

    goto :goto_b

    :sswitch_87
    iget-object v0, p0, Lcom/coremobility/app/vnotes/bn;->a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;

    const/16 v1, 0x77

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->showDialog(I)V

    goto/16 :goto_b

    :sswitch_90
    iget-object v0, p0, Lcom/coremobility/app/vnotes/bn;->a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->showDialog(I)V

    goto/16 :goto_b

    :sswitch_97
    iget-object v0, p0, Lcom/coremobility/app/vnotes/bn;->a:Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;

    const/16 v1, 0x85

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_SocialComposeActivity;->showDialog(I)V

    goto/16 :goto_b

    :pswitch_data_a0
    .packed-switch 0x64
        :pswitch_c
        :pswitch_40
        :pswitch_2e
        :pswitch_17
        :pswitch_28
    .end packed-switch

    :pswitch_data_ae
    .packed-switch 0x66
        :pswitch_4d
        :pswitch_75
    .end packed-switch

    :sswitch_data_b6
    .sparse-switch
        -0x1 -> :sswitch_51
        0x155 -> :sswitch_6d
        0x191 -> :sswitch_65
        0x198 -> :sswitch_57
        0x1f4 -> :sswitch_57
        0x1fa -> :sswitch_5d
    .end sparse-switch

    :sswitch_data_d0
    .sparse-switch
        0x191 -> :sswitch_79
        0x193 -> :sswitch_87
        0x198 -> :sswitch_90
        0x1a4 -> :sswitch_97
        0x1f4 -> :sswitch_90
        0x3e8 -> :sswitch_81
    .end sparse-switch
.end method
