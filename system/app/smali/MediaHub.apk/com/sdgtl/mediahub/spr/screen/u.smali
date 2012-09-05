.class final Lcom/sdgtl/mediahub/spr/screen/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/t;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/t;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/u;->a:Lcom/sdgtl/mediahub/spr/screen/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/u;->a:Lcom/sdgtl/mediahub/spr/screen/t;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/screen/t;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/screen/al;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sdgtl/mediahub/spr/screen/al;->a(I)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    move-result-object v0

    iget v0, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->G:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    :goto_11
    return-void

    :cond_12
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "product_id"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/u;->a:Lcom/sdgtl/mediahub/spr/screen/t;

    iget-object v2, v2, Lcom/sdgtl/mediahub/spr/screen/t;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/screen/al;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/sdgtl/mediahub/spr/screen/al;->a(I)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    move-result-object v2

    iget v2, v2, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->a:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/u;->a:Lcom/sdgtl/mediahub/spr/screen/t;

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/screen/t;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    sget-object v2, Lcom/sdgtl/mediahub/spr/ar;->d:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {v1, v2, v0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto :goto_11
.end method
