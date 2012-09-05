.class final Lcom/sdgtl/mediahub/spr/screen/is;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/screen/MyPage;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/screen/MyPage;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/screen/is;->a:Lcom/sdgtl/mediahub/spr/screen/MyPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/is;->a:Lcom/sdgtl/mediahub/spr/screen/MyPage;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/a/a;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/is;->a:Lcom/sdgtl/mediahub/spr/screen/MyPage;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->f(Lcom/sdgtl/mediahub/spr/screen/MyPage;)Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sdgtl/mediahub/spr/customview/LeftMenuAdapter;->setSelectedPosition(I)V

    :cond_12
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/is;->a:Lcom/sdgtl/mediahub/spr/screen/MyPage;

    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/common/gk;->p(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1c

    add-int/lit8 p3, p3, 0x1

    :cond_1c
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/screen/is;->a:Lcom/sdgtl/mediahub/spr/screen/MyPage;

    invoke-static {v0, p3}, Lcom/sdgtl/mediahub/spr/screen/MyPage;->b(Lcom/sdgtl/mediahub/spr/screen/MyPage;I)V

    :goto_21
    return-void

    :cond_22
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/sdgtl/mediahub/spr/screen/iu;

    invoke-virtual {v0, p3}, Lcom/sdgtl/mediahub/spr/screen/iu;->a(I)Lcom/sdgtl/mediahub/spr/screen/it;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sdgtl/mediahub/spr/screen/it;->c:Z

    if-nez v0, :cond_12

    goto :goto_21
.end method
