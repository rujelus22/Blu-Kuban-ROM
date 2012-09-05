.class final Lcom/sdgtl/mediahub/spr/screen/pk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/TvStore;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/TvStore;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/pk;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pk;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->o(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pk;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->y(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->a:Ljava/lang/String;

    if-eq v1, v0, :cond_e3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pk;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0, v4}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pk;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->p(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pk;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->A(Lcom/sdgtl/mediahub/spr/screen/TvStore;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(J)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pk;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->p(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pk;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->L(Lcom/sdgtl/mediahub/spr/screen/TvStore;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(J)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/pk;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pk;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    const v2, 0x7f0d004d

    invoke-virtual {v0, v2}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Lcom/sdgtl/mediahub/spr/screen/TvStore;Landroid/widget/ListView;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pk;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/qf;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/pk;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/pk;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-direct {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/screen/qf;-><init>(Lcom/sdgtl/mediahub/spr/screen/TvStore;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Lcom/sdgtl/mediahub/spr/screen/TvStore;Lcom/sdgtl/mediahub/spr/screen/qf;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pk;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->I(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/pk;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->i(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/screen/qf;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pk;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->I(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/pl;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/pl;-><init>(Lcom/sdgtl/mediahub/spr/screen/pk;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pk;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->I(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/pk;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ab(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pk;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->I(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/pk;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ac(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pk;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->I(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/pk;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->ad(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pk;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0, p3}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->d(Lcom/sdgtl/mediahub/spr/screen/TvStore;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pk;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c1

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pk;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e4

    :cond_c1
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pk;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->f(Lcom/sdgtl/mediahub/spr/screen/TvStore;Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pk;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0, v4}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->e(Lcom/sdgtl/mediahub/spr/screen/TvStore;Z)V

    :goto_cc
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pk;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->I(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setSelection(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pk;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->Z(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setSelection(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pk;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0, v4}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Lcom/sdgtl/mediahub/spr/screen/TvStore;Z)V

    :cond_e3
    return-void

    :cond_e4
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pk;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0, v4}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->f(Lcom/sdgtl/mediahub/spr/screen/TvStore;Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pk;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->M(Lcom/sdgtl/mediahub/spr/screen/TvStore;)V

    goto :goto_cc
.end method
