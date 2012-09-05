.class Lcom/cooliris/drm/DrmPopupInavailable3$1;
.super Ljava/lang/Object;
.source "DrmPopupInavailable3.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/drm/DrmPopupInavailable3;->getPositiveListener()Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/drm/DrmPopupInavailable3;


# direct methods
.method constructor <init>(Lcom/cooliris/drm/DrmPopupInavailable3;)V
    .registers 2
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/cooliris/drm/DrmPopupInavailable3$1;->this$0:Lcom/cooliris/drm/DrmPopupInavailable3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v3, 0x0

    .line 29
    iget-object v1, p0, Lcom/cooliris/drm/DrmPopupInavailable3$1;->this$0:Lcom/cooliris/drm/DrmPopupInavailable3;

    iget-object v1, v1, Lcom/cooliris/drm/DrmPopup;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/cooliris/media/Gallery;

    invoke-virtual {v1}, Lcom/cooliris/media/Gallery;->getGridLayer()Lcom/cooliris/media/GridLayer;

    move-result-object v0

    .line 30
    .local v0, layer:Lcom/cooliris/media/GridLayer;
    iget-object v1, p0, Lcom/cooliris/drm/DrmPopupInavailable3$1;->this$0:Lcom/cooliris/drm/DrmPopupInavailable3;

    #getter for: Lcom/cooliris/drm/DrmPopupInavailable3;->currentSelectedSlot:I
    invoke-static {v1}, Lcom/cooliris/drm/DrmPopupInavailable3;->access$000(Lcom/cooliris/drm/DrmPopupInavailable3;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/cooliris/media/GridLayer;->addSlotToSelectedItems(IZZ)V

    .line 31
    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->deleteSelection()V

    .line 32
    invoke-virtual {v0, v3}, Lcom/cooliris/media/GridLayer;->setDuplicatedDrmPopup(Z)V

    .line 33
    iget-object v1, p0, Lcom/cooliris/drm/DrmPopupInavailable3$1;->this$0:Lcom/cooliris/drm/DrmPopupInavailable3;

    iget-object v1, v1, Lcom/cooliris/drm/DrmPopup;->item:Lcom/cooliris/media/MediaItem;

    invoke-virtual {v1, v3}, Lcom/cooliris/media/MediaItem;->setDrmPopup(Z)V

    .line 34
    return-void
.end method
