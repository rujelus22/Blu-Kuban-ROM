.class Lcom/cooliris/drm/DrmPopupInavailable4$1;
.super Ljava/lang/Object;
.source "DrmPopupInavailable4.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/drm/DrmPopupInavailable4;->getPositiveListener()Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/drm/DrmPopupInavailable4;


# direct methods
.method constructor <init>(Lcom/cooliris/drm/DrmPopupInavailable4;)V
    .registers 2
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/cooliris/drm/DrmPopupInavailable4$1;->this$0:Lcom/cooliris/drm/DrmPopupInavailable4;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v2, 0x0

    .line 25
    iget-object v0, p0, Lcom/cooliris/drm/DrmPopupInavailable4$1;->this$0:Lcom/cooliris/drm/DrmPopupInavailable4;

    iget-object v0, v0, Lcom/cooliris/drm/DrmPopup;->item:Lcom/cooliris/media/MediaItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cooliris/media/MediaItem;->setDrmDrawable(Z)V

    .line 26
    iget-object v0, p0, Lcom/cooliris/drm/DrmPopupInavailable4$1;->this$0:Lcom/cooliris/drm/DrmPopupInavailable4;

    iget-object v0, v0, Lcom/cooliris/drm/DrmPopup;->item:Lcom/cooliris/media/MediaItem;

    invoke-virtual {v0, v2}, Lcom/cooliris/media/MediaItem;->setDrmPopup(Z)V

    .line 27
    iget-object v0, p0, Lcom/cooliris/drm/DrmPopupInavailable4$1;->this$0:Lcom/cooliris/drm/DrmPopupInavailable4;

    iget-object v0, v0, Lcom/cooliris/drm/DrmPopup;->item:Lcom/cooliris/media/MediaItem;

    invoke-virtual {v0}, Lcom/cooliris/media/MediaItem;->isDrmFirstView()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 28
    iget-object v0, p0, Lcom/cooliris/drm/DrmPopupInavailable4$1;->this$0:Lcom/cooliris/drm/DrmPopupInavailable4;

    iget-object v0, v0, Lcom/cooliris/drm/DrmPopup;->item:Lcom/cooliris/media/MediaItem;

    invoke-virtual {v0, v2}, Lcom/cooliris/media/MediaItem;->setDrmFirstView(Z)V

    .line 31
    :cond_21
    iget-object v0, p0, Lcom/cooliris/drm/DrmPopupInavailable4$1;->this$0:Lcom/cooliris/drm/DrmPopupInavailable4;

    iget-object v0, v0, Lcom/cooliris/drm/DrmPopup;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/cooliris/drm/DrmPopupInavailable4$1;->this$0:Lcom/cooliris/drm/DrmPopupInavailable4;

    iget-object v1, v1, Lcom/cooliris/drm/DrmPopup;->item:Lcom/cooliris/media/MediaItem;

    iget-object v1, v1, Lcom/cooliris/media/MediaItem;->mFilePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cooliris/drm/DrmChecker;->acquireLicense(Landroid/content/Context;Ljava/lang/String;)Z

    .line 33
    iget-object v0, p0, Lcom/cooliris/drm/DrmPopupInavailable4$1;->this$0:Lcom/cooliris/drm/DrmPopupInavailable4;

    iget-object v0, v0, Lcom/cooliris/drm/DrmPopup;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/cooliris/media/Gallery;

    invoke-virtual {v0}, Lcom/cooliris/media/Gallery;->finish()V

    .line 34
    return-void
.end method
