.class final Lcom/sdgtl/mediahub/spr/screen/ku;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    const/16 v3, 0xa

    const/4 v4, 0x5

    const/4 v8, -0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_51

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_51

    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f8

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_51

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->c(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/os/Bundle;)Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    move-result-object v1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const-string v4, "response_msg"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_52

    const-string v1, "error_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v1, "error_msg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->d(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)Z

    move-result v1

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    iget-object v5, v5, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->g:Landroid/os/Handler;

    invoke-static/range {v0 .. v5}, Lcom/sdgtl/mediahub/spr/contentProvider/n;->a(Landroid/content/Context;ZZILjava/lang/String;Landroid/os/Handler;)V

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    :goto_4c
    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    invoke-static {v3, v2, v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;ILjava/lang/CharSequence;Landroid/os/Handler;)V

    :cond_51
    :goto_51
    return-void

    :cond_52
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->c(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->e(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_ea

    :try_start_63
    iget-wide v0, v1, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/eg;

    if-eqz v0, :cond_d9

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/eg;->a:I

    if-nez v1, :cond_ba

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    const v2, 0x7f0a0199

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->setResult(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->finish()V
    :try_end_8a
    .catch Ljava/lang/ClassCastException; {:try_start_63 .. :try_end_8a} :catch_22a

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    :goto_8d
    :try_start_8d
    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->f(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->g(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)V
    :try_end_97
    .catch Ljava/lang/ClassCastException; {:try_start_8d .. :try_end_97} :catch_98

    goto :goto_4c

    :catch_98
    move-exception v3

    :goto_99
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "card_id"

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->h(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$CardRequestInfo;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->c(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v5, 0x12

    invoke-static {v5, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;J)V

    goto :goto_4c

    :cond_ba
    :try_start_ba
    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/eg;->b:Ljava/lang/String;

    iget v2, v0, Lcom/sdgtl/mediahub/spr/common/eg;->a:I

    invoke-static {p1, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_c1
    .catch Ljava/lang/ClassCastException; {:try_start_ba .. :try_end_c1} :catch_22a

    move-result-object v7

    :try_start_c2
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/eg;->a:I

    invoke-static {v1, v0, v7}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;ILjava/lang/CharSequence;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_247

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    invoke-static {v0, v7}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;Ljava/lang/CharSequence;)V
    :try_end_d5
    .catch Ljava/lang/ClassCastException; {:try_start_c2 .. :try_end_d5} :catch_230

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    goto :goto_8d

    :cond_d9
    :try_start_d9
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->getText(I)Ljava/lang/CharSequence;
    :try_end_e1
    .catch Ljava/lang/ClassCastException; {:try_start_d9 .. :try_end_e1} :catch_236

    move-result-object v7

    :try_start_e2
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    iget-object v6, v0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->k:Landroid/os/Handler;
    :try_end_e6
    .catch Ljava/lang/ClassCastException; {:try_start_e2 .. :try_end_e6} :catch_23c

    move-object v0, v6

    move-object v1, v7

    move v2, v3

    goto :goto_8d

    :cond_ea
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->c(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->i(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_242

    :try_start_fb
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    iget-wide v0, v1, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/en;

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;Lcom/sdgtl/mediahub/spr/common/en;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->j(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)Lcom/sdgtl/mediahub/spr/common/en;

    move-result-object v0

    if-eqz v0, :cond_1db

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->j(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)Lcom/sdgtl/mediahub/spr/common/en;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/en;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1db

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->j(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)Lcom/sdgtl/mediahub/spr/common/en;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/en;->a:I

    if-nez v0, :cond_1c3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->k(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->j(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)Lcom/sdgtl/mediahub/spr/common/en;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/en;->g:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/em;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/em;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->j(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)Lcom/sdgtl/mediahub/spr/common/en;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/en;->g:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/em;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/em;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->b(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->j(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)Lcom/sdgtl/mediahub/spr/common/en;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/en;->g:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/em;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/em;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->c(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->j(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)Lcom/sdgtl/mediahub/spr/common/en;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/en;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_1a2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->l(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->m(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/widget/ImageView;Ljava/lang/String;I)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->j(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)Lcom/sdgtl/mediahub/spr/common/en;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/en;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->c(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Ljava/util/ArrayList;I)J

    :cond_1a2
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->j(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)Lcom/sdgtl/mediahub/spr/common/en;

    move-result-object v1

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/en;->c:I

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->n(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)Lcom/sdgtl/mediahub/spr/screen/ky;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->j(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)Lcom/sdgtl/mediahub/spr/common/en;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/ky;->a(Lcom/sdgtl/mediahub/spr/common/en;)V

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    goto/16 :goto_4c

    :cond_1c3
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    const v2, 0x7f0a019e

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->finish()V
    :try_end_1d6
    .catch Ljava/lang/ClassCastException; {:try_start_fb .. :try_end_1d6} :catch_1eb

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    goto/16 :goto_4c

    :cond_1db
    :try_start_1db
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->getText(I)Ljava/lang/CharSequence;
    :try_end_1e3
    .catch Ljava/lang/ClassCastException; {:try_start_1db .. :try_end_1e3} :catch_222

    move-result-object v1

    :try_start_1e4
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->k:Landroid/os/Handler;
    :try_end_1e8
    .catch Ljava/lang/ClassCastException; {:try_start_1e4 .. :try_end_1e8} :catch_226

    move v2, v3

    goto/16 :goto_4c

    :catch_1eb
    move-exception v0

    move-object v0, v7

    move v1, v8

    :goto_1ee
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->o(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)V

    move v2, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_4c

    :cond_1f8
    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE_IMAGE_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->l(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->m(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/widget/ImageView;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ku;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;->n(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethodsAddNewCard;)Lcom/sdgtl/mediahub/spr/screen/ky;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/ky;->notifyDataSetChanged()V

    goto/16 :goto_51

    :catch_222
    move-exception v0

    move-object v0, v7

    move v1, v3

    goto :goto_1ee

    :catch_226
    move-exception v0

    move-object v0, v1

    move v1, v3

    goto :goto_1ee

    :catch_22a
    move-exception v0

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    goto/16 :goto_99

    :catch_230
    move-exception v0

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    goto/16 :goto_99

    :catch_236
    move-exception v0

    move-object v0, v6

    move-object v1, v7

    move v2, v3

    goto/16 :goto_99

    :catch_23c
    move-exception v0

    move-object v0, v6

    move-object v1, v7

    move v2, v3

    goto/16 :goto_99

    :cond_242
    move-object v0, v6

    move-object v1, v7

    move v2, v8

    goto/16 :goto_4c

    :cond_247
    move-object v0, v6

    move-object v1, v7

    move v2, v8

    goto/16 :goto_8d
.end method
