.class final Lcom/sdgtl/mediahub/spr/customview/aa;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/customview/aa;->a:Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .registers 8

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/aa;->a:Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;

    #getter for: Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;->mOnItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;
    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;->access$1(Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    int-to-long v4, v2

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    const/4 v0, 0x0

    return v0
.end method
