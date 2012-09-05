.class final Lcom/sdgtl/mediahub/spr/screen/qw;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    const/4 v6, 0x0

    const/16 v1, 0xa

    if-eqz p2, :cond_6c

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6c

    const-string v2, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26d

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6c

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->l(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/os/Bundle;)Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    move-result-object v2

    const/4 v7, -0x1

    const-string v3, "response_msg"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6d

    const-string v1, "error_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v1, "error_msg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->m(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)Z

    move-result v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->j(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)Z

    move-result v2

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    iget-object v5, v5, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->g:Landroid/os/Handler;

    invoke-static/range {v0 .. v5}, Lcom/sdgtl/mediahub/spr/contentProvider/n;->a(Landroid/content/Context;ZZILjava/lang/String;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->j(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)Z

    move-result v0

    if-nez v0, :cond_2b4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->n(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->o(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->a(Landroid/view/View;Landroid/view/View;)V

    move-object v0, v6

    move v1, v7

    :goto_67
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v2, v1, v6, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;ILjava/lang/CharSequence;Landroid/os/Handler;)V

    :cond_6c
    :goto_6c
    return-void

    :cond_6d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->l(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->p(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_1e9

    :try_start_7e
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->p(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    if-eqz v0, :cond_1d7

    iget v2, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->a:I

    if-nez v2, :cond_1c6

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->C:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Ljava/util/ArrayList;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->b(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->q(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->r(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)Lcom/sdgtl/mediahub/spr/screen/rx;

    move-result-object v0

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/rx;->b:Lcom/sdgtl/mediahub/spr/screen/rx;

    if-ne v0, v1, :cond_1bf

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_147

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    :cond_c8
    :goto_c8
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->v(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->w(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)Z

    move-result v0

    if-nez v0, :cond_f8

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->x(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_f8

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->y(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->x(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f0d0172

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->w(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_f8
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->z(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->h(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)V
    :try_end_10f
    .catch Ljava/lang/ClassCastException; {:try_start_7e .. :try_end_10f} :catch_177

    move-object v0, v6

    move v1, v7

    :goto_111
    :try_start_111
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->n(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->o(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->a(Landroid/view/View;Landroid/view/View;)V
    :try_end_122
    .catch Ljava/lang/ClassCastException; {:try_start_111 .. :try_end_122} :catch_124

    goto/16 :goto_67

    :catch_124
    move-exception v2

    :goto_125
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "product_id"

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->d(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->l(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v4, 0x9

    invoke-static {v4, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;J)V

    goto/16 :goto_67

    :cond_147
    :try_start_147
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->c:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    iget-wide v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c8

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->c:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;->c:Ljava/lang/String;

    const-string v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    const-string v1, "02"

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->c(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->i(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)V

    goto/16 :goto_c8

    :catch_177
    move-exception v0

    move-object v0, v6

    move v1, v7

    goto :goto_125

    :cond_17b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->s(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->c:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->C:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->c:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto/16 :goto_c8

    :cond_1a2
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->s(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->d(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->t(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->c(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->i(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)V

    goto/16 :goto_c8

    :cond_1bf
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->u(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)V
    :try_end_1c4
    .catch Ljava/lang/ClassCastException; {:try_start_147 .. :try_end_1c4} :catch_177

    goto/16 :goto_c8

    :cond_1c6
    :try_start_1c6
    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->b:Ljava/lang/String;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->a:I

    invoke-static {p1, v2, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_1cd
    .catch Ljava/lang/ClassCastException; {:try_start_1c6 .. :try_end_1cd} :catch_2a4

    move-result-object v0

    :try_start_1ce
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    iget-object v6, v2, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->i:Landroid/os/Handler;
    :try_end_1d2
    .catch Ljava/lang/ClassCastException; {:try_start_1ce .. :try_end_1d2} :catch_2a8

    move-object v8, v6

    move-object v6, v0

    move-object v0, v8

    goto/16 :goto_111

    :cond_1d7
    :try_start_1d7
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    const v2, 0x7f0a01c8

    invoke-virtual {v0, v2}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->getText(I)Ljava/lang/CharSequence;
    :try_end_1df
    .catch Ljava/lang/ClassCastException; {:try_start_1d7 .. :try_end_1df} :catch_2a4

    move-result-object v0

    :try_start_1e0
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    iget-object v6, v2, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->h:Landroid/os/Handler;
    :try_end_1e4
    .catch Ljava/lang/ClassCastException; {:try_start_1e0 .. :try_end_1e4} :catch_2ae

    move-object v8, v6

    move-object v6, v0

    move-object v0, v8

    goto/16 :goto_111

    :cond_1e9
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->l(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->A(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_2b4

    :try_start_1fa
    iget-wide v2, v2, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v2, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/eg;

    if-eqz v0, :cond_25c

    iget v2, v0, Lcom/sdgtl/mediahub/spr/common/eg;->a:I

    if-nez v2, :cond_24c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->B(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)V
    :try_end_20d
    .catch Ljava/lang/ClassCastException; {:try_start_1fa .. :try_end_20d} :catch_293

    move-object v0, v6

    move v1, v7

    :goto_20f
    :try_start_20f
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->n(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->o(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->a(Landroid/view/View;Landroid/view/View;)V
    :try_end_220
    .catch Ljava/lang/ClassCastException; {:try_start_20f .. :try_end_220} :catch_222

    goto/16 :goto_67

    :catch_222
    move-exception v2

    :goto_223
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "archive_info"

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->C(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v3, "archive_cmd"

    const-string v4, "02"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->l(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v4, 0x24

    invoke-static {v4, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->b(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;J)V

    goto/16 :goto_67

    :cond_24c
    :try_start_24c
    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/eg;->b:Ljava/lang/String;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/eg;->a:I

    invoke-static {p1, v2, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_253
    .catch Ljava/lang/ClassCastException; {:try_start_24c .. :try_end_253} :catch_297

    move-result-object v0

    :try_start_254
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    iget-object v6, v2, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->i:Landroid/os/Handler;
    :try_end_258
    .catch Ljava/lang/ClassCastException; {:try_start_254 .. :try_end_258} :catch_29a

    move-object v8, v6

    move-object v6, v0

    move-object v0, v8

    goto :goto_20f

    :cond_25c
    :try_start_25c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    const v2, 0x7f0a01c8

    invoke-virtual {v0, v2}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->getText(I)Ljava/lang/CharSequence;
    :try_end_264
    .catch Ljava/lang/ClassCastException; {:try_start_25c .. :try_end_264} :catch_297

    move-result-object v0

    :try_start_265
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    iget-object v6, v2, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->h:Landroid/os/Handler;
    :try_end_269
    .catch Ljava/lang/ClassCastException; {:try_start_265 .. :try_end_269} :catch_29f

    move-object v8, v6

    move-object v6, v0

    move-object v0, v8

    goto :goto_20f

    :cond_26d
    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE_IMAGE_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->j(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)Z

    move-result v0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->D(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qw;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreEpisode;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->s:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/widget/ImageView;Ljava/lang/String;I)Z

    goto/16 :goto_6c

    :catch_293
    move-exception v0

    move-object v0, v6

    move v1, v7

    goto :goto_223

    :catch_297
    move-exception v0

    move-object v0, v6

    goto :goto_223

    :catch_29a
    move-exception v2

    move-object v8, v6

    move-object v6, v0

    move-object v0, v8

    goto :goto_223

    :catch_29f
    move-exception v2

    move-object v8, v6

    move-object v6, v0

    move-object v0, v8

    goto :goto_223

    :catch_2a4
    move-exception v0

    move-object v0, v6

    goto/16 :goto_125

    :catch_2a8
    move-exception v2

    move-object v8, v6

    move-object v6, v0

    move-object v0, v8

    goto/16 :goto_125

    :catch_2ae
    move-exception v2

    move-object v8, v6

    move-object v6, v0

    move-object v0, v8

    goto/16 :goto_125

    :cond_2b4
    move-object v0, v6

    move v1, v7

    goto/16 :goto_67
.end method
