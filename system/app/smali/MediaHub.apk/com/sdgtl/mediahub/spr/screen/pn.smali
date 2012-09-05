.class final Lcom/sdgtl/mediahub/spr/screen/pn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/TvStore;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/TvStore;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/pn;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 9

    const/16 v2, 0xb

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/pn;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pn;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->c(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Lcom/sdgtl/mediahub/spr/screen/TvStore;Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pn;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->s(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pn;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-virtual {v0, v2}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->removeDialog(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pn;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-virtual {v0, v2}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->showDialog(I)V

    :cond_25
    const/4 v0, 0x1

    return v0
.end method
