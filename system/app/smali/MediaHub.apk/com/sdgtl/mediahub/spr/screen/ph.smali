.class final Lcom/sdgtl/mediahub/spr/screen/ph;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/TvStore;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/TvStore;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/ph;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ph;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0, v2}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ph;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->p(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ph;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->A(Lcom/sdgtl/mediahub/spr/screen/TvStore;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(J)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ph;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->p(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ph;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->L(Lcom/sdgtl/mediahub/spr/screen/TvStore;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(J)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ph;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->Z(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->removeAllViewsInLayout()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ph;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0, p3}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->d(Lcom/sdgtl/mediahub/spr/screen/TvStore;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ph;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->I(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ph;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->Z(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setSelection(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ph;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-virtual {v0, v2}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->dismissDialog(I)V

    return-void
.end method
