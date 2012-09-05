.class final Lcom/sdgtl/mediahub/spr/screen/ps;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/TvStore;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/TvStore;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/ps;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_192

    :cond_9
    :goto_9
    :pswitch_9
    return v4

    :pswitch_a
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ps;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Lcom/sdgtl/mediahub/spr/screen/TvStore;F)V

    goto :goto_9

    :pswitch_14
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ps;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->f(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ps;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->g(Lcom/sdgtl/mediahub/spr/screen/TvStore;)F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x41f0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ps;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0, v4}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Lcom/sdgtl/mediahub/spr/screen/TvStore;Z)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ps;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0, v2}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;Z)V

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;-><init>()V

    iput v2, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->G:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ps;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ps;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->h(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Z

    move-result v0

    if-nez v0, :cond_ea

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ps;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->i(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/screen/qf;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ps;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/qf;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ps;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->j(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ps;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->refresh(Ljava/util/ArrayList;)V

    :goto_6d
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ps;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ps;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Lcom/sdgtl/mediahub/spr/screen/TvStore;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ps;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ps;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->l(Lcom/sdgtl/mediahub/spr/screen/TvStore;)I

    move-result v1

    add-int/lit8 v1, v1, 0x20

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;I)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ps;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->h(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Z

    move-result v0

    if-nez v0, :cond_fb

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ps;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0, v4}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->c(Lcom/sdgtl/mediahub/spr/screen/TvStore;Z)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;

    invoke-direct {v1}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;-><init>()V

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ps;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->m(Lcom/sdgtl/mediahub/spr/screen/TvStore;)I

    move-result v2

    iput v2, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;->b:I

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ps;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->l(Lcom/sdgtl/mediahub/spr/screen/TvStore;)I

    move-result v2

    iput v2, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;->a:I

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ps;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->n(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ps;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->o(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ps;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ProductsRequestInfo;->e:Ljava/lang/String;

    const-string v2, "productsRequest_info"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ps;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ps;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->p(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v2, 0x8

    invoke-static {v2, v0}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Lcom/sdgtl/mediahub/spr/screen/TvStore;J)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ps;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ps;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->o(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->a(Lcom/sdgtl/mediahub/spr/screen/TvStore;Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_ea
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ps;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->i(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/screen/qf;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ps;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->k(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/qf;->a(Ljava/util/ArrayList;)V

    goto/16 :goto_6d

    :cond_fb
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ps;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v2, :cond_150

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;-><init>()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ps;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->l(Lcom/sdgtl/mediahub/spr/screen/TvStore;)I

    move-result v1

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->a:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ps;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->m(Lcom/sdgtl/mediahub/spr/screen/TvStore;)I

    move-result v1

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->b:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ps;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->q(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ps;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->n(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ps;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->r(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->f:Ljava/lang/String;

    const-string v1, "02"

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->e:Ljava/lang/String;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "search_info"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ps;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ps;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->p(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v2, 0xb

    invoke-static {v2, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->b(Lcom/sdgtl/mediahub/spr/screen/TvStore;J)V

    goto/16 :goto_9

    :cond_150
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "product_type_code"

    const-string v2, "02"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sort"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ps;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->n(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "keyword"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ps;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->q(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "search_type"

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ps;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/TvStore;->r(Lcom/sdgtl/mediahub/spr/screen/TvStore;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "parent_view"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "search_by"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ps;->a:Lcom/sdgtl/mediahub/spr/screen/TvStore;

    sget-object v2, Lcom/sdgtl/mediahub/spr/ar;->E:Lcom/sdgtl/mediahub/spr/ar;

    invoke-static {v1, v2, v0}, Lcom/sdgtl/mediahub/spr/aq;->a(Landroid/content/Context;Lcom/sdgtl/mediahub/spr/ar;Landroid/os/Bundle;)V

    goto/16 :goto_9

    nop

    :pswitch_data_192
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_14
    .end packed-switch
.end method
