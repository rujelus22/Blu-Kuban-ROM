.class final Lcom/sdgtl/mediahub/spr/common/fx;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    const/4 v8, 0x1

    const v5, 0x7f0a00e0

    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_49

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_49

    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ba4

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_49

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->e(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/os/Bundle;)Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    move-result-object v1

    const-string v3, "response_msg"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4a

    const-string v1, "error_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v1, "error_msg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->l(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Z

    move-result v1

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v5, v5, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->b:Landroid/os/Handler;

    invoke-static/range {v0 .. v5}, Lcom/sdgtl/mediahub/spr/contentProvider/n;->a(Landroid/content/Context;ZZILjava/lang/String;Landroid/os/Handler;)V

    :cond_49
    :goto_49
    return-void

    :cond_4a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->e(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->m(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_160

    :try_start_5b
    iget-wide v0, v1, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cm;

    if-eqz v0, :cond_127

    new-instance v1, Lcom/sdgtl/mediahub/spr/contentProvider/m;

    invoke-direct {v1}, Lcom/sdgtl/mediahub/spr/contentProvider/m;-><init>()V

    const-string v2, "MediaHubSignIn"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MH_REQ_A***_A*****_T**** u***_t*** == "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/sdgtl/mediahub/spr/common/cm;->d:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/sdgtl/mediahub/spr/contentProvider/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / r******_t**** == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sdgtl/mediahub/spr/common/cm;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/sdgtl/mediahub/spr/contentProvider/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "MediaHubSignIn"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Request U***T**** mE**** = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/sdgtl/mediahub/spr/common/cm;->e:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/sdgtl/mediahub/spr/contentProvider/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / mE****_c*** = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sdgtl/mediahub/spr/common/cm;->f:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/sdgtl/mediahub/spr/contentProvider/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / mE****_d********** = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sdgtl/mediahub/spr/common/cm;->g:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/sdgtl/mediahub/spr/contentProvider/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ce
    if-eqz v0, :cond_12f

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/cm;->d:Ljava/lang/String;

    if-eqz v1, :cond_12f

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/cm;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->a(Lcom/sdgtl/mediahub/spr/common/SignInFlow;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cm;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->b(Lcom/sdgtl/mediahub/spr/common/SignInFlow;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "user_token"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->h(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->e(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v2, 0xe

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->e(Lcom/sdgtl/mediahub/spr/common/SignInFlow;J)V
    :try_end_102
    .catch Ljava/lang/ClassCastException; {:try_start_5b .. :try_end_102} :catch_104

    goto/16 :goto_49

    :catch_104
    move-exception v0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "auth_code"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->n(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->e(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v2, 0x32

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->f(Lcom/sdgtl/mediahub/spr/common/SignInFlow;J)V

    goto/16 :goto_49

    :cond_127
    :try_start_127
    const-string v1, "MediaHubSignIn"

    const-string v2, "authAccessToken == null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ce

    :cond_12f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->b(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    const-string v0, "MediaHubSignIn"

    const-string v1, "mRequestUserToken fail !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    const v2, 0x7f0a019f

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->setResult(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->a(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->finish()V
    :try_end_15e
    .catch Ljava/lang/ClassCastException; {:try_start_127 .. :try_end_15e} :catch_104

    goto/16 :goto_49

    :cond_160
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->e(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->o(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_3a6

    :try_start_171
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-wide v0, v1, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/ei;

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->a(Lcom/sdgtl/mediahub/spr/common/SignInFlow;Lcom/sdgtl/mediahub/spr/common/ei;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->u()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->g(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/ei;

    move-result-object v1

    if-eqz v1, :cond_38b

    const-string v1, "MediaHubSignIn"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mS***InR*****.mR*****C*** == "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->g(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/ei;

    move-result-object v3

    iget v3, v3, Lcom/sdgtl/mediahub/spr/common/ei;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->g(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/ei;

    move-result-object v1

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/ei;->a:I

    if-nez v1, :cond_2c2

    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->v()I

    move-result v0

    if-ne v0, v8, :cond_202

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0072

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->k:Landroid/os/Handler;

    invoke-static {p1, v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;
    :try_end_1dd
    .catch Ljava/lang/ClassCastException; {:try_start_171 .. :try_end_1dd} :catch_1df

    goto/16 :goto_49

    :catch_1df
    move-exception v0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "user_token"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->h(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->e(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v2, 0xe

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->e(Lcom/sdgtl/mediahub/spr/common/SignInFlow;J)V

    goto/16 :goto_49

    :cond_202
    :try_start_202
    const-string v0, "MediaHubSignIn"

    const-string v1, "mRequestSignIn end !!! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    const-string v1, "hd_available_device"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->g(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/ei;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/ei;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->g(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/ei;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ei;->i:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/a/a;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->g(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/ei;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ei;->f:I

    if-ne v0, v8, :cond_25f

    const-string v0, "MediaHubSignIn"

    const-string v1, "mRequestIdDeviceDomainsHardening Start !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "domain_method"

    const-string v2, "01"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "domain_userid"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->g(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/ei;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/ei;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->e(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v2, 0x19

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->c(Lcom/sdgtl/mediahub/spr/common/SignInFlow;J)V

    goto/16 :goto_49

    :cond_25f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->h(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->j(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->i(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->k(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->j(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_2b2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->k(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->l(Ljava/lang/String;)V

    :goto_294
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->c(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->e(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->d(Lcom/sdgtl/mediahub/spr/common/SignInFlow;J)V

    goto/16 :goto_49

    :cond_2b2
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->l(Ljava/lang/String;)V

    goto :goto_294

    :cond_2c2
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->p(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Z

    move-result v1

    if-eqz v1, :cond_30e

    if-nez v0, :cond_2d1

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->b(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    :cond_2d1
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->a(Lcom/sdgtl/mediahub/spr/common/SignInFlow;Z)V

    const-string v0, "MediaHubSignIn"

    const-string v1, "mRequestSignIn fail !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->g(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/ei;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/ei;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->g(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/ei;

    move-result-object v2

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/ei;->a:I

    invoke-static {p1, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->setResult(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->a(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->finish()V

    goto/16 :goto_49

    :cond_30e
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->g(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/ei;

    move-result-object v1

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/ei;->a:I

    const/16 v2, 0xfa1

    if-ne v1, v2, :cond_34d

    const-string v0, "MediaHubSignIn"

    const-string v1, "mRequestUserTokenByRefreshToken start !!! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->j(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "refresh_Token"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->i(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->e(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v2, 0x33

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->g(Lcom/sdgtl/mediahub/spr/common/SignInFlow;J)V

    goto/16 :goto_49

    :cond_34d
    if-nez v0, :cond_354

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->b(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    :cond_354
    const-string v0, "MediaHubSignIn"

    const-string v1, "mRequestSignIn fail !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->g(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/ei;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/ei;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->g(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/ei;

    move-result-object v2

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/ei;->a:I

    invoke-static {p1, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->setResult(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->a(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->finish()V

    goto/16 :goto_49

    :cond_38b
    if-nez v0, :cond_392

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->b(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    :cond_392
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    const v2, 0x7f0a01c8

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->d:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/a;->e(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;
    :try_end_3a4
    .catch Ljava/lang/ClassCastException; {:try_start_202 .. :try_end_3a4} :catch_1df

    goto/16 :goto_49

    :cond_3a6
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->e(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->q(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_624

    :try_start_3b7
    iget-wide v0, v1, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cw;

    if-eqz v0, :cond_5fa

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->a(Lcom/sdgtl/mediahub/spr/common/SignInFlow;Lcom/sdgtl/mediahub/spr/common/cw;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->d(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/cw;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/cw;->a:I

    if-nez v0, :cond_4cd

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->d(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/cw;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cw;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_441

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->d(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/cw;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cw;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cp;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cp;->a:Ljava/lang/String;

    if-eqz v0, :cond_441

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->d(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/cw;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cw;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cp;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cp;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_441

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->g:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->g(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;
    :try_end_413
    .catch Ljava/lang/ClassCastException; {:try_start_3b7 .. :try_end_413} :catch_415

    goto/16 :goto_49

    :catch_415
    move-exception v0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "domain_method"

    const-string v2, "01"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "domain_userid"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->g(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/ei;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/ei;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->e(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v2, 0x19

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->c(Lcom/sdgtl/mediahub/spr/common/SignInFlow;J)V

    goto/16 :goto_49

    :cond_441
    :try_start_441
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->t(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4b3

    const-string v0, "MediaHubSignIn"

    const-string v1, "mRequestIdDeviceDomainsHardening OK !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    sget-object v1, Lcom/sdgtl/mediahub/spr/common/gi;->b:Lcom/sdgtl/mediahub/spr/common/gi;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->a(Lcom/sdgtl/mediahub/spr/common/SignInFlow;Lcom/sdgtl/mediahub/spr/common/gi;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->d(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/cw;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cw;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->d(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/cw;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/cw;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->d(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/cw;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/cw;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v1, "MediaHubDRM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "joinDomainResult == "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->b(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    const v2, 0x7f0a019f

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->setResult(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->a(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->finish()V

    goto/16 :goto_49

    :cond_4b3
    const-string v0, "MediaHubSignIn"

    const-string v1, "mRequestedRegisterDevice start !!! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->e(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v1, 0x17

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->h(Lcom/sdgtl/mediahub/spr/common/SignInFlow;J)V

    goto/16 :goto_49

    :cond_4cd
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->d(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/cw;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/cw;->a:I

    const/16 v1, 0x41b

    if-ne v0, v1, :cond_53f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->d(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/cw;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cw;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_51e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->d(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/cw;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cw;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cp;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cp;->a:Ljava/lang/String;

    if-eqz v0, :cond_51e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->d(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/cw;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cw;->f:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cp;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cp;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->g:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->g(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto/16 :goto_49

    :cond_51e
    const-string v0, "MediaHubSignIn"

    const-string v1, "joinDomain OK !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaHubSignIn"

    const-string v1, "mRequestedRegisterDevice start !!! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->e(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v1, 0x17

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->h(Lcom/sdgtl/mediahub/spr/common/SignInFlow;J)V

    goto/16 :goto_49

    :cond_53f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->d(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/cw;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/cw;->a:I

    const/16 v1, 0x41c

    if-ne v0, v1, :cond_57e

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "delete_device_uid"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "old_user_id"

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->d(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/cw;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cw;->f:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cp;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cp;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->e(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v2, 0x1a

    invoke-static {v2, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->b(Lcom/sdgtl/mediahub/spr/common/SignInFlow;J)V

    goto/16 :goto_49

    :cond_57e
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->d(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/cw;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/cw;->a:I

    const/16 v1, 0xfa2

    if-ne v0, v1, :cond_5a6

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->r(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_59b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->r(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_59b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->f:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->f(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto/16 :goto_49

    :cond_5a6
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->d(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/cw;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/cw;->a:I

    const/16 v1, 0xfa9

    if-ne v0, v1, :cond_5c5

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->d(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/cw;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/cw;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->c:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto/16 :goto_49

    :cond_5c5
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->b(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->d(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/cw;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/cw;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->d(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/cw;

    move-result-object v2

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/cw;->a:I

    invoke-static {p1, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->setResult(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->a(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->finish()V

    goto/16 :goto_49

    :cond_5fa
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->b(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    const v2, 0x7f0a01c8

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->setResult(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->a(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->finish()V
    :try_end_622
    .catch Ljava/lang/ClassCastException; {:try_start_441 .. :try_end_622} :catch_415

    goto/16 :goto_49

    :cond_624
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->e(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->s(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_727

    :try_start_635
    iget-wide v0, v1, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cw;

    if-eqz v0, :cond_700

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/cw;->a:I

    if-eqz v1, :cond_655

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/cw;->a:I

    const/16 v3, 0xfa2

    if-eq v1, v3, :cond_655

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/cw;->a:I

    const/16 v3, 0x41b

    if-eq v1, v3, :cond_655

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/cw;->a:I

    const/16 v3, 0xfa5

    if-ne v1, v3, :cond_6d9

    :cond_655
    const-string v1, "MediaHubSignIn"

    const-string v3, "mRequestIdDeviceRejoinDomainsHardening OK !!!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    sget-object v3, Lcom/sdgtl/mediahub/spr/common/gi;->c:Lcom/sdgtl/mediahub/spr/common/gi;

    invoke-static {v1, v3}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->a(Lcom/sdgtl/mediahub/spr/common/SignInFlow;Lcom/sdgtl/mediahub/spr/common/gi;)V

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/cw;->e:Ljava/lang/String;

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/cw;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cw;->d:Ljava/lang/String;

    invoke-static {v1, v3, v0}, Lcom/sdgtl/mediahub/spr/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v1, "MediaHubDRM"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "joinDomainResult == "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->f(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    const v3, 0x7f0a00e0

    invoke-virtual {v1, v3}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    const v4, 0x7f0a00e1

    invoke-virtual {v3, v4}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v4, v4, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->h:Landroid/os/Handler;

    invoke-static {v0, v1, v3, v4}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;
    :try_end_6a3
    .catch Ljava/lang/ClassCastException; {:try_start_635 .. :try_end_6a3} :catch_6a5

    goto/16 :goto_49

    :catch_6a5
    move-exception v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "domain_method"

    const-string v3, "01"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "domain_userid"

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->d(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/cw;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cw;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cp;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cp;->a:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->e(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v2, 0x19

    invoke-static {v2, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->a(Lcom/sdgtl/mediahub/spr/common/SignInFlow;J)V

    goto/16 :goto_49

    :cond_6d9
    :try_start_6d9
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->b(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->f(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    const v3, 0x7f0a00e0

    invoke-virtual {v1, v3}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    const v4, 0x7f0a00e1

    invoke-virtual {v3, v4}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v4, v4, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->h:Landroid/os/Handler;

    invoke-static {v0, v1, v3, v4}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto/16 :goto_49

    :cond_700
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->b(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->f(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    const v3, 0x7f0a00e0

    invoke-virtual {v1, v3}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    const v4, 0x7f0a00e1

    invoke-virtual {v3, v4}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v4, v4, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->h:Landroid/os/Handler;

    invoke-static {v0, v1, v3, v4}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;
    :try_end_725
    .catch Ljava/lang/ClassCastException; {:try_start_6d9 .. :try_end_725} :catch_6a5

    goto/16 :goto_49

    :cond_727
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->e(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->t(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_80b

    :try_start_738
    iget-wide v0, v1, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/ef;

    if-eqz v0, :cond_7e4

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/ef;->a:I

    if-nez v1, :cond_797

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/c/a;->j()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->m(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->f(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->setResult(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->finish()V
    :try_end_763
    .catch Ljava/lang/ClassCastException; {:try_start_738 .. :try_end_763} :catch_765

    goto/16 :goto_49

    :catch_765
    move-exception v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "delete_device_uid"

    invoke-virtual {v1, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "old_user_id"

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->d(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/cw;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cw;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cp;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cp;->a:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->e(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v2, 0x1a

    invoke-static {v2, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->b(Lcom/sdgtl/mediahub/spr/common/SignInFlow;J)V

    goto/16 :goto_49

    :cond_797
    :try_start_797
    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/ef;->a:I

    const/16 v3, 0xfa9

    if-ne v1, v3, :cond_7bd

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->b(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->f(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    const v4, 0x7f0a00e0

    invoke-virtual {v3, v4}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ef;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v4, v4, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->h:Landroid/os/Handler;

    invoke-static {v1, v3, v0, v4}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto/16 :goto_49

    :cond_7bd
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->b(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->f(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    const v3, 0x7f0a00e0

    invoke-virtual {v1, v3}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    const v4, 0x7f0a00e1

    invoke-virtual {v3, v4}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v4, v4, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->h:Landroid/os/Handler;

    invoke-static {v0, v1, v3, v4}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto/16 :goto_49

    :cond_7e4
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->b(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->f(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    const v3, 0x7f0a00e0

    invoke-virtual {v1, v3}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    const v4, 0x7f0a00e1

    invoke-virtual {v3, v4}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v4, v4, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->h:Landroid/os/Handler;

    invoke-static {v0, v1, v3, v4}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;
    :try_end_809
    .catch Ljava/lang/ClassCastException; {:try_start_797 .. :try_end_809} :catch_765

    goto/16 :goto_49

    :cond_80b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->e(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->u(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_90c

    :try_start_81c
    iget-wide v0, v1, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/eg;

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/eg;->a:I

    if-nez v1, :cond_8ba

    const-string v0, "MediaHubSignIn"

    const-string v1, "mRequestedRegisterDevice end !!! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->v(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Z

    move-result v0

    if-eqz v0, :cond_8a3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->setResult(I)V

    :goto_83d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->h(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->j(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->i(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->k(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->j(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_8aa

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->k(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->l(Ljava/lang/String;)V

    :goto_872
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->c(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->e(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->d(Lcom/sdgtl/mediahub/spr/common/SignInFlow;J)V
    :try_end_88e
    .catch Ljava/lang/ClassCastException; {:try_start_81c .. :try_end_88e} :catch_890

    goto/16 :goto_49

    :catch_890
    move-exception v0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->e(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v1, 0x17

    invoke-static {v1, v7}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->h(Lcom/sdgtl/mediahub/spr/common/SignInFlow;J)V

    goto/16 :goto_49

    :cond_8a3
    :try_start_8a3
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->setResult(I)V

    goto :goto_83d

    :cond_8aa
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->l(Ljava/lang/String;)V

    goto :goto_872

    :cond_8ba
    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/eg;->a:I

    const/16 v2, 0xfa2

    if-ne v1, v2, :cond_8dc

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->r(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Ljava/util/Timer;

    move-result-object v0

    if-eqz v0, :cond_8d1

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->r(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_8d1
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->f:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->f(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto/16 :goto_49

    :cond_8dc
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->b(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    const-string v1, "MediaHubSignIn"

    const-string v2, "mRequestedRegisterDevice fail !!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/eg;->b:Ljava/lang/String;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/eg;->a:I

    invoke-static {p1, v2, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->setResult(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->a(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->finish()V
    :try_end_90a
    .catch Ljava/lang/ClassCastException; {:try_start_8a3 .. :try_end_90a} :catch_890

    goto/16 :goto_49

    :cond_90c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->e(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->w(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_a92

    :try_start_91d
    iget-wide v0, v1, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dk;

    if-eqz v0, :cond_a81

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/dk;->a:I

    if-nez v1, :cond_a81

    :goto_92b
    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/dk;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v2, v1, :cond_96e

    :goto_933
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    const v2, 0x7f0a01a0

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->v(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Z

    move-result v0

    if-eqz v0, :cond_a8a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->setResult(I)V

    :goto_954
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->finish()V
    :try_end_959
    .catch Ljava/lang/ClassCastException; {:try_start_91d .. :try_end_959} :catch_95b

    goto/16 :goto_49

    :catch_95b
    move-exception v0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->e(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v1, 0xf

    invoke-static {v1, v7}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->d(Lcom/sdgtl/mediahub/spr/common/SignInFlow;J)V

    goto/16 :goto_49

    :cond_96e
    :try_start_96e
    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/dk;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/common/dl;

    iget v3, v1, Lcom/sdgtl/mediahub/spr/common/dl;->a:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    new-instance v4, Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-virtual {v5}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f030040

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-static {v1, v4}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->a(Lcom/sdgtl/mediahub/spr/common/SignInFlow;Landroid/widget/RemoteViews;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->x(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Landroid/widget/RemoteViews;

    move-result-object v1

    const v4, 0x7f0d00fc

    const v5, 0x7f02007d

    invoke-virtual {v1, v4, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->x(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Landroid/widget/RemoteViews;

    move-result-object v1

    const v4, 0x7f0d00f5

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    const v6, 0x7f0a0092

    invoke-virtual {v5, v6}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->x(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Landroid/widget/RemoteViews;

    move-result-object v4

    const v5, 0x7f0d00fd

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/dk;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/common/dl;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/dl;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->x(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Landroid/widget/RemoteViews;

    move-result-object v4

    const v5, 0x7f0d00ab

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v1, "( "

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/dk;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/common/dl;

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/dl;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " )"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    new-instance v4, Landroid/content/Intent;

    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v8, :cond_a7a

    const-class v1, Lcom/sdgtl/mediahub/spr/screen/land/TvStoreSeasonDetailLand;

    :goto_9fe
    invoke-direct {v4, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "product_id"

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-static {p1, v3, v4, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    invoke-static {v1, v5}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->a(Lcom/sdgtl/mediahub/spr/common/SignInFlow;Landroid/app/Notification;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->y(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Landroid/app/Notification;

    move-result-object v5

    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v8, :cond_a7d

    const v1, 0x7f02007e

    :goto_a29
    iput v1, v5, Landroid/app/Notification;->icon:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->y(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Landroid/app/Notification;

    move-result-object v1

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    const v6, 0x7f0a0035

    invoke-virtual {v5, v6}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->y(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Landroid/app/Notification;

    move-result-object v1

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->x(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Landroid/widget/RemoteViews;

    move-result-object v5

    iput-object v5, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->y(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Landroid/app/Notification;

    move-result-object v1

    iput-object v4, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->y(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Landroid/app/Notification;

    move-result-object v1

    iget v4, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v1, Landroid/app/Notification;->flags:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->z(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Landroid/app/NotificationManager;

    move-result-object v1

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->y(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->y(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Landroid/app/Notification;

    move-result-object v1

    const/4 v3, 0x0

    iput-object v3, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_92b

    :cond_a7a
    const-class v1, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    goto :goto_9fe

    :cond_a7d
    const v1, 0x7f02007d

    goto :goto_a29

    :cond_a81
    const-string v0, "MediaHubSignIn"

    const-string v1, "mRequestIdNewEpisode fail !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_933

    :cond_a8a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->setResult(I)V
    :try_end_a90
    .catch Ljava/lang/ClassCastException; {:try_start_96e .. :try_end_a90} :catch_95b

    goto/16 :goto_954

    :cond_a92
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->e(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->A(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_49

    :try_start_aa3
    iget-wide v0, v1, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cm;

    if-eqz v0, :cond_b5c

    const-string v1, "MediaHubSignIn"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RefreshToken MH_REQ_AUTH_ACCESS_BY_REFRESH_TOKEN user_token == "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/cm;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / refresh_token == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/cm;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MediaHubSignIn"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "RefreshToken Request UserToken start mError = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/cm;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / mError_code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/cm;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / mError_description = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/cm;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_afd
    if-eqz v0, :cond_b64

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/cm;->d:Ljava/lang/String;

    if-eqz v1, :cond_b64

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->a(Lcom/sdgtl/mediahub/spr/common/SignInFlow;Z)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/cm;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->a(Lcom/sdgtl/mediahub/spr/common/SignInFlow;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cm;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->b(Lcom/sdgtl/mediahub/spr/common/SignInFlow;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "user_token"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->h(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->e(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v2, 0xe

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->e(Lcom/sdgtl/mediahub/spr/common/SignInFlow;J)V
    :try_end_b37
    .catch Ljava/lang/ClassCastException; {:try_start_aa3 .. :try_end_b37} :catch_b39

    goto/16 :goto_49

    :catch_b39
    move-exception v0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "refresh_Token"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->i(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->e(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v2, 0x33

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->g(Lcom/sdgtl/mediahub/spr/common/SignInFlow;J)V

    goto/16 :goto_49

    :cond_b5c
    :try_start_b5c
    const-string v1, "MediaHubSignIn"

    const-string v2, "RefreshToken a***A*****T**** == null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_afd

    :cond_b64
    const-string v0, "MediaHubSignIn"

    const-string v1, "mRequestUserTokenByRefreshToken fail !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->j(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->k(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    const v2, 0x7f0a00ae

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->setResult(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->a(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->finish()V
    :try_end_ba2
    .catch Ljava/lang/ClassCastException; {:try_start_b5c .. :try_end_ba2} :catch_b39

    goto/16 :goto_49

    :cond_ba4
    const-string v1, "com.sdgtl.mediahub.spr.drm.EVENT_PROCESSED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cb3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->B(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/gi;

    move-result-object v0

    sget-object v1, Lcom/sdgtl/mediahub/spr/common/gi;->b:Lcom/sdgtl/mediahub/spr/common/gi;

    if-ne v0, v1, :cond_bdd

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    sget-object v1, Lcom/sdgtl/mediahub/spr/common/gi;->a:Lcom/sdgtl/mediahub/spr/common/gi;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->a(Lcom/sdgtl/mediahub/spr/common/SignInFlow;Lcom/sdgtl/mediahub/spr/common/gi;)V

    const-string v0, "MediaHubSignIn"

    const-string v1, "joinDomain OK !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaHubSignIn"

    const-string v1, "mRequestedRegisterDevice start !!! "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->e(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v1, 0x17

    invoke-static {v1, v7}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->h(Lcom/sdgtl/mediahub/spr/common/SignInFlow;J)V

    goto/16 :goto_49

    :cond_bdd
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->B(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/gi;

    move-result-object v0

    sget-object v1, Lcom/sdgtl/mediahub/spr/common/gi;->c:Lcom/sdgtl/mediahub/spr/common/gi;

    if-ne v0, v1, :cond_c63

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    sget-object v1, Lcom/sdgtl/mediahub/spr/common/gi;->d:Lcom/sdgtl/mediahub/spr/common/gi;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->a(Lcom/sdgtl/mediahub/spr/common/SignInFlow;Lcom/sdgtl/mediahub/spr/common/gi;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->d(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/cw;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cw;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cp;

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/cp;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->d(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/cw;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cw;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cp;

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/cp;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->d(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/cw;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cw;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cp;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cp;->c:Ljava/lang/String;

    invoke-static {v1, v3, v0}, Lcom/sdgtl/mediahub/spr/d/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v1, "MediaHubDRM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "l****D*****R***** == "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->b(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->f(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    sget-object v1, Lcom/sdgtl/mediahub/spr/common/gi;->a:Lcom/sdgtl/mediahub/spr/common/gi;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->a(Lcom/sdgtl/mediahub/spr/common/SignInFlow;Lcom/sdgtl/mediahub/spr/common/gi;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-virtual {v1, v5}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    const v3, 0x7f0a00e1

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->h:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto/16 :goto_49

    :cond_c63
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->B(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/gi;

    move-result-object v0

    sget-object v1, Lcom/sdgtl/mediahub/spr/common/gi;->d:Lcom/sdgtl/mediahub/spr/common/gi;

    if-ne v0, v1, :cond_49

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    sget-object v1, Lcom/sdgtl/mediahub/spr/common/gi;->a:Lcom/sdgtl/mediahub/spr/common/gi;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->a(Lcom/sdgtl/mediahub/spr/common/SignInFlow;Lcom/sdgtl/mediahub/spr/common/gi;)V

    const-string v0, "MediaHubSignIn"

    const-string v1, "LeaveDomain OK !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MediaHubSignIn"

    const-string v1, "mRequestIdRemoveDevices start !!! "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "delete_device_uid"

    invoke-virtual {v1, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "old_user_id"

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->d(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/cw;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cw;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cp;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cp;->a:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->e(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v2, 0x1a

    invoke-static {v2, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->b(Lcom/sdgtl/mediahub/spr/common/SignInFlow;J)V

    goto/16 :goto_49

    :cond_cb3
    const-string v1, "com.sdgtl.mediahub.spr.drm.EVENT_NOT_PROCESSED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d1d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->b(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->f(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->B(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/gi;

    move-result-object v0

    sget-object v1, Lcom/sdgtl/mediahub/spr/common/gi;->d:Lcom/sdgtl/mediahub/spr/common/gi;

    if-eq v0, v1, :cond_cd9

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->B(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)Lcom/sdgtl/mediahub/spr/common/gi;

    move-result-object v0

    sget-object v1, Lcom/sdgtl/mediahub/spr/common/gi;->c:Lcom/sdgtl/mediahub/spr/common/gi;

    if-ne v0, v1, :cond_cf3

    :cond_cd9
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-virtual {v1, v5}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    const v3, 0x7f0a00e1

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->h:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto/16 :goto_49

    :cond_cf3
    const-string v0, "MediaHubSignIn"

    const-string v1, "Drm Domain fail !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    const v3, 0x7f0a019f

    invoke-virtual {v1, v3}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-virtual {v0, v4}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->setResult(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->a(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    :cond_d16
    :goto_d16
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->finish()V

    goto/16 :goto_49

    :cond_d1d
    const-string v1, "com.osp.app.signin.mediahub.RemoveResponse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->f(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    if-eqz p2, :cond_d16

    const-string v0, "MediaHubSignIn"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "intent.getBooleanExtra(remove, false) == "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "remove"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "remove"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d16

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->j(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->k(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->l(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->c(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/common/fx;->a:Lcom/sdgtl/mediahub/spr/common/SignInFlow;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/SignInFlow;->a(Lcom/sdgtl/mediahub/spr/common/SignInFlow;)V

    goto :goto_d16
.end method
