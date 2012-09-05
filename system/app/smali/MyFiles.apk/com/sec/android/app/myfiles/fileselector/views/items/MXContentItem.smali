.class public abstract Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;
.super Landroid/widget/RelativeLayout;
.source "MXContentItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$OnItemExecuteListener;
    }
.end annotation


# instance fields
.field isCheckButtonVisible:Z

.field private mBrokenImage:Landroid/graphics/drawable/Drawable;

.field private mCompoundButton:Landroid/widget/CompoundButton;

.field mContext:Landroid/content/Context;

.field private mExecuteListener:Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$OnItemExecuteListener;

.field private mIcon:Landroid/widget/ImageView;

.field private mIconBoundary:Landroid/widget/ImageView;

.field private mIconOverlay:Landroid/widget/ImageView;

.field private mPath:Ljava/lang/String;

.field private mText:Landroid/widget/TextView;

.field private mThumbnail:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mExecuteListener:Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$OnItemExecuteListener;

    .line 44
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mPath:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mIcon:Landroid/widget/ImageView;

    .line 48
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mThumbnail:Landroid/widget/ImageView;

    .line 50
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mIconOverlay:Landroid/widget/ImageView;

    .line 52
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mIconBoundary:Landroid/widget/ImageView;

    .line 54
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mText:Landroid/widget/TextView;

    .line 56
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mCompoundButton:Landroid/widget/CompoundButton;

    .line 62
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mBrokenImage:Landroid/graphics/drawable/Drawable;

    .line 532
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->isCheckButtonVisible:Z

    .line 70
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mContext:Landroid/content/Context;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mExecuteListener:Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$OnItemExecuteListener;

    .line 44
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mPath:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mIcon:Landroid/widget/ImageView;

    .line 48
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mThumbnail:Landroid/widget/ImageView;

    .line 50
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mIconOverlay:Landroid/widget/ImageView;

    .line 52
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mIconBoundary:Landroid/widget/ImageView;

    .line 54
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mText:Landroid/widget/TextView;

    .line 56
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mCompoundButton:Landroid/widget/CompoundButton;

    .line 62
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mBrokenImage:Landroid/graphics/drawable/Drawable;

    .line 532
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->isCheckButtonVisible:Z

    .line 80
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mContext:Landroid/content/Context;

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mExecuteListener:Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$OnItemExecuteListener;

    .line 44
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mPath:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mIcon:Landroid/widget/ImageView;

    .line 48
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mThumbnail:Landroid/widget/ImageView;

    .line 50
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mIconOverlay:Landroid/widget/ImageView;

    .line 52
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mIconBoundary:Landroid/widget/ImageView;

    .line 54
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mText:Landroid/widget/TextView;

    .line 56
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mCompoundButton:Landroid/widget/CompoundButton;

    .line 62
    iput-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mBrokenImage:Landroid/graphics/drawable/Drawable;

    .line 532
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->isCheckButtonVisible:Z

    .line 90
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mContext:Landroid/content/Context;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mThumbnail:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mBrokenImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mIconOverlay:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public execute()V
    .registers 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mExecuteListener:Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$OnItemExecuteListener;

    if-eqz v0, :cond_b

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mExecuteListener:Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$OnItemExecuteListener;

    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mPath:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$OnItemExecuteListener;->onItemExecute(Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;Ljava/lang/String;)V

    .line 103
    :cond_b
    return-void
.end method

.method public getCheckButton()Landroid/widget/CompoundButton;
    .registers 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mCompoundButton:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method public getCheckVisibility()Z
    .registers 2

    .prologue
    .line 544
    iget-boolean v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->isCheckButtonVisible:Z

    if-eqz v0, :cond_6

    .line 545
    const/4 v0, 0x1

    .line 547
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public getIconView()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 526
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mText:Landroid/widget/TextView;

    return-object v0
.end method

.method public isChecked()Z
    .registers 3

    .prologue
    .line 611
    const/4 v0, 0x0

    .line 613
    .local v0, result:Z
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mCompoundButton:Landroid/widget/CompoundButton;

    if-eqz v1, :cond_b

    .line 614
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mCompoundButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 615
    :cond_b
    return v0
.end method

.method public setCheckButton(Landroid/widget/CompoundButton;)V
    .registers 2
    .parameter "button"

    .prologue
    .line 560
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mCompoundButton:Landroid/widget/CompoundButton;

    .line 562
    return-void
.end method

.method public setCheckEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 553
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mCompoundButton:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_9

    .line 554
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mCompoundButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 556
    :cond_9
    return-void
