.class public Lcom/google/android/music/widgets/QuickContactBadgeComp;
.super Landroid/widget/QuickContactBadge;
.source "QuickContactBadgeComp.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentUrl:Ljava/lang/String;

.field private mQuickContactBadgeHeight:I

.field private mQuickContactBadgeWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput-object p1, p0, Lcom/google/android/music/widgets/QuickContactBadgeComp;->mContext:Landroid/content/Context;

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 28
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f09007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/widgets/QuickContactBadgeComp;->mQuickContactBadgeWidth:I

    .line 29
    const v1, 0x7f09007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/google/android/music/widgets/QuickContactBadgeComp;->mQuickContactBadgeHeight:I

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/widgets/QuickContactBadgeComp;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/widgets/QuickContactBadgeComp;->getPhoto(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/music/widgets/QuickContactBadgeComp;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/music/widgets/QuickContactBadgeComp;->mCurrentUrl:Ljava/lang/String;

    return-object v0
.end method

.method private getPhoto(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .registers 11
    .parameter "url"
    .parameter "allowResolve"

    .prologue
    const/4 v4, 0x0

    .line 80
    iget-object v0, p0, Lcom/google/android/music/widgets/QuickContactBadgeComp;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/google/android/music/widgets/QuickContactBadgeComp;->mQuickContactBadgeWidth:I

    iget v3, p0, Lcom/google/android/music/widgets/QuickContactBadgeComp;->mQuickContactBadgeHeight:I

    move-object v1, p1

    move v5, v4

    move v6, p2

    move v7, v4

    invoke-static/range {v0 .. v7}, Lcom/google/android/music/utils/AlbumArtUtils;->getArtworkFromUrl(Landroid/content/Context;Ljava/lang/String;IIZZZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public setImageToDefault()V
    .registers 3

    .prologue
    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_d

    .line 35
    const v0, 0x7f0200e8

    invoke-virtual {p0, v0}, Lcom/google/android/music/widgets/QuickContactBadgeComp;->setImageResource(I)V

    .line 39
    :goto_c
    return-void

    .line 37
    :cond_d
    invoke-super {p0}, Landroid/widget/QuickContactBadge;->setImageToDefault()V

    goto :goto_c
.end method

.method public declared-synchronized setImageUrl(Ljava/lang/String;)V
    .registers 5
    .parameter "url"

    .prologue
    .line 43
    monitor-enter p0

    if-eqz p1, :cond_d

    :try_start_3
    iget-object v1, p0, Lcom/google/android/music/widgets/QuickContactBadgeComp;->mCurrentUrl:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_15

    move-result v1

    if-eqz v1, :cond_d

    .line 77
    :goto_b
    monitor-exit p0

    return-void

    .line 44
    :cond_d
    :try_start_d
    iput-object p1, p0, Lcom/google/android/music/widgets/QuickContactBadgeComp;->mCurrentUrl:Ljava/lang/String;

    .line 45
    if-nez p1, :cond_18

    .line 46
    invoke-virtual {p0}, Lcom/google/android/music/widgets/QuickContactBadgeComp;->setImageToDefault()V
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_15

    goto :goto_b

    .line 43
    :catchall_15
    move-exception v1

    monitor-exit p0

    throw v1

    .line 50
    :cond_18
    const/4 v1, 0x0

    :try_start_19
    invoke-direct {p0, p1, v1}, Lcom/google/android/music/widgets/QuickContactBadgeComp;->getPhoto(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 51
    .local v0, photo:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_23

    .line 52
    invoke-virtual {p0, v0}, Lcom/google/android/music/widgets/QuickContactBadgeComp;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_b

    .line 54
    :cond_23
    invoke-virtual {p0}, Lcom/google/android/music/widgets/QuickContactBadgeComp;->setImageToDefault()V

    .line 55
    sget-object v1, Lcom/google/android/music/utils/async/AsyncWorkers;->sUIBackgroundWorker:Lcom/google/android/music/Worker;

    new-instance v2, Lcom/google/android/music/widgets/QuickContactBadgeComp$1;

    invoke-direct {v2, p0, p1}, Lcom/google/android/music/widgets/QuickContactBadgeComp$1;-><init>(Lcom/google/android/music/widgets/QuickContactBadgeComp;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/google/android/music/utils/async/AsyncWorkers;->runAsyncWithCallback(Lcom/google/android/music/Worker;Lcom/google/android/music/utils/async/AsyncRunner;)V
    :try_end_30
    .catchall {:try_start_19 .. :try_end_30} :catchall_15

    goto :goto_b
.end method
