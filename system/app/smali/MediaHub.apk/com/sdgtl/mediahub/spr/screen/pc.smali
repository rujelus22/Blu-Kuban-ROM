.class final Lcom/sdgtl/mediahub/spr/screen/pc;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    const/4 v6, 0x0

    const/16 v1, 0xa

    const/4 v5, 0x1

    if-eqz p2, :cond_69

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_69

    const-string v2, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_285

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_69

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->i(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/os/Bundle;)Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    move-result-object v2

    const/4 v7, -0x1

    const-string v3, "response_msg"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6a

    const-string v1, "error_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v1, "error_msg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->j(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Z

    move-result v1

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->c()Z

    move-result v2

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    iget-object v5, v5, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->a:Landroid/os/Handler;

    invoke-static/range {v0 .. v5}, Lcom/sdgtl/mediahub/spr/contentProvider/n;->a(Landroid/content/Context;ZZILjava/lang/String;Landroid/os/Handler;)V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->c()Z

    move-result v0

    if-nez v0, :cond_2ae

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->k(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->l(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->a(Landroid/view/View;Landroid/view/View;)V

    move-object v0, v6

    move v1, v7

    :goto_64
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v2, v1, v6, v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->a(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;ILjava/lang/CharSequence;Landroid/os/Handler;)V

    :cond_69
    :goto_69
    return-void

    :cond_6a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->i(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->m(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_2ae

    :try_start_7b
    iget-wide v2, v2, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v2, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/ek;

    if-eqz v0, :cond_273

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->a(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;Lcom/sdgtl/mediahub/spr/common/ek;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->n(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->a:I

    if-nez v0, :cond_200

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->n(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->d:I

    if-lez v0, :cond_200

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->b(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1f1

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->b(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->b(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->G:I

    if-ne v0, v5, :cond_1f1

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->b(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->b(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_db
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->b(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->n(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/ek;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->a(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Lcom/sdgtl/mediahub/spr/screen/pe;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->b(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/pe;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_112

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->f(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->b(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->refresh(Ljava/util/ArrayList;)V

    :cond_112
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->k(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->l(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->a(Landroid/view/View;Landroid/view/View;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->b(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->i(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Ljava/util/ArrayList;I)J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->o(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->a(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->o(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)I

    move-result v1

    add-int/lit8 v1, v1, 0x20

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->b(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->b(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->n(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v1

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/ek;->d:I

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->c(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;I)V
    :try_end_165
    .catch Ljava/lang/ClassCastException; {:try_start_7b .. :try_end_165} :catch_1fc

    move-object v0, v6

    move v1, v7

    :goto_167
    :try_start_167
    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->d()V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->g(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->p(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)I

    move-result v3

    iput v3, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->a:I

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->g(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->o(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)I

    move-result v3

    iput v3, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->b:I

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->k(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Landroid/widget/LinearLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->l(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->a(Landroid/view/View;Landroid/view/View;)V
    :try_end_197
    .catch Ljava/lang/ClassCastException; {:try_start_167 .. :try_end_197} :catch_199

    goto/16 :goto_64

    :catch_199
    move-exception v2

    :goto_19a
    new-instance v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    invoke-direct {v2}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;-><init>()V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->g(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    move-result-object v3

    iget v3, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->a:I

    iput v3, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->a:I

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->g(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    move-result-object v3

    iget v3, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->b:I

    iput v3, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->b:I

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->g(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->c:Ljava/lang/String;

    iput-object v3, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->g(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->d:Ljava/lang/String;

    iput-object v3, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->d:Ljava/lang/String;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->b()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->h(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->e:Ljava/lang/String;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "search_info"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->i(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v4, 0xb

    invoke-static {v4, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->a(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;J)V

    goto/16 :goto_64

    :cond_1f1
    :try_start_1f1
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->b(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_db

    :catch_1fc
    move-exception v0

    move-object v0, v6

    move v1, v7

    goto :goto_19a

    :cond_200
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->n(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->a:I

    const/16 v2, 0x2329

    if-eq v0, v2, :cond_216

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->n(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->d:I

    if-nez v0, :cond_256

    :cond_216
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->b(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->a(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->b(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->a(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Lcom/sdgtl/mediahub/spr/screen/pe;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->b(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/pe;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->k(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->l(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->a(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->b(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;Z)V
    :try_end_252
    .catch Ljava/lang/ClassCastException; {:try_start_1f1 .. :try_end_252} :catch_1fc

    move-object v0, v6

    move v1, v7

    goto/16 :goto_167

    :cond_256
    :try_start_256
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->n(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->n(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v2

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/ek;->a:I

    invoke-static {p1, v0, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_269
    .catch Ljava/lang/ClassCastException; {:try_start_256 .. :try_end_269} :catch_29e

    move-result-object v0

    :try_start_26a
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    iget-object v6, v2, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->c:Landroid/os/Handler;
    :try_end_26e
    .catch Ljava/lang/ClassCastException; {:try_start_26a .. :try_end_26e} :catch_2a2

    move-object v8, v6

    move-object v6, v0

    move-object v0, v8

    goto/16 :goto_167

    :cond_273
    :try_start_273
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    const v2, 0x7f0a01c8

    invoke-virtual {v0, v2}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->getText(I)Ljava/lang/CharSequence;
    :try_end_27b
    .catch Ljava/lang/ClassCastException; {:try_start_273 .. :try_end_27b} :catch_29e

    move-result-object v0

    :try_start_27c
    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    iget-object v6, v2, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->b:Landroid/os/Handler;
    :try_end_280
    .catch Ljava/lang/ClassCastException; {:try_start_27c .. :try_end_280} :catch_2a8

    move-object v8, v6

    move-object v6, v0

    move-object v0, v8

    goto/16 :goto_167

    :cond_285
    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE_IMAGE_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->c()Z

    move-result v0

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pc;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->a(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Lcom/sdgtl/mediahub/spr/screen/pe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/pe;->notifyDataSetChanged()V

    goto/16 :goto_69

    :catch_29e
    move-exception v0

    move-object v0, v6

    goto/16 :goto_19a

    :catch_2a2
    move-exception v2

    move-object v8, v6

    move-object v6, v0

    move-object v0, v8

    goto/16 :goto_19a

    :catch_2a8
    move-exception v2

    move-object v8, v6

    move-object v6, v0

    move-object v0, v8

    goto/16 :goto_19a

    :cond_2ae
    move-object v0, v6

    move v1, v7

    goto/16 :goto_64
.end method
