.class final Lcom/sdgtl/mediahub/spr/screen/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/n;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/n;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->n(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/n;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->v(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->a:Ljava/lang/String;

    if-eq v1, v0, :cond_ad

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/n;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0, v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->b(Lcom/sdgtl/mediahub/spr/screen/MovieStore;Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/n;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->p(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/n;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->x(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(J)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/n;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->p(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/n;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->K(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(J)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/n;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0, p3}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->d(Lcom/sdgtl/mediahub/spr/screen/MovieStore;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/n;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->Q(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a(Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/n;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->H(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/widget/Button;

    move-result-object v1

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/n;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->v(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/n;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/n;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->v(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->b(Lcom/sdgtl/mediahub/spr/screen/MovieStore;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/n;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/n;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->v(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c(Lcom/sdgtl/mediahub/spr/screen/MovieStore;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/n;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->W(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->removeAllViewsInLayout()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/n;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/n;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->n(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStore;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/n;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->J(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/n;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->D(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/n;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->W(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setSelection(I)V

    :cond_ad
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/n;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-virtual {v0, v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->dismissDialog(I)V

    return-void
.end method
