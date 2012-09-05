.class final Lcom/sdgtl/mediahub/spr/screen/iy;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    const/4 v2, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/16 v3, 0xa

    if-eqz p2, :cond_4e

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4e

    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4ca

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4e

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->h(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/os/Bundle;)Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    move-result-object v1

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

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->i(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Z

    move-result v1

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    iget-object v5, v5, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->d:Landroid/os/Handler;

    invoke-static/range {v0 .. v5}, Lcom/sdgtl/mediahub/spr/contentProvider/n;->a(Landroid/content/Context;ZZILjava/lang/String;Landroid/os/Handler;)V

    move-object v0, v6

    move v1, v7

    :goto_49
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v2, v1, v6, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;ILjava/lang/CharSequence;Landroid/os/Handler;)V

    :cond_4e
    :goto_4e
    return-void

    :cond_4f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->h(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->j(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_1f3

    :try_start_60
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    iget-wide v0, v1, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dm;

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;Lcom/sdgtl/mediahub/spr/common/dm;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->k(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Lcom/sdgtl/mediahub/spr/common/dm;

    move-result-object v0

    if-eqz v0, :cond_1e3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->k(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Lcom/sdgtl/mediahub/spr/common/dm;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/dm;->a:I

    if-nez v0, :cond_183

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->l(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->m(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->m(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->k(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Lcom/sdgtl/mediahub/spr/common/dm;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/dm;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->m(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->m(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->n(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->c(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->m(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_dd

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->m(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->h(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Ljava/util/ArrayList;I)J

    :cond_dd
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->n(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_148

    if-ltz v0, :cond_ff

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->n(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->n(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->m(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_ff
    :goto_ff
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->m(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->o(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->m(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->d(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->p(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->e(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->p(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)I

    move-result v1

    add-int/lit8 v1, v1, 0x20

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->f(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;I)V
    :try_end_130
    .catch Ljava/lang/ClassCastException; {:try_start_60 .. :try_end_130} :catch_16b

    move-object v0, v6

    move-object v1, v6

    move v2, v7

    :goto_133
    :try_start_133
    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->q(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->r(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->a(Landroid/view/View;Landroid/view/View;)V
    :try_end_144
    .catch Ljava/lang/ClassCastException; {:try_start_133 .. :try_end_144} :catch_520

    move-object v6, v1

    move v1, v2

    goto/16 :goto_49

    :cond_148
    :try_start_148
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->n(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->n(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->m(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_16a
    .catch Ljava/lang/ClassCastException; {:try_start_148 .. :try_end_16a} :catch_16b

    goto :goto_ff

    :catch_16b
    move-exception v0

    move-object v0, v6

    move-object v1, v6

    move v2, v7

    :goto_16f
    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->h(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v4, 0x10

    invoke-static {v4, v6}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;J)V

    move-object v6, v1

    move v1, v2

    goto/16 :goto_49

    :cond_183
    :try_start_183
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->k(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Lcom/sdgtl/mediahub/spr/common/dm;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/dm;->a:I

    const/16 v1, 0x2329

    if-eq v0, v1, :cond_199

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->k(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Lcom/sdgtl/mediahub/spr/common/dm;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/dm;->c:I

    if-nez v0, :cond_1c8

    :cond_199
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->q(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->r(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->a(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->k(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Lcom/sdgtl/mediahub/spr/common/dm;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/dm;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->k(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Lcom/sdgtl/mediahub/spr/common/dm;

    move-result-object v2

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/dm;->a:I

    invoke-static {p1, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;Ljava/lang/CharSequence;)V
    :try_end_1c3
    .catch Ljava/lang/ClassCastException; {:try_start_183 .. :try_end_1c3} :catch_16b

    move-object v0, v6

    move-object v1, v6

    move v2, v7

    goto/16 :goto_133

    :cond_1c8
    :try_start_1c8
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->k(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Lcom/sdgtl/mediahub/spr/common/dm;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/dm;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->k(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Lcom/sdgtl/mediahub/spr/common/dm;

    move-result-object v1

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/dm;->a:I

    invoke-static {p1, v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_1db
    .catch Ljava/lang/ClassCastException; {:try_start_1c8 .. :try_end_1db} :catch_515

    move-result-object v1

    :try_start_1dc
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->f:Landroid/os/Handler;
    :try_end_1e0
    .catch Ljava/lang/ClassCastException; {:try_start_1dc .. :try_end_1e0} :catch_51b

    move v2, v3

    goto/16 :goto_133

    :cond_1e3
    :try_start_1e3
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->getText(I)Ljava/lang/CharSequence;
    :try_end_1eb
    .catch Ljava/lang/ClassCastException; {:try_start_1e3 .. :try_end_1eb} :catch_515

    move-result-object v1

    :try_start_1ec
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->e:Landroid/os/Handler;
    :try_end_1f0
    .catch Ljava/lang/ClassCastException; {:try_start_1ec .. :try_end_1f0} :catch_51b

    move v2, v3

    goto/16 :goto_133

    :cond_1f3
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->h(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->s(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_2f2

    :try_start_204
    iget-wide v0, v1, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/eg;

    if-eqz v0, :cond_2e0

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/eg;->a:I

    if-nez v1, :cond_2cf

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->k(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Lcom/sdgtl/mediahub/spr/common/dm;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/dm;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->t(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->m(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->t(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->c(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->m(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->o(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->n(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2a8

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->n(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->n(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->m(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_262
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    const v2, 0x7f0a019d

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;Ljava/lang/CharSequence;)V
    :try_end_270
    .catch Ljava/lang/ClassCastException; {:try_start_204 .. :try_end_270} :catch_2cb

    move-object v0, v6

    move v1, v7

    :goto_272
    :try_start_272
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->u(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->r(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->a(Landroid/view/View;Landroid/view/View;)V
    :try_end_283
    .catch Ljava/lang/ClassCastException; {:try_start_272 .. :try_end_283} :catch_285

    goto/16 :goto_49

    :catch_285
    move-exception v2

    :goto_286
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "user_payment_method_id"

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->v(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->h(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v4, 0x15

    invoke-static {v4, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->b(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;J)V

    goto/16 :goto_49

    :cond_2a8
    :try_start_2a8
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->n(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->n(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->m(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_2ca
    .catch Ljava/lang/ClassCastException; {:try_start_2a8 .. :try_end_2ca} :catch_2cb

    goto :goto_262

    :catch_2cb
    move-exception v0

    move-object v0, v6

    move v1, v7

    goto :goto_286

    :cond_2cf
    :try_start_2cf
    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/eg;->b:Ljava/lang/String;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/eg;->a:I

    invoke-static {p1, v1, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_2d6
    .catch Ljava/lang/ClassCastException; {:try_start_2cf .. :try_end_2d6} :catch_502

    move-result-object v0

    :try_start_2d7
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    iget-object v6, v1, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->f:Landroid/os/Handler;
    :try_end_2db
    .catch Ljava/lang/ClassCastException; {:try_start_2d7 .. :try_end_2db} :catch_507

    move v1, v3

    move-object v8, v0

    move-object v0, v6

    move-object v6, v8

    goto :goto_272

    :cond_2e0
    :try_start_2e0
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->getText(I)Ljava/lang/CharSequence;
    :try_end_2e8
    .catch Ljava/lang/ClassCastException; {:try_start_2e0 .. :try_end_2e8} :catch_502

    move-result-object v0

    :try_start_2e9
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    iget-object v6, v1, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->e:Landroid/os/Handler;
    :try_end_2ed
    .catch Ljava/lang/ClassCastException; {:try_start_2e9 .. :try_end_2ed} :catch_50e

    move v1, v3

    move-object v8, v0

    move-object v0, v6

    move-object v6, v8

    goto :goto_272

    :cond_2f2
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->h(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->w(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_40a

    :try_start_303
    iget-wide v0, v1, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/eg;

    if-eqz v0, :cond_3f7

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/eg;->a:I

    if-nez v1, :cond_3e5

    const/4 v1, 0x1

    :goto_312
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->m(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_394

    move v0, v1

    :goto_31f
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->m(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->c(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->m(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->o(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)V

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3d3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    const v2, 0x7f0a019c

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;Ljava/lang/CharSequence;)V
    :try_end_349
    .catch Ljava/lang/ClassCastException; {:try_start_303 .. :try_end_349} :catch_4ea

    move-object v0, v6

    move v1, v7

    :goto_34b
    :try_start_34b
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->q(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->r(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->a(Landroid/view/View;Landroid/view/View;)V
    :try_end_35c
    .catch Ljava/lang/ClassCastException; {:try_start_34b .. :try_end_35c} :catch_35e

    goto/16 :goto_49

    :catch_35e
    move-exception v2

    :goto_35f
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "user_payment_method_id"

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->x(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "card_nick_name"

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->z(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->h(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v4, 0x13

    invoke-static {v4, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->c(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;J)V

    goto/16 :goto_49

    :cond_394
    :try_start_394
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->m(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/dn;->a:I

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->x(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)I

    move-result v3

    if-ne v0, v3, :cond_3cf

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->m(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/dn;->a:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->m(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/dn;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->y(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sdgtl/mediahub/spr/common/dn;->b:Ljava/lang/String;

    move v0, v1

    goto/16 :goto_31f

    :cond_3cf
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_312

    :cond_3d3
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    const v2, 0x7f0a019b

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;Ljava/lang/CharSequence;)V
    :try_end_3e1
    .catch Ljava/lang/ClassCastException; {:try_start_394 .. :try_end_3e1} :catch_4ea

    move-object v0, v6

    move v1, v7

    goto/16 :goto_34b

    :cond_3e5
    :try_start_3e5
    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/eg;->b:Ljava/lang/String;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/eg;->a:I

    invoke-static {p1, v1, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_3ec
    .catch Ljava/lang/ClassCastException; {:try_start_3e5 .. :try_end_3ec} :catch_4ef

    move-result-object v0

    :try_start_3ed
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    iget-object v6, v1, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->f:Landroid/os/Handler;
    :try_end_3f1
    .catch Ljava/lang/ClassCastException; {:try_start_3ed .. :try_end_3f1} :catch_4f4

    move v1, v3

    move-object v8, v0

    move-object v0, v6

    move-object v6, v8

    goto/16 :goto_34b

    :cond_3f7
    :try_start_3f7
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->getText(I)Ljava/lang/CharSequence;
    :try_end_3ff
    .catch Ljava/lang/ClassCastException; {:try_start_3f7 .. :try_end_3ff} :catch_4ef

    move-result-object v0

    :try_start_400
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    iget-object v6, v1, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->e:Landroid/os/Handler;
    :try_end_404
    .catch Ljava/lang/ClassCastException; {:try_start_400 .. :try_end_404} :catch_4fb

    move v1, v3

    move-object v8, v0

    move-object v0, v6

    move-object v6, v8

    goto/16 :goto_34b

    :cond_40a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->h(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->A(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_526

    :try_start_41b
    iget-wide v0, v1, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/eg;

    if-eqz v0, :cond_471

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/eg;->a:I

    if-nez v1, :cond_454

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->h(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;J)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    const v2, 0x7f0a019a

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;Ljava/lang/CharSequence;)V
    :try_end_448
    .catch Ljava/lang/ClassCastException; {:try_start_41b .. :try_end_448} :catch_485

    move-object v0, v6

    :goto_449
    :try_start_449
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->B(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)V
    :try_end_44e
    .catch Ljava/lang/ClassCastException; {:try_start_449 .. :try_end_44e} :catch_4e7

    move v1, v7

    move-object v8, v0

    move-object v0, v6

    move-object v6, v8

    goto/16 :goto_49

    :cond_454
    :try_start_454
    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/eg;->b:Ljava/lang/String;

    iget v2, v0, Lcom/sdgtl/mediahub/spr/common/eg;->a:I

    invoke-static {p1, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_45b
    .catch Ljava/lang/ClassCastException; {:try_start_454 .. :try_end_45b} :catch_485

    move-result-object v1

    :try_start_45c
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/eg;->a:I

    invoke-static {v2, v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->a(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;ILjava/lang/CharSequence;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_523

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->b(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;Ljava/lang/CharSequence;)V
    :try_end_46f
    .catch Ljava/lang/ClassCastException; {:try_start_45c .. :try_end_46f} :catch_4e5

    move-object v0, v1

    goto :goto_449

    :cond_471
    :try_start_471
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    const v2, 0x7f0a01c8

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->e:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/a;->e(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;
    :try_end_483
    .catch Ljava/lang/ClassCastException; {:try_start_471 .. :try_end_483} :catch_485

    move-object v0, v6

    goto :goto_449

    :catch_485
    move-exception v0

    move-object v1, v6

    :goto_487
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03003b

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v2, 0x7f0d00e5

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "redeem_id"

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->h(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v3, 0x14

    invoke-static {v3, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->d(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;J)V

    move-object v0, v6

    move-object v6, v1

    move v1, v7

    goto/16 :goto_49

    :cond_4ca
    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE_IMAGE_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->c(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/iy;->a:Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;->b(Lcom/sdgtl/mediahub/spr/screen/MyPaymentMethods;)Lcom/sdgtl/mediahub/spr/screen/ka;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/ka;->notifyDataSetChanged()V

    goto/16 :goto_4e

    :catch_4e5
    move-exception v0

    goto :goto_487

    :catch_4e7
    move-exception v1

    move-object v1, v0

    goto :goto_487

    :catch_4ea
    move-exception v0

    move-object v0, v6

    move v1, v7

    goto/16 :goto_35f

    :catch_4ef
    move-exception v0

    move-object v0, v6

    move v1, v3

    goto/16 :goto_35f

    :catch_4f4
    move-exception v1

    move v1, v3

    move-object v8, v0

    move-object v0, v6

    move-object v6, v8

    goto/16 :goto_35f

    :catch_4fb
    move-exception v1

    move v1, v3

    move-object v8, v0

    move-object v0, v6

    move-object v6, v8

    goto/16 :goto_35f

    :catch_502
    move-exception v0

    move-object v0, v6

    move v1, v3

    goto/16 :goto_286

    :catch_507
    move-exception v1

    move v1, v3

    move-object v8, v0

    move-object v0, v6

    move-object v6, v8

    goto/16 :goto_286

    :catch_50e
    move-exception v1

    move v1, v3

    move-object v8, v0

    move-object v0, v6

    move-object v6, v8

    goto/16 :goto_286

    :catch_515
    move-exception v0

    move-object v0, v6

    move-object v1, v6

    move v2, v3

    goto/16 :goto_16f

    :catch_51b
    move-exception v0

    move-object v0, v6

    move v2, v3

    goto/16 :goto_16f

    :catch_520
    move-exception v3

    goto/16 :goto_16f

    :cond_523
    move-object v0, v1

    goto/16 :goto_449

    :cond_526
    move-object v0, v6

    move v1, v7

    goto/16 :goto_49
.end method
