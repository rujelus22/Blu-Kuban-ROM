.class final Lcom/sdgtl/mediahub/spr/screen/aj;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15

    const/16 v11, 0x8

    const/16 v10, 0x20

    const/16 v2, 0xa

    const/4 v1, 0x0

    const/4 v9, 0x1

    if-eqz p2, :cond_70

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_70

    const-string v3, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7fa

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_70

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->p(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/os/Bundle;)Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    move-result-object v3

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const-string v4, "response_msg"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_71

    const-string v1, "error_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v1, "error_msg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->r(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Z

    move-result v1

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c()Z

    move-result v2

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    iget-object v5, v5, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->b:Landroid/os/Handler;

    invoke-static/range {v0 .. v5}, Lcom/sdgtl/mediahub/spr/contentProvider/n;->a(Landroid/content/Context;ZZILjava/lang/String;Landroid/os/Handler;)V

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c()Z

    move-result v0

    if-nez v0, :cond_877

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->s(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->t(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a(Landroid/view/View;Landroid/view/View;)V

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    :goto_6b
    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v3, v2, v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStore;ILjava/lang/CharSequence;Landroid/os/Handler;)V

    :cond_70
    :goto_70
    return-void

    :cond_71
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->p(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->u(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_102

    :try_start_82
    iget-wide v0, v3, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/ej;

    if-eqz v0, :cond_d1

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/ej;->a:I

    if-nez v1, :cond_c4

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->v(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->v(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ej;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->v(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->p(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Ljava/util/ArrayList;I)J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->w(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V
    :try_end_c0
    .catch Ljava/lang/ClassCastException; {:try_start_82 .. :try_end_c0} :catch_df

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    goto :goto_6b

    :cond_c4
    :try_start_c4
    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/ej;->b:Ljava/lang/String;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ej;->a:I

    invoke-static {p1, v1, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_cb
    .catch Ljava/lang/ClassCastException; {:try_start_c4 .. :try_end_cb} :catch_868

    move-result-object v1

    :try_start_cc
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c:Landroid/os/Handler;
    :try_end_d0
    .catch Ljava/lang/ClassCastException; {:try_start_cc .. :try_end_d0} :catch_86d

    goto :goto_6b

    :cond_d1
    :try_start_d1
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->getText(I)Ljava/lang/CharSequence;
    :try_end_d9
    .catch Ljava/lang/ClassCastException; {:try_start_d1 .. :try_end_d9} :catch_868

    move-result-object v1

    :try_start_da
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a:Landroid/os/Handler;
    :try_end_de
    .catch Ljava/lang/ClassCastException; {:try_start_da .. :try_end_de} :catch_872

    goto :goto_6b

    :catch_df
    move-exception v0

    move-object v0, v7

    move v1, v8

    :goto_e2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "product_Type_Code"

    const-string v4, "01"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->p(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v4, 0x7

    invoke-static {v4, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c(Lcom/sdgtl/mediahub/spr/screen/MovieStore;J)V

    move v2, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_6b

    :cond_102
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->p(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->x(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_497

    :try_start_113
    iget-wide v3, v3, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v3, v4}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/ek;

    if-eqz v0, :cond_877

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v3, v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStore;Lcom/sdgtl/mediahub/spr/common/ek;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->y(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->a:I

    if-nez v0, :cond_3cd

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->e(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Z

    move-result v0

    if-eqz v0, :cond_25c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->b(Lcom/sdgtl/mediahub/spr/screen/MovieStore;Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->y(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/ek;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/screen/al;

    move-result-object v0

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sdgtl/mediahub/spr/screen/al;->a(Ljava/util/ArrayList;)V

    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_188

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->i(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->refresh(Ljava/util/ArrayList;)V

    :cond_188
    :goto_188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->p(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Ljava/util/ArrayList;I)J

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c()Z

    move-result v0

    if-eqz v0, :cond_1e6

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->E(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Z

    move-result v0

    if-nez v0, :cond_1e6

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->F(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_1e6

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->G(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->F(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/view/Menu;

    move-result-object v0

    const v2, 0x7f0d0174

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->E(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Z

    move-result v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->F(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/view/Menu;

    move-result-object v0

    const v2, 0x7f0d0172

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->E(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Z

    move-result v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_1e6
    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1f6

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->H(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/widget/Button;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1f6
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->s(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->t(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a(Landroid/view/View;Landroid/view/View;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_221

    :goto_21b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_3b9

    :cond_221
    new-instance v1, Lcom/sdgtl/mediahub/spr/common/dr;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->v(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->I(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    const-string v3, "01"

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->y(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v4

    iget v4, v4, Lcom/sdgtl/mediahub/spr/common/ek;->d:I

    invoke-direct {v1, v0, v3, v2, v4}, Lcom/sdgtl/mediahub/spr/common/dr;-><init>(Lcom/sdgtl/mediahub/spr/common/cr;Ljava/lang/String;Ljava/util/ArrayList;I)V

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/fl;->a(Lcom/sdgtl/mediahub/spr/common/dr;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->y(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v1

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/ek;->d:I

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c(Lcom/sdgtl/mediahub/spr/screen/MovieStore;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->J(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    goto/16 :goto_6b

    :cond_25c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_34a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->d(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->y(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/ek;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->i(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->refresh(Ljava/util/ArrayList;)V

    :goto_29a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/screen/al;

    move-result-object v0

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sdgtl/mediahub/spr/screen/al;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->z(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Z

    move-result v0

    if-eqz v0, :cond_3ad

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->A(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V

    move v2, v1

    :goto_2b7
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_35d

    :cond_2c3
    :goto_2c3
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->l(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStore;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->l(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)I

    move-result v2

    add-int/lit8 v2, v2, 0x20

    invoke-static {v0, v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->b(Lcom/sdgtl/mediahub/spr/screen/MovieStore;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c(Lcom/sdgtl/mediahub/spr/screen/MovieStore;Z)V
    :try_end_2e1
    .catch Ljava/lang/ClassCastException; {:try_start_113 .. :try_end_2e1} :catch_2e3

    goto/16 :goto_188

    :catch_2e3
    move-exception v0

    move-object v1, v7

    move v2, v8

    :goto_2e6
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    new-instance v4, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;

    invoke-direct {v4}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;-><init>()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->j(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)I

    move-result v0

    iput v0, v4, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;->a:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->l(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)I

    move-result v0

    iput v0, v4, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;->b:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->m(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->v(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->I(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->a:Ljava/lang/String;

    iput-object v0, v4, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->v(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->I(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->c:Ljava/lang/String;

    iput-object v0, v4, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;->e:Ljava/lang/String;

    const-string v0, "productsRequest_info"

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->p(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v11, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStore;J)V

    move-object v0, v6

    goto/16 :goto_6b

    :cond_34a
    :try_start_34a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->y(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/ek;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_29a

    :cond_35d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->a:I

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->B(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)I

    move-result v3

    if-ne v0, v3, :cond_3a8

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->C(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->D(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v9, :cond_2c3

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "product_id"

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->a:I

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    sget-object v2, Lcom/sdgtl/mediahub/spr/ar;->d:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {v0, v2, v3}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto/16 :goto_2c3

    :cond_3a8
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_2b7

    :cond_3ad
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->D(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_2c3

    :cond_3b9
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->G:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_87c

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_3c9
    add-int/lit8 v1, v0, 0x1

    goto/16 :goto_21b

    :cond_3cd
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->y(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->a:I

    const/16 v1, 0x2329

    if-eq v0, v1, :cond_3e3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->y(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->d:I

    if-nez v0, :cond_47d

    :cond_3e3
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->b(Lcom/sdgtl/mediahub/spr/screen/MovieStore;Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_423

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/screen/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/al;->a()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStore;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->b(Lcom/sdgtl/mediahub/spr/screen/MovieStore;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c(Lcom/sdgtl/mediahub/spr/screen/MovieStore;Z)V

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    goto/16 :goto_6b

    :cond_423
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->G:I

    if-ne v0, v9, :cond_877

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/screen/al;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/al;->a(Ljava/util/ArrayList;)V

    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_877

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->i(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->refresh(Ljava/util/ArrayList;)V
    :try_end_478
    .catch Ljava/lang/ClassCastException; {:try_start_34a .. :try_end_478} :catch_2e3

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    goto/16 :goto_6b

    :cond_47d
    :try_start_47d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->y(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->y(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v1

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/ek;->a:I

    invoke-static {p1, v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_490
    .catch Ljava/lang/ClassCastException; {:try_start_47d .. :try_end_490} :catch_861

    move-result-object v1

    :try_start_491
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c:Landroid/os/Handler;
    :try_end_495
    .catch Ljava/lang/ClassCastException; {:try_start_491 .. :try_end_495} :catch_865

    goto/16 :goto_6b

    :cond_497
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->p(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->K(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)J

    move-result-wide v0

    invoke-static {v3, v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_5d1

    :try_start_4a8
    iget-wide v0, v3, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/ek;

    if-eqz v0, :cond_53e

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStore;Lcom/sdgtl/mediahub/spr/common/ek;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->y(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->a:I

    if-eqz v0, :cond_4e7

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->y(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->a:I
    :try_end_4c9
    .catch Ljava/lang/ClassCastException; {:try_start_4a8 .. :try_end_4c9} :catch_594

    const/16 v1, 0x2329

    if-eq v0, v1, :cond_4e7

    :try_start_4cd
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->y(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->y(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v1

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/ek;->a:I

    invoke-static {p1, v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_4e0
    .catch Ljava/lang/ClassCastException; {:try_start_4cd .. :try_end_4e0} :catch_858

    move-result-object v1

    :try_start_4e1
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c:Landroid/os/Handler;
    :try_end_4e5
    .catch Ljava/lang/ClassCastException; {:try_start_4e1 .. :try_end_4e5} :catch_85d

    goto/16 :goto_6b

    :cond_4e7
    :try_start_4e7
    new-instance v1, Lcom/sdgtl/mediahub/spr/common/dr;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->v(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->I(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    const-string v3, "01"

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->y(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v4

    iget-object v4, v4, Lcom/sdgtl/mediahub/spr/common/ek;->g:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->y(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v5

    iget v5, v5, Lcom/sdgtl/mediahub/spr/common/ek;->d:I

    invoke-direct {v1, v0, v3, v4, v5}, Lcom/sdgtl/mediahub/spr/common/dr;-><init>(Lcom/sdgtl/mediahub/spr/common/cr;Ljava/lang/String;Ljava/util/ArrayList;I)V

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/fl;->b(Lcom/sdgtl/mediahub/spr/common/dr;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->v(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->I(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStore;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->e(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Z

    move-result v0

    if-nez v0, :cond_877

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->J(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    goto/16 :goto_6b

    :cond_53e
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/screen/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/al;->a()V

    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v9, :cond_561

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->L(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->d(Lcom/sdgtl/mediahub/spr/screen/MovieStore;Z)V

    :cond_561
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStore;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->b(Lcom/sdgtl/mediahub/spr/screen/MovieStore;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->s(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->t(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c(Lcom/sdgtl/mediahub/spr/screen/MovieStore;Z)V
    :try_end_585
    .catch Ljava/lang/ClassCastException; {:try_start_4e7 .. :try_end_585} :catch_594

    :try_start_585
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->getText(I)Ljava/lang/CharSequence;
    :try_end_58d
    .catch Ljava/lang/ClassCastException; {:try_start_585 .. :try_end_58d} :catch_858

    move-result-object v1

    :try_start_58e
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a:Landroid/os/Handler;
    :try_end_592
    .catch Ljava/lang/ClassCastException; {:try_start_58e .. :try_end_592} :catch_85d

    goto/16 :goto_6b

    :catch_594
    move-exception v0

    move-object v1, v7

    move v3, v8

    :goto_597
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "category_id"

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->v(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v7, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v7}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->I(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "start_num"

    invoke-virtual {v4, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "end_num"

    invoke-virtual {v4, v0, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->p(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v2, v4}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->d(Lcom/sdgtl/mediahub/spr/screen/MovieStore;J)V

    move-object v0, v6

    move v2, v3

    goto/16 :goto_6b

    :cond_5d1
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->p(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->M(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)J

    move-result-wide v0

    invoke-static {v3, v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_877

    :try_start_5e2
    iget-wide v0, v3, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/ek;

    if-eqz v0, :cond_7eb

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStore;Lcom/sdgtl/mediahub/spr/common/ek;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->y(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->a:I

    if-nez v0, :cond_739

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->N(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6dd

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->N(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->N(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->G:I

    if-ne v0, v9, :cond_6dd

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->N(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->N(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_638
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->N(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->y(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/ek;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/screen/al;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->N(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/al;->a(Ljava/util/ArrayList;)V

    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_66d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->i(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->N(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->refresh(Ljava/util/ArrayList;)V

    :cond_66d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->s(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->t(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->H(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->O(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->P(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->Q(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->N(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->p(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Ljava/util/ArrayList;I)J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->l(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStore;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->l(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)I

    move-result v1

    add-int/lit8 v1, v1, 0x20

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->b(Lcom/sdgtl/mediahub/spr/screen/MovieStore;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c(Lcom/sdgtl/mediahub/spr/screen/MovieStore;Z)V

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    goto/16 :goto_6b

    :cond_6dd
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->N(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_6e6
    .catch Ljava/lang/ClassCastException; {:try_start_5e2 .. :try_end_6e6} :catch_6e8

    goto/16 :goto_638

    :catch_6e8
    move-exception v0

    move-object v0, v7

    move v1, v8

    :goto_6eb
    new-instance v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    invoke-direct {v2}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;-><init>()V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->j(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)I

    move-result v3

    iput v3, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->a:I

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->l(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)I

    move-result v3

    iput v3, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->b:I

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->q(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->m(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->d:Ljava/lang/String;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->b()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->f:Ljava/lang/String;

    const-string v3, "01"

    iput-object v3, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->e:Ljava/lang/String;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "search_info"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->p(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v4, 0xb

    invoke-static {v4, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->b(Lcom/sdgtl/mediahub/spr/screen/MovieStore;J)V

    move v2, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_6b

    :cond_739
    :try_start_739
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->y(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->a:I

    const/16 v1, 0x2329

    if-eq v0, v1, :cond_74f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->y(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->d:I

    if-nez v0, :cond_7d1

    :cond_74f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->s(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->t(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->N(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_877

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->N(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStore;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->b(Lcom/sdgtl/mediahub/spr/screen/MovieStore;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/screen/al;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->N(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/al;->a(Ljava/util/ArrayList;)V

    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_7a6

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->i(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->N(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->refresh(Ljava/util/ArrayList;)V

    :cond_7a6
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->H(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->O(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->P(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c(Lcom/sdgtl/mediahub/spr/screen/MovieStore;Z)V
    :try_end_7cc
    .catch Ljava/lang/ClassCastException; {:try_start_739 .. :try_end_7cc} :catch_6e8

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    goto/16 :goto_6b

    :cond_7d1
    :try_start_7d1
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->y(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->y(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v1

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/ek;->a:I

    invoke-static {p1, v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_7e4
    .catch Ljava/lang/ClassCastException; {:try_start_7d1 .. :try_end_7e4} :catch_849

    move-result-object v1

    :try_start_7e5
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c:Landroid/os/Handler;
    :try_end_7e9
    .catch Ljava/lang/ClassCastException; {:try_start_7e5 .. :try_end_7e9} :catch_84e

    goto/16 :goto_6b

    :cond_7eb
    :try_start_7eb
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->getText(I)Ljava/lang/CharSequence;
    :try_end_7f3
    .catch Ljava/lang/ClassCastException; {:try_start_7eb .. :try_end_7f3} :catch_849

    move-result-object v1

    :try_start_7f4
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a:Landroid/os/Handler;
    :try_end_7f8
    .catch Ljava/lang/ClassCastException; {:try_start_7f4 .. :try_end_7f8} :catch_853

    goto/16 :goto_6b

    :cond_7fa
    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE_IMAGE_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c()Z

    move-result v0

    if-eqz v0, :cond_82e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/screen/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/al;->notifyDataSetChanged()V

    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v9, :cond_83f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->R(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Z

    move-result v0

    if-eqz v0, :cond_82e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->S(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->d(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;->refresh(Ljava/util/ArrayList;)V

    :cond_82e
    :goto_82e
    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v9, :cond_70

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->T(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->notifyDataSetChanged()V

    goto/16 :goto_70

    :cond_83f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/aj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->i(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->notifyDataSetChanged()V

    goto :goto_82e

    :catch_849
    move-exception v0

    move-object v0, v7

    move v1, v2

    goto/16 :goto_6eb

    :catch_84e
    move-exception v0

    move-object v0, v1

    move v1, v2

    goto/16 :goto_6eb

    :catch_853
    move-exception v0

    move-object v0, v1

    move v1, v2

    goto/16 :goto_6eb

    :catch_858
    move-exception v0

    move-object v1, v7

    move v3, v2

    goto/16 :goto_597

    :catch_85d
    move-exception v0

    move v3, v2

    goto/16 :goto_597

    :catch_861
    move-exception v0

    move-object v1, v7

    goto/16 :goto_2e6

    :catch_865
    move-exception v0

    goto/16 :goto_2e6

    :catch_868
    move-exception v0

    move-object v0, v7

    move v1, v2

    goto/16 :goto_e2

    :catch_86d
    move-exception v0

    move-object v0, v1

    move v1, v2

    goto/16 :goto_e2

    :catch_872
    move-exception v0

    move-object v0, v1

    move v1, v2

    goto/16 :goto_e2

    :cond_877
    move-object v0, v6

    move-object v1, v7

    move v2, v8

    goto/16 :goto_6b

    :cond_87c
    move v0, v1

    goto/16 :goto_3c9
.end method
