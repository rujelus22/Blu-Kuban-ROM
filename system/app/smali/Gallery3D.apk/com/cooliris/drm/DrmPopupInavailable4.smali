.class public Lcom/cooliris/drm/DrmPopupInavailable4;
.super Lcom/cooliris/drm/DrmPopup;
.source "DrmPopupInavailable4.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/cooliris/media/MediaItem;)V
    .registers 4
    .parameter "msg"
    .parameter "context"
    .parameter "item"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/cooliris/drm/DrmPopup;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/cooliris/media/MediaItem;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected getNegativeListener()Landroid/content/DialogInterface$OnClickListener;
    .registers 2

    .prologue
    .line 41
    new-instance v0, Lcom/cooliris/drm/DrmPopupInavailable4$2;

    invoke-direct {v0, p0}, Lcom/cooliris/drm/DrmPopupInavailable4$2;-><init>(Lcom/cooliris/drm/DrmPopupInavailable4;)V

    return-object v0
.end method

.method protected getPositiveListener()Landroid/content/DialogInterface$OnClickListener;
    .registers 2

    .prologue
    .line 22
    new-instance v0, Lcom/cooliris/drm/DrmPopupInavailable4$1;

    invoke-direct {v0, p0}, Lcom/cooliris/drm/DrmPopupInavailable4$1;-><init>(Lcom/cooliris/drm/DrmPopupInavailable4;)V

    return-object v0
.end method
