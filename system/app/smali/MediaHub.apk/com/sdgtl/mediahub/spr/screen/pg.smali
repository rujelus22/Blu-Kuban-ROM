.class final Lcom/sdgtl/mediahub/spr/screen/pg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/TvStore;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/TvStore;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/pg;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .registers 7

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pg;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pg;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_16
    :goto_16
    return-void

    :cond_17
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pg;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/pg;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_3e

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pg;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/pg;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->c(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_3e
    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/pg;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_16

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/pg;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->d(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/pg;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->e(Lcom/sdgtl/mediahub/spr/screen/TvStore;)I

    move-result v1

    if-ge v0, v1, :cond_16

    add-int v0, p2, p3

    if-ne v0, p4, :cond_16

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pg;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/pg;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Lcom/sdgtl/mediahub/spr/screen/TvStore;Z)V

    goto :goto_16
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3

    return-void
.end method
