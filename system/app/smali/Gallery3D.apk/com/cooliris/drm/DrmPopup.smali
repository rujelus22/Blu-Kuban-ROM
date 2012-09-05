.class public abstract Lcom/cooliris/drm/DrmPopup;
.super Ljava/lang/Object;
.source "DrmPopup.java"


# instance fields
.field protected final item:Lcom/cooliris/media/MediaItem;

.field protected final mContext:Landroid/content/Context;

.field private final msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/cooliris/media/MediaItem;)V
    .registers 4
    .parameter "msg"
    .parameter "context"
    .parameter "item"

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p2, p0, Lcom/cooliris/drm/DrmPopup;->mContext:Landroid/content/Context;

    .line 23
    iput-object p3, p0, Lcom/cooliris/drm/DrmPopup;->item:Lcom/cooliris/media/MediaItem;

    .line 24
    iput-object p1, p0, Lcom/cooliris/drm/DrmPopup;->msg:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method protected getKeyListener()Landroid/content/DialogInterface$OnKeyListener;
    .registers 2

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getMessage()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cooliris/drm/DrmPopup;->msg:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getNegativeListener()Landroid/content/DialogInterface$OnClickListener;
.end method

.method protected abstract getPositiveListener()Landroid/content/DialogInterface$OnClickListener;
.end method

.method protected goBack()V
    .registers 3

    .prologue
    .line 61
    iget-object v1, p0, Lcom/cooliris/drm/DrmPopup;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/cooliris/media/Gallery;

    invoke-virtual {v1}, Lcom/cooliris/media/Gallery;->getGridLayer()Lcom/cooliris/media/GridLayer;

    move-result-object v0

    .line 62
    .local v0, layer:Lcom/cooliris/media/GridLayer;
    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->getViewIntent()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 63
    iget-object v1, p0, Lcom/cooliris/drm/DrmPopup;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/cooliris/media/Gallery;

    invoke-virtual {v1}, Lcom/cooliris/media/Gallery;->finish()V

    .line 67
    :goto_15
    return-void

    .line 65
    :cond_16
    invoke-virtual {v0}, Lcom/cooliris/media/GridLayer;->goBack()Z

    goto :goto_15
.end method

.method public final show()V
    .registers 6

    .prologue
    .line 28
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/cooliris/drm/DrmPopup;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/cooliris/media/Gallery;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 30
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/cooliris/drm/DrmPopup;->getMessage()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 32
    iget-object v3, p0, Lcom/cooliris/drm/DrmPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060022

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, strOk:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/cooliris/drm/DrmPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060023

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, strCancel:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/cooliris/drm/DrmPopup;->getPositiveListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 35
    invoke-virtual {p0}, Lcom/cooliris/drm/DrmPopup;->getNegativeListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 37
    invoke-virtual {p0}, Lcom/cooliris/drm/DrmPopup;->getKeyListener()Landroid/content/DialogInterface$OnKeyListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 39
    iget-object v3, p0, Lcom/cooliris/drm/DrmPopup;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/cooliris/media/Gallery;

    invoke-virtual {v3}, Lcom/cooliris/media/Gallery;->getGridLayer()Lcom/cooliris/media/GridLayer;

    move-result-object v3

    if-eqz v3, :cond_59

    .line 40
    iget-object v3, p0, Lcom/cooliris/drm/DrmPopup;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/cooliris/media/Gallery;

    invoke-virtual {v3}, Lcom/cooliris/media/Gallery;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/cooliris/drm/DrmPopup$1;

    invoke-direct {v4, p0, v0}, Lcom/cooliris/drm/DrmPopup$1;-><init>(Lcom/cooliris/drm/DrmPopup;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 46
    :cond_59
    return-void
.end method
