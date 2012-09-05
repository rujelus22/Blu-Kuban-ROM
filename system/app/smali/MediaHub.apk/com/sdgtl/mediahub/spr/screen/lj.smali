.class final Lcom/sdgtl/mediahub/spr/screen/lj;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/lj;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    if-eqz p2, :cond_43

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_43

    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/lj;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->b(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/os/Bundle;)Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    move-result-object v1

    const-string v2, "response_msg"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_44

    const-string v1, "error_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v1, "error_msg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/lj;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/lj;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->c(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;)Z

    move-result v1

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/lj;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;

    iget-object v5, v5, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->a:Landroid/os/Handler;

    invoke-static/range {v0 .. v5}, Lcom/sdgtl/mediahub/spr/contentProvider/n;->a(Landroid/content/Context;ZZILjava/lang/String;Landroid/os/Handler;)V

    :cond_43
    :goto_43
    return-void

    :cond_44
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/lj;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->b(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/lj;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->d(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_43

    :try_start_55
    iget-wide v0, v1, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/eg;

    if-eqz v0, :cond_cc

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/eg;->a:I

    if-nez v1, :cond_b0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/lj;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/lj;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;

    const v2, 0x7f0a019a

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/lj;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->setResult(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/lj;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->finish()V

    :cond_7c
    :goto_7c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/lj;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->e(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;)V
    :try_end_81
    .catch Ljava/lang/ClassCastException; {:try_start_55 .. :try_end_81} :catch_82

    goto :goto_43

    :catch_82
    move-exception v0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "redeem_id"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/lj;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->f(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/lj;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/lj;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->b(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v2, 0x14

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;J)V

    goto :goto_43

    :cond_b0
    :try_start_b0
    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/eg;->b:Ljava/lang/String;

    iget v2, v0, Lcom/sdgtl/mediahub/spr/common/eg;->a:I

    invoke-static {p1, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/lj;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/eg;->a:I

    invoke-static {v2, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;ILjava/lang/CharSequence;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/lj;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;Ljava/lang/CharSequence;)V

    goto :goto_7c

    :cond_cc
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/lj;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/lj;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;

    const v2, 0x7f0a01c8

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/lj;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewVoucher;->d:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/a;->e(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;
    :try_end_de
    .catch Ljava/lang/ClassCastException; {:try_start_b0 .. :try_end_de} :catch_82

    goto :goto_7c
.end method
