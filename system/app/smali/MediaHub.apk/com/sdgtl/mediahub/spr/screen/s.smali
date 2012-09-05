.class final Lcom/sdgtl/mediahub/spr/screen/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/s;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 9

    const/16 v2, 0xb

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/s;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/s;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->d(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStore;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/s;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->b(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/s;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-virtual {v0, v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->removeDialog(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/s;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-virtual {v0, v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->showDialog(I)V

    :cond_25
    const/4 v0, 0x1

    return v0
.end method
