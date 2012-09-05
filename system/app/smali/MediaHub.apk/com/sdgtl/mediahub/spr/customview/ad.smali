.class final Lcom/sdgtl/mediahub/spr/customview/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

.field private final synthetic b:Lcom/sdgtl/mediahub/spr/common/di;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;Lcom/sdgtl/mediahub/spr/common/di;I)V
    .registers 4

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/customview/ad;->a:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/customview/ad;->b:Lcom/sdgtl/mediahub/spr/common/di;

    iput p3, p0, Lcom/sdgtl/mediahub/spr/customview/ad;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->e()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/ad;->a:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    #getter for: Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mOnItemPlayClickListener:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemPlayClickListener;
    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->access$3(Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;)Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemPlayClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/ad;->b:Lcom/sdgtl/mediahub/spr/common/di;

    iget v2, p0, Lcom/sdgtl/mediahub/spr/customview/ad;->c:I

    invoke-interface {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemPlayClickListener;->onItemPlayClick(Lcom/sdgtl/mediahub/spr/common/di;I)V

    goto :goto_6
.end method
