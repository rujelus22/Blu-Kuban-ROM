.class public Lcom/cooliris/drm/DrmPopupInavailable3;
.super Lcom/cooliris/drm/DrmPopup;
.source "DrmPopupInavailable3.java"


# instance fields
.field private final currentSelectedSlot:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/cooliris/media/MediaItem;I)V
    .registers 5
    .parameter "msg"
    .parameter "context"
    .parameter "item"
    .parameter "currentSelectedSlot"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/cooliris/drm/DrmPopup;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/cooliris/media/MediaItem;)V

    .line 21
    iput p4, p0, Lcom/cooliris/drm/DrmPopupInavailable3;->currentSelectedSlot:I

    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/cooliris/drm/DrmPopupInavailable3;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lcom/cooliris/drm/DrmPopupInavailable3;->currentSelectedSlot:I

    return v0
.end method


# virtual methods
.method protected getNegativeListener()Landroid/content/DialogInterface$OnClickListener;
    .registers 2

    .prologue
    .line 41
    new-instance v0, Lcom/cooliris/drm/DrmPopupInavailable3$2;

    invoke-direct {v0, p0}, Lcom/cooliris/drm/DrmPopupInavailable3$2;-><init>(Lcom/cooliris/drm/DrmPopupInavailable3;)V

    return-object v0
.end method

.method protected getPositiveListener()Landroid/content/DialogInterface$OnClickListener;
    .registers 2

    .prologue
    .line 26
    new-instance v0, Lcom/cooliris/drm/DrmPopupInavailable3$1;

    invoke-direct {v0, p0}, Lcom/cooliris/drm/DrmPopupInavailable3$1;-><init>(Lcom/cooliris/drm/DrmPopupInavailable3;)V

    return-object v0
.end method
