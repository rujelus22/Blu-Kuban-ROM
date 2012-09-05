.class Lcom/cooliris/drm/DrmPopupCountInfo3$1;
.super Ljava/lang/Object;
.source "DrmPopupCountInfo3.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/drm/DrmPopupCountInfo3;->getPositiveListener()Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/drm/DrmPopupCountInfo3;


# direct methods
.method constructor <init>(Lcom/cooliris/drm/DrmPopupCountInfo3;)V
    .registers 2
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/cooliris/drm/DrmPopupCountInfo3$1;->this$0:Lcom/cooliris/drm/DrmPopupCountInfo3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 28
    iget-object v1, p0, Lcom/cooliris/drm/DrmPopupCountInfo3$1;->this$0:Lcom/cooliris/drm/DrmPopupCountInfo3;

    iget-object v1, v1, Lcom/cooliris/drm/DrmPopup;->item:Lcom/cooliris/media/MediaItem;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/cooliris/media/MediaItem;->setDrmDrawable(Z)V

    .line 29
    iget-object v1, p0, Lcom/cooliris/drm/DrmPopupCountInfo3$1;->this$0:Lcom/cooliris/drm/DrmPopupCountInfo3;

    iget-object v1, v1, Lcom/cooliris/drm/DrmPopup;->item:Lcom/cooliris/media/MediaItem;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/cooliris/media/MediaItem;->setDrmPopup(Z)V

    .line 30
    iget-object v1, p0, Lcom/cooliris/drm/DrmPopupCountInfo3$1;->this$0:Lcom/cooliris/drm/DrmPopupCountInfo3;

    iget-object v1, v1, Lcom/cooliris/drm/DrmPopup;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/cooliris/media/Gallery;

    invoke-virtual {v1}, Lcom/cooliris/media/Gallery;->getGridLayer()Lcom/cooliris/media/GridLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cooliris/media/GridLayer;->getHud()Lcom/cooliris/media/HudLayer;

    move-result-object v0

    .line 31
    .local v0, hud:Lcom/cooliris/media/HudLayer;
    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Lcom/cooliris/media/HudLayer;->setAlpha(F)V

    .line 32
    return-void
.end method
