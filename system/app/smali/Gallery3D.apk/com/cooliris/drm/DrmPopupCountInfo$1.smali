.class Lcom/cooliris/drm/DrmPopupCountInfo$1;
.super Ljava/lang/Object;
.source "DrmPopupCountInfo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/drm/DrmPopupCountInfo;->getPositiveListener()Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/drm/DrmPopupCountInfo;


# direct methods
.method constructor <init>(Lcom/cooliris/drm/DrmPopupCountInfo;)V
    .registers 2
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/cooliris/drm/DrmPopupCountInfo$1;->this$0:Lcom/cooliris/drm/DrmPopupCountInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v2, 0x1

    .line 36
    iget-object v1, p0, Lcom/cooliris/drm/DrmPopupCountInfo$1;->this$0:Lcom/cooliris/drm/DrmPopupCountInfo;

    iget-object v1, v1, Lcom/cooliris/drm/DrmPopup;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/cooliris/media/Gallery;

    invoke-virtual {v1}, Lcom/cooliris/media/Gallery;->getGridLayer()Lcom/cooliris/media/GridLayer;

    move-result-object v0

    .line 37
    .local v0, layer:Lcom/cooliris/media/GridLayer;
    iput-boolean v2, v0, Lcom/cooliris/media/GridLayer;->mbFirstDecode:Z

    .line 38
    iget-object v1, p0, Lcom/cooliris/drm/DrmPopupCountInfo$1;->this$0:Lcom/cooliris/drm/DrmPopupCountInfo;

    iget-object v1, v1, Lcom/cooliris/drm/DrmPopup;->item:Lcom/cooliris/media/MediaItem;

    invoke-virtual {v1, v2}, Lcom/cooliris/media/MediaItem;->setDrmDrawable(Z)V

    .line 39
    iget-object v1, p0, Lcom/cooliris/drm/DrmPopupCountInfo$1;->this$0:Lcom/cooliris/drm/DrmPopupCountInfo;

    iget-object v1, v1, Lcom/cooliris/drm/DrmPopup;->item:Lcom/cooliris/media/MediaItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/cooliris/media/MediaItem;->setDrmPopup(Z)V

    .line 40
    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->endSlideshow()V

    .line 41
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/cooliris/media/GridLayer;->setState(I)V

    .line 42
    iget-object v1, p0, Lcom/cooliris/drm/DrmPopupCountInfo$1;->this$0:Lcom/cooliris/drm/DrmPopupCountInfo;

    #getter for: Lcom/cooliris/drm/DrmPopupCountInfo;->camera:Lcom/cooliris/media/GridCamera;
    invoke-static {v1}, Lcom/cooliris/drm/DrmPopupCountInfo;->access$000(Lcom/cooliris/drm/DrmPopupCountInfo;)Lcom/cooliris/media/GridCamera;

    move-result-object v1

    const/high16 v2, 0x4000

    iput v2, v1, Lcom/cooliris/media/GridCamera;->mConvergenceSpeed:F

    .line 44
    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v1

    iget-object v2, p0, Lcom/cooliris/drm/DrmPopupCountInfo$1;->this$0:Lcom/cooliris/drm/DrmPopupCountInfo;

    iget-object v2, v2, Lcom/cooliris/drm/DrmPopup;->item:Lcom/cooliris/media/MediaItem;

    iget-object v3, p0, Lcom/cooliris/drm/DrmPopupCountInfo$1;->this$0:Lcom/cooliris/drm/DrmPopupCountInfo;

    #getter for: Lcom/cooliris/drm/DrmPopupCountInfo;->slotId:I
    invoke-static {v3}, Lcom/cooliris/drm/DrmPopupCountInfo;->access$100(Lcom/cooliris/drm/DrmPopupCountInfo;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getCompleteRange()Lcom/cooliris/media/IndexRange;

    move-result-object v4

    iget v4, v4, Lcom/cooliris/media/IndexRange;->end:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/cooliris/media/HudLayer;->fullscreenSelectionChanged(Lcom/cooliris/media/MediaItem;II)V

    .line 46
    return-void
.end method
