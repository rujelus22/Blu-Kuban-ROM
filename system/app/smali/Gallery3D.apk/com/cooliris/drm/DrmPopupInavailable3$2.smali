.class Lcom/cooliris/drm/DrmPopupInavailable3$2;
.super Ljava/lang/Object;
.source "DrmPopupInavailable3.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/drm/DrmPopupInavailable3;->getNegativeListener()Landroid/content/DialogInterface$OnClickListener;
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
    .line 41
    iput-object p1, p0, Lcom/cooliris/drm/DrmPopupInavailable3$2;->this$0:Lcom/cooliris/drm/DrmPopupInavailable3;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v1, 0x0

    .line 44
    iget-object v0, p0, Lcom/cooliris/drm/DrmPopupInavailable3$2;->this$0:Lcom/cooliris/drm/DrmPopupInavailable3;

    iget-object v0, v0, Lcom/cooliris/drm/DrmPopup;->item:Lcom/cooliris/media/MediaItem;

    invoke-virtual {v0, v1}, Lcom/cooliris/media/MediaItem;->setDrmDrawable(Z)V

    .line 45
    iget-object v0, p0, Lcom/cooliris/drm/DrmPopupInavailable3$2;->this$0:Lcom/cooliris/drm/DrmPopupInavailable3;

    iget-object v0, v0, Lcom/cooliris/drm/DrmPopup;->item:Lcom/cooliris/media/MediaItem;

    invoke-virtual {v0, v1}, Lcom/cooliris/media/MediaItem;->setDrmPopup(Z)V

    .line 46
    return-void
.end method
