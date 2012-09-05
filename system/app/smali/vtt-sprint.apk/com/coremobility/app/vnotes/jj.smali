.class final Lcom/coremobility/app/vnotes/jj;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;)V
    .registers 2

    iput-object p1, p0, Lcom/coremobility/app/vnotes/jj;->a:Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 8

    const/16 v5, 0xb

    const/16 v4, 0xa

    const/4 v2, 0x0

    const/4 v3, 0x7

    const/4 v1, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_118

    :cond_c
    :goto_c
    return-void

    :pswitch_d
    iget-object v0, p0, Lcom/coremobility/app/vnotes/jj;->a:Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->a(Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/jj;->a:Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->b(Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;)V

    goto :goto_c

    :pswitch_18
    iget-object v0, p0, Lcom/coremobility/app/vnotes/jj;->a:Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->c(Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/coremobility/app/vnotes/jj;->a:Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->removeDialog(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/jj;->a:Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->d(Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;)Landroid/app/ProgressDialog;

    :cond_2c
    iget v0, p1, Landroid/os/Message;->arg2:I

    packed-switch v0, :pswitch_data_124

    :pswitch_31
    iget-object v0, p0, Lcom/coremobility/app/vnotes/jj;->a:Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->e(Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;)Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/coremobility/app/vnotes/jj;->a:Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;

    invoke-virtual {v0, v5}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->showDialog(I)V

    :cond_3e
    :goto_3e
    iget-object v0, p0, Lcom/coremobility/app/vnotes/jj;->a:Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->h(Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;)Z

    goto :goto_c

    :pswitch_44
    iget-object v0, p0, Lcom/coremobility/app/vnotes/jj;->a:Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->e(Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;)Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/coremobility/app/vnotes/jj;->a:Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;

    invoke-virtual {v0, v4}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->showDialog(I)V

    goto :goto_3e

    :pswitch_52
    iget-object v3, p0, Lcom/coremobility/app/vnotes/jj;->a:Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;

    iget v0, p1, Landroid/os/Message;->arg1:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_81

    move v0, v1

    :goto_5b
    invoke-static {v3, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->a(Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;Z)Z

    iget-object v0, p0, Lcom/coremobility/app/vnotes/jj;->a:Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;

    iget v3, p1, Landroid/os/Message;->arg1:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_67

    move v2, v1

    :cond_67
    invoke-static {v0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->b(Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;Z)Z

    iget-object v0, p0, Lcom/coremobility/app/vnotes/jj;->a:Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->f(Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;)Z

    move-result v0

    if-eqz v0, :cond_89

    iget-object v0, p0, Lcom/coremobility/app/vnotes/jj;->a:Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->g(Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;)Z

    move-result v0

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/coremobility/app/vnotes/jj;->a:Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->showDialog(I)V

    goto :goto_3e

    :cond_81
    move v0, v2

    goto :goto_5b

    :cond_83
    iget-object v0, p0, Lcom/coremobility/app/vnotes/jj;->a:Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->showDialog(I)V

    goto :goto_3e

    :cond_89
    iget-object v0, p0, Lcom/coremobility/app/vnotes/jj;->a:Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->e(Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;)Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/coremobility/app/vnotes/jj;->a:Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->showDialog(I)V

    goto :goto_3e

    :pswitch_98
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_130

    :pswitch_9d
    iget-object v0, p0, Lcom/coremobility/app/vnotes/jj;->a:Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->i(Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_af

    iget-object v0, p0, Lcom/coremobility/app/vnotes/jj;->a:Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;

    invoke-virtual {v0, v3}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->removeDialog(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/jj;->a:Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->j(Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;)Landroid/app/ProgressDialog;

    :cond_af
    iget-object v0, p0, Lcom/coremobility/app/vnotes/jj;->a:Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;

    invoke-virtual {v0, v5}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->showDialog(I)V

    goto/16 :goto_c

    :pswitch_b6
    iget-object v0, p0, Lcom/coremobility/app/vnotes/jj;->a:Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->i(Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/coremobility/app/vnotes/jj;->a:Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;

    invoke-virtual {v0, v3}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->removeDialog(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/jj;->a:Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->j(Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;)Landroid/app/ProgressDialog;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/coremobility/integration/i/f;->j()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/jj;->a:Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;

    invoke-virtual {v1, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_c

    :pswitch_e8
    iget-object v0, p0, Lcom/coremobility/app/vnotes/jj;->a:Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->i(Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_fa

    iget-object v0, p0, Lcom/coremobility/app/vnotes/jj;->a:Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;

    invoke-virtual {v0, v3}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->removeDialog(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/jj;->a:Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->j(Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;)Landroid/app/ProgressDialog;

    :cond_fa
    iget-object v0, p0, Lcom/coremobility/app/vnotes/jj;->a:Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;

    invoke-virtual {v0, v4}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->showDialog(I)V

    goto/16 :goto_c

    :pswitch_101
    iget-object v0, p0, Lcom/coremobility/app/vnotes/jj;->a:Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->k(Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/coremobility/app/vnotes/jj;->a:Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->removeDialog(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/jj;->a:Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;->l(Lcom/coremobility/app/vnotes/CM_VnoteSettingsForm;)Landroid/app/ProgressDialog;

    goto/16 :goto_c

    nop

    :pswitch_data_118
    .packed-switch 0x0
        :pswitch_18
        :pswitch_98
        :pswitch_101
        :pswitch_d
    .end packed-switch

    :pswitch_data_124
    .packed-switch 0x0
        :pswitch_52
        :pswitch_31
        :pswitch_31
        :pswitch_44
    .end packed-switch

    :pswitch_data_130
    .packed-switch 0x0
        :pswitch_b6
        :pswitch_9d
        :pswitch_9d
        :pswitch_e8
    .end packed-switch
.end method
