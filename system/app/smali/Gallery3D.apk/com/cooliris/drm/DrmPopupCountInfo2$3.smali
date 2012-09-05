.class Lcom/cooliris/drm/DrmPopupCountInfo2$3;
.super Ljava/lang/Object;
.source "DrmPopupCountInfo2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cooliris/drm/DrmPopupCountInfo2;->getKeyListener()Landroid/content/DialogInterface$OnKeyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cooliris/drm/DrmPopupCountInfo2;


# direct methods
.method constructor <init>(Lcom/cooliris/drm/DrmPopupCountInfo2;)V
    .registers 2
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/cooliris/drm/DrmPopupCountInfo2$3;->this$0:Lcom/cooliris/drm/DrmPopupCountInfo2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 52
    iget-object v1, p0, Lcom/cooliris/drm/DrmPopupCountInfo2$3;->this$0:Lcom/cooliris/drm/DrmPopupCountInfo2;

    iget-object v1, v1, Lcom/cooliris/drm/DrmPopup;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/cooliris/media/Gallery;

    invoke-virtual {v1}, Lcom/cooliris/media/Gallery;->getGridLayer()Lcom/cooliris/media/GridLayer;

    move-result-object v0

    .line 53
    .local v0, layer:Lcom/cooliris/media/GridLayer;
    const/4 v1, 0x4

    if-ne p2, v1, :cond_21

    .line 55
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 56
    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getViewIntent()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 57
    iget-object v1, p0, Lcom/cooliris/drm/DrmPopupCountInfo2$3;->this$0:Lcom/cooliris/drm/DrmPopupCountInfo2;

    iget-object v1, v1, Lcom/cooliris/drm/DrmPopup;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/cooliris/media/Gallery;

    invoke-virtual {v1}, Lcom/cooliris/media/Gallery;->finish()V

    .line 59
    :cond_1f
    const/4 v1, 0x1

    .line 61
    :goto_20
    return v1

    :cond_21
    const/4 v1, 0x0

    goto :goto_20
.end method
