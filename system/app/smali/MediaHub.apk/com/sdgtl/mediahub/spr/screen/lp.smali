.class final Lcom/sdgtl/mediahub/spr/screen/lp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/lp;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/lp;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->d(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)Lcom/sdgtl/mediahub/spr/screen/md;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sdgtl/mediahub/spr/screen/md;->a(I)Lcom/sdgtl/mediahub/spr/common/eu;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/eu;->F:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    :goto_f
    return-void

    :cond_10
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "order_id"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/lp;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;->d(Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;)Lcom/sdgtl/mediahub/spr/screen/md;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/sdgtl/mediahub/spr/screen/md;->a(I)Lcom/sdgtl/mediahub/spr/common/eu;

    move-result-object v2

    iget-wide v2, v2, Lcom/sdgtl/mediahub/spr/common/eu;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/lp;->a:Lcom/sdgtl/mediahub/spr/screen/MyPurchaseList;

    sget-object v2, Lcom/sdgtl/mediahub/spr/ar;->y:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {v1, v2, v0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_f
.end method
