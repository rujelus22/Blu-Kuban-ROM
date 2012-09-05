.class final Lcom/sdgtl/mediahub/spr/customview/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;)V
    .registers 2

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/customview/z;->a:Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/z;->a:Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;

    #getter for: Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;->mOnItemClickListener:Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView$OnItemClickListener;
    invoke-static {v1}, Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;->access$0(Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView;)Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView$OnItemClickListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sdgtl/mediahub/spr/customview/MHHorizontalScrollView$OnItemClickListener;->onItemClick(I)V

    return-void
.end method
