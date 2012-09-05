.class final Lcom/sdgtl/mediahub/spr/screen/lo;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/lo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    const/4 v6, 0x0

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eqz p2, :cond_4e

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4e

    const-string v3, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_174

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4e

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/lo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->g(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/os/Bundle;)Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    move-result-object v3

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

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/lo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/lo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->m(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)Z

    move-result v1

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/lo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    iget-object v5, v5, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->d:Landroid/os/Handler;

    invoke-static/range {v0 .. v5}, Lcom/sdgtl/mediahub/spr/contentProvider/n;->a(Landroid/content/Context;ZZILjava/lang/String;Landroid/os/Handler;)V

    move-object v0, v6

    move v1, v7

    :goto_49
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/lo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    invoke-static {v2, v1, v6, v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->a(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;ILjava/lang/CharSequence;Landroid/os/Handler;)V

    :cond_4e
    :goto_4e
    return-void

    :cond_4f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/lo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->g(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/lo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->n(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_19f

    :try_start_60
    iget-wide v2, v3, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v2, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/et;

    if-eqz v0, :cond_163

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/lo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    iget v3, v0, Lcom/sdgtl/mediahub/spr/common/et;->c:I

    invoke-static {v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->b(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;I)V

    iget v2, v0, Lcom/sdgtl/mediahub/spr/common/et;->a:I

    if-nez v2, :cond_141

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/lo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->o(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/lo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_134

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/lo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/lo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sdgtl/mediahub/spr/common/eu;

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/eu;->F:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_134

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/lo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/lo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_ae
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/lo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->a:Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/et;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/lo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->d(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)Lcom/sdgtl/mediahub/spr/screen/md;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/lo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/md;->a(Ljava/util/ArrayList;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/lo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/lo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->g(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Ljava/util/ArrayList;I)J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/lo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/lo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->f(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->c(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/lo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->f(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)I

    move-result v1

    add-int/lit8 v1, v1, 0x20

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->d(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;I)V
    :try_end_f1
    .catch Ljava/lang/ClassCastException; {:try_start_60 .. :try_end_f1} :catch_13d

    move-object v0, v6

    move v1, v7

    :goto_f3
    :try_start_f3
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/lo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/lo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->q(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/lo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->r(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->a(Landroid/view/View;Landroid/view/View;)V
    :try_end_104
    .catch Ljava/lang/ClassCastException; {:try_start_f3 .. :try_end_104} :catch_106

    goto/16 :goto_49

    :catch_106
    move-exception v2

    :goto_107
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "start_num"

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/lo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->e(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "end_num"

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/lo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->f(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/lo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/lo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->g(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v4, 0x21

    invoke-static {v4, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->a(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;J)V

    goto/16 :goto_49

    :cond_134
    :try_start_134
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/lo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_ae

    :catch_13d
    move-exception v0

    move-object v0, v6

    move v1, v7

    goto :goto_107

    :cond_141
    iget v2, v0, Lcom/sdgtl/mediahub/spr/common/et;->a:I

    const/16 v3, 0x2329

    if-eq v2, v3, :cond_14b

    iget v2, v0, Lcom/sdgtl/mediahub/spr/common/et;->c:I

    if-nez v2, :cond_153

    :cond_14b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/lo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->p(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)V
    :try_end_150
    .catch Ljava/lang/ClassCastException; {:try_start_134 .. :try_end_150} :catch_13d

    move-object v0, v6

    move v1, v7

    goto :goto_f3

    :cond_153
    :try_start_153
    iget-object v2, v0, Lcom/sdgtl/mediahub/spr/common/et;->b:Ljava/lang/String;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/et;->a:I

    invoke-static {p1, v2, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_15a
    .catch Ljava/lang/ClassCastException; {:try_start_153 .. :try_end_15a} :catch_18f

    move-result-object v0

    :try_start_15b
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/lo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    iget-object v6, v2, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->f:Landroid/os/Handler;
    :try_end_15f
    .catch Ljava/lang/ClassCastException; {:try_start_15b .. :try_end_15f} :catch_193

    move-object v8, v6

    move-object v6, v0

    move-object v0, v8

    goto :goto_f3

    :cond_163
    :try_start_163
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/lo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    const v2, 0x7f0a01c8

    invoke-virtual {v0, v2}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->getText(I)Ljava/lang/CharSequence;
    :try_end_16b
    .catch Ljava/lang/ClassCastException; {:try_start_163 .. :try_end_16b} :catch_18f

    move-result-object v0

    :try_start_16c
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/lo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    iget-object v6, v2, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->e:Landroid/os/Handler;
    :try_end_170
    .catch Ljava/lang/ClassCastException; {:try_start_16c .. :try_end_170} :catch_199

    move-object v8, v6

    move-object v6, v0

    move-object v0, v8

    goto :goto_f3

    :cond_174
    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE_IMAGE_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/lo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->l(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/lo;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->d(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)Lcom/sdgtl/mediahub/spr/screen/md;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/md;->notifyDataSetChanged()V

    goto/16 :goto_4e

    :catch_18f
    move-exception v0

    move-object v0, v6

    goto/16 :goto_107

    :catch_193
    move-exception v2

    move-object v8, v6

    move-object v6, v0

    move-object v0, v8

    goto/16 :goto_107

    :catch_199
    move-exception v2

    move-object v8, v6

    move-object v6, v0

    move-object v0, v8

    goto/16 :goto_107

    :cond_19f
    move-object v0, v6

    move v1, v7

    goto/16 :goto_49
.end method
