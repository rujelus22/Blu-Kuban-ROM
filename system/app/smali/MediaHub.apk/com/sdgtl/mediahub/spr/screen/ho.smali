.class final Lcom/sdgtl/mediahub/spr/screen/ho;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/ho;)Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    return-object v0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13

    const/16 v9, 0x24

    const/4 v2, 0x0

    const/16 v3, 0xa

    if-eqz p2, :cond_57

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_57

    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31c

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_57

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->g(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/os/Bundle;)Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    move-result-object v1

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const-string v4, "response_msg"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_58

    const-string v1, "error_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v1, "error_msg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->j(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Z

    move-result v1

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    iget-object v5, v5, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->f:Landroid/os/Handler;

    invoke-static/range {v0 .. v5}, Lcom/sdgtl/mediahub/spr/contentProvider/n;->a(Landroid/content/Context;ZZILjava/lang/String;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->i(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)V

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    :goto_52
    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v3, v2, v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;ILjava/lang/CharSequence;Landroid/os/Handler;)V

    :cond_57
    :goto_57
    return-void

    :cond_58
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->g(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->k(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_173

    :try_start_69
    iget-wide v0, v1, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dj;

    if-eqz v0, :cond_163

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/dj;->a:I

    if-nez v1, :cond_9b

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/hp;

    invoke-direct {v2, p0, v0}, Lcom/sdgtl/mediahub/spr/screen/hp;-><init>(Lcom/sdgtl/mediahub/spr/screen/ho;Lcom/sdgtl/mediahub/spr/common/dj;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/dj;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->g(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Ljava/util/ArrayList;I)J

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    goto :goto_52

    :cond_9b
    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/dj;->a:I

    const/16 v2, 0x2329

    if-eq v1, v2, :cond_a5

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/dj;->c:I

    if-nez v1, :cond_154

    :cond_a5
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->e(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/c/a;->j()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->i(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->y()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->z()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->h(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    const v2, 0x7f0a00d5

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_dd
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->l(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->l(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->refresh(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    const v2, 0x7f0a01a4

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    goto/16 :goto_52

    :cond_10d
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->h(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    const v5, 0x7f0a00d5

    invoke-virtual {v4, v5}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v0, v1, v4}, Lcom/sdgtl/mediahub/spr/common/gk;->a(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_136
    .catch Ljava/lang/ClassCastException; {:try_start_69 .. :try_end_136} :catch_137

    goto :goto_dd

    :catch_137
    move-exception v0

    move-object v0, v7

    move v1, v8

    :goto_13a
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->g(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v4, 0x23

    invoke-static {v4, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->b(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;J)V

    move v2, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_52

    :cond_154
    :try_start_154
    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/dj;->b:Ljava/lang/String;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/dj;->a:I

    invoke-static {p1, v1, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_15b
    .catch Ljava/lang/ClassCastException; {:try_start_154 .. :try_end_15b} :catch_381

    move-result-object v1

    :try_start_15c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->i:Landroid/os/Handler;
    :try_end_160
    .catch Ljava/lang/ClassCastException; {:try_start_15c .. :try_end_160} :catch_386

    move v2, v3

    goto/16 :goto_52

    :cond_163
    :try_start_163
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->getText(I)Ljava/lang/CharSequence;
    :try_end_16b
    .catch Ljava/lang/ClassCastException; {:try_start_163 .. :try_end_16b} :catch_381

    move-result-object v1

    :try_start_16c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->h:Landroid/os/Handler;
    :try_end_170
    .catch Ljava/lang/ClassCastException; {:try_start_16c .. :try_end_170} :catch_38b

    move v2, v3

    goto/16 :goto_52

    :cond_173
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->g(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->m(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_270

    :try_start_184
    iget-wide v0, v1, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/eg;

    if-eqz v0, :cond_260

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/eg;->a:I

    if-nez v1, :cond_251

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->e(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    const-string v1, "01"

    const-string v2, "Archive"

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;Ljava/lang/String;)J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->e(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    const-string v1, "02"

    const-string v2, "Archive"

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;Ljava/lang/String;)J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v1

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    const-string v2, "01"

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v3

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v1

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    const-string v2, "02"

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v3

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->b(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE_ARCHIVE_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1fa
    .catch Ljava/lang/ClassCastException; {:try_start_184 .. :try_end_1fa} :catch_36a

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    :goto_1fd
    :try_start_1fd
    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->n(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)V
    :try_end_202
    .catch Ljava/lang/ClassCastException; {:try_start_1fd .. :try_end_202} :catch_204

    goto/16 :goto_52

    :catch_204
    move-exception v3

    :goto_205
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;

    invoke-direct {v4}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;-><init>()V

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v5

    iget-wide v5, v5, Lcom/sdgtl/mediahub/spr/common/di;->a:J

    iput-wide v5, v4, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;->a:J

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v5

    iget-wide v5, v5, Lcom/sdgtl/mediahub/spr/common/di;->b:J

    iput-wide v5, v4, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;->b:J

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v5

    iget v5, v5, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iput v5, v4, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;->c:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "archive_info"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v3, "archive_cmd"

    const-string v5, "01"

    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->g(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v9, v4}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;J)V

    goto/16 :goto_52

    :cond_251
    :try_start_251
    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/eg;->b:Ljava/lang/String;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/eg;->a:I

    invoke-static {p1, v1, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_258
    .catch Ljava/lang/ClassCastException; {:try_start_251 .. :try_end_258} :catch_370

    move-result-object v7

    :try_start_259
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->i:Landroid/os/Handler;
    :try_end_25d
    .catch Ljava/lang/ClassCastException; {:try_start_259 .. :try_end_25d} :catch_376

    move-object v1, v7

    move v2, v3

    goto :goto_1fd

    :cond_260
    :try_start_260
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->getText(I)Ljava/lang/CharSequence;
    :try_end_268
    .catch Ljava/lang/ClassCastException; {:try_start_260 .. :try_end_268} :catch_370

    move-result-object v1

    :try_start_269
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->h:Landroid/os/Handler;
    :try_end_26d
    .catch Ljava/lang/ClassCastException; {:try_start_269 .. :try_end_26d} :catch_37c

    move v2, v3

    goto/16 :goto_52

    :cond_270
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->g(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->o(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_390

    :try_start_281
    iget-wide v0, v1, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/eg;

    if-eqz v0, :cond_30c

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/eg;->a:I

    if-nez v1, :cond_2fd

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->p(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE_ARCHIVE_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2a0
    .catch Ljava/lang/ClassCastException; {:try_start_281 .. :try_end_2a0} :catch_352

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    :goto_2a3
    :try_start_2a3
    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->n(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;Z)V
    :try_end_2ae
    .catch Ljava/lang/ClassCastException; {:try_start_2a3 .. :try_end_2ae} :catch_2b0

    goto/16 :goto_52

    :catch_2b0
    move-exception v3

    :goto_2b1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;

    invoke-direct {v4}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;-><init>()V

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v5

    iget-wide v5, v5, Lcom/sdgtl/mediahub/spr/common/di;->a:J

    iput-wide v5, v4, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;->a:J

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v5

    iget-wide v5, v5, Lcom/sdgtl/mediahub/spr/common/di;->b:J

    iput-wide v5, v4, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;->b:J

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v5

    iget v5, v5, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iput v5, v4, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;->c:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "archive_info"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v3, "archive_cmd"

    const-string v5, "02"

    invoke-virtual {v4, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->g(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v9, v4}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;J)V

    goto/16 :goto_52

    :cond_2fd
    :try_start_2fd
    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/eg;->b:Ljava/lang/String;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/eg;->a:I

    invoke-static {p1, v1, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_304
    .catch Ljava/lang/ClassCastException; {:try_start_2fd .. :try_end_304} :catch_358

    move-result-object v7

    :try_start_305
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->i:Landroid/os/Handler;
    :try_end_309
    .catch Ljava/lang/ClassCastException; {:try_start_305 .. :try_end_309} :catch_35e

    move-object v1, v7

    move v2, v3

    goto :goto_2a3

    :cond_30c
    :try_start_30c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->getText(I)Ljava/lang/CharSequence;
    :try_end_314
    .catch Ljava/lang/ClassCastException; {:try_start_30c .. :try_end_314} :catch_358

    move-result-object v7

    :try_start_315
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->h:Landroid/os/Handler;
    :try_end_319
    .catch Ljava/lang/ClassCastException; {:try_start_315 .. :try_end_319} :catch_364

    move-object v1, v7

    move v2, v3

    goto :goto_2a3

    :cond_31c
    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE_IMAGE_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->q(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->a(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->l(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->refresh(Ljava/util/ArrayList;)V

    goto/16 :goto_57

    :cond_33d
    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE_FINISH_REFRESH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->b(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ho;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;->i(Lcom/sdgtl/mediahub/spr/screen/MyMediaNesting;)V

    goto/16 :goto_57

    :catch_352
    move-exception v0

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    goto/16 :goto_2b1

    :catch_358
    move-exception v0

    move-object v0, v6

    move-object v1, v7

    move v2, v3

    goto/16 :goto_2b1

    :catch_35e
    move-exception v0

    move-object v0, v6

    move-object v1, v7

    move v2, v3

    goto/16 :goto_2b1

    :catch_364
    move-exception v0

    move-object v0, v6

    move-object v1, v7

    move v2, v3

    goto/16 :goto_2b1

    :catch_36a
    move-exception v0

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    goto/16 :goto_205

    :catch_370
    move-exception v0

    move-object v0, v6

    move-object v1, v7

    move v2, v3

    goto/16 :goto_205

    :catch_376
    move-exception v0

    move-object v0, v6

    move-object v1, v7

    move v2, v3

    goto/16 :goto_205

    :catch_37c
    move-exception v0

    move-object v0, v6

    move v2, v3

    goto/16 :goto_205

    :catch_381
    move-exception v0

    move-object v0, v7

    move v1, v3

    goto/16 :goto_13a

    :catch_386
    move-exception v0

    move-object v0, v1

    move v1, v3

    goto/16 :goto_13a

    :catch_38b
    move-exception v0

    move-object v0, v1

    move v1, v3

    goto/16 :goto_13a

    :cond_390
    move-object v0, v6

    move-object v1, v7

    move v2, v8

    goto/16 :goto_52
.end method
