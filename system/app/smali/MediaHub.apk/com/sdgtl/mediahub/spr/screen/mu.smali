.class final Lcom/sdgtl/mediahub/spr/screen/mu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/ParentalControl;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/ParentalControl;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/mu;->a:Lcom/sdgtl/mediahub/spr/screen/ParentalControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/mu;->a:Lcom/sdgtl/mediahub/spr/screen/ParentalControl;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->e(Lcom/sdgtl/mediahub/spr/screen/ParentalControl;)Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-boolean v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->i:Z

    if-eqz v0, :cond_15

    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/mu;->a:Lcom/sdgtl/mediahub/spr/screen/ParentalControl;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->f(Lcom/sdgtl/mediahub/spr/screen/ParentalControl;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/mu;->a:Lcom/sdgtl/mediahub/spr/screen/ParentalControl;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->e(Lcom/sdgtl/mediahub/spr/screen/ParentalControl;)Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->setSelectedPosition(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/mu;->a:Lcom/sdgtl/mediahub/spr/screen/ParentalControl;

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/ParentalControl;->finish()V

    goto :goto_14
.end method
