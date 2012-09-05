.class public Lcom/cooliris/drm/DrmPopupInavailable2;
.super Lcom/cooliris/drm/DrmPopup;
.source "DrmPopupInavailable2.java"


# instance fields
.field private slotId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/cooliris/media/MediaItem;I)V
    .registers 5
    .parameter "msg"
    .parameter "context"
    .parameter "item"
    .parameter "slotId"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/cooliris/drm/DrmPopup;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/cooliris/media/MediaItem;)V

    .line 20
    iput p4, p0, Lcom/cooliris/drm/DrmPopupInavailable2;->slotId:I

    .line 21
    return-void
.end method

.method static synthetic access$000(Lcom/cooliris/drm/DrmPopupInavailable2;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 12
    iget v0, p0, Lcom/cooliris/drm/DrmPopupInavailable2;->slotId:I

    return v0
.end method


# virtual methods
.method protected getNegativeListener()Landroid/content/DialogInterface$OnClickListener;
    .registers 2

    .prologue
    .line 38
    new-instance v0, Lcom/cooliris/drm/DrmPopupInavailable2$2;

    invoke-direct {v0, p0}, Lcom/cooliris/drm/DrmPopupInavailable2$2;-><init>(Lcom/cooliris/drm/DrmPopupInavailable2;)V

    return-object v0
.end method

.method protected getPositiveListener()Landroid/content/DialogInterface$OnClickListener;
    .registers 2

    .prologue
    .line 25
    new-instance v0, Lcom/cooliris/drm/DrmPopupInavailable2$1;

    invoke-direct {v0, p0}, Lcom/cooliris/drm/DrmPopupInavailable2$1;-><init>(Lcom/cooliris/drm/DrmPopupInavailable2;)V

    return-object v0
.end method
