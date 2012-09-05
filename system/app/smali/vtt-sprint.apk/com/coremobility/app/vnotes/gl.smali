.class final Lcom/coremobility/app/vnotes/gl;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V
    .registers 2

    iput-object p1, p0, Lcom/coremobility/app/vnotes/gl;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 8

    const/16 v0, 0x79

    const/16 v1, 0x78

    const/16 v5, 0x76

    const/4 v2, 0x0

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_d6

    :cond_c
    :goto_c
    return-void

    :pswitch_d
    iget-object v0, p0, Lcom/coremobility/app/vnotes/gl;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->showContextMenu()Z

    goto :goto_c

    :pswitch_17
    iget-object v0, p0, Lcom/coremobility/app/vnotes/gl;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->b(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/coremobility/app/vnotes/gl;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->c()V

    goto :goto_c

    :pswitch_25
    iget v0, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cf;->j(I)V

    goto :goto_c

    :pswitch_2b
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3b

    :goto_30
    iget-object v1, p0, Lcom/coremobility/app/vnotes/gl;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->c(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/gl;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-virtual {v1, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    goto :goto_c

    :cond_3b
    move v0, v1

    goto :goto_30

    :pswitch_3d
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v4, p0, Lcom/coremobility/app/vnotes/gl;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-static {v4}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->c(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V

    packed-switch v2, :pswitch_data_ec

    goto :goto_c

    :pswitch_4a
    sparse-switch v3, :sswitch_data_f4

    goto :goto_c

    :sswitch_4e
    iget-object v0, p0, Lcom/coremobility/app/vnotes/gl;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-virtual {v0, v5}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    goto :goto_c

    :sswitch_54
    iget-object v0, p0, Lcom/coremobility/app/vnotes/gl;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    const/16 v1, 0x7a

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    goto :goto_c

    :sswitch_5c
    iget-object v1, p0, Lcom/coremobility/app/vnotes/gl;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-virtual {v1, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    goto :goto_c

    :sswitch_62
    iget-object v0, p0, Lcom/coremobility/app/vnotes/gl;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    goto :goto_c

    :sswitch_6a
    iget-object v0, p0, Lcom/coremobility/app/vnotes/gl;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    const/16 v1, 0x84

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    goto :goto_c

    :pswitch_72
    sparse-switch v3, :sswitch_data_10e

    goto :goto_c

    :sswitch_76
    iget-object v0, p0, Lcom/coremobility/app/vnotes/gl;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    goto :goto_c

    :sswitch_7e
    iget-object v0, p0, Lcom/coremobility/app/vnotes/gl;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-virtual {v0, v5}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    goto :goto_c

    :sswitch_84
    iget-object v0, p0, Lcom/coremobility/app/vnotes/gl;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    const/16 v1, 0x77

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    goto :goto_c

    :sswitch_8c
    iget-object v0, p0, Lcom/coremobility/app/vnotes/gl;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    goto/16 :goto_c

    :sswitch_93
    iget-object v0, p0, Lcom/coremobility/app/vnotes/gl;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    const/16 v1, 0x85

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    goto/16 :goto_c

    :pswitch_9c
    iget-object v0, p0, Lcom/coremobility/app/vnotes/gl;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->d(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V

    goto/16 :goto_c

    :pswitch_a3
    iget-object v1, p0, Lcom/coremobility/app/vnotes/gl;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-lez v0, :cond_af

    const/4 v0, 0x1

    :goto_aa
    invoke-static {v1, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;Z)V

    goto/16 :goto_c

    :cond_af
    move v0, v2

    goto :goto_aa

    :pswitch_b1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/gl;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->e(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)Lcom/coremobility/app/customui/CM_HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_HorizontalScrollView;->getScrollX()I

    move-result v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_c6

    iget-object v0, p0, Lcom/coremobility/app/vnotes/gl;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->f(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)Z

    goto/16 :goto_c

    :cond_c6
    iget-object v0, p0, Lcom/coremobility/app/vnotes/gl;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-static {v0, v2}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;Z)V

    goto/16 :goto_c

    :pswitch_cd
    iget-object v0, p0, Lcom/coremobility/app/vnotes/gl;->a:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    goto/16 :goto_c

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_17
        :pswitch_9c
        :pswitch_a3
        :pswitch_b1
        :pswitch_cd
        :pswitch_d
        :pswitch_25
        :pswitch_3d
        :pswitch_2b
    .end packed-switch

    :pswitch_data_ec
    .packed-switch 0x66
        :pswitch_4a
        :pswitch_72
    .end packed-switch

    :sswitch_data_f4
    .sparse-switch
        -0x1 -> :sswitch_4e
        0x155 -> :sswitch_6a
        0x191 -> :sswitch_62
        0x198 -> :sswitch_5c
        0x1f4 -> :sswitch_5c
        0x1fa -> :sswitch_54
    .end sparse-switch

    :sswitch_data_10e
    .sparse-switch
        0x191 -> :sswitch_76
        0x193 -> :sswitch_84
        0x198 -> :sswitch_8c
        0x1a4 -> :sswitch_93
        0x1f4 -> :sswitch_8c
        0x3e8 -> :sswitch_7e
    .end sparse-switch
.end method
