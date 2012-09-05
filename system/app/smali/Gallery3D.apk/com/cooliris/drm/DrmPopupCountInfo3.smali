.class public Lcom/cooliris/drm/DrmPopupCountInfo3;
.super Lcom/cooliris/drm/DrmPopup;
.source "DrmPopupCountInfo3.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/cooliris/media/MediaItem;)V
    .registers 4
    .parameter "msg"
    .parameter "context"
    .parameter "item"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/cooliris/drm/DrmPopup;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/cooliris/media/MediaItem;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected getKeyListener()Landroid/content/DialogInterface$OnKeyListener;
    .registers 2

    .prologue
    .line 52
    new-instance v0, Lcom/cooliris/drm/DrmPopupCountInfo3$3;

    invoke-direct {v0, p0}, Lcom/cooliris/drm/DrmPopupCountInfo3$3;-><init>(Lcom/cooliris/drm/DrmPopupCountInfo3;)V

    return-object v0
.end method

.method protected getNegativeListener()Landroid/content/DialogInterface$OnClickListener;
    .registers 2

    .prologue
    .line 39
    new-instance v0, Lcom/cooliris/drm/DrmPopupCountInfo3$2;

    invoke-direct {v0, p0}, Lcom/cooliris/drm/DrmPopupCountInfo3$2;-><init>(Lcom/cooliris/drm/DrmPopupCountInfo3;)V

    return-object v0
.end method

.method protected getPositiveListener()Landroid/content/DialogInterface$OnClickListener;
    .registers 2

    .prologue
    .line 25
    new-instance v0, Lcom/cooliris/drm/DrmPopupCountInfo3$1;

    invoke-direct {v0, p0}, Lcom/cooliris/drm/DrmPopupCountInfo3$1;-><init>(Lcom/cooliris/drm/DrmPopupCountInfo3;)V

    return-object v0
.end method
