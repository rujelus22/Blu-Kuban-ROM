.class final Lcom/sdgtl/mediahub/spr/screen/ox;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/ox;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_dc

    :cond_8
    :goto_8
    :pswitch_8
    return v3

    :pswitch_9
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ox;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->a(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;F)V

    goto :goto_8

    :pswitch_13
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ox;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->d(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ox;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->e(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x41f0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ox;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v0, v3}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->a(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;Z)V

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$ContentsList;->G:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ox;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->b(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ox;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->a(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Lcom/sdgtl/mediahub/spr/screen/pe;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ox;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->b(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/screen/pe;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ox;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->f(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ox;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->b(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sdgtl/mediahub/spr/customview/ContentGridAdapter;->refresh(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ox;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->g(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ox;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->b(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->a:I

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ox;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->g(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ox;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->g(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    move-result-object v1

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->a:I

    add-int/lit8 v1, v1, 0x20

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->b:I

    new-instance v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    invoke-direct {v0}, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;-><init>()V

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ox;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->g(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    move-result-object v1

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->a:I

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->a:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ox;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->g(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    move-result-object v1

    iget v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->b:I

    iput v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->b:I

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ox;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->g(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ox;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->g(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->d:Ljava/lang/String;

    invoke-static {}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/screen/ox;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->h(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sdgtl/mediahub/spr/common/CommonStructure$SearchRequestInfo;->e:Ljava/lang/String;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "search_info"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/ox;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    iget-object v2, p0, Lcom/sdgtl/mediahub/spr/screen/ox;->a:Lcom/sdgtl/mediahub/spr/screen/StoreSearch;

    invoke-static {v2}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->i(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;)Lcom/sdgtl/mediahub/spr/contentProvider/b;

    const/16 v2, 0xb

    invoke-static {v2, v1}, Lcom/sdgtl/mediahub/spr/contentProvider/b;->a(ILandroid/os/Bundle;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/screen/StoreSearch;->a(Lcom/sdgtl/mediahub/spr/screen/StoreSearch;J)V

    goto/16 :goto_8

    nop

    :pswitch_data_dc
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_13
    .end packed-switch
.end method
