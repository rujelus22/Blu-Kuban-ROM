.class final Lcom/sdgtl/mediahub/spr/screen/gb;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/gb;)Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    return-object v0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/16 v3, 0xa

    if-eqz p2, :cond_4e

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4e

    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_214

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4e

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->p(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/os/Bundle;)Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    move-result-object v1

    const/4 v7, -0x1

    const-string v4, "response_msg"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4f

    const-string v1, "error_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v1, "error_msg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->q(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Z

    move-result v1

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    iget-object v5, v5, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->h:Landroid/os/Handler;

    invoke-static/range {v0 .. v5}, Lcom/sdgtl/mediahub/spr/contentProvider/n;->a(Landroid/content/Context;ZZILjava/lang/String;Landroid/os/Handler;)V

    move-object v0, v6

    move v1, v7

    :goto_49
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v2, v1, v6, v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;ILjava/lang/CharSequence;Landroid/os/Handler;)V

    :cond_4e
    :goto_4e
    return-void

    :cond_4f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->p(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->r(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_194

    :try_start_60
    iget-wide v0, v1, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dj;

    if-eqz v0, :cond_183

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/dj;->a:I

    if-nez v1, :cond_173

    :goto_6e
    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/dj;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v2, v1, :cond_129

    :goto_76
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->s(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->j(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->d()Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v1

    if-eqz v1, :cond_16b

    iget v2, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->d(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)I

    move-result v3

    if-ne v2, v3, :cond_16b

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;Ljava/lang/String;)V

    :goto_97
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_a4

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->t(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)V

    :cond_a4
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->b(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    const-string v3, "01"

    invoke-static {v2, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/util/ArrayList;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;J)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->b(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    const-string v3, "02"

    invoke-static {v2, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Ljava/util/ArrayList;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->b(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;J)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->b(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/di;->K:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Ljava/util/ArrayList;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->b(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->u(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->v(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->w(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->x(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->m(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->y(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->z(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;Landroid/view/View;Landroid/view/View;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sdgtl/mediahub/spr/screen/gc;

    invoke-direct {v2, p0, v0}, Lcom/sdgtl/mediahub/spr/screen/gc;-><init>(Lcom/sdgtl/mediahub/spr/screen/gb;Lcom/sdgtl/mediahub/spr/common/dj;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/dj;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->p(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Ljava/util/ArrayList;I)J

    move-object v0, v6

    move v1, v7

    goto/16 :goto_49

    :cond_129
    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/dj;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/common/di;

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/di;->g:I

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->d(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)I

    move-result v3

    if-ne v1, v3, :cond_167

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/dj;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/common/di;

    invoke-static {v3, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;Lcom/sdgtl/mediahub/spr/common/di;)V
    :try_end_148
    .catch Ljava/lang/ClassCastException; {:try_start_60 .. :try_end_148} :catch_14a

    goto/16 :goto_76

    :catch_14a
    move-exception v0

    move-object v0, v6

    move v1, v7

    :goto_14d
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->p(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v4, 0x23

    invoke-static {v4, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;J)V

    move-object v8, v6

    move-object v6, v0

    move-object v0, v8

    goto/16 :goto_49

    :cond_167
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6e

    :cond_16b
    :try_start_16b
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->c(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;Ljava/lang/String;)V
    :try_end_171
    .catch Ljava/lang/ClassCastException; {:try_start_16b .. :try_end_171} :catch_14a

    goto/16 :goto_97

    :cond_173
    :try_start_173
    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/dj;->b:Ljava/lang/String;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/dj;->a:I

    invoke-static {p1, v1, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_17a
    .catch Ljava/lang/ClassCastException; {:try_start_173 .. :try_end_17a} :catch_24d

    move-result-object v1

    :try_start_17b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->j:Landroid/os/Handler;
    :try_end_17f
    .catch Ljava/lang/ClassCastException; {:try_start_17b .. :try_end_17f} :catch_252

    move-object v6, v1

    move v1, v3

    goto/16 :goto_49

    :cond_183
    :try_start_183
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->getText(I)Ljava/lang/CharSequence;
    :try_end_18b
    .catch Ljava/lang/ClassCastException; {:try_start_183 .. :try_end_18b} :catch_24d

    move-result-object v1

    :try_start_18c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->i:Landroid/os/Handler;
    :try_end_190
    .catch Ljava/lang/ClassCastException; {:try_start_18c .. :try_end_190} :catch_257

    move-object v6, v1

    move v1, v3

    goto/16 :goto_49

    :cond_194
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->p(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->B(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_25c

    :try_start_1a5
    iget-wide v0, v1, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/eg;

    if-eqz v0, :cond_202

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/eg;->a:I

    if-nez v1, :cond_1f1

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->C(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)V
    :try_end_1b8
    .catch Ljava/lang/ClassCastException; {:try_start_1a5 .. :try_end_1b8} :catch_238

    move-object v0, v6

    move v1, v7

    :goto_1ba
    :try_start_1ba
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->y(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_1c5
    .catch Ljava/lang/ClassCastException; {:try_start_1ba .. :try_end_1c5} :catch_1c7

    goto/16 :goto_49

    :catch_1c7
    move-exception v2

    :goto_1c8
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "archive_info"

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->D(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v3, "archive_cmd"

    const-string v4, "02"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->p(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v4, 0x24

    invoke-static {v4, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->d(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;J)V

    goto/16 :goto_49

    :cond_1f1
    :try_start_1f1
    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/eg;->b:Ljava/lang/String;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/eg;->a:I

    invoke-static {p1, v1, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_1f8
    .catch Ljava/lang/ClassCastException; {:try_start_1f1 .. :try_end_1f8} :catch_23c

    move-result-object v0

    :try_start_1f9
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    iget-object v6, v1, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->j:Landroid/os/Handler;
    :try_end_1fd
    .catch Ljava/lang/ClassCastException; {:try_start_1f9 .. :try_end_1fd} :catch_240

    move v1, v3

    move-object v8, v0

    move-object v0, v6

    move-object v6, v8

    goto :goto_1ba

    :cond_202
    :try_start_202
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->getText(I)Ljava/lang/CharSequence;
    :try_end_20a
    .catch Ljava/lang/ClassCastException; {:try_start_202 .. :try_end_20a} :catch_23c

    move-result-object v0

    :try_start_20b
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    iget-object v6, v1, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->i:Landroid/os/Handler;
    :try_end_20f
    .catch Ljava/lang/ClassCastException; {:try_start_20b .. :try_end_20f} :catch_246

    move v1, v3

    move-object v8, v0

    move-object v0, v6

    move-object v6, v8

    goto :goto_1ba

    :cond_214
    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE_IMAGE_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->o(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->E(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/gb;->a:Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;->b(Lcom/sdgtl/mediahub/spr/screen/MyMediaDetail;)Lcom/sdgtl/mediahub/spr/common/di;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/di;->u:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/widget/ImageView;Ljava/lang/String;I)Z

    goto/16 :goto_4e

    :catch_238
    move-exception v0

    move-object v0, v6

    move v1, v7

    goto :goto_1c8

    :catch_23c
    move-exception v0

    move-object v0, v6

    move v1, v3

    goto :goto_1c8

    :catch_240
    move-exception v1

    move v1, v3

    move-object v8, v0

    move-object v0, v6

    move-object v6, v8

    goto :goto_1c8

    :catch_246
    move-exception v1

    move v1, v3

    move-object v8, v0

    move-object v0, v6

    move-object v6, v8

    goto/16 :goto_1c8

    :catch_24d
    move-exception v0

    move-object v0, v6

    move v1, v3

    goto/16 :goto_14d

    :catch_252
    move-exception v0

    move-object v0, v1

    move v1, v3

    goto/16 :goto_14d

    :catch_257
    move-exception v0

    move-object v0, v1

    move v1, v3

    goto/16 :goto_14d

    :cond_25c
    move-object v0, v6

    move v1, v7

    goto/16 :goto_49
.end method
