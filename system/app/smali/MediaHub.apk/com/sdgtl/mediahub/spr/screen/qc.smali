.class final Lcom/sdgtl/mediahub/spr/screen/qc;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/TvStore;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/TvStore;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/sdgtl/mediahub/spr/screen/qc;)Lcom/sdgtl/mediahub/spr/screen/TvStore;
    .registers 2

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    return-object v0
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16

    const/16 v12, 0x8

    const/16 v9, 0x20

    const/16 v2, 0xa

    const/4 v1, 0x0

    const/4 v11, 0x1

    if-eqz p2, :cond_74

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_74

    const-string v3, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8b0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_74

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->p(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Landroid/os/Bundle;)Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;

    move-result-object v3

    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const-string v4, "response_msg"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_75

    const-string v1, "error_code"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v1, "error_msg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->t(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Z

    move-result v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->u(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Z

    move-result v2

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    iget-object v5, v5, Lcom/sdgtl/mediahub/spr/screen/TvStore;->c:Landroid/os/Handler;

    invoke-static/range {v0 .. v5}, Lcom/sdgtl/mediahub/spr/contentProvider/n;->a(Landroid/content/Context;ZZILjava/lang/String;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->u(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Z

    move-result v0

    if-nez v0, :cond_933

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->v(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->w(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Landroid/view/View;Landroid/view/View;)V

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    :goto_6f
    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v3, v2, v1, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Lcom/sdgtl/mediahub/spr/screen/TvStore;ILjava/lang/CharSequence;Landroid/os/Handler;)V

    :cond_74
    :goto_74
    return-void

    :cond_75
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->p(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->x(Lcom/sdgtl/mediahub/spr/screen/TvStore;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_106

    :try_start_86
    iget-wide v0, v3, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/ej;

    if-eqz v0, :cond_d5

    iget v1, v0, Lcom/sdgtl/mediahub/spr/common/ej;->a:I

    if-nez v1, :cond_c8

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->y(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->y(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ej;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->z(Lcom/sdgtl/mediahub/spr/screen/TvStore;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->y(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->p(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Ljava/util/ArrayList;I)J
    :try_end_c4
    .catch Ljava/lang/ClassCastException; {:try_start_86 .. :try_end_c4} :catch_e3

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    goto :goto_6f

    :cond_c8
    :try_start_c8
    iget-object v1, v0, Lcom/sdgtl/mediahub/spr/common/ej;->b:Ljava/lang/String;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ej;->a:I

    invoke-static {p1, v1, v0}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_cf
    .catch Ljava/lang/ClassCastException; {:try_start_c8 .. :try_end_cf} :catch_924

    move-result-object v1

    :try_start_d0
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->e:Landroid/os/Handler;
    :try_end_d4
    .catch Ljava/lang/ClassCastException; {:try_start_d0 .. :try_end_d4} :catch_929

    goto :goto_6f

    :cond_d5
    :try_start_d5
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->getText(I)Ljava/lang/CharSequence;
    :try_end_dd
    .catch Ljava/lang/ClassCastException; {:try_start_d5 .. :try_end_dd} :catch_924

    move-result-object v1

    :try_start_de
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->d:Landroid/os/Handler;
    :try_end_e2
    .catch Ljava/lang/ClassCastException; {:try_start_de .. :try_end_e2} :catch_92e

    goto :goto_6f

    :catch_e3
    move-exception v0

    move-object v0, v7

    move v1, v8

    :goto_e6
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "product_Type_Code"

    const-string v4, "02"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->p(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v4, 0x7

    invoke-static {v4, v2}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->c(Lcom/sdgtl/mediahub/spr/screen/TvStore;J)V

    move v2, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_6f

    :cond_106
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->p(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->A(Lcom/sdgtl/mediahub/spr/screen/TvStore;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_44b

    :try_start_117
    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    iget-wide v9, v3, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v9, v10}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/ek;

    invoke-static {v4, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Lcom/sdgtl/mediahub/spr/screen/TvStore;Lcom/sdgtl/mediahub/spr/common/ek;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->B(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    if-eqz v0, :cond_40f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->B(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->a:I

    if-nez v0, :cond_34c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->c(Lcom/sdgtl/mediahub/spr/screen/TvStore;Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->C(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Z

    move-result v0

    if-nez v0, :cond_17d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->D(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_17d

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->E(Lcom/sdgtl/mediahub/spr/screen/TvStore;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->D(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/view/Menu;

    move-result-object v0

    const v2, 0x7f0d0174

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->C(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Z

    move-result v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->D(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/view/Menu;

    move-result-object v0

    const v2, 0x7f0d0172

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->C(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Z

    move-result v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_17d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->d(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Z

    move-result v0

    if-eqz v0, :cond_256

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->B(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/ek;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->i(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/screen/qf;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/qf;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->j(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->refresh(Ljava/util/ArrayList;)V

    :cond_1cf
    :goto_1cf
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->p(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Ljava/util/ArrayList;I)J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->m(Lcom/sdgtl/mediahub/spr/screen/TvStore;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Lcom/sdgtl/mediahub/spr/screen/TvStore;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->m(Lcom/sdgtl/mediahub/spr/screen/TvStore;)I

    move-result v1

    add-int/lit8 v1, v1, 0x20

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->d(Lcom/sdgtl/mediahub/spr/screen/TvStore;Z)V

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/dr;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->y(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->J(Lcom/sdgtl/mediahub/spr/screen/TvStore;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    const-string v2, "01"

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->B(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v4

    iget v4, v4, Lcom/sdgtl/mediahub/spr/common/ek;->d:I

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sdgtl/mediahub/spr/common/dr;-><init>(Lcom/sdgtl/mediahub/spr/common/cr;Ljava/lang/String;Ljava/util/ArrayList;I)V

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/fl;->a(Lcom/sdgtl/mediahub/spr/common/dr;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->B(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v1

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/ek;->d:I

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->c(Lcom/sdgtl/mediahub/spr/screen/TvStore;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->v(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->w(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->K(Lcom/sdgtl/mediahub/spr/screen/TvStore;)V

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    goto/16 :goto_6f

    :cond_256
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->B(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/ek;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->i(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/screen/qf;

    move-result-object v0

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sdgtl/mediahub/spr/screen/qf;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->j(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->refresh(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->F(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_334

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->G(Lcom/sdgtl/mediahub/spr/screen/TvStore;)V

    :goto_29b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1cf

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->a:I

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->H(Lcom/sdgtl/mediahub/spr/screen/TvStore;)I

    move-result v2

    if-ne v0, v2, :cond_32f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->I(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V
    :try_end_2c6
    .catch Ljava/lang/ClassCastException; {:try_start_117 .. :try_end_2c6} :catch_2c8

    goto/16 :goto_1cf

    :catch_2c8
    move-exception v0

    move-object v1, v7

    move v2, v8

    :goto_2cb
    new-instance v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;

    invoke-direct {v3}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;-><init>()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->l(Lcom/sdgtl/mediahub/spr/screen/TvStore;)I

    move-result v0

    iput v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;->a:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->m(Lcom/sdgtl/mediahub/spr/screen/TvStore;)I

    move-result v0

    iput v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;->b:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->n(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->y(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->J(Lcom/sdgtl/mediahub/spr/screen/TvStore;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->a:Ljava/lang/String;

    iput-object v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->y(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->J(Lcom/sdgtl/mediahub/spr/screen/TvStore;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->c:Ljava/lang/String;

    iput-object v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;->e:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "productsRequest_info"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->p(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v12, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Lcom/sdgtl/mediahub/spr/screen/TvStore;J)V

    move-object v0, v6

    goto/16 :goto_6f

    :cond_32f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_29b

    :cond_334
    :try_start_334
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1cf

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->I(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_1cf

    :cond_34c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->B(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->a:I

    const/16 v1, 0x2329

    if-eq v0, v1, :cond_362

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->B(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->d:I

    if-nez v0, :cond_3f5

    :cond_362
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->c(Lcom/sdgtl/mediahub/spr/screen/TvStore;Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_39b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Lcom/sdgtl/mediahub/spr/screen/TvStore;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->d(Lcom/sdgtl/mediahub/spr/screen/TvStore;Z)V

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    goto/16 :goto_6f

    :cond_39b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->G:I

    if-ne v0, v11, :cond_933

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->i(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/screen/qf;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/qf;->a(Ljava/util/ArrayList;)V

    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_933

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->j(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->refresh(Ljava/util/ArrayList;)V
    :try_end_3f0
    .catch Ljava/lang/ClassCastException; {:try_start_334 .. :try_end_3f0} :catch_2c8

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    goto/16 :goto_6f

    :cond_3f5
    :try_start_3f5
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->B(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->B(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v1

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/ek;->a:I

    invoke-static {p1, v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_408
    .catch Ljava/lang/ClassCastException; {:try_start_3f5 .. :try_end_408} :catch_91d

    move-result-object v1

    :try_start_409
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->e:Landroid/os/Handler;
    :try_end_40d
    .catch Ljava/lang/ClassCastException; {:try_start_409 .. :try_end_40d} :catch_921

    goto/16 :goto_6f

    :cond_40f
    :try_start_40f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Lcom/sdgtl/mediahub/spr/screen/TvStore;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->v(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->w(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->d(Lcom/sdgtl/mediahub/spr/screen/TvStore;Z)V
    :try_end_43c
    .catch Ljava/lang/ClassCastException; {:try_start_40f .. :try_end_43c} :catch_2c8

    :try_start_43c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->getText(I)Ljava/lang/CharSequence;
    :try_end_444
    .catch Ljava/lang/ClassCastException; {:try_start_43c .. :try_end_444} :catch_91d

    move-result-object v1

    :try_start_445
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->d:Landroid/os/Handler;
    :try_end_449
    .catch Ljava/lang/ClassCastException; {:try_start_445 .. :try_end_449} :catch_921

    goto/16 :goto_6f

    :cond_44b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->p(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->L(Lcom/sdgtl/mediahub/spr/screen/TvStore;)J

    move-result-wide v0

    invoke-static {v3, v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_585

    :try_start_45c
    iget-wide v0, v3, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/ek;

    if-eqz v0, :cond_4f2

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Lcom/sdgtl/mediahub/spr/screen/TvStore;Lcom/sdgtl/mediahub/spr/common/ek;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->B(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->a:I

    if-eqz v0, :cond_49b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->B(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->a:I
    :try_end_47d
    .catch Ljava/lang/ClassCastException; {:try_start_45c .. :try_end_47d} :catch_548

    const/16 v1, 0x2329

    if-eq v0, v1, :cond_49b

    :try_start_481
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->B(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->B(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v1

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/ek;->a:I

    invoke-static {p1, v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_494
    .catch Ljava/lang/ClassCastException; {:try_start_481 .. :try_end_494} :catch_914

    move-result-object v1

    :try_start_495
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->e:Landroid/os/Handler;
    :try_end_499
    .catch Ljava/lang/ClassCastException; {:try_start_495 .. :try_end_499} :catch_919

    goto/16 :goto_6f

    :cond_49b
    :try_start_49b
    new-instance v1, Lcom/sdgtl/mediahub/spr/common/dr;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->y(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->J(Lcom/sdgtl/mediahub/spr/screen/TvStore;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    const-string v3, "01"

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->B(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v4

    iget-object v4, v4, Lcom/sdgtl/mediahub/spr/common/ek;->g:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->B(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v5

    iget v5, v5, Lcom/sdgtl/mediahub/spr/common/ek;->d:I

    invoke-direct {v1, v0, v3, v4, v5}, Lcom/sdgtl/mediahub/spr/common/dr;-><init>(Lcom/sdgtl/mediahub/spr/common/cr;Ljava/lang/String;Ljava/util/ArrayList;I)V

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/common/fl;->b(Lcom/sdgtl/mediahub/spr/common/dr;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->y(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->J(Lcom/sdgtl/mediahub/spr/screen/TvStore;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Lcom/sdgtl/mediahub/spr/screen/TvStore;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->d(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Z

    move-result v0

    if-nez v0, :cond_933

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->K(Lcom/sdgtl/mediahub/spr/screen/TvStore;)V

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    goto/16 :goto_6f

    :cond_4f2
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->i(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/screen/qf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/qf;->a()V

    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v11, :cond_515

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->M(Lcom/sdgtl/mediahub/spr/screen/TvStore;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->e(Lcom/sdgtl/mediahub/spr/screen/TvStore;Z)V

    :cond_515
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Lcom/sdgtl/mediahub/spr/screen/TvStore;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->d(Lcom/sdgtl/mediahub/spr/screen/TvStore;Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->v(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->w(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Landroid/view/View;Landroid/view/View;)V
    :try_end_539
    .catch Ljava/lang/ClassCastException; {:try_start_49b .. :try_end_539} :catch_548

    :try_start_539
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->getText(I)Ljava/lang/CharSequence;
    :try_end_541
    .catch Ljava/lang/ClassCastException; {:try_start_539 .. :try_end_541} :catch_914

    move-result-object v1

    :try_start_542
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->d:Landroid/os/Handler;
    :try_end_546
    .catch Ljava/lang/ClassCastException; {:try_start_542 .. :try_end_546} :catch_919

    goto/16 :goto_6f

    :catch_548
    move-exception v0

    move-object v1, v7

    move v3, v8

    :goto_54b
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "category_id"

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->y(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v7, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v7}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->J(Lcom/sdgtl/mediahub/spr/screen/TvStore;)I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "start_num"

    invoke-virtual {v4, v0, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "end_num"

    invoke-virtual {v4, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v5}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->p(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v2, v4}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->d(Lcom/sdgtl/mediahub/spr/screen/TvStore;J)V

    move-object v0, v6

    move v2, v3

    goto/16 :goto_6f

    :cond_585
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->p(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->N(Lcom/sdgtl/mediahub/spr/screen/TvStore;)J

    move-result-wide v0

    invoke-static {v3, v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_7a5

    :try_start_596
    iget-wide v0, v3, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/ek;

    if-eqz v0, :cond_796

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Lcom/sdgtl/mediahub/spr/screen/TvStore;Lcom/sdgtl/mediahub/spr/common/ek;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->B(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->a:I

    if-nez v0, :cond_6ea

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->k(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_68c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->k(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->k(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->G:I

    if-ne v0, v11, :cond_68c

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->k(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_5ec
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->k(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->B(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/ek;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->i(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/screen/qf;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->k(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/qf;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->j(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->k(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->refresh(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->v(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->w(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Landroid/view/View;Landroid/view/View;)V

    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_652

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->O(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->P(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->Q(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_652
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->k(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->p(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Ljava/util/ArrayList;I)J

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->m(Lcom/sdgtl/mediahub/spr/screen/TvStore;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Lcom/sdgtl/mediahub/spr/screen/TvStore;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->m(Lcom/sdgtl/mediahub/spr/screen/TvStore;)I

    move-result v1

    add-int/lit8 v1, v1, 0x20

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->d(Lcom/sdgtl/mediahub/spr/screen/TvStore;Z)V

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    goto/16 :goto_6f

    :cond_68c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->k(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_695
    .catch Ljava/lang/ClassCastException; {:try_start_596 .. :try_end_695} :catch_697

    goto/16 :goto_5ec

    :catch_697
    move-exception v0

    move-object v0, v7

    move v1, v8

    :goto_69a
    new-instance v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    invoke-direct {v2}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;-><init>()V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->l(Lcom/sdgtl/mediahub/spr/screen/TvStore;)I

    move-result v3

    iput v3, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->a:I

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->m(Lcom/sdgtl/mediahub/spr/screen/TvStore;)I

    move-result v3

    iput v3, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->b:I

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->q(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->n(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->r(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->f:Ljava/lang/String;

    const-string v3, "02"

    iput-object v3, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->e:Ljava/lang/String;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "search_info"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->p(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v4, 0xb

    invoke-static {v4, v3}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;J)V

    move v2, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_6f

    :cond_6ea
    :try_start_6ea
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->B(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->a:I

    const/16 v1, 0x2329

    if-eq v0, v1, :cond_700

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->B(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->d:I

    if-nez v0, :cond_77c

    :cond_700
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->v(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->w(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Landroid/view/View;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->k(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_933

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->k(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Lcom/sdgtl/mediahub/spr/screen/TvStore;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->i(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/screen/qf;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->k(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/qf;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->j(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->k(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->refresh(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->O(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->P(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->Q(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->d(Lcom/sdgtl/mediahub/spr/screen/TvStore;Z)V
    :try_end_777
    .catch Ljava/lang/ClassCastException; {:try_start_6ea .. :try_end_777} :catch_697

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    goto/16 :goto_6f

    :cond_77c
    :try_start_77c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->B(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->B(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v1

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/ek;->a:I

    invoke-static {p1, v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_78f
    .catch Ljava/lang/ClassCastException; {:try_start_77c .. :try_end_78f} :catch_905

    move-result-object v1

    :try_start_790
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->e:Landroid/os/Handler;
    :try_end_794
    .catch Ljava/lang/ClassCastException; {:try_start_790 .. :try_end_794} :catch_90a

    goto/16 :goto_6f

    :cond_796
    :try_start_796
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    const v1, 0x7f0a01c8

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->getText(I)Ljava/lang/CharSequence;
    :try_end_79e
    .catch Ljava/lang/ClassCastException; {:try_start_796 .. :try_end_79e} :catch_905

    move-result-object v1

    :try_start_79f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->d:Landroid/os/Handler;
    :try_end_7a3
    .catch Ljava/lang/ClassCastException; {:try_start_79f .. :try_end_7a3} :catch_90f

    goto/16 :goto_6f

    :cond_7a5
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->p(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->R(Lcom/sdgtl/mediahub/spr/screen/TvStore;)J

    move-result-wide v0

    invoke-static {v3, v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;J)Z

    move-result v0

    if-eqz v0, :cond_933

    :try_start_7b6
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    iget-wide v3, v3, Lcom/sdgtl/mediahub/spr/contentProvider/RequestMessage;->a:J

    invoke-static {v3, v4}, Lcom/sdgtl/mediahub/spr/contentProvider/l;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/ek;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;Lcom/sdgtl/mediahub/spr/common/ek;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->S(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    if-eqz v0, :cond_838

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->T(Lcom/sdgtl/mediahub/spr/screen/TvStore;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->S(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->a:I

    if-nez v0, :cond_7eb

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->S(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Lcom/sdgtl/mediahub/spr/screen/TvStore;Lcom/sdgtl/mediahub/spr/common/ek;Z)V

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    goto/16 :goto_6f

    :cond_7eb
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->S(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->a:I

    const/16 v1, 0x2329

    if-eq v0, v1, :cond_801

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->S(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->d:I

    if-nez v0, :cond_812

    :cond_801
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->S(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Lcom/sdgtl/mediahub/spr/screen/TvStore;Lcom/sdgtl/mediahub/spr/common/ek;Z)V

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    goto/16 :goto_6f

    :cond_812
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->S(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Lcom/sdgtl/mediahub/spr/screen/TvStore;Lcom/sdgtl/mediahub/spr/common/ek;Z)V
    :try_end_81e
    .catch Ljava/lang/ClassCastException; {:try_start_7b6 .. :try_end_81e} :catch_849

    :try_start_81e
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->S(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/ek;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->S(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v1

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/ek;->a:I

    invoke-static {p1, v0, v1}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_831
    .catch Ljava/lang/ClassCastException; {:try_start_81e .. :try_end_831} :catch_8fe

    move-result-object v1

    :try_start_832
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/TvStore;->e:Landroid/os/Handler;
    :try_end_836
    .catch Ljava/lang/ClassCastException; {:try_start_832 .. :try_end_836} :catch_902

    goto/16 :goto_6f

    :cond_838
    :try_start_838
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->S(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/common/ek;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Lcom/sdgtl/mediahub/spr/screen/TvStore;Lcom/sdgtl/mediahub/spr/common/ek;Z)V
    :try_end_844
    .catch Ljava/lang/ClassCastException; {:try_start_838 .. :try_end_844} :catch_849

    move-object v0, v6

    move-object v1, v7

    move v2, v8

    goto/16 :goto_6f

    :catch_849
    move-exception v0

    move-object v1, v7

    move v2, v8

    :goto_84c
    new-instance v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;

    invoke-direct {v3}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;-><init>()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->l(Lcom/sdgtl/mediahub/spr/screen/TvStore;)I

    move-result v0

    iput v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;->a:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->m(Lcom/sdgtl/mediahub/spr/screen/TvStore;)I

    move-result v0

    iput v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;->b:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->n(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->y(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->J(Lcom/sdgtl/mediahub/spr/screen/TvStore;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->a:Ljava/lang/String;

    iput-object v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->y(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->J(Lcom/sdgtl/mediahub/spr/screen/TvStore;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->c:Ljava/lang/String;

    iput-object v0, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;->e:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "productsRequest_info"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->p(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    invoke-static {v12, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->e(Lcom/sdgtl/mediahub/spr/screen/TvStore;J)V

    move-object v0, v6

    goto/16 :goto_6f

    :cond_8b0
    const-string v1, "com.sdgtl.mediahub.spr.contentProvider.RESPONSE_IMAGE_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->u(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Z

    move-result v0

    if-eqz v0, :cond_8ed

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->U(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/qd;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/qd;-><init>(Lcom/sdgtl/mediahub/spr/screen/qc;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v11, :cond_8ed

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->V(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Z

    move-result v0

    if-eqz v0, :cond_8ed

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->W(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->c(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;->refresh(Ljava/util/ArrayList;)V

    :cond_8ed
    invoke-static {p1}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v11, :cond_74

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/qc;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->X(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->notifyDataSetChanged()V

    goto/16 :goto_74

    :catch_8fe
    move-exception v0

    move-object v1, v7

    goto/16 :goto_84c

    :catch_902
    move-exception v0

    goto/16 :goto_84c

    :catch_905
    move-exception v0

    move-object v0, v7

    move v1, v2

    goto/16 :goto_69a

    :catch_90a
    move-exception v0

    move-object v0, v1

    move v1, v2

    goto/16 :goto_69a

    :catch_90f
    move-exception v0

    move-object v0, v1

    move v1, v2

    goto/16 :goto_69a

    :catch_914
    move-exception v0

    move-object v1, v7

    move v3, v2

    goto/16 :goto_54b

    :catch_919
    move-exception v0

    move v3, v2

    goto/16 :goto_54b

    :catch_91d
    move-exception v0

    move-object v1, v7

    goto/16 :goto_2cb

    :catch_921
    move-exception v0

    goto/16 :goto_2cb

    :catch_924
    move-exception v0

    move-object v0, v7

    move v1, v2

    goto/16 :goto_e6

    :catch_929
    move-exception v0

    move-object v0, v1

    move v1, v2

    goto/16 :goto_e6

    :catch_92e
    move-exception v0

    move-object v0, v1

    move v1, v2

    goto/16 :goto_e6

    :cond_933
    move-object v0, v6

    move-object v1, v7

    move v2, v8

    goto/16 :goto_6f
.end method
