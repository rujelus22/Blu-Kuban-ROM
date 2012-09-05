.class final Lcom/sdgtl/mediahub/spr/f;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/Main;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/Main;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/f;)Lcom/sdgtl/mediahub/spr/Main;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    return-object v0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16

    const/16 v2, 0xe

    const/16 v10, 0xa

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz p2, :cond_6a

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6a

    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.READY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b5

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->i(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    move-result-object v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->l(Lcom/sdgtl/mediahub/spr/Main;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->h(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/gk;->i(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/gk;->j(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-virtual {v3}, Lcom/sdgtl/mediahub/spr/Main;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "install_non_market_apps"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->a()Z

    move-result v4

    if-eqz v4, :cond_6b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    const v3, 0x7f0a00d4

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/Main;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    const v4, 0x7f0a002c

    invoke-virtual {v3, v4}, Lcom/sdgtl/mediahub/spr/Main;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v4, v4, Lcom/sdgtl/mediahub/spr/Main;->h:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sdgtl/mediahub/spr/Main;->a(Lcom/sdgtl/mediahub/spr/Main;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Handler;)V

    :cond_65
    :goto_65
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->n(Lcom/sdgtl/mediahub/spr/Main;)V

    :cond_6a
    :goto_6a
    return-void

    :cond_6b
    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->c()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    const v3, 0x7f0a00d4

    invoke-virtual {v2, v3}, Lcom/sdgtl/mediahub/spr/Main;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    const v4, 0x7f0a002b

    invoke-virtual {v3, v4}, Lcom/sdgtl/mediahub/spr/Main;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v4, v4, Lcom/sdgtl/mediahub/spr/Main;->h:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sdgtl/mediahub/spr/Main;->a(Lcom/sdgtl/mediahub/spr/Main;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/os/Handler;)V

    goto :goto_65

    :cond_8f
    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/a/a;->c(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_aa

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    const v2, 0x7f0a002d

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/Main;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/Main;->h:Landroid/os/Handler;

    invoke-static {v0, v7, v1, v2}, Lcom/sdgtl/mediahub/spr/Main;->a(Lcom/sdgtl/mediahub/spr/Main;ILjava/lang/CharSequence;Landroid/os/Handler;)V

    goto :goto_65

    :cond_aa
    if-nez v0, :cond_ca

    if-nez v3, :cond_bc

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/Main;->d:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->b(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Lcom/sdgtl/mediahub/spr/common/a;)V

    goto :goto_65

    :cond_bc
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/Main;->e:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->c(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Lcom/sdgtl/mediahub/spr/common/a;)V

    goto :goto_65

    :cond_ca
    if-nez v2, :cond_131

    if-nez v1, :cond_131

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ne v0, v6, :cond_131

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_fa

    if-nez v3, :cond_eb

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/Main;->d:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->b(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Lcom/sdgtl/mediahub/spr/common/a;)V

    goto/16 :goto_65

    :cond_eb
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/Main;->g:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->c(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Lcom/sdgtl/mediahub/spr/common/a;)V

    goto/16 :goto_65

    :cond_fa
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/Main;->f()Z

    move-result v0

    if-eqz v0, :cond_122

    if-nez v3, :cond_113

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/Main;->d:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->b(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Lcom/sdgtl/mediahub/spr/common/a;)V

    goto/16 :goto_65

    :cond_113
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/Main;->f:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->c(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Lcom/sdgtl/mediahub/spr/common/a;)V

    goto/16 :goto_65

    :cond_122
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/Main;->f:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/common/a;->c(Landroid/content/Context;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Lcom/sdgtl/mediahub/spr/common/a;)V

    goto/16 :goto_65

    :cond_131
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_18f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->m(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/c/a;

    move-result-object v0

    if-nez v0, :cond_14c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/Main;->a(Lcom/sdgtl/mediahub/spr/Main;Lcom/sdgtl/mediahub/spr/c/a;)V

    :cond_14c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->m(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/c/a;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17e

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17e

    move v0, v6

    :goto_160
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/Main;->f(Lcom/sdgtl/mediahub/spr/Main;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_16a

    if-nez v0, :cond_180

    :cond_16a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    const v2, 0x7f0a002e

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/Main;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/Main;->c:Landroid/os/Handler;

    invoke-static {v0, v7, v1, v2}, Lcom/sdgtl/mediahub/spr/Main;->a(Lcom/sdgtl/mediahub/spr/Main;ILjava/lang/CharSequence;Landroid/os/Handler;)V

    goto/16 :goto_65

    :cond_17e
    move v0, v7

    goto :goto_160

    :cond_180
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->A()I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iput-boolean v6, v0, Lcom/sdgtl/mediahub/spr/Main;->a:Z

    goto/16 :goto_65

    :cond_18f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->j(Lcom/sdgtl/mediahub/spr/Main;)Z

    move-result v0

    if-nez v0, :cond_65

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->k(Lcom/sdgtl/mediahub/spr/Main;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/view/View;)V

    invoke-static {v7}, Lcom/sdgtl/mediahub/spr/Main;->b(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/Main;->i(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v6, v8}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/Main;->a(Lcom/sdgtl/mediahub/spr/Main;J)V

    goto/16 :goto_65

    :cond_1b5
    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_aa1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6a

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/Main;->i(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    move-result-object v1

    if-eqz v1, :cond_6a

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/Main;->i(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/os/Bundle;)Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    move-result-object v11

    const/4 v9, -0x1

    const-string v1, "response_msg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_269

    const-string v1, "error_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v1, "error_msg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/Main;->o(Lcom/sdgtl/mediahub/spr/Main;)Z

    move-result v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/Main;->e(Lcom/sdgtl/mediahub/spr/Main;)Z

    move-result v2

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v5, v5, Lcom/sdgtl/mediahub/spr/Main;->k:Landroid/os/Handler;

    invoke-static/range {v0 .. v5}, Lcom/sdgtl/mediahub/spr/contentProvider/n;->a(Landroid/content/Context;ZZILjava/lang/String;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->k(Lcom/sdgtl/mediahub/spr/Main;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->b(Landroid/view/View;)V

    if-ne v3, v10, :cond_cf8

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->i(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->p(Lcom/sdgtl/mediahub/spr/Main;)J

    move-result-wide v0

    invoke-static {v11, v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-nez v0, :cond_cf8

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->h(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/ao;

    move-result-object v0

    sget-object v1, Lcom/sdgtl/mediahub/spr/ao;->b:Lcom/sdgtl/mediahub/spr/ao;

    if-eq v0, v1, :cond_cf8

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_cf8

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->i(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    move-result-object v0

    if-eqz v0, :cond_cf8

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_cf8

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->j(Lcom/sdgtl/mediahub/spr/Main;)Z

    move-result v0

    if-nez v0, :cond_cf8

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->k(Lcom/sdgtl/mediahub/spr/Main;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/view/View;)V

    invoke-static {v7}, Lcom/sdgtl/mediahub/spr/Main;->b(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/Main;->i(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v6, v8}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/Main;->a(Lcom/sdgtl/mediahub/spr/Main;J)V

    move-object v0, v8

    move v1, v9

    :goto_262
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v2, v1, v8, v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Lcom/sdgtl/mediahub/spr/Main;ILjava/lang/CharSequence;Landroid/os/Handler;)V

    goto/16 :goto_6a

    :cond_269
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->i(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->p(Lcom/sdgtl/mediahub/spr/Main;)J

    move-result-wide v0

    invoke-static {v11, v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_493

    :try_start_27a
    iget-wide v0, v11, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/ec;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->b(Lcom/sdgtl/mediahub/spr/common/ec;)V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/Main;->g()Lcom/sdgtl/mediahub/spr/common/ec;

    move-result-object v0

    if-eqz v0, :cond_470

    invoke-static {}, Lcom/sdgtl/mediahub/spr/Main;->g()Lcom/sdgtl/mediahub/spr/common/ec;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ec;->a:I

    if-nez v0, :cond_40c

    invoke-static {}, Lcom/sdgtl/mediahub/spr/Main;->g()Lcom/sdgtl/mediahub/spr/common/ec;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/ec;->q:Ljava/lang/String;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/Main;->g()Lcom/sdgtl/mediahub/spr/common/ec;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/ec;->r:Ljava/lang/String;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/Main;->g()Lcom/sdgtl/mediahub/spr/common/ec;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ec;->o:Ljava/lang/String;

    if-eqz v0, :cond_3fe

    invoke-static {}, Lcom/sdgtl/mediahub/spr/Main;->g()Lcom/sdgtl/mediahub/spr/common/ec;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ec;->o:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v2, :cond_3fe

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/Main;->g()Lcom/sdgtl/mediahub/spr/common/ec;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/ec;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/Main;->g()Lcom/sdgtl/mediahub/spr/common/ec;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/ec;->o:Ljava/lang/String;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/gk;->n(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_34b

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->b(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sdgtl.mediahub.spr.download.ACTION_DOWNLOAD_UI_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/Main;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->q(Lcom/sdgtl/mediahub/spr/Main;)Z

    move-result v0

    if-nez v0, :cond_318

    invoke-static {}, Lcom/sdgtl/mediahub/spr/Main;->g()Lcom/sdgtl/mediahub/spr/common/ec;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ec;->c:Ljava/lang/String;

    if-eqz v0, :cond_318

    invoke-static {}, Lcom/sdgtl/mediahub/spr/Main;->g()Lcom/sdgtl/mediahub/spr/common/ec;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ec;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_318

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->r(Lcom/sdgtl/mediahub/spr/Main;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/Main;->g()Lcom/sdgtl/mediahub/spr/common/ec;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/ec;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/a;->b(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Lcom/sdgtl/mediahub/spr/common/a;)V

    :cond_318
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/download/a;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/download/a;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/Main;->i(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/Main;->b(Lcom/sdgtl/mediahub/spr/Main;J)V

    :goto_332
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/d/b;->a(Landroid/content/Context;)V
    :try_end_337
    .catch Ljava/lang/ClassCastException; {:try_start_27a .. :try_end_337} :catch_3e8

    move-object v0, v8

    move-object v1, v8

    move v2, v9

    :goto_33a
    :try_start_33a
    invoke-static {}, Lcom/sdgtl/mediahub/spr/Main;->h()Lcom/sdgtl/mediahub/spr/Main;

    move-result-object v3

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/Main;->m(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/c/a;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/c/a;)V
    :try_end_347
    .catch Ljava/lang/ClassCastException; {:try_start_33a .. :try_end_347} :catch_cec

    move-object v8, v1

    move v1, v2

    goto/16 :goto_262

    :cond_34b
    :try_start_34b
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/Main;->g()Lcom/sdgtl/mediahub/spr/common/ec;

    move-result-object v3

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sdgtl/mediahub/spr/common/ec;->r:Ljava/lang/String;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/Main;->g()Lcom/sdgtl/mediahub/spr/common/ec;

    move-result-object v3

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/sdgtl/mediahub/spr/common/ec;->q:Ljava/lang/String;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "Z"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/Main;->g()Lcom/sdgtl/mediahub/spr/common/ec;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    const v5, 0x7f0a01d6

    invoke-virtual {v4, v5}, Lcom/sdgtl/mediahub/spr/Main;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x3

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v4, 0x5

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/sdgtl/mediahub/spr/common/ec;->s:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "gmt"

    invoke-static {}, Lcom/sdgtl/mediahub/spr/Main;->g()Lcom/sdgtl/mediahub/spr/common/ec;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/ec;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "server_time"

    invoke-static {}, Lcom/sdgtl/mediahub/spr/Main;->g()Lcom/sdgtl/mediahub/spr/common/ec;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/ec;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "my_time"

    invoke-static {}, Lcom/sdgtl/mediahub/spr/Main;->g()Lcom/sdgtl/mediahub/spr/common/ec;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/ec;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->K:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p1, v1, v0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V
    :try_end_3e6
    .catch Ljava/lang/ClassCastException; {:try_start_34b .. :try_end_3e6} :catch_3e8

    goto/16 :goto_332

    :catch_3e8
    move-exception v0

    move-object v0, v8

    move-object v1, v8

    move v2, v9

    :goto_3ec
    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/Main;->i(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v6, v8}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/Main;->a(Lcom/sdgtl/mediahub/spr/Main;J)V

    move-object v8, v1

    move v1, v2

    goto/16 :goto_262

    :cond_3fe
    const v0, 0x7f0a01c7

    :try_start_401
    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
    :try_end_404
    .catch Ljava/lang/ClassCastException; {:try_start_401 .. :try_end_404} :catch_ce1

    move-result-object v1

    :try_start_405
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/Main;->l:Landroid/os/Handler;
    :try_end_409
    .catch Ljava/lang/ClassCastException; {:try_start_405 .. :try_end_409} :catch_ce7

    move v2, v10

    goto/16 :goto_33a

    :cond_40c
    :try_start_40c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->k(Lcom/sdgtl/mediahub/spr/Main;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    sget-object v1, Lcom/sdgtl/mediahub/spr/ao;->a:Lcom/sdgtl/mediahub/spr/ao;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/Main;->a(Lcom/sdgtl/mediahub/spr/Main;Lcom/sdgtl/mediahub/spr/ao;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->q(Lcom/sdgtl/mediahub/spr/Main;)Z

    move-result v0

    if-nez v0, :cond_458

    invoke-static {}, Lcom/sdgtl/mediahub/spr/Main;->g()Lcom/sdgtl/mediahub/spr/common/ec;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ec;->c:Ljava/lang/String;

    if-eqz v0, :cond_458

    invoke-static {}, Lcom/sdgtl/mediahub/spr/Main;->g()Lcom/sdgtl/mediahub/spr/common/ec;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ec;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_458

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->r(Lcom/sdgtl/mediahub/spr/Main;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/Main;->g()Lcom/sdgtl/mediahub/spr/common/ec;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/ec;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/Main;->l:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/a;->b(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Lcom/sdgtl/mediahub/spr/common/a;)V
    :try_end_454
    .catch Ljava/lang/ClassCastException; {:try_start_40c .. :try_end_454} :catch_3e8

    move-object v0, v8

    move v1, v9

    goto/16 :goto_262

    :cond_458
    :try_start_458
    invoke-static {}, Lcom/sdgtl/mediahub/spr/Main;->g()Lcom/sdgtl/mediahub/spr/common/ec;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ec;->b:Ljava/lang/String;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/Main;->g()Lcom/sdgtl/mediahub/spr/common/ec;

    move-result-object v1

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/ec;->a:I

    invoke-static {p1, v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_467
    .catch Ljava/lang/ClassCastException; {:try_start_458 .. :try_end_467} :catch_ce1

    move-result-object v1

    :try_start_468
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/Main;->l:Landroid/os/Handler;
    :try_end_46c
    .catch Ljava/lang/ClassCastException; {:try_start_468 .. :try_end_46c} :catch_ce7

    move-object v8, v1

    move v1, v10

    goto/16 :goto_262

    :cond_470
    :try_start_470
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->k(Lcom/sdgtl/mediahub/spr/Main;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    sget-object v1, Lcom/sdgtl/mediahub/spr/ao;->a:Lcom/sdgtl/mediahub/spr/ao;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/Main;->a(Lcom/sdgtl/mediahub/spr/Main;Lcom/sdgtl/mediahub/spr/ao;)V
    :try_end_482
    .catch Ljava/lang/ClassCastException; {:try_start_470 .. :try_end_482} :catch_3e8

    :try_start_482
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/Main;->getText(I)Ljava/lang/CharSequence;
    :try_end_48a
    .catch Ljava/lang/ClassCastException; {:try_start_482 .. :try_end_48a} :catch_cef

    move-result-object v1

    :try_start_48b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/Main;->i:Landroid/os/Handler;
    :try_end_48f
    .catch Ljava/lang/ClassCastException; {:try_start_48b .. :try_end_48f} :catch_cf4

    move-object v8, v1

    move v1, v2

    goto/16 :goto_262

    :cond_493
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->i(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->s(Lcom/sdgtl/mediahub/spr/Main;)J

    move-result-wide v0

    invoke-static {v11, v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_67d

    :try_start_4a4
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-wide v3, v11, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v3, v4}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dg;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Lcom/sdgtl/mediahub/spr/Main;Lcom/sdgtl/mediahub/spr/common/dg;)V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/Main;->g()Lcom/sdgtl/mediahub/spr/common/ec;

    move-result-object v0

    if-eqz v0, :cond_667

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->t(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/common/dg;

    move-result-object v0

    if-eqz v0, :cond_667

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->t(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/common/dg;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/dg;->a:I

    if-nez v0, :cond_645

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    sget-object v1, Lcom/sdgtl/mediahub/spr/ao;->c:Lcom/sdgtl/mediahub/spr/ao;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/Main;->a(Lcom/sdgtl/mediahub/spr/Main;Lcom/sdgtl/mediahub/spr/ao;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->u(Lcom/sdgtl/mediahub/spr/Main;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/Main;->i(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/Main;->c(Lcom/sdgtl/mediahub/spr/Main;J)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->v(Lcom/sdgtl/mediahub/spr/Main;)Z

    move-result v0

    if-eqz v0, :cond_50e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->w(Lcom/sdgtl/mediahub/spr/Main;)I

    move-result v0

    if-eqz v0, :cond_50e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/Main;->w(Lcom/sdgtl/mediahub/spr/Main;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/Main;->a(Lcom/sdgtl/mediahub/spr/Main;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_50e

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/Main;->w(Lcom/sdgtl/mediahub/spr/Main;)I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Lcom/sdgtl/mediahub/spr/Main;ILjava/lang/String;)V

    :cond_50e
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "product_Type_Code"

    const-string v2, "01"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/Main;->i(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v2, 0x7

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/Main;->d(Lcom/sdgtl/mediahub/spr/Main;J)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "product_Type_Code"

    const-string v2, "02"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/Main;->i(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v2, 0x7

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/Main;->e(Lcom/sdgtl/mediahub/spr/Main;J)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "product_Type_Code"

    const-string v2, "00"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "end_num"

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/Main;->i(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v2, 0xc

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/Main;->f(Lcom/sdgtl/mediahub/spr/Main;J)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->A()I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/c/a;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "device_status"

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/Main;->t(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/common/dg;

    move-result-object v3

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/dg;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "device_old_user_id"

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/Main;->t(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/common/dg;

    move-result-object v3

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/dg;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_5e5

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    sget-object v2, Lcom/sdgtl/mediahub/spr/ar;->F:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    :cond_5a2
    :goto_5a2
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->m(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/c/a;

    move-result-object v0

    if-nez v0, :cond_5b3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/c/a;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/c/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/Main;->a(Lcom/sdgtl/mediahub/spr/Main;Lcom/sdgtl/mediahub/spr/c/a;)V

    :cond_5b3
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->m(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->t(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/common/dg;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/dg;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/c/a;->b(Ljava/lang/String;)J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->m(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->t(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/common/dg;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/dg;->f:I

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/c/a;->a(I)J
    :try_end_5d3
    .catch Ljava/lang/ClassCastException; {:try_start_4a4 .. :try_end_5d3} :catch_5fa

    move-object v0, v8

    move-object v1, v8

    move v2, v9

    :goto_5d6
    :try_start_5d6
    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/Main;->k(Lcom/sdgtl/mediahub/spr/Main;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/Main;->b(Landroid/view/View;)V
    :try_end_5e1
    .catch Ljava/lang/ClassCastException; {:try_start_5d6 .. :try_end_5e1} :catch_cde

    move-object v8, v1

    move v1, v2

    goto/16 :goto_262

    :cond_5e5
    :try_start_5e5
    invoke-static {}, Lcom/sdgtl/mediahub/spr/Main;->g()Lcom/sdgtl/mediahub/spr/common/ec;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/ec;->j:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_611

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    sget-object v2, Lcom/sdgtl/mediahub/spr/ar;->F:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V
    :try_end_5f9
    .catch Ljava/lang/ClassCastException; {:try_start_5e5 .. :try_end_5f9} :catch_5fa

    goto :goto_5a2

    :catch_5fa
    move-exception v0

    move-object v0, v8

    move-object v1, v8

    move v2, v9

    :goto_5fe
    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/Main;->i(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v4, 0x2

    invoke-static {v4, v8}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/Main;->b(Lcom/sdgtl/mediahub/spr/Main;J)V

    move-object v8, v1

    move v1, v2

    goto/16 :goto_262

    :cond_611
    :try_start_611
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->t(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/common/dg;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/dg;->h:Ljava/lang/String;

    const-string v2, "02"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    sget-object v2, Lcom/sdgtl/mediahub/spr/ar;->F:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    goto/16 :goto_5a2

    :cond_62b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sdgtl/mediahub/spr/Main;->a:Z

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/ev;->b()I

    move-result v0

    invoke-static {}, Lcom/sdgtl/mediahub/spr/Main;->g()Lcom/sdgtl/mediahub/spr/common/ec;

    move-result-object v1

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/ec;->k:I

    if-ge v0, v1, :cond_5a2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/Main;->showDialog(I)V

    goto/16 :goto_5a2

    :cond_645
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    sget-object v1, Lcom/sdgtl/mediahub/spr/ao;->a:Lcom/sdgtl/mediahub/spr/ao;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/Main;->a(Lcom/sdgtl/mediahub/spr/Main;Lcom/sdgtl/mediahub/spr/ao;)V
    :try_end_64c
    .catch Ljava/lang/ClassCastException; {:try_start_611 .. :try_end_64c} :catch_5fa

    :try_start_64c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->t(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/common/dg;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/dg;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/Main;->t(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/common/dg;

    move-result-object v1

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/dg;->a:I

    invoke-static {p1, v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_65f
    .catch Ljava/lang/ClassCastException; {:try_start_64c .. :try_end_65f} :catch_cca

    move-result-object v1

    :try_start_660
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/Main;->l:Landroid/os/Handler;
    :try_end_664
    .catch Ljava/lang/ClassCastException; {:try_start_660 .. :try_end_664} :catch_cd0

    move v2, v10

    goto/16 :goto_5d6

    :cond_667
    :try_start_667
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    sget-object v1, Lcom/sdgtl/mediahub/spr/ao;->a:Lcom/sdgtl/mediahub/spr/ao;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/Main;->a(Lcom/sdgtl/mediahub/spr/Main;Lcom/sdgtl/mediahub/spr/ao;)V
    :try_end_66e
    .catch Ljava/lang/ClassCastException; {:try_start_667 .. :try_end_66e} :catch_5fa

    :try_start_66e
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/Main;->getText(I)Ljava/lang/CharSequence;
    :try_end_676
    .catch Ljava/lang/ClassCastException; {:try_start_66e .. :try_end_676} :catch_cd5

    move-result-object v1

    :try_start_677
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/Main;->i:Landroid/os/Handler;
    :try_end_67b
    .catch Ljava/lang/ClassCastException; {:try_start_677 .. :try_end_67b} :catch_cda

    goto/16 :goto_5d6

    :cond_67d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->i(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->x(Lcom/sdgtl/mediahub/spr/Main;)J

    move-result-wide v0

    invoke-static {v11, v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_6e0

    :try_start_68e
    iget-wide v0, v11, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dq;

    if-eqz v0, :cond_cf8

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/dq;->a:I

    if-nez v1, :cond_6a5

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/dq;->d:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/fl;->a(Ljava/util/ArrayList;)V
    :try_end_6a1
    .catch Ljava/lang/ClassCastException; {:try_start_68e .. :try_end_6a1} :catch_6b5

    move-object v0, v8

    move v1, v9

    goto/16 :goto_262

    :cond_6a5
    :try_start_6a5
    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/dq;->b:Ljava/lang/String;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/dq;->a:I

    invoke-static {p1, v1, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_6ac
    .catch Ljava/lang/ClassCastException; {:try_start_6a5 .. :try_end_6ac} :catch_cc0

    move-result-object v1

    :try_start_6ad
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/Main;->l:Landroid/os/Handler;
    :try_end_6b1
    .catch Ljava/lang/ClassCastException; {:try_start_6ad .. :try_end_6b1} :catch_cc5

    move-object v8, v1

    move v1, v10

    goto/16 :goto_262

    :catch_6b5
    move-exception v0

    move-object v0, v8

    move v1, v9

    :goto_6b8
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "product_Type_Code"

    const-string v4, "00"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "end_num"

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/Main;->i(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v4, 0xc

    invoke-static {v4, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/Main;->f(Lcom/sdgtl/mediahub/spr/Main;J)V

    move-object v12, v8

    move-object v8, v0

    move-object v0, v12

    goto/16 :goto_262

    :cond_6e0
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->i(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->y(Lcom/sdgtl/mediahub/spr/Main;)J

    move-result-wide v0

    invoke-static {v11, v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_739

    :try_start_6f1
    iget-wide v0, v11, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/ej;

    if-eqz v0, :cond_cf8

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/ej;->a:I

    if-nez v1, :cond_cf8

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/fl;->a(Lcom/sdgtl/mediahub/spr/common/ej;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ej;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->i(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Ljava/util/ArrayList;I)J
    :try_end_715
    .catch Ljava/lang/ClassCastException; {:try_start_6f1 .. :try_end_715} :catch_719

    move-object v0, v8

    move v1, v9

    goto/16 :goto_262

    :catch_719
    move-exception v0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "product_Type_Code"

    const-string v2, "01"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/Main;->i(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v2, 0x7

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/Main;->d(Lcom/sdgtl/mediahub/spr/Main;J)V

    move-object v0, v8

    move v1, v9

    goto/16 :goto_262

    :cond_739
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->i(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->z(Lcom/sdgtl/mediahub/spr/Main;)J

    move-result-wide v0

    invoke-static {v11, v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_792

    :try_start_74a
    iget-wide v0, v11, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/ej;

    if-eqz v0, :cond_cf8

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/ej;->a:I

    if-nez v1, :cond_cf8

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/fl;->b(Lcom/sdgtl/mediahub/spr/common/ej;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ej;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->i(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Ljava/util/ArrayList;I)J
    :try_end_76e
    .catch Ljava/lang/ClassCastException; {:try_start_74a .. :try_end_76e} :catch_772

    move-object v0, v8

    move v1, v9

    goto/16 :goto_262

    :catch_772
    move-exception v0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "product_Type_Code"

    const-string v2, "02"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/Main;->i(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v2, 0x7

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/Main;->e(Lcom/sdgtl/mediahub/spr/Main;J)V

    move-object v0, v8

    move v1, v9

    goto/16 :goto_262

    :cond_792
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->i(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->A(Lcom/sdgtl/mediahub/spr/Main;)J

    move-result-wide v0

    invoke-static {v11, v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_863

    :try_start_7a3
    iget-wide v0, v11, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/ek;

    if-eqz v0, :cond_83b

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Lcom/sdgtl/mediahub/spr/Main;Lcom/sdgtl/mediahub/spr/common/ek;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->B(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->a:I

    if-nez v0, :cond_7fa

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->C(Lcom/sdgtl/mediahub/spr/Main;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/Main;->i(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/Main;->g(Lcom/sdgtl/mediahub/spr/Main;J)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->D(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    move-result-object v0

    new-instance v1, Lcom/sdgtl/mediahub/spr/g;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/g;-><init>(Lcom/sdgtl/mediahub/spr/f;)V

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->k(Lcom/sdgtl/mediahub/spr/Main;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sdgtl.mediahub.spr.widget.update"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/Main;->sendBroadcast(Landroid/content/Intent;)V

    move-object v0, v8

    move v1, v9

    goto/16 :goto_262

    :cond_7fa
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->B(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->a:I

    const/16 v1, 0x2329

    if-eq v0, v1, :cond_810

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->B(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->d:I

    if-nez v0, :cond_81f

    :cond_810
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->k(Lcom/sdgtl/mediahub/spr/Main;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->b(Landroid/view/View;)V
    :try_end_81b
    .catch Ljava/lang/ClassCastException; {:try_start_7a3 .. :try_end_81b} :catch_84c

    move-object v0, v8

    move v1, v9

    goto/16 :goto_262

    :cond_81f
    :try_start_81f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->B(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/Main;->B(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v1

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/ek;->a:I

    invoke-static {p1, v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_832
    .catch Ljava/lang/ClassCastException; {:try_start_81f .. :try_end_832} :catch_cac

    move-result-object v1

    :try_start_833
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/Main;->l:Landroid/os/Handler;
    :try_end_837
    .catch Ljava/lang/ClassCastException; {:try_start_833 .. :try_end_837} :catch_cb1

    move-object v8, v1

    move v1, v10

    goto/16 :goto_262

    :cond_83b
    :try_start_83b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/Main;->getText(I)Ljava/lang/CharSequence;
    :try_end_843
    .catch Ljava/lang/ClassCastException; {:try_start_83b .. :try_end_843} :catch_cb6

    move-result-object v1

    :try_start_844
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/Main;->i:Landroid/os/Handler;
    :try_end_848
    .catch Ljava/lang/ClassCastException; {:try_start_844 .. :try_end_848} :catch_cbb

    move-object v8, v1

    move v1, v2

    goto/16 :goto_262

    :catch_84c
    move-exception v0

    move-object v0, v8

    move v1, v9

    :goto_84f
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/Main;->i(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v3, 0x5

    invoke-static {v3, v8}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/sdgtl/mediahub/spr/Main;->c(Lcom/sdgtl/mediahub/spr/Main;J)V

    move-object v12, v8

    move-object v8, v0

    move-object v0, v12

    goto/16 :goto_262

    :cond_863
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->i(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->G(Lcom/sdgtl/mediahub/spr/Main;)J

    move-result-wide v0

    invoke-static {v11, v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_8e0

    :try_start_874
    iget-wide v0, v11, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dx;

    if-eqz v0, :cond_8b8

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/dx;->a:I

    if-nez v1, :cond_8a4

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/Main;->H(Lcom/sdgtl/mediahub/spr/Main;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Lcom/sdgtl/mediahub/spr/Main;Lcom/sdgtl/mediahub/spr/common/dx;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->I(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/ae;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/Main;->J(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/common/dx;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/ae;->a(Lcom/sdgtl/mediahub/spr/common/dx;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->K(Lcom/sdgtl/mediahub/spr/Main;)V

    move-object v0, v8

    move v1, v9

    goto/16 :goto_262

    :cond_8a4
    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/dx;->b:Ljava/lang/String;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/dx;->a:I

    invoke-static {p1, v1, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_8b4
    .catch Ljava/lang/ClassCastException; {:try_start_874 .. :try_end_8b4} :catch_8c9

    move-object v0, v8

    move v1, v9

    goto/16 :goto_262

    :cond_8b8
    :try_start_8b8
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/Main;->getText(I)Ljava/lang/CharSequence;
    :try_end_8c0
    .catch Ljava/lang/ClassCastException; {:try_start_8b8 .. :try_end_8c0} :catch_ca2

    move-result-object v1

    :try_start_8c1
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/Main;->i:Landroid/os/Handler;
    :try_end_8c5
    .catch Ljava/lang/ClassCastException; {:try_start_8c1 .. :try_end_8c5} :catch_ca7

    move-object v8, v1

    move v1, v2

    goto/16 :goto_262

    :catch_8c9
    move-exception v0

    move-object v0, v8

    move v1, v9

    :goto_8cc
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/Main;->i(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v3, 0x6

    invoke-static {v3, v8}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/sdgtl/mediahub/spr/Main;->g(Lcom/sdgtl/mediahub/spr/Main;J)V

    move-object v12, v8

    move-object v8, v0

    move-object v0, v12

    goto/16 :goto_262

    :cond_8e0
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->i(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->L(Lcom/sdgtl/mediahub/spr/Main;)J

    move-result-wide v0

    invoke-static {v11, v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_a0a

    :try_start_8f1
    iget-wide v0, v11, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cs;

    if-eqz v0, :cond_9da

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/cs;->a:I

    if-nez v1, :cond_9cc

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/cs;->c:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/cs;->d:Ljava/lang/String;

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/cs;->b:Ljava/lang/String;

    if-eqz v1, :cond_9bd

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/cs;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_9bd

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/cs;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/gk;->n(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_936

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->b(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sdgtl.mediahub.spr.download.ACTION_DOWNLOAD_UI_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/Main;->sendBroadcast(Landroid/content/Intent;)V

    move-object v0, v8

    move v1, v9

    goto/16 :goto_262

    :cond_936
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/sdgtl/mediahub/spr/common/cs;->d:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/cs;->c:Ljava/lang/String;

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "Z"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    const v5, 0x7f0a01d6

    invoke-virtual {v4, v5}, Lcom/sdgtl/mediahub/spr/Main;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/cs;->e:Ljava/lang/String;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "gmt"

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/cs;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "server_time"

    iget-object v3, v0, Lcom/sdgtl/mediahub/spr/common/cs;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "my_time"

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cs;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sdgtl/mediahub/spr/ar;->K:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {p1, v0, v1}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V
    :try_end_9b9
    .catch Ljava/lang/ClassCastException; {:try_start_8f1 .. :try_end_9b9} :catch_9f2

    move-object v0, v8

    move v1, v9

    goto/16 :goto_262

    :cond_9bd
    const v0, 0x7f0a01c7

    :try_start_9c0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
    :try_end_9c3
    .catch Ljava/lang/ClassCastException; {:try_start_9c0 .. :try_end_9c3} :catch_c8e

    move-result-object v1

    :try_start_9c4
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/Main;->l:Landroid/os/Handler;
    :try_end_9c8
    .catch Ljava/lang/ClassCastException; {:try_start_9c4 .. :try_end_9c8} :catch_c93

    move-object v8, v1

    move v1, v10

    goto/16 :goto_262

    :cond_9cc
    :try_start_9cc
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    sget-object v1, Lcom/sdgtl/mediahub/spr/ao;->a:Lcom/sdgtl/mediahub/spr/ao;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/Main;->a(Lcom/sdgtl/mediahub/spr/Main;Lcom/sdgtl/mediahub/spr/ao;)V
    :try_end_9d3
    .catch Ljava/lang/ClassCastException; {:try_start_9cc .. :try_end_9d3} :catch_9f2

    :try_start_9d3
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/Main;->l:Landroid/os/Handler;
    :try_end_9d7
    .catch Ljava/lang/ClassCastException; {:try_start_9d3 .. :try_end_9d7} :catch_c8e

    move v1, v10

    goto/16 :goto_262

    :cond_9da
    :try_start_9da
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    sget-object v1, Lcom/sdgtl/mediahub/spr/ao;->a:Lcom/sdgtl/mediahub/spr/ao;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/Main;->a(Lcom/sdgtl/mediahub/spr/Main;Lcom/sdgtl/mediahub/spr/ao;)V
    :try_end_9e1
    .catch Ljava/lang/ClassCastException; {:try_start_9da .. :try_end_9e1} :catch_9f2

    :try_start_9e1
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/Main;->getText(I)Ljava/lang/CharSequence;
    :try_end_9e9
    .catch Ljava/lang/ClassCastException; {:try_start_9e1 .. :try_end_9e9} :catch_c98

    move-result-object v1

    :try_start_9ea
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/Main;->i:Landroid/os/Handler;
    :try_end_9ee
    .catch Ljava/lang/ClassCastException; {:try_start_9ea .. :try_end_9ee} :catch_c9d

    move-object v8, v1

    move v1, v2

    goto/16 :goto_262

    :catch_9f2
    move-exception v0

    move-object v0, v8

    move v1, v9

    :goto_9f5
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/Main;->i(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v3, 0x35

    invoke-static {v3, v8}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/sdgtl/mediahub/spr/Main;->h(Lcom/sdgtl/mediahub/spr/Main;J)V

    move-object v12, v8

    move-object v8, v0

    move-object v0, v12

    goto/16 :goto_262

    :cond_a0a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->i(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->M(Lcom/sdgtl/mediahub/spr/Main;)J

    move-result-wide v0

    invoke-static {v11, v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_cf8

    :try_start_a1b
    iget-wide v0, v11, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dj;

    if-eqz v0, :cond_a73

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/dj;->a:I

    if-nez v1, :cond_a4d

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sdgtl/mediahub/spr/h;

    invoke-direct {v2, p0, v0}, Lcom/sdgtl/mediahub/spr/h;-><init>(Lcom/sdgtl/mediahub/spr/f;Lcom/sdgtl/mediahub/spr/common/dj;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/dj;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->i(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Ljava/util/ArrayList;I)J

    move-object v0, v8

    move v1, v9

    goto/16 :goto_262

    :cond_a4d
    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/dj;->a:I

    const/16 v2, 0x2329

    if-eq v1, v2, :cond_a57

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/dj;->c:I

    if-nez v1, :cond_a63

    :cond_a57
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->m(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/c/a;->j()V
    :try_end_a5f
    .catch Ljava/lang/ClassCastException; {:try_start_a1b .. :try_end_a5f} :catch_a84

    move-object v0, v8

    move v1, v9

    goto/16 :goto_262

    :cond_a63
    :try_start_a63
    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/dj;->b:Ljava/lang/String;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/dj;->a:I

    invoke-static {p1, v1, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_a6a
    .catch Ljava/lang/ClassCastException; {:try_start_a63 .. :try_end_a6a} :catch_c7a

    move-result-object v1

    :try_start_a6b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/Main;->l:Landroid/os/Handler;
    :try_end_a6f
    .catch Ljava/lang/ClassCastException; {:try_start_a6b .. :try_end_a6f} :catch_c7f

    move-object v8, v1

    move v1, v10

    goto/16 :goto_262

    :cond_a73
    :try_start_a73
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/Main;->getText(I)Ljava/lang/CharSequence;
    :try_end_a7b
    .catch Ljava/lang/ClassCastException; {:try_start_a73 .. :try_end_a7b} :catch_c84

    move-result-object v1

    :try_start_a7c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/Main;->i:Landroid/os/Handler;
    :try_end_a80
    .catch Ljava/lang/ClassCastException; {:try_start_a7c .. :try_end_a80} :catch_c89

    move-object v8, v1

    move v1, v2

    goto/16 :goto_262

    :catch_a84
    move-exception v0

    move-object v0, v8

    move v1, v9

    :goto_a87
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/Main;->i(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v4, 0x23

    invoke-static {v4, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/Main;->i(Lcom/sdgtl/mediahub/spr/Main;J)V

    move-object v12, v8

    move-object v8, v0

    move-object v0, v12

    goto/16 :goto_262

    :cond_aa1
    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE_IMAGE_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6a

    const-string v1, "com.sdgtl.mediahub.spr.download.READY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6a

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b3f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/Main;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_6a

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->i(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    move-result-object v0

    if-eqz v0, :cond_6a

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->h(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/ao;

    move-result-object v0

    sget-object v1, Lcom/sdgtl/mediahub/spr/ao;->a:Lcom/sdgtl/mediahub/spr/ao;

    if-ne v0, v1, :cond_b1d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->j(Lcom/sdgtl/mediahub/spr/Main;)Z

    move-result v0

    if-nez v0, :cond_6a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->N(Lcom/sdgtl/mediahub/spr/Main;)Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->k(Lcom/sdgtl/mediahub/spr/Main;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/view/View;)V

    invoke-static {v7}, Lcom/sdgtl/mediahub/spr/Main;->b(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/Main;->i(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v6, v8}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/Main;->a(Lcom/sdgtl/mediahub/spr/Main;J)V

    goto/16 :goto_6a

    :cond_b1d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->O(Lcom/sdgtl/mediahub/spr/Main;)Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0, v7}, Lcom/sdgtl/mediahub/spr/Main;->b(Lcom/sdgtl/mediahub/spr/Main;Z)V

    invoke-static {v7}, Lcom/sdgtl/mediahub/spr/Main;->b(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/Main;->i(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v1, 0x35

    invoke-static {v1, v8}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/Main;->h(Lcom/sdgtl/mediahub/spr/Main;J)V

    goto/16 :goto_6a

    :cond_b3f
    const-string v1, "com.sdgtl.mediahub.spr.widget_start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b79

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->D(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    move-result-object v0

    if-eqz v0, :cond_6a

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6a

    const-string v0, "product_id"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6a

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/Main;->b(Lcom/sdgtl/mediahub/spr/Main;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0, v6}, Lcom/sdgtl/mediahub/spr/Main;->a(Lcom/sdgtl/mediahub/spr/Main;Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->D(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    move-result-object v0

    new-instance v1, Lcom/sdgtl/mediahub/spr/i;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/i;-><init>(Lcom/sdgtl/mediahub/spr/f;)V

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6a

    :cond_b79
    const-string v1, "com.sdgtl.mediahub.spr.widget_start_detail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bfc

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->D(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    move-result-object v0

    if-eqz v0, :cond_6a

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6a

    const-string v0, "product_id"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    const-string v2, "product_id"

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->c(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6a

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/Main;->b(Lcom/sdgtl/mediahub/spr/Main;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0, v6}, Lcom/sdgtl/mediahub/spr/Main;->a(Lcom/sdgtl/mediahub/spr/Main;Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->D(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;

    move-result-object v0

    new-instance v1, Lcom/sdgtl/mediahub/spr/j;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/j;-><init>(Lcom/sdgtl/mediahub/spr/f;)V

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/CoverFlowGL;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/sdgtl/mediahub/spr/Main;->i()Z

    move-result v0

    if-eqz v0, :cond_6a

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    const-class v2, Lcom/sdgtl/mediahub/spr/Main;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "product_id"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/Main;->w(Lcom/sdgtl/mediahub/spr/Main;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-virtual {v1, v0}, Lcom/sdgtl/mediahub/spr/Main;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/Main;->w(Lcom/sdgtl/mediahub/spr/Main;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/Main;->a(Lcom/sdgtl/mediahub/spr/Main;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6a

    const-string v2, "product_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/Main;->w(Lcom/sdgtl/mediahub/spr/Main;)I

    move-result v2

    invoke-static {v0, v2, v1}, Lcom/sdgtl/mediahub/spr/Main;->a(Lcom/sdgtl/mediahub/spr/Main;ILjava/lang/String;)V

    goto/16 :goto_6a

    :cond_bfc
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c35

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->i(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    move-result-object v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c2e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0, v7}, Lcom/sdgtl/mediahub/spr/Main;->b(Lcom/sdgtl/mediahub/spr/Main;Z)V

    invoke-static {v7}, Lcom/sdgtl/mediahub/spr/Main;->b(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/Main;->i(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v1, 0x35

    invoke-static {v1, v8}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/Main;->h(Lcom/sdgtl/mediahub/spr/Main;J)V

    goto/16 :goto_6a

    :cond_c2e
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0, v6}, Lcom/sdgtl/mediahub/spr/Main;->b(Lcom/sdgtl/mediahub/spr/Main;Z)V

    goto/16 :goto_6a

    :cond_c35
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c5c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->i(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    move-result-object v0

    if-eqz v0, :cond_6a

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/Main;->i(Lcom/sdgtl/mediahub/spr/Main;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v2, 0x23

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/Main;->i(Lcom/sdgtl/mediahub/spr/Main;J)V

    goto/16 :goto_6a

    :cond_c5c
    const-string v1, "close_detail_view"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c6b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->P(Lcom/sdgtl/mediahub/spr/Main;)V

    goto/16 :goto_6a

    :cond_c6b
    const-string v1, "exit_videohub"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/f;->a:Lcom/sdgtl/mediahub/spr/Main;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/Main;->finish()V

    goto/16 :goto_6a

    :catch_c7a
    move-exception v0

    move-object v0, v8

    move v1, v10

    goto/16 :goto_a87

    :catch_c7f
    move-exception v0

    move-object v0, v1

    move v1, v10

    goto/16 :goto_a87

    :catch_c84
    move-exception v0

    move-object v0, v8

    move v1, v2

    goto/16 :goto_a87

    :catch_c89
    move-exception v0

    move-object v0, v1

    move v1, v2

    goto/16 :goto_a87

    :catch_c8e
    move-exception v0

    move-object v0, v8

    move v1, v10

    goto/16 :goto_9f5

    :catch_c93
    move-exception v0

    move-object v0, v1

    move v1, v10

    goto/16 :goto_9f5

    :catch_c98
    move-exception v0

    move-object v0, v8

    move v1, v2

    goto/16 :goto_9f5

    :catch_c9d
    move-exception v0

    move-object v0, v1

    move v1, v2

    goto/16 :goto_9f5

    :catch_ca2
    move-exception v0

    move-object v0, v8

    move v1, v2

    goto/16 :goto_8cc

    :catch_ca7
    move-exception v0

    move-object v0, v1

    move v1, v2

    goto/16 :goto_8cc

    :catch_cac
    move-exception v0

    move-object v0, v8

    move v1, v10

    goto/16 :goto_84f

    :catch_cb1
    move-exception v0

    move-object v0, v1

    move v1, v10

    goto/16 :goto_84f

    :catch_cb6
    move-exception v0

    move-object v0, v8

    move v1, v2

    goto/16 :goto_84f

    :catch_cbb
    move-exception v0

    move-object v0, v1

    move v1, v2

    goto/16 :goto_84f

    :catch_cc0
    move-exception v0

    move-object v0, v8

    move v1, v10

    goto/16 :goto_6b8

    :catch_cc5
    move-exception v0

    move-object v0, v1

    move v1, v10

    goto/16 :goto_6b8

    :catch_cca
    move-exception v0

    move-object v0, v8

    move-object v1, v8

    move v2, v10

    goto/16 :goto_5fe

    :catch_cd0
    move-exception v0

    move-object v0, v8

    move v2, v10

    goto/16 :goto_5fe

    :catch_cd5
    move-exception v0

    move-object v0, v8

    move-object v1, v8

    goto/16 :goto_5fe

    :catch_cda
    move-exception v0

    move-object v0, v8

    goto/16 :goto_5fe

    :catch_cde
    move-exception v3

    goto/16 :goto_5fe

    :catch_ce1
    move-exception v0

    move-object v0, v8

    move-object v1, v8

    move v2, v10

    goto/16 :goto_3ec

    :catch_ce7
    move-exception v0

    move-object v0, v8

    move v2, v10

    goto/16 :goto_3ec

    :catch_cec
    move-exception v3

    goto/16 :goto_3ec

    :catch_cef
    move-exception v0

    move-object v0, v8

    move-object v1, v8

    goto/16 :goto_3ec

    :catch_cf4
    move-exception v0

    move-object v0, v8

    goto/16 :goto_3ec

    :cond_cf8
    move-object v0, v8

    move v1, v9

    goto/16 :goto_262
.end method
