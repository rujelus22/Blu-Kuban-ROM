.class final Lcom/sdgtl/mediahub/spr/screen/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/y;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .registers 7

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/y;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/y;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_27

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/y;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/y;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->d(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_27
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/y;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->c(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_55

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/y;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->e(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)Z

    move-result v1

    if-nez v1, :cond_55

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/y;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->f(Lcom/sdgtl/mediahub/spr/screen/MovieStore;)I

    move-result v1

    if-ge v0, v1, :cond_55

    add-int v0, p2, p3

    if-ne v0, p4, :cond_55

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/y;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/y;->a:Lcom/sdgtl/mediahub/spr/screen/MovieStore;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/MovieStore;->a(Lcom/sdgtl/mediahub/spr/screen/MovieStore;Z)V

    :cond_55
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3

    return-void
.end method
