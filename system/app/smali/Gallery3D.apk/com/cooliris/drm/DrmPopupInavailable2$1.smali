.class Lcom/cooliris/drm/DrmPopupInavailable2$1;
.super Ljava/lang/Object;
.source "DrmPopupInavailable2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/drm/DrmPopupInavailable2;->getPositiveListener()Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/drm/DrmPopupInavailable2;


# direct methods
.method constructor <init>(Lcom/cooliris/drm/DrmPopupInavailable2;)V
    .registers 2
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/cooliris/drm/DrmPopupInavailable2$1;->this$0:Lcom/cooliris/drm/DrmPopupInavailable2;

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

    .line 28
    iget-object v0, p0, Lcom/cooliris/drm/DrmPopupInavailable2$1;->this$0:Lcom/cooliris/drm/DrmPopupInavailable2;

    iget-object v0, v0, Lcom/cooliris/drm/DrmPopup;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/cooliris/media/Gallery;

    invoke-virtual {v0}, Lcom/cooliris/media/Gallery;->getGridLayer()Lcom/cooliris/media/GridLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/cooliris/drm/DrmPopupInavailable2$1;->this$0:Lcom/cooliris/drm/DrmPopupInavailable2;

    #getter for: Lcom/cooliris/drm/DrmPopupInavailable2;->slotId:I
    invoke-static {v1}, Lcom/cooliris/drm/DrmPopupInavailable2;->access$000(Lcom/cooliris/drm/DrmPopupInavailable2;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/cooliris/media/GridLayer;->addSlotToSelectedItems(IZZ)V

    .line 29
    iget-object v0, p0, Lcom/cooliris/drm/DrmPopupInavailable2$1;->this$0:Lcom/cooliris/drm/DrmPopupInavailable2;

    iget-object v0, v0, Lcom/cooliris/drm/DrmPopup;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/cooliris/media/Gallery;

    invoke-virtual {v0}, Lcom/cooliris/media/Gallery;->getGridLayer()Lcom/cooliris/media/GridLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->deleteSelection()V

    .line 30
    iget-object v0, p0, Lcom/cooliris/drm/DrmPopupInavailable2$1;->this$0:Lcom/cooliris/drm/DrmPopupInavailable2;

    iget-object v0, v0, Lcom/cooliris/drm/DrmPopup;->item:Lcom/cooliris/media/MediaItem;

    invoke-virtual {v0, v3}, Lcom/cooliris/media/MediaItem;->setDrmPopup(Z)V

    .line 31
    return-void
.end method
