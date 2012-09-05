.class final Lcom/sdgtl/mediahub/spr/screen/to;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14

    const/4 v5, 0x2

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_71

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_71

    const-string v4, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_657

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_71

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->d(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/os/Bundle;)Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    move-result-object v4

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const-string v5, "response_msg"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_72

    const-string v1, "error_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v1, "error_msg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->e(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Z

    move-result v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->c(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Z

    move-result v2

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    iget-object v5, v5, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->c:Landroid/os/Handler;

    invoke-static/range {v0 .. v5}, Lcom/sdgtl/mediahub/spr/contentProvider/n;->a(Landroid/content/Context;ZZILjava/lang/String;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->c(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Z

    move-result v0

    if-nez v0, :cond_6d2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->f(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->g(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->a(Landroid/view/View;Landroid/view/View;)V

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    :cond_6c
    :goto_6c
    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v3, v2, v1, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;ILjava/lang/CharSequence;Landroid/os/Handler;)V

    :cond_71
    :goto_71
    return-void

    :cond_72
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->d(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->h(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)J

    move-result-wide v9

    invoke-static {v4, v9, v10}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_103

    :try_start_83
    iget-wide v0, v4, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/ej;

    if-eqz v0, :cond_d2

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/ej;->a:I

    if-nez v1, :cond_c5

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->i(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->i(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ej;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->j(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->i(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->d(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Ljava/util/ArrayList;I)J
    :try_end_c1
    .catch Ljava/lang/ClassCastException; {:try_start_83 .. :try_end_c1} :catch_e0

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    goto :goto_6c

    :cond_c5
    :try_start_c5
    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/ej;->b:Ljava/lang/String;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ej;->a:I

    invoke-static {p1, v1, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_cc
    .catch Ljava/lang/ClassCastException; {:try_start_c5 .. :try_end_cc} :catch_6c3

    move-result-object v1

    :try_start_cd
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->e:Landroid/os/Handler;
    :try_end_d1
    .catch Ljava/lang/ClassCastException; {:try_start_cd .. :try_end_d1} :catch_6c8

    goto :goto_6c

    :cond_d2
    :try_start_d2
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->getText(I)Ljava/lang/CharSequence;
    :try_end_da
    .catch Ljava/lang/ClassCastException; {:try_start_d2 .. :try_end_da} :catch_6c3

    move-result-object v1

    :try_start_db
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->d:Landroid/os/Handler;
    :try_end_df
    .catch Ljava/lang/ClassCastException; {:try_start_db .. :try_end_df} :catch_6cd

    goto :goto_6c

    :catch_e0
    move-exception v0

    move-object v0, v7

    move v1, v8

    :goto_e3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "product_Type_Code"

    const-string v4, "02"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->d(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v4, 0x7

    invoke-static {v4, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;J)V

    move v2, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_6c

    :cond_103
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->d(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->k(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)J

    move-result-wide v9

    invoke-static {v4, v9, v10}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_46b

    :try_start_114
    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    iget-wide v9, v4, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v9, v10}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    invoke-static {v5, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->l(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v0

    if-eqz v0, :cond_439

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->l(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->a:I

    if-nez v0, :cond_366

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->l(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->e:Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;->a:I

    if-eqz v0, :cond_366

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->m(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->n(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_269

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->n(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->n(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->G:I

    if-ne v0, v1, :cond_269

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->n(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->n(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->n(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->l(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->e:Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/screen/ts;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->n(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/ts;->a(Ljava/util/ArrayList;)V

    :cond_1a3
    :goto_1a3
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->t(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->n(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->refresh(Ljava/util/ArrayList;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->n(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->d(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Ljava/util/ArrayList;I)J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->u(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->b(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->u(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)I

    move-result v1

    add-int/lit8 v1, v1, 0x20

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->c(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;Z)V
    :try_end_1e7
    .catch Ljava/lang/ClassCastException; {:try_start_114 .. :try_end_1e7} :catch_32a

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    :goto_1ea
    :try_start_1ea
    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->c(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Z

    move-result v3

    if-eqz v3, :cond_6c

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->v(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Z

    move-result v3

    if-nez v3, :cond_233

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->w(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Landroid/view/Menu;

    move-result-object v3

    if-eqz v3, :cond_233

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->x(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->w(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Landroid/view/Menu;

    move-result-object v3

    const v4, 0x7f0d0174

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->v(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Z

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->w(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Landroid/view/Menu;

    move-result-object v3

    const v4, 0x7f0d0172

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->v(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Z

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_233
    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->f(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->g(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Landroid/widget/RelativeLayout;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->a(Landroid/view/View;Landroid/view/View;)V
    :try_end_244
    .catch Ljava/lang/ClassCastException; {:try_start_1ea .. :try_end_244} :catch_246

    goto/16 :goto_6c

    :catch_246
    move-exception v3

    :goto_247
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "product_id"

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->y(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->d(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v5, 0x9

    invoke-static {v5, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->b(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;J)V

    goto/16 :goto_6c

    :cond_269
    :try_start_269
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->o(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->l(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_2e7

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->p(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)I

    move-result v0

    if-gez v0, :cond_29f

    move v2, v3

    :goto_28b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->i(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_330

    move v0, v3

    :goto_298
    if-eqz v0, :cond_2a4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0, v2}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;I)V

    :cond_29f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->j(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)V

    :cond_2a4
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->q(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->l(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->s:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/widget/ImageView;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2d4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->l(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->d(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Ljava/util/ArrayList;I)J

    :cond_2d4
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->r(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->l(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2e7
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->n(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->n(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->l(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->e:Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/screen/ts;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->n(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/ts;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->n(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1a3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->s(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_1a3

    :catch_32a
    move-exception v0

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    goto/16 :goto_247

    :cond_330
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->i(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->a:Ljava/lang/String;

    if-eqz v0, :cond_361

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->l(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget v4, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->d:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->i(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v4, v0, :cond_361

    move v0, v1

    goto/16 :goto_298

    :cond_361
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_28b

    :cond_366
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->l(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->a:I

    const/16 v3, 0x2329

    if-eq v0, v3, :cond_37e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->l(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->e:Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;->a:I

    if-nez v0, :cond_41d

    :cond_37e
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->m(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->n(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->b(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    const/16 v2, 0x20

    invoke-static {v0, v2}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->c(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->o(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->l(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->l(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->e:Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;->a:I

    if-nez v0, :cond_401

    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_401

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->q(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->l(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->s:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/widget/ImageView;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_3ee

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->l(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->d(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Ljava/util/ArrayList;I)J

    :cond_3ee
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->r(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->l(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_401
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->f(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->g(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->a(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;Z)V
    :try_end_418
    .catch Ljava/lang/ClassCastException; {:try_start_269 .. :try_end_418} :catch_32a

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    goto/16 :goto_1ea

    :cond_41d
    :try_start_41d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->l(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->l(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v1

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->a:I

    invoke-static {p1, v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_430
    .catch Ljava/lang/ClassCastException; {:try_start_41d .. :try_end_430} :catch_6b4

    move-result-object v7

    :try_start_431
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    iget-object v6, v0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->e:Landroid/os/Handler;
    :try_end_435
    .catch Ljava/lang/ClassCastException; {:try_start_431 .. :try_end_435} :catch_6b9

    move-object v0, v6

    move-object v1, v7

    goto/16 :goto_1ea

    :cond_439
    :try_start_439
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->m(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->n(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->b(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->c(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;Z)V
    :try_end_45a
    .catch Ljava/lang/ClassCastException; {:try_start_439 .. :try_end_45a} :catch_32a

    :try_start_45a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->getText(I)Ljava/lang/CharSequence;
    :try_end_462
    .catch Ljava/lang/ClassCastException; {:try_start_45a .. :try_end_462} :catch_6b4

    move-result-object v7

    :try_start_463
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    iget-object v6, v0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->d:Landroid/os/Handler;
    :try_end_467
    .catch Ljava/lang/ClassCastException; {:try_start_463 .. :try_end_467} :catch_6be

    move-object v0, v6

    move-object v1, v7

    goto/16 :goto_1ea

    :cond_46b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->d(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->z(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)J

    move-result-wide v9

    invoke-static {v4, v9, v10}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_6d2

    :try_start_47c
    iget-wide v3, v4, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v3, v4}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/ek;

    if-eqz v0, :cond_648

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v3, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;Lcom/sdgtl/mediahub/spr/common/ek;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->A(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->a:I

    if-nez v0, :cond_5a8

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->B(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_54c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->B(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->B(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->G:I

    if-ne v0, v1, :cond_54c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->B(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->n(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_4d2
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->B(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->A(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/ek;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/screen/ts;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->B(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/ts;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->t(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->B(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->refresh(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->f(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->g(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->a(Landroid/view/View;Landroid/view/View;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->B(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->d(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Ljava/util/ArrayList;I)J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->u(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->b(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->u(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)I

    move-result v1

    add-int/lit8 v1, v1, 0x20

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->c(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;Z)V

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    goto/16 :goto_6c

    :cond_54c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->B(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_555
    .catch Ljava/lang/ClassCastException; {:try_start_47c .. :try_end_555} :catch_557

    goto/16 :goto_4d2

    :catch_557
    move-exception v0

    move-object v0, v7

    move v1, v8

    :goto_55a
    new-instance v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    invoke-direct {v2}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;-><init>()V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->E(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)I

    move-result v3

    iput v3, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->a:I

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->u(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)I

    move-result v3

    iput v3, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->b:I

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->F(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->G(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->d:Ljava/lang/String;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->b()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->f:Ljava/lang/String;

    const-string v3, "02"

    iput-object v3, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->e:Ljava/lang/String;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "search_info"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->d(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v4, 0xb

    invoke-static {v4, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->c(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;J)V

    move v2, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_6c

    :cond_5a8
    :try_start_5a8
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->A(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->a:I

    const/16 v1, 0x2329

    if-eq v0, v1, :cond_5be

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->A(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->d:I

    if-nez v0, :cond_62e

    :cond_5be
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->B(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->b(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->c(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/screen/ts;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->B(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/ts;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->t(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->B(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->refresh(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->C(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->o(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->D(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->f(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->g(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->a(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;Z)V
    :try_end_629
    .catch Ljava/lang/ClassCastException; {:try_start_5a8 .. :try_end_629} :catch_557

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    goto/16 :goto_6c

    :cond_62e
    :try_start_62e
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->A(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->A(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v1

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/ek;->a:I

    invoke-static {p1, v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_641
    .catch Ljava/lang/ClassCastException; {:try_start_62e .. :try_end_641} :catch_6a5

    move-result-object v1

    :try_start_642
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->e:Landroid/os/Handler;
    :try_end_646
    .catch Ljava/lang/ClassCastException; {:try_start_642 .. :try_end_646} :catch_6aa

    goto/16 :goto_6c

    :cond_648
    :try_start_648
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->getText(I)Ljava/lang/CharSequence;
    :try_end_650
    .catch Ljava/lang/ClassCastException; {:try_start_648 .. :try_end_650} :catch_6a5

    move-result-object v1

    :try_start_651
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->d:Landroid/os/Handler;
    :try_end_655
    .catch Ljava/lang/ClassCastException; {:try_start_651 .. :try_end_655} :catch_6af

    goto/16 :goto_6c

    :cond_657
    const-string v2, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE_IMAGE_UPDATED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/screen/ts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/ts;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->t(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->notifyDataSetChanged()V

    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_71

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->c(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Z

    move-result v0

    if-eqz v0, :cond_69a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->l(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v0

    if-eqz v0, :cond_69a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->q(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->l(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->s:Ljava/lang/String;

    invoke-static {v0, v1, v5}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/widget/ImageView;Ljava/lang/String;I)Z

    :cond_69a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/to;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;->H(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonList;)Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->notifyDataSetChanged()V

    goto/16 :goto_71

    :catch_6a5
    move-exception v0

    move-object v0, v7

    move v1, v2

    goto/16 :goto_55a

    :catch_6aa
    move-exception v0

    move-object v0, v1

    move v1, v2

    goto/16 :goto_55a

    :catch_6af
    move-exception v0

    move-object v0, v1

    move v1, v2

    goto/16 :goto_55a

    :catch_6b4
    move-exception v0

    move-object v0, v6

    move-object v1, v7

    goto/16 :goto_247

    :catch_6b9
    move-exception v0

    move-object v0, v6

    move-object v1, v7

    goto/16 :goto_247

    :catch_6be
    move-exception v0

    move-object v0, v6

    move-object v1, v7

    goto/16 :goto_247

    :catch_6c3
    move-exception v0

    move-object v0, v7

    move v1, v2

    goto/16 :goto_e3

    :catch_6c8
    move-exception v0

    move-object v0, v1

    move v1, v2

    goto/16 :goto_e3

    :catch_6cd
    move-exception v0

    move-object v0, v1

    move v1, v2

    goto/16 :goto_e3

    :cond_6d2
    move-object v0, v6

    move-object v1, v7

    move v2, v8

    goto/16 :goto_6c
.end method
