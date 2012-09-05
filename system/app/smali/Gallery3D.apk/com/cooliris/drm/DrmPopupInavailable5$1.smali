.class Lcom/cooliris/drm/DrmPopupInavailable5$1;
.super Ljava/lang/Object;
.source "DrmPopupInavailable5.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/drm/DrmPopupInavailable5;->getPositiveListener()Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/drm/DrmPopupInavailable5;


# direct methods
.method constructor <init>(Lcom/cooliris/drm/DrmPopupInavailable5;)V
    .registers 2
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/cooliris/drm/DrmPopupInavailable5$1;->this$0:Lcom/cooliris/drm/DrmPopupInavailable5;

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

    .line 26
    iget-object v1, p0, Lcom/cooliris/drm/DrmPopupInavailable5$1;->this$0:Lcom/cooliris/drm/DrmPopupInavailable5;

    iget-object v1, v1, Lcom/cooliris/drm/DrmPopup;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/cooliris/media/Gallery;

    invoke-virtual {v1}, Lcom/cooliris/media/Gallery;->getGridLayer()Lcom/cooliris/media/GridLayer;

    move-result-object v0

    .line 28
    .local v0, layer:Lcom/cooliris/media/GridLayer;
    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getGridInputProcessor()Lcom/cooliris/media/GridInputProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cooliris/media/GridInputProcessor;->getCurrentSelectedSlot()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v3, v2}, Lcom/cooliris/media/GridLayer;->addSlotToSelectedItems(IZZ)V

    .line 30
    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->deleteSelection()V

    .line 31
    iget-object v1, p0, Lcom/cooliris/drm/DrmPopupInavailable5$1;->this$0:Lcom/cooliris/drm/DrmPopupInavailable5;

    iget-object v1, v1, Lcom/cooliris/drm/DrmPopup;->item:Lcom/cooliris/media/MediaItem;

    invoke-virtual {v1, v3}, Lcom/cooliris/media/MediaItem;->setDrmPopup(Z)V

    .line 32
    return-void
.end method
