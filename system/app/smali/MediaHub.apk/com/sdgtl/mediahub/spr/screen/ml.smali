.class final Lcom/sdgtl/mediahub/spr/screen/ml;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/ml;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    const/4 v6, 0x0

    const/16 v1, 0xa

    if-eqz p2, :cond_4e

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4e

    const-string v2, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_103

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4e

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ml;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/os/Bundle;)Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    move-result-object v2

    const/4 v7, -0x1

    const-string v3, "response_msg"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4f

    const-string v1, "error_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v1, "error_msg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ml;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ml;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->b(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;)Z

    move-result v1

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/ml;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;

    iget-object v5, v5, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->c:Landroid/os/Handler;

    invoke-static/range {v0 .. v5}, Lcom/sdgtl/mediahub/spr/contentProvider/n;->a(Landroid/content/Context;ZZILjava/lang/String;Landroid/os/Handler;)V

    move-object v0, v6

    move v1, v7

    :goto_49
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ml;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;

    invoke-static {v2, v1, v6, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;ILjava/lang/CharSequence;Landroid/os/Handler;)V

    :cond_4e
    :goto_4e
    return-void

    :cond_4f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ml;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ml;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->c(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_138

    :try_start_60
    iget-wide v2, v2, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v2, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/es;

    if-eqz v0, :cond_f2

    iget v2, v0, Lcom/sdgtl/mediahub/spr/common/es;->a:I

    if-nez v2, :cond_e2

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->c()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ml;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;Lcom/sdgtl/mediahub/spr/common/es;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ml;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ml;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->d(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;)Lcom/sdgtl/mediahub/spr/common/es;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/es;->r:Lcom/sdgtl/mediahub/spr/common/er;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;Lcom/sdgtl/mediahub/spr/common/er;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ml;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ml;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->d(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;)Lcom/sdgtl/mediahub/spr/common/es;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ml;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->e(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;)Lcom/sdgtl/mediahub/spr/common/er;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;Lcom/sdgtl/mediahub/spr/common/es;Lcom/sdgtl/mediahub/spr/common/er;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ml;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->e(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;)Lcom/sdgtl/mediahub/spr/common/er;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ml;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Ljava/util/ArrayList;I)J
    :try_end_ab
    .catch Ljava/lang/ClassCastException; {:try_start_60 .. :try_end_ab} :catch_127

    move-object v0, v6

    move v1, v7

    :goto_ad
    :try_start_ad
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ml;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ml;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->f(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/ml;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->g(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->a(Landroid/view/View;Landroid/view/View;)V
    :try_end_be
    .catch Ljava/lang/ClassCastException; {:try_start_ad .. :try_end_be} :catch_bf

    goto :goto_49

    :catch_bf
    move-exception v2

    :goto_c0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "order_id"

    sget-object v4, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->a:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/ml;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/ml;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v4, 0x22

    invoke-static {v4, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;J)V

    goto/16 :goto_49

    :cond_e2
    :try_start_e2
    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/es;->b:Ljava/lang/String;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/es;->a:I

    invoke-static {p1, v2, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_e9
    .catch Ljava/lang/ClassCastException; {:try_start_e2 .. :try_end_e9} :catch_12b

    move-result-object v0

    :try_start_ea
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ml;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;

    iget-object v6, v2, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->e:Landroid/os/Handler;
    :try_end_ee
    .catch Ljava/lang/ClassCastException; {:try_start_ea .. :try_end_ee} :catch_12e

    move-object v8, v6

    move-object v6, v0

    move-object v0, v8

    goto :goto_ad

    :cond_f2
    :try_start_f2
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ml;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;

    const v2, 0x7f0a01c8

    invoke-virtual {v0, v2}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->getText(I)Ljava/lang/CharSequence;
    :try_end_fa
    .catch Ljava/lang/ClassCastException; {:try_start_f2 .. :try_end_fa} :catch_12b

    move-result-object v0

    :try_start_fb
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ml;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;

    iget-object v6, v2, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->d:Landroid/os/Handler;
    :try_end_ff
    .catch Ljava/lang/ClassCastException; {:try_start_fb .. :try_end_ff} :catch_133

    move-object v8, v6

    move-object v6, v0

    move-object v0, v8

    goto :goto_ad

    :cond_103
    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE_IMAGE_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->b()Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ml;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->h(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ml;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;->d(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseListDetail;)Lcom/sdgtl/mediahub/spr/common/es;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/es;->r:Lcom/sdgtl/mediahub/spr/common/er;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/er;->p:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/widget/ImageView;Ljava/lang/String;I)Z

    goto/16 :goto_4e

    :catch_127
    move-exception v0

    move-object v0, v6

    move v1, v7

    goto :goto_c0

    :catch_12b
    move-exception v0

    move-object v0, v6

    goto :goto_c0

    :catch_12e
    move-exception v2

    move-object v8, v6

    move-object v6, v0

    move-object v0, v8

    goto :goto_c0

    :catch_133
    move-exception v2

    move-object v8, v6

    move-object v6, v0

    move-object v0, v8

    goto :goto_c0

    :cond_138
    move-object v0, v6

    move v1, v7

    goto/16 :goto_49
.end method
