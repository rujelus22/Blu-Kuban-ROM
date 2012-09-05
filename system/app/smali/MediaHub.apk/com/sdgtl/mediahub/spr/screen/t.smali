.class final Lcom/sdgtl/mediahub/spr/screen/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/t;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/t;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->n(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/t;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->v(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->a:Ljava/lang/String;

    if-eq v1, v0, :cond_127

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/t;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0, v4}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->b(Lcom/sdgtl/mediahub/spr/screen/MovieStore;Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/t;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->p(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/t;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->x(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(J)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/t;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->p(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/t;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->K(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(J)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/t;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/t;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    const v2, 0x7f0d004d

    invoke-virtual {v0, v2}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStore;Landroid/widget/ListView;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/t;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/al;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/t;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    iget-object v3, p0, Lcom/sdgtl/mediahub/spr/screen/t;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-direct {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/screen/al;-><init>(Lcom/sdgtl/mediahub/spr/screen/MovieStore;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStore;Lcom/sdgtl/mediahub/spr/screen/al;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/t;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->D(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/t;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/screen/al;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/t;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->D(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/t;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->Y(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/t;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->D(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/t;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->Z(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/t;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->D(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/t;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->aa(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/view/View$OnTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/t;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->D(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/sdgtl/mediahub/spr/screen/u;

    invoke-direct {v1, p0}, Lcom/sdgtl/mediahub/spr/screen/u;-><init>(Lcom/sdgtl/mediahub/spr/screen/t;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/t;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->Q(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/t;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->T(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->setSelectedPosition(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/t;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0, p3}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->d(Lcom/sdgtl/mediahub/spr/screen/MovieStore;I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/t;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/t;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->v(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->b(Lcom/sdgtl/mediahub/spr/screen/MovieStore;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/t;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/t;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->v(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/common/cr;

    iget-object v0, v0, Lcom/sdgtl/mediahub/spr/common/cr;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c(Lcom/sdgtl/mediahub/spr/screen/MovieStore;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/t;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->o(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f5

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/t;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->o(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_128

    :cond_f5
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/t;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->e(Lcom/sdgtl/mediahub/spr/screen/MovieStore;Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/t;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0, v4}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->d(Lcom/sdgtl/mediahub/spr/screen/MovieStore;Z)V

    :goto_100
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/t;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/t;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->n(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStore;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/t;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->J(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/t;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Lcom/sdgtl/mediahub/spr/screen/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sdgtl/mediahub/spr/screen/al;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/t;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->D(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setSelection(I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/t;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0, v4}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStore;Z)V

    :cond_127
    return-void

    :cond_128
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/t;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0, v4}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->e(Lcom/sdgtl/mediahub/spr/screen/MovieStore;Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/t;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->L(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V

    goto :goto_100
.end method
