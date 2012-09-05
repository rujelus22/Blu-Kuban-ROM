.class public Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;
.super Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;
.source "MXBaseContentItem.java"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method


# virtual methods
.method public initViews()V
    .registers 2

    .prologue
    .line 59
    const v0, 0x7f0c0020

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->setIconView(Landroid/widget/ImageView;)V

    .line 61
    const v0, 0x7f0c0022

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->setIconOverlayView(Landroid/widget/ImageView;)V

    .line 63
    const v0, 0x7f0c0025

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->setTextView(Landroid/widget/TextView;)V

    .line 65
    const v0, 0x7f0c0024

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->setCheckButton(Landroid/widget/CompoundButton;)V

    .line 67
    const v0, 0x7f0c0021

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->setThumbnailView(Landroid/widget/ImageView;)V

    .line 69
    const v0, 0x7f0c0023

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->setIconBoundaryView(Landroid/widget/ImageView;)V

    .line 71
    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;Landroid/widget/ImageView$ScaleType;)V
    .registers 4
    .parameter "b"
    .parameter "scaleType"

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/MediaFile;->getFileTypeInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/myfiles/MediaFile;->isVideoFileType(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 81
    const v0, 0x7f020019

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXBaseContentItem;->setIconOverlay(I)V

    .line 85
    :cond_14
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->setIcon(Landroid/graphics/Bitmap;Landroid/widget/ImageView$ScaleType;)V

    .line 87
    return-void
.end method
