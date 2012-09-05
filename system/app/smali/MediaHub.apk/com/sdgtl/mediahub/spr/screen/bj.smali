.class final Lcom/sdgtl/mediahub/spr/screen/bj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/bj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/bj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->U(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/bj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->d(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/bj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->f(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Lcom/sdgtl/mediahub/spr/download/a;

    new-instance v0, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/bj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->d(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)I

    move-result v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/bj;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->e:Ljava/lang/String;

    const-string v3, "02"

    invoke-direct {v0, v1, v2, v3}, Lcom/sdgtl/mediahub/spr/download/DownloadInfo;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/download/a;->a(Lcom/sdgtl/mediahub/spr/download/DownloadInfo;I)V

    goto :goto_6
.end method
