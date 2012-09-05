.class public Lcom/cooliris/drm/DrmPopupCountInfo;
.super Lcom/cooliris/drm/DrmPopup;
.source "DrmPopupCountInfo.java"


# instance fields
.field private final camera:Lcom/cooliris/media/GridCamera;

.field private final slotId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/cooliris/media/MediaItem;ILcom/cooliris/media/GridCamera;)V
    .registers 6
    .parameter "msg"
    .parameter "context"
    .parameter "item"
    .parameter "slotId"
    .parameter "camera"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/cooliris/drm/DrmPopup;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/cooliris/media/MediaItem;)V

    .line 27
    iput p4, p0, Lcom/cooliris/drm/DrmPopupCountInfo;->slotId:I

    .line 28
    iput-object p5, p0, Lcom/cooliris/drm/DrmPopupCountInfo;->camera:Lcom/cooliris/media/GridCamera;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/cooliris/drm/DrmPopupCountInfo;)Lcom/cooliris/media/GridCamera;
    .registers 2
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/cooliris/drm/DrmPopupCountInfo;->camera:Lcom/cooliris/media/GridCamera;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cooliris/drm/DrmPopupCountInfo;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 16
    iget v0, p0, Lcom/cooliris/drm/DrmPopupCountInfo;->slotId:I

    return v0
.end method


# virtual methods
.method protected getKeyListener()Landroid/content/DialogInterface$OnKeyListener;
    .registers 2

    .prologue
    .line 66
    new-instance v0, Lcom/cooliris/drm/DrmPopupCountInfo$3;

    invoke-direct {v0, p0}, Lcom/cooliris/drm/DrmPopupCountInfo$3;-><init>(Lcom/cooliris/drm/DrmPopupCountInfo;)V

    return-object v0
.end method

.method protected getNegativeListener()Landroid/content/DialogInterface$OnClickListener;
    .registers 2

    .prologue
    .line 53
    new-instance v0, Lcom/cooliris/drm/DrmPopupCountInfo$2;

    invoke-direct {v0, p0}, Lcom/cooliris/drm/DrmPopupCountInfo$2;-><init>(Lcom/cooliris/drm/DrmPopupCountInfo;)V

    return-object v0
.end method

.method protected getPositiveListener()Landroid/content/DialogInterface$OnClickListener;
    .registers 2

    .prologue
    .line 33
    new-instance v0, Lcom/cooliris/drm/DrmPopupCountInfo$1;

    invoke-direct {v0, p0}, Lcom/cooliris/drm/DrmPopupCountInfo$1;-><init>(Lcom/cooliris/drm/DrmPopupCountInfo;)V

    return-object v0
.end method
