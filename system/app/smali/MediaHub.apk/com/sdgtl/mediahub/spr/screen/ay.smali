.class final Lcom/sdgtl/mediahub/spr/screen/ay;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

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

    if-eqz v2, :cond_28e

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6c

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->l(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

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

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->m(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Z

    move-result v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->j(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Z

    move-result v2

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    iget-object v5, v5, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->g:Landroid/os/Handler;

    invoke-static/range {v0 .. v5}, Lcom/sdgtl/mediahub/spr/contentProvider/n;->a(Landroid/content/Context;ZZILjava/lang/String;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->j(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Z

    move-result v0

    if-eqz v0, :cond_2d5

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->n(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->o(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->a(Landroid/view/View;Landroid/view/View;)V

    move-object v0, v6

    move v1, v7

    :goto_67
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v2, v1, v6, v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;ILjava/lang/CharSequence;Landroid/os/Handler;)V

    :cond_6c
    :goto_6c
    return-void

    :cond_6d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->l(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->p(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_20a

    :try_start_7e
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->p(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    if-eqz v0, :cond_1f8

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->a:I

    if-nez v0, :cond_1db

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->C:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Ljava/util/ArrayList;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->b(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->q(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->r(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Lcom/sdgtl/mediahub/spr/screen/bz;

    move-result-object v0

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/bz;->b:Lcom/sdgtl/mediahub/spr/screen/bz;

    if-ne v0, v1, :cond_1d4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    :cond_ce
    :goto_ce
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->v(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->w(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Z

    move-result v0

    if-nez v0, :cond_fe

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->x(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_fe

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->y(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->x(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f0d0172

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->w(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_fe
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->z(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->A(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->B(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->h(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)V
    :try_end_112
    .catch Ljava/lang/ClassCastException; {:try_start_7e .. :try_end_112} :catch_18c

    move-object v0, v6

    move v1, v7

    :goto_114
    :try_start_114
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->n(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->o(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->a(Landroid/view/View;Landroid/view/View;)V
    :try_end_125
    .catch Ljava/lang/ClassCastException; {:try_start_114 .. :try_end_125} :catch_127

    goto/16 :goto_67

    :catch_127
    move-exception v2

    :goto_128
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "product_id"

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->d(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->l(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v4, 0x9

    invoke-static {v4, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;J)V

    goto/16 :goto_67

    :cond_14a
    :try_start_14a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->c:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    iget-wide v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_ce

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->c:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;->c:Ljava/lang/String;

    const-string v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->c:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;->c:Ljava/lang/String;

    const-string v1, "04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    :cond_17e
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    const-string v1, "02"

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->c(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->i(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)V

    goto/16 :goto_ce

    :catch_18c
    move-exception v0

    move-object v0, v6

    move v1, v7

    goto :goto_128

    :cond_190
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->s(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1b7

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->c:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->C:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->c:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto/16 :goto_ce

    :cond_1b7
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->s(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->d(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->t(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->c(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->i(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)V

    goto/16 :goto_ce

    :cond_1d4
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->u(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)V
    :try_end_1d9
    .catch Ljava/lang/ClassCastException; {:try_start_14a .. :try_end_1d9} :catch_18c

    goto/16 :goto_ce

    :cond_1db
    :try_start_1db
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v2

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->a:I

    invoke-static {p1, v0, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_1ee
    .catch Ljava/lang/ClassCastException; {:try_start_1db .. :try_end_1ee} :catch_2c5

    move-result-object v0

    :try_start_1ef
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    iget-object v6, v2, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->i:Landroid/os/Handler;
    :try_end_1f3
    .catch Ljava/lang/ClassCastException; {:try_start_1ef .. :try_end_1f3} :catch_2c9

    move-object v8, v6

    move-object v6, v0

    move-object v0, v8

    goto/16 :goto_114

    :cond_1f8
    :try_start_1f8
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    const v2, 0x7f0a01c8

    invoke-virtual {v0, v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->getText(I)Ljava/lang/CharSequence;
    :try_end_200
    .catch Ljava/lang/ClassCastException; {:try_start_1f8 .. :try_end_200} :catch_2c5

    move-result-object v0

    :try_start_201
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    iget-object v6, v2, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->i:Landroid/os/Handler;
    :try_end_205
    .catch Ljava/lang/ClassCastException; {:try_start_201 .. :try_end_205} :catch_2cf

    move-object v8, v6

    move-object v6, v0

    move-object v0, v8

    goto/16 :goto_114

    :cond_20a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->l(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->C(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_2d5

    :try_start_21b
    iget-wide v2, v2, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v2, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/eg;

    if-eqz v0, :cond_27d

    iget v2, v0, Lcom/sdgtl/mediahub/spr/common/eg;->a:I

    if-nez v2, :cond_26d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->D(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)V
    :try_end_22e
    .catch Ljava/lang/ClassCastException; {:try_start_21b .. :try_end_22e} :catch_2b4

    move-object v0, v6

    move v1, v7

    :goto_230
    :try_start_230
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->n(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->o(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->a(Landroid/view/View;Landroid/view/View;)V
    :try_end_241
    .catch Ljava/lang/ClassCastException; {:try_start_230 .. :try_end_241} :catch_243

    goto/16 :goto_67

    :catch_243
    move-exception v2

    :goto_244
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "archive_info"

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->E(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v3, "archive_cmd"

    const-string v4, "02"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->l(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v4, 0x24

    invoke-static {v4, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->b(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;J)V

    goto/16 :goto_67

    :cond_26d
    :try_start_26d
    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/eg;->b:Ljava/lang/String;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/eg;->a:I

    invoke-static {p1, v2, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_274
    .catch Ljava/lang/ClassCastException; {:try_start_26d .. :try_end_274} :catch_2b8

    move-result-object v0

    :try_start_275
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    iget-object v6, v2, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->i:Landroid/os/Handler;
    :try_end_279
    .catch Ljava/lang/ClassCastException; {:try_start_275 .. :try_end_279} :catch_2bb

    move-object v8, v6

    move-object v6, v0

    move-object v0, v8

    goto :goto_230

    :cond_27d
    :try_start_27d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    const v2, 0x7f0a01c8

    invoke-virtual {v0, v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->getText(I)Ljava/lang/CharSequence;
    :try_end_285
    .catch Ljava/lang/ClassCastException; {:try_start_27d .. :try_end_285} :catch_2b8

    move-result-object v0

    :try_start_286
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    iget-object v6, v2, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->h:Landroid/os/Handler;
    :try_end_28a
    .catch Ljava/lang/ClassCastException; {:try_start_286 .. :try_end_28a} :catch_2c0

    move-object v8, v6

    move-object v6, v0

    move-object v0, v8

    goto :goto_230

    :cond_28e
    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE_IMAGE_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->j(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Z

    move-result v0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->F(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ay;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->s:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/widget/ImageView;Ljava/lang/String;I)Z

    goto/16 :goto_6c

    :catch_2b4
    move-exception v0

    move-object v0, v6

    move v1, v7

    goto :goto_244

    :catch_2b8
    move-exception v0

    move-object v0, v6

    goto :goto_244

    :catch_2bb
    move-exception v2

    move-object v8, v6

    move-object v6, v0

    move-object v0, v8

    goto :goto_244

    :catch_2c0
    move-exception v2

    move-object v8, v6

    move-object v6, v0

    move-object v0, v8

    goto :goto_244

    :catch_2c5
    move-exception v0

    move-object v0, v6

    goto/16 :goto_128

    :catch_2c9
    move-exception v2

    move-object v8, v6

    move-object v6, v0

    move-object v0, v8

    goto/16 :goto_128

    :catch_2cf
    move-exception v2

    move-object v8, v6

    move-object v6, v0

    move-object v0, v8

    goto/16 :goto_128

    :cond_2d5
    move-object v0, v6

    move v1, v7

    goto/16 :goto_67
.end method
