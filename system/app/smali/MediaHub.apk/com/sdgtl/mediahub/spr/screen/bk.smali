.class final Lcom/sdgtl/mediahub/spr/screen/bk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/bk;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 13

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/bk;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->c:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;->c:Ljava/lang/String;

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/bk;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->c:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;->c:Ljava/lang/String;

    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    :cond_2b
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/bk;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    const-string v1, "01"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/bk;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->a:I

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/bk;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/bk;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->c:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    iget-wide v4, v4, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;->a:J

    iget-object v6, p0, Lcom/sdgtl/mediahub/spr/screen/bk;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v6}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->c:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    iget-wide v6, v6, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;->b:J

    iget-object v8, p0, Lcom/sdgtl/mediahub/spr/screen/bk;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v8}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->c:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    iget-object v8, v8, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;->c:Ljava/lang/String;

    iget-object v9, p0, Lcom/sdgtl/mediahub/spr/screen/bk;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v9}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v9

    iget-object v9, v9, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget v9, v9, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->c:I

    iget-object v10, p0, Lcom/sdgtl/mediahub/spr/screen/bk;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v10}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v10

    iget-object v10, v10, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget v10, v10, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->b:I

    invoke-static/range {v0 .. v10}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;II)V

    goto :goto_6

    :cond_79
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/bk;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    const-string v1, "02"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/bk;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->a:I

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/bk;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v3}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget-object v3, v3, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/sdgtl/mediahub/spr/screen/bk;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v4}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->c:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    iget-wide v4, v4, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;->a:J

    iget-object v6, p0, Lcom/sdgtl/mediahub/spr/screen/bk;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v6}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->c:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    iget-wide v6, v6, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;->b:J

    iget-object v8, p0, Lcom/sdgtl/mediahub/spr/screen/bk;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v8}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->c:Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;

    iget-object v8, v8, Lcom/sdgtl/mediahub/spr/common/CommonStructure$PurchaseData;->c:Ljava/lang/String;

    iget-object v9, p0, Lcom/sdgtl/mediahub/spr/screen/bk;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v9}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v9

    iget-object v9, v9, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget v9, v9, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->c:I

    iget-object v10, p0, Lcom/sdgtl/mediahub/spr/screen/bk;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;

    invoke-static {v10}, Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStoreDetail;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;

    move-result-object v10

    iget-object v10, v10, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductInfo;->d:Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;

    iget v10, v10, Lcom/sdgtl/mediahub/spr/common/CommonStructure$Product;->b:I

    invoke-static/range {v0 .. v10}, Lcom/sdgtl/mediahub/spr/common/gk;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;II)V

    goto/16 :goto_6
.end method
