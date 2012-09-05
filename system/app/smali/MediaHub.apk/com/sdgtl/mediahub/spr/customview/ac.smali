.class final Lcom/sdgtl/mediahub/spr/customview/ac;
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

    iput-object p1, p0, Lcom/sdgtl/mediahub/spr/customview/ac;->a:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    iput-object p2, p0, Lcom/sdgtl/mediahub/spr/customview/ac;->b:Lcom/sdgtl/mediahub/spr/common/di;

    iput p3, p0, Lcom/sdgtl/mediahub/spr/customview/ac;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/sdgtl/mediahub/spr/customview/ac;->a:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;

    #getter for: Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->mOnItemDownloadStopClickListener:Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemDownloadStopClickListener;
    invoke-static {v0}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;->access$2(Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter;)Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemDownloadStopClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sdgtl/mediahub/spr/customview/ac;->b:Lcom/sdgtl/mediahub/spr/common/di;

    iget v2, p0, Lcom/sdgtl/mediahub/spr/customview/ac;->c:I

    invoke-interface {v0, v1, v2}, Lcom/sdgtl/mediahub/spr/customview/MyMediaAdapter$OnItemDownloadStopClickListener;->onItemDownloadStopClick(Lcom/sdgtl/mediahub/spr/common/di;I)V

    return-void
.end method
