.class final Lcom/sdgtl/mediahub/spr/customview/ae;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

.field private final synthetic b:Lcom/sdgtl/mediahub/spr/common/di;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;Lcom/sdgtl/mediahub/spr/common/di;I)V
    .registers 4

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/customview/ae;->a:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/customview/ae;->b:Lcom/sdgtl/mediahub/spr/common/di;

    iput p3, p0, Lcom/sdgtl/mediahub/spr/customview/ae;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .registers 5

    invoke-static {}, Lcom/sdgtl/mediahub/spr/common/gk;->e()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/ae;->a:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    #getter for: Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mOnItemPlayLongClickListener:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemPlayLongClickListener;
    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->access$4(Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;)Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemPlayLongClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/ae;->b:Lcom/sdgtl/mediahub/spr/common/di;

    iget v2, p0, Lcom/sdgtl/mediahub/spr/customview/ae;->c:I

    invoke-interface {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemPlayLongClickListener;->onItemPlayLongClick(Lcom/sdgtl/mediahub/spr/common/di;I)V

    const/4 v0, 0x1

    goto :goto_7
.end method
