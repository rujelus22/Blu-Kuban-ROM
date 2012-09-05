.class final Lcom/sdgtl/mediahub/spr/screen/ds;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/ds;)Lcom/sdgtl/mediahub/spr/screen/MyMedia;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    return-object v0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    if-eqz p2, :cond_71

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_71

    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_71

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->i(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/os/Bundle;)Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    move-result-object v1

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const-string v2, "response_msg"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_83

    const-string v1, "error_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v1, "error_msg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    const-string v1, "key_update_db_yn"

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_48

    const-string v1, "update_db_n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    :cond_48
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->l(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Z

    move-result v1

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    iget-object v5, v5, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->e:Landroid/os/Handler;

    invoke-static/range {v0 .. v5}, Lcom/sdgtl/mediahub/spr/contentProvider/n;->a(Landroid/content/Context;ZZILjava/lang/String;Landroid/os/Handler;)V

    :goto_58
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->m(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->c(Lcom/sdgtl/mediahub/spr/screen/MyMedia;Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->b(Lcom/sdgtl/mediahub/spr/screen/MyMedia;Z)V

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    :goto_6c
    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v3, v2, v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Lcom/sdgtl/mediahub/spr/screen/MyMedia;ILjava/lang/CharSequence;Landroid/os/Handler;)V

    :cond_71
    :goto_71
    return-void

    :cond_72
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->l(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Z

    move-result v1

    const/4 v2, 0x1

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    iget-object v5, v5, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->e:Landroid/os/Handler;

    invoke-static/range {v0 .. v5}, Lcom/sdgtl/mediahub/spr/contentProvider/n;->a(Landroid/content/Context;ZZILjava/lang/String;Landroid/os/Handler;)V

    goto :goto_58

    :cond_83
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->i(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->n(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_1bc

    :try_start_94
    iget-wide v0, v1, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dj;

    if-eqz v0, :cond_1ab

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/dj;->a:I

    if-nez v1, :cond_c6

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/dt;

    invoke-direct {v2, p0, v0}, Lcom/sdgtl/mediahub/spr/screen/dt;-><init>(Lcom/sdgtl/mediahub/spr/screen/ds;Lcom/sdgtl/mediahub/spr/common/dj;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/dj;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->i(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Ljava/util/ArrayList;I)J

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    goto :goto_6c

    :cond_c6
    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/dj;->a:I

    const/16 v2, 0x2329

    if-eq v1, v2, :cond_d0

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/dj;->c:I

    if-nez v1, :cond_19b

    :cond_d0
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Lcom/sdgtl/mediahub/spr/screen/MyMedia;Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->e(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/c/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/c/a;->j()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->c(Lcom/sdgtl/mediahub/spr/screen/MyMedia;Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->y()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/Main;->a(Landroid/content/Context;)Lcom/sdgtl/mediahub/spr/contentProvider/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/a;->z()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_154

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->k(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    const v2, 0x7f0a00d5

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_10f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->o(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->o(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->refresh(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_139

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->p(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->notifyDataSetChanged()V

    :cond_139
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->q(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->r(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->s(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    goto/16 :goto_6c

    :cond_154
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->k(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    const v5, 0x7f0a00d5

    invoke-virtual {v4, v5}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0, v1, v4}, Lcom/sdgtl/mediahub/spr/common/gk;->a(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_17d
    .catch Ljava/lang/ClassCastException; {:try_start_94 .. :try_end_17d} :catch_17e

    goto :goto_10f

    :catch_17e
    move-exception v0

    move-object v0, v7

    move v1, v8

    :goto_181
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->i(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v4, 0x23

    invoke-static {v4, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->b(Lcom/sdgtl/mediahub/spr/screen/MyMedia;J)V

    move v2, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_6c

    :cond_19b
    const/16 v2, 0xa

    :try_start_19d
    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/dj;->b:Ljava/lang/String;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/dj;->a:I

    invoke-static {p1, v1, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_1a4
    .catch Ljava/lang/ClassCastException; {:try_start_19d .. :try_end_1a4} :catch_44c

    move-result-object v1

    :try_start_1a5
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->i:Landroid/os/Handler;
    :try_end_1a9
    .catch Ljava/lang/ClassCastException; {:try_start_1a5 .. :try_end_1a9} :catch_451

    goto/16 :goto_6c

    :cond_1ab
    const/16 v2, 0xa

    :try_start_1ad
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getText(I)Ljava/lang/CharSequence;
    :try_end_1b5
    .catch Ljava/lang/ClassCastException; {:try_start_1ad .. :try_end_1b5} :catch_44c

    move-result-object v1

    :try_start_1b6
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->h:Landroid/os/Handler;
    :try_end_1ba
    .catch Ljava/lang/ClassCastException; {:try_start_1b6 .. :try_end_1ba} :catch_456

    goto/16 :goto_6c

    :cond_1bc
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->i(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->t(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_21d

    :try_start_1cd
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->t(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dk;

    if-eqz v0, :cond_1f3

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/dk;->a:I

    if-nez v1, :cond_45b

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/dk;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_45b

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/dk;->f:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/util/ArrayList;)Lcom/sdgtl/mediahub/spr/common/a;
    :try_end_1ee
    .catch Ljava/lang/ClassCastException; {:try_start_1cd .. :try_end_1ee} :catch_204

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    goto/16 :goto_6c

    :cond_1f3
    const/16 v2, 0xa

    :try_start_1f5
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getText(I)Ljava/lang/CharSequence;
    :try_end_1fd
    .catch Ljava/lang/ClassCastException; {:try_start_1f5 .. :try_end_1fd} :catch_442

    move-result-object v1

    :try_start_1fe
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->h:Landroid/os/Handler;
    :try_end_202
    .catch Ljava/lang/ClassCastException; {:try_start_1fe .. :try_end_202} :catch_447

    goto/16 :goto_6c

    :catch_204
    move-exception v0

    move-object v0, v7

    move v1, v8

    :goto_207
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->i(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->c(Lcom/sdgtl/mediahub/spr/screen/MyMedia;J)V

    move v2, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_6c

    :cond_21d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->i(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->u(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_36f

    :try_start_22e
    iget-wide v0, v1, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/eg;

    if-eqz v0, :cond_35e

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/eg;->a:I

    if-nez v1, :cond_34c

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->N:Z

    if-eqz v0, :cond_2e0

    const/4 v0, 0x0

    move v1, v0

    :goto_24d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->h(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_29b

    :goto_259
    const/4 v0, 0x0

    move v1, v0

    :goto_25b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_319

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->b(Lcom/sdgtl/mediahub/spr/screen/MyMedia;Z)V
    :try_end_267
    .catch Ljava/lang/ClassCastException; {:try_start_22e .. :try_end_267} :catch_313

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    :goto_26a
    :try_start_26a
    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->m(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V
    :try_end_26f
    .catch Ljava/lang/ClassCastException; {:try_start_26a .. :try_end_26f} :catch_271

    goto/16 :goto_6c

    :catch_271
    move-exception v3

    :goto_272
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "archive_info"

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->h(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v4, "archive_cmd"

    const-string v5, "01"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->i(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v5, 0x24

    invoke-static {v5, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Lcom/sdgtl/mediahub/spr/screen/MyMedia;J)V

    goto/16 :goto_6c

    :cond_29b
    :try_start_29b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->h(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;

    iget v3, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;->c:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->h(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ArchiveRequestInfo;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->e(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/c/a;

    const-string v4, "01"

    const-string v5, "Archive"

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;Ljava/lang/String;)J

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->e(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/c/a;

    const-string v4, "02"

    const-string v5, "Archive"

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;Ljava/lang/String;)J

    new-instance v4, Lcom/sdgtl/mediahub/spr/common/di;

    invoke-direct {v4}, Lcom/sdgtl/mediahub/spr/common/di;-><init>()V

    iput v3, v4, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iput-object v0, v4, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_24d

    :cond_2e0
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->e(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    const-string v1, "01"

    const-string v3, "Archive"

    invoke-static {v0, v1, v3}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;Ljava/lang/String;)J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->e(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/c/a;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    const-string v1, "02"

    const-string v3, "Archive"

    invoke-static {v0, v1, v3}, Lcom/sdgtl/mediahub/spr/c/a;->a(ILjava/lang/String;Ljava/lang/String;)J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_259

    :catch_313
    move-exception v0

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    goto/16 :goto_272

    :cond_319
    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/di;

    iget v4, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    const-string v5, "01"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/di;

    iget v4, v0, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    const-string v5, "02"

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/di;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/di;->j:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(ILjava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_25b

    :cond_34c
    const/16 v8, 0xa

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/eg;->b:Ljava/lang/String;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/eg;->a:I

    invoke-static {p1, v1, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_355
    .catch Ljava/lang/ClassCastException; {:try_start_29b .. :try_end_355} :catch_313

    move-result-object v7

    :try_start_356
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->i:Landroid/os/Handler;
    :try_end_35a
    .catch Ljava/lang/ClassCastException; {:try_start_356 .. :try_end_35a} :catch_433

    move-object v1, v7

    move v2, v8

    goto/16 :goto_26a

    :cond_35e
    const/16 v2, 0xa

    :try_start_360
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getText(I)Ljava/lang/CharSequence;
    :try_end_368
    .catch Ljava/lang/ClassCastException; {:try_start_360 .. :try_end_368} :catch_439

    move-result-object v1

    :try_start_369
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->h:Landroid/os/Handler;
    :try_end_36d
    .catch Ljava/lang/ClassCastException; {:try_start_369 .. :try_end_36d} :catch_43e

    goto/16 :goto_6c

    :cond_36f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->i(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->v(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_45b

    :try_start_380
    iget-wide v0, v1, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/eg;

    if-eqz v0, :cond_3de

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/eg;->a:I

    if-nez v1, :cond_3cd

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->w(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V
    :try_end_393
    .catch Ljava/lang/ClassCastException; {:try_start_380 .. :try_end_393} :catch_421

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    :goto_396
    :try_start_396
    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->m(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Lcom/sdgtl/mediahub/spr/screen/MyMedia;Z)V
    :try_end_3a1
    .catch Ljava/lang/ClassCastException; {:try_start_396 .. :try_end_3a1} :catch_3a3

    goto/16 :goto_6c

    :catch_3a3
    move-exception v3

    :goto_3a4
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "archive_info"

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->x(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v4, "archive_cmd"

    const-string v5, "02"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->i(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v5, 0x24

    invoke-static {v5, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->d(Lcom/sdgtl/mediahub/spr/screen/MyMedia;J)V

    goto/16 :goto_6c

    :cond_3cd
    const/16 v8, 0xa

    :try_start_3cf
    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/eg;->b:Ljava/lang/String;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/eg;->a:I

    invoke-static {p1, v1, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_3d6
    .catch Ljava/lang/ClassCastException; {:try_start_3cf .. :try_end_3d6} :catch_421

    move-result-object v7

    :try_start_3d7
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->i:Landroid/os/Handler;
    :try_end_3db
    .catch Ljava/lang/ClassCastException; {:try_start_3d7 .. :try_end_3db} :catch_427

    move-object v1, v7

    move v2, v8

    goto :goto_396

    :cond_3de
    const/16 v8, 0xa

    :try_start_3e0
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->getText(I)Ljava/lang/CharSequence;
    :try_end_3e8
    .catch Ljava/lang/ClassCastException; {:try_start_3e0 .. :try_end_3e8} :catch_421

    move-result-object v7

    :try_start_3e9
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->h:Landroid/os/Handler;
    :try_end_3ed
    .catch Ljava/lang/ClassCastException; {:try_start_3e9 .. :try_end_3ed} :catch_42d

    move-object v1, v7

    move v2, v8

    goto :goto_396

    :cond_3f0
    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE_ARCHIVE_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_400

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->b(Lcom/sdgtl/mediahub/spr/screen/MyMedia;Z)V

    goto/16 :goto_71

    :cond_400
    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE_IMAGE_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->j(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Z

    move-result v0

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->a(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ds;->a:Lcom/sdgtl/mediahub/spr/screen/MyMedia;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMedia;->o(Lcom/sdgtl/mediahub/spr/screen/MyMedia;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->refresh(Ljava/util/ArrayList;)V

    goto/16 :goto_71

    :catch_421
    move-exception v0

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    goto/16 :goto_3a4

    :catch_427
    move-exception v0

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    goto/16 :goto_3a4

    :catch_42d
    move-exception v0

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    goto/16 :goto_3a4

    :catch_433
    move-exception v0

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    goto/16 :goto_272

    :catch_439
    move-exception v0

    move-object v0, v6

    move-object v1, v7

    goto/16 :goto_272

    :catch_43e
    move-exception v0

    move-object v0, v6

    goto/16 :goto_272

    :catch_442
    move-exception v0

    move-object v0, v7

    move v1, v2

    goto/16 :goto_207

    :catch_447
    move-exception v0

    move-object v0, v1

    move v1, v2

    goto/16 :goto_207

    :catch_44c
    move-exception v0

    move-object v0, v7

    move v1, v2

    goto/16 :goto_181

    :catch_451
    move-exception v0

    move-object v0, v1

    move v1, v2

    goto/16 :goto_181

    :catch_456
    move-exception v0

    move-object v0, v1

    move v1, v2

    goto/16 :goto_181

    :cond_45b
    move-object v0, v6

    move-object v1, v7

    move v2, v8

    goto/16 :goto_6c
.end method
