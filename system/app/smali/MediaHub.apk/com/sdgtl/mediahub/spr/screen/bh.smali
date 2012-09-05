.class final Lcom/sdgtl/mediahub/spr/screen/bh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/bh;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 8

    const/4 v2, 0x1

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/bh;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0, v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->e(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/bh;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/bh;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    sget-object v1, Lcom/sdgtl/mediahub/spr/ar;->H:Lcom/sdgtl/mediahub/spr/ar;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;I)V

    goto :goto_7

    :cond_1f
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/bh;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->S(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_61

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/bh;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/bh;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->D:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->b(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->b(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/bh;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/bh;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/bh;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->g(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/bh;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->d(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)I

    move-result v3

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/bh;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v4, v4, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->i:Ljava/lang/String;

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/bh;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    iget-object v5, v5, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->b:Landroid/os/Handler;

    invoke-static/range {v0 .. v5}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;Ljava/lang/String;ILjava/lang/String;Landroid/os/Handler;)V

    goto :goto_7

    :cond_61
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/bh;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->D:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lcom/sdgtl/mediahub/spr/common/gk;->c(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_87

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/bh;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/bh;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->R(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)I

    move-result v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/bh;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/bh;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->a:Landroid/os/Handler;

    invoke-static {v0, v1, v2, v3}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;ILcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;Landroid/os/Handler;)V

    goto :goto_7

    :cond_87
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/bh;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->b(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/bh;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/bh;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/bh;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->g(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/bh;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->d(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)I

    move-result v3

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/bh;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v4, v4, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->i:Ljava/lang/String;

    iget-object v5, p0, Lcom/sdgtl/mediahub/spr/screen/bh;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    iget-object v5, v5, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->b:Landroid/os/Handler;

    invoke-static/range {v0 .. v5}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;Ljava/lang/String;ILjava/lang/String;Landroid/os/Handler;)V

    goto/16 :goto_7
.end method
