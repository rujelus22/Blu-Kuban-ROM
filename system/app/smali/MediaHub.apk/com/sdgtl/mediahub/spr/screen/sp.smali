.class final Lcom/sdgtl/mediahub/spr/screen/sp;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13

    const/4 v6, 0x0

    const/16 v2, 0xa

    const/4 v8, 0x1

    if-eqz p2, :cond_73

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_73

    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_252

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_73

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->e(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/os/Bundle;)Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    move-result-object v1

    const/4 v7, -0x1

    const-string v3, "response_msg"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_88

    const-string v1, "error_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v1, "error_msg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->f(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Z

    move-result v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->d(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Z

    move-result v2

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    iget-object v5, v5, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->d:Landroid/os/Handler;

    invoke-static/range {v0 .. v5}, Lcom/sdgtl/mediahub/spr/contentProvider/n;->a(Landroid/content/Context;ZZILjava/lang/String;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->d(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Z

    move-result v0

    if-nez v0, :cond_2bf

    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v8, :cond_74

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->g(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->h(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->a(Landroid/view/View;Landroid/view/View;)V

    move-object v0, v6

    move v1, v7

    :goto_6e
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v2, v1, v6, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;ILjava/lang/CharSequence;Landroid/os/Handler;)V

    :cond_73
    :goto_73
    return-void

    :cond_74
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->g(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->i(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->a(Landroid/view/View;Landroid/view/View;)V

    move-object v0, v6

    move v1, v7

    goto :goto_6e

    :cond_88
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->e(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->j(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_11d

    :try_start_99
    iget-wide v0, v1, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/ej;

    if-eqz v0, :cond_e9

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/ej;->a:I

    if-nez v1, :cond_da

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->k(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->k(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ej;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->l(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->k(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->e(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Ljava/util/ArrayList;I)J
    :try_end_d7
    .catch Ljava/lang/ClassCastException; {:try_start_99 .. :try_end_d7} :catch_fa

    move-object v0, v6

    move v1, v7

    goto :goto_6e

    :cond_da
    :try_start_da
    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/ej;->b:Ljava/lang/String;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ej;->a:I

    invoke-static {p1, v1, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_e1
    .catch Ljava/lang/ClassCastException; {:try_start_da .. :try_end_e1} :catch_2b0

    move-result-object v1

    :try_start_e2
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->f:Landroid/os/Handler;
    :try_end_e6
    .catch Ljava/lang/ClassCastException; {:try_start_e2 .. :try_end_e6} :catch_2b5

    move-object v6, v1

    move v1, v2

    goto :goto_6e

    :cond_e9
    :try_start_e9
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->getText(I)Ljava/lang/CharSequence;
    :try_end_f1
    .catch Ljava/lang/ClassCastException; {:try_start_e9 .. :try_end_f1} :catch_2b0

    move-result-object v1

    :try_start_f2
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->e:Landroid/os/Handler;
    :try_end_f6
    .catch Ljava/lang/ClassCastException; {:try_start_f2 .. :try_end_f6} :catch_2ba

    move-object v6, v1

    move v1, v2

    goto/16 :goto_6e

    :catch_fa
    move-exception v0

    move-object v0, v6

    move v1, v7

    :goto_fd
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "product_Type_Code"

    const-string v4, "02"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->e(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v4, 0x7

    invoke-static {v4, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;J)V

    move-object v9, v6

    move-object v6, v0

    move-object v0, v9

    goto/16 :goto_6e

    :cond_11d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->e(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->m(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_2bf

    :try_start_12e
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->m(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    if-eqz v0, :cond_22d

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->a:I

    if-nez v1, :cond_21c

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->D:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/gk;->c(Ljava/util/ArrayList;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;I)V

    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v8, :cond_182

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->e:Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->e(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Ljava/util/ArrayList;I)J

    :cond_182
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->e:Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$RelevantProductList;->d:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->C:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Ljava/util/ArrayList;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->b(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->n(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->o(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->p(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Z

    move-result v0

    if-nez v0, :cond_1d9

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->q(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_1d9

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->r(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->q(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f0d0172

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->p(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_1d9
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->s(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)V
    :try_end_1de
    .catch Ljava/lang/ClassCastException; {:try_start_12e .. :try_end_1de} :catch_298

    move-object v0, v6

    move v1, v7

    :goto_1e0
    :try_start_1e0
    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v8, :cond_23f

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->g(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->h(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->a(Landroid/view/View;Landroid/view/View;)V
    :try_end_1f7
    .catch Ljava/lang/ClassCastException; {:try_start_1e0 .. :try_end_1f7} :catch_1f9

    goto/16 :goto_6e

    :catch_1f9
    move-exception v2

    :goto_1fa
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "product_id"

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->c(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->e(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v4, 0x9

    invoke-static {v4, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->b(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;J)V

    goto/16 :goto_6e

    :cond_21c
    :try_start_21c
    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->b:Ljava/lang/String;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->a:I

    invoke-static {p1, v1, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_223
    .catch Ljava/lang/ClassCastException; {:try_start_21c .. :try_end_223} :catch_29d

    move-result-object v0

    :try_start_224
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    iget-object v6, v1, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->f:Landroid/os/Handler;
    :try_end_228
    .catch Ljava/lang/ClassCastException; {:try_start_224 .. :try_end_228} :catch_2a2

    move v1, v2

    move-object v9, v0

    move-object v0, v6

    move-object v6, v9

    goto :goto_1e0

    :cond_22d
    :try_start_22d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->getText(I)Ljava/lang/CharSequence;
    :try_end_235
    .catch Ljava/lang/ClassCastException; {:try_start_22d .. :try_end_235} :catch_29d

    move-result-object v0

    :try_start_236
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    iget-object v6, v1, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->e:Landroid/os/Handler;
    :try_end_23a
    .catch Ljava/lang/ClassCastException; {:try_start_236 .. :try_end_23a} :catch_2a9

    move v1, v2

    move-object v9, v0

    move-object v0, v6

    move-object v6, v9

    goto :goto_1e0

    :cond_23f
    :try_start_23f
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->g(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->i(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->a(Landroid/view/View;Landroid/view/View;)V
    :try_end_250
    .catch Ljava/lang/ClassCastException; {:try_start_23f .. :try_end_250} :catch_1f9

    goto/16 :goto_6e

    :cond_252
    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE_IMAGE_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->d(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Z

    move-result v0

    if-eqz v0, :cond_27e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v0

    if-eqz v0, :cond_27e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->t(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->a(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->s:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/widget/ImageView;Ljava/lang/String;I)Z

    :cond_27e
    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v8, :cond_73

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->u(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/sp;->a:Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;->v(Lcom/sdgtl/mediahub/spr/screen/TvStoreSeasonDetail;)Lcom/sdgtl/mediahub/spr/screen/ss;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/ss;->notifyDataSetChanged()V

    goto/16 :goto_73

    :catch_298
    move-exception v0

    move-object v0, v6

    move v1, v7

    goto/16 :goto_1fa

    :catch_29d
    move-exception v0

    move-object v0, v6

    move v1, v2

    goto/16 :goto_1fa

    :catch_2a2
    move-exception v1

    move v1, v2

    move-object v9, v0

    move-object v0, v6

    move-object v6, v9

    goto/16 :goto_1fa

    :catch_2a9
    move-exception v1

    move v1, v2

    move-object v9, v0

    move-object v0, v6

    move-object v6, v9

    goto/16 :goto_1fa

    :catch_2b0
    move-exception v0

    move-object v0, v6

    move v1, v2

    goto/16 :goto_fd

    :catch_2b5
    move-exception v0

    move-object v0, v1

    move v1, v2

    goto/16 :goto_fd

    :catch_2ba
    move-exception v0

    move-object v0, v1

    move v1, v2

    goto/16 :goto_fd

    :cond_2bf
    move-object v0, v6

    move v1, v7

    goto/16 :goto_6e
.end method
