.class final Lcom/sdgtl/mediahub/spr/screen/br;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/br;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7

    const/4 v1, 0x0

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/br;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->z(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/br;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->f(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->d()Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    move-result-object v3

    const-string v0, ""

    if-eqz v3, :cond_d9

    iget-object v2, v3, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->j:Ljava/lang/String;

    iget v0, v3, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;->d:I

    :goto_1e
    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/br;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->d(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)I

    move-result v3

    if-ne v0, v3, :cond_4f

    const-string v0, "02"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/br;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->f(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Lcom/sdgtl/mediahub/spr/download/a;

    new-instance v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/br;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->d(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)I

    move-result v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/br;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->e:Ljava/lang/String;

    const-string v3, "02"

    invoke-direct {v0, v1, v2, v3}, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/download/a;->a(Lcom/sdgtl/mediahub/spr/download/DownloadInfo;I)V

    goto :goto_7

    :cond_4f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/br;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/br;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_70

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/br;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    sget-object v1, Lcom/sdgtl/mediahub/spr/screen/bz;->f:Lcom/sdgtl/mediahub/spr/screen/bz;

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;Lcom/sdgtl/mediahub/spr/screen/bz;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/br;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    goto :goto_7

    :cond_70
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/br;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->f(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Lcom/sdgtl/mediahub/spr/download/a;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/download/a;->f()Z

    move-result v0

    if-eqz v0, :cond_9a

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/br;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->f(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Lcom/sdgtl/mediahub/spr/download/a;

    new-instance v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/br;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->d(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)I

    move-result v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/br;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->e:Ljava/lang/String;

    const-string v4, "02"

    invoke-direct {v0, v2, v3, v4}, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/download/a;->a(Lcom/sdgtl/mediahub/spr/download/DownloadInfo;I)V

    :cond_9a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/br;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    const-string v1, "02"

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_a3
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/br;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/a/a;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c5

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/br;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/br;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    const v2, 0x7f0a0120

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/br;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->k:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/a;->f(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto/16 :goto_7

    :cond_c5
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/br;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/br;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    const v2, 0x7f0a0121

    invoke-virtual {v1, v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/br;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->k:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/common/a;->f(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/os/Handler;)Lcom/sdgtl/mediahub/spr/common/a;

    goto/16 :goto_7

    :cond_d9
    move-object v2, v0

    move v0, v1

    goto/16 :goto_1e
.end method