.end method

.method public setCheckVisibility(I)V
    .registers 3
    .parameter "visibility"

    .prologue
    .line 535
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mCompoundButton:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_c

    .line 537
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mCompoundButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 538
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->isCheckButtonVisible:Z

    .line 540
    :cond_c
    return-void
.end method

.method public setChecked(Z)V
    .registers 3
    .parameter "b"

    .prologue
    .line 578
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mCompoundButton:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_9

    .line 580
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mCompoundButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 582
    :cond_9
    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;Landroid/widget/ImageView$ScaleType;)V
    .registers 6
    .parameter "b"
    .parameter "scaleType"

    .prologue
    .line 250
    move-object v0, p1

    .line 252
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_11

    .line 256
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$6;

    invoke-direct {v2, p0, p2, v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$6;-><init>(Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;Landroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 270
    :cond_11
    return-void
.end method

.method public setIconBoundaryView(Landroid/widget/ImageView;)V
    .registers 2
    .parameter "iv"

    .prologue
    .line 484
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mIconBoundary:Landroid/widget/ImageView;

    .line 486
    return-void
.end method

.method public setIconBoundaryVisibility(I)V
    .registers 3
    .parameter "visibility"

    .prologue
    .line 490
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mIconBoundary:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 491
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mIconBoundary:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 493
    :cond_9
    return-void
.end method

.method public setIconOverlay(I)V
    .registers 5
    .parameter "resId"

    .prologue
    .line 460
    move v0, p1

    .line 462
    .local v0, id:I
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mIconOverlay:Landroid/widget/ImageView;

    if-eqz v1, :cond_11

    .line 466
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$12;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$12;-><init>(Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;I)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 478
    :cond_11
    return-void
.end method

.method public setIconOverlayView(Landroid/widget/ImageView;)V
    .registers 2
    .parameter "iv"

    .prologue
    .line 452
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mIconOverlay:Landroid/widget/ImageView;

    .line 454
    return-void
.end method

.method public setIconView(Landroid/widget/ImageView;)V
    .registers 2
    .parameter "iv"

    .prologue
    .line 320
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mIcon:Landroid/widget/ImageView;

    .line 322
    return-void
.end method

.method public setOnItemExecuteListener(Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$OnItemExecuteListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mExecuteListener:Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$OnItemExecuteListener;

    .line 115
    return-void
.end method

.method public setScroll(Z)V
    .registers 3
    .parameter "scrolling"

    .prologue
    .line 605
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 607
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .registers 3
    .parameter "tag"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mCompoundButton:Landroid/widget/CompoundButton;

    if-eqz v0, :cond_9

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mCompoundButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setTag(Ljava/lang/Object;)V

    .line 122
    :cond_9
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 124
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mPath:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setTextView(Landroid/widget/TextView;)V
    .registers 2
    .parameter "tv"

    .prologue
    .line 520
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mText:Landroid/widget/TextView;

    .line 522
    return-void
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;Landroid/widget/ImageView$ScaleType;)V
    .registers 6
    .parameter "b"
    .parameter "scaleType"

    .prologue
    .line 368
    move-object v0, p1

    .line 370
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez p1, :cond_4

    .line 405
    :goto_3
    return-void

    .line 373
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$10;

    invoke-direct {v2, p0, v0, p2}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$10;-><init>(Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;Landroid/graphics/Bitmap;Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_3
.end method

.method public setThumbnail(Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V
    .registers 6
    .parameter "d"
    .parameter "scaleType"

    .prologue
    .line 409
    move-object v0, p1

    .line 411
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-nez p1, :cond_4

    .line 446
    :goto_3
    return-void

    .line 414
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$11;

    invoke-direct {v2, p0, v0, p2}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem$11;-><init>(Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_3
.end method

.method public setThumbnailView(Landroid/widget/ImageView;)V
    .registers 2
    .parameter "iv"

    .prologue
    .line 334
    iput-object p1, p0, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->mThumbnail:Landroid/widget/ImageView;

    .line 336
    return-void
.end method

.method public setVideoFile(Z)V
    .registers 3
    .parameter "isVideo"

    .prologue
    .line 585
    if-eqz p1, :cond_d

    .line 586
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->setIconBoundaryVisibility(I)V

    .line 587
    const v0, 0x7f020019

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->setIconOverlay(I)V

    .line 591
    :goto_c
    return-void

    .line 589
    :cond_d
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/app/myfiles/fileselector/views/items/MXContentItem;->setIconBoundaryVisibility(I)V

    goto :goto_c
.end method
