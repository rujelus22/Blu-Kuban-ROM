.class Lcom/lifevibes/trimapp/Trim$ThumbnailTask;
.super Landroid/os/AsyncTask;
.source "Trim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lifevibes/trimapp/Trim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbnailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Lcom/lifevibes/trimapp/Trim$ThumbnailImage;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public mCurrentMask:I

.field public mGetPixelsDone:Z

.field public mHeight:I

.field public mImageViewsReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<[",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field public mIsReleased:Z

.field public mMaxTNNum:I

.field public mNeedLoopRestart:Z

.field public mOffsets:[I

.field public mOpeningDone:Z

.field public mTaskId:J

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mWidth:I

.field final synthetic this$0:Lcom/lifevibes/trimapp/Trim;


# direct methods
.method public constructor <init>(Lcom/lifevibes/trimapp/Trim;)V
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 1512
    iput-object p1, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1501
    iput-boolean v0, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mIsReleased:Z

    .line 1507
    iput-boolean v3, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mOpeningDone:Z

    .line 1508
    iput-boolean v3, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mGetPixelsDone:Z

    .line 1510
    iput-boolean v0, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mNeedLoopRestart:Z

    .line 1513
    #getter for: Lcom/lifevibes/trimapp/Trim;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {p1}, Lcom/lifevibes/trimapp/Trim;->access$3100(Lcom/lifevibes/trimapp/Trim;)Landroid/os/PowerManager;

    move-result-object v0

    const v1, 0x20000006

    const-string v2, "TrimApp"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1517
    invoke-static {p1, v3}, Lcom/lifevibes/trimapp/Trim;->access$2976(Lcom/lifevibes/trimapp/Trim;I)I

    .line 1520
    invoke-direct {p0}, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->setTaskId()V

    .line 1521
    return-void
.end method

.method private getNextMask()I
    .registers 5

    .prologue
    const/16 v0, 0x8

    const/4 v2, 0x4

    const/4 v1, 0x2

    .line 1754
    iget-object v3, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mThumbnailMask:I
    invoke-static {v3}, Lcom/lifevibes/trimapp/Trim;->access$1200(Lcom/lifevibes/trimapp/Trim;)I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-ne v3, v0, :cond_16

    .line 1755
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    const/16 v2, -0x9

    invoke-static {v1, v2}, Lcom/lifevibes/trimapp/Trim;->access$1272(Lcom/lifevibes/trimapp/Trim;I)I

    .line 1764
    :goto_15
    return v0

    .line 1757
    :cond_16
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mThumbnailMask:I
    invoke-static {v0}, Lcom/lifevibes/trimapp/Trim;->access$1200(Lcom/lifevibes/trimapp/Trim;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v1, :cond_28

    .line 1758
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    const/4 v2, -0x3

    invoke-static {v0, v2}, Lcom/lifevibes/trimapp/Trim;->access$1272(Lcom/lifevibes/trimapp/Trim;I)I

    move v0, v1

    .line 1759
    goto :goto_15

    .line 1760
    :cond_28
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mThumbnailMask:I
    invoke-static {v0}, Lcom/lifevibes/trimapp/Trim;->access$1200(Lcom/lifevibes/trimapp/Trim;)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v2, :cond_3a

    .line 1761
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    const/4 v1, -0x5

    invoke-static {v0, v1}, Lcom/lifevibes/trimapp/Trim;->access$1272(Lcom/lifevibes/trimapp/Trim;I)I

    move v0, v2

    .line 1762
    goto :goto_15

    .line 1764
    :cond_3a
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private getThumbnailInfo(I)Z
    .registers 12
    .parameter "thumbnailMask"

    .prologue
    const/4 v7, 0x1

    const/high16 v9, 0x3f00

    const/4 v6, 0x0

    .line 1769
    iput v6, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mWidth:I

    .line 1770
    iput v6, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mHeight:I

    .line 1771
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mOffsets:[I

    .line 1773
    sparse-switch p1, :sswitch_data_144

    .line 1848
    const-string v7, "TrimApp"

    const-string v8, "unknown thumbnailMask"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    :goto_15
    return v6

    .line 1775
    :sswitch_16
    new-instance v8, Ljava/lang/ref/WeakReference;

    iget-object v9, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mIvFullImage:[Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/lifevibes/trimapp/Trim;->access$3600(Lcom/lifevibes/trimapp/Trim;)[Landroid/widget/ImageView;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v8, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mImageViewsReference:Ljava/lang/ref/WeakReference;

    .line 1776
    sget v8, Lcom/lifevibes/trimapp/Trim;->VIDEOVIEW_WIDTH:I

    iput v8, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mWidth:I

    .line 1777
    sget v8, Lcom/lifevibes/trimapp/Trim;->VIDEOVIEW_HEIGHT:I

    iput v8, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mHeight:I

    .line 1778
    iput v7, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mMaxTNNum:I

    .line 1781
    iget-object v8, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mInputProperties:Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;
    invoke-static {v8}, Lcom/lifevibes/trimapp/Trim;->access$3700(Lcom/lifevibes/trimapp/Trim;)Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;

    move-result-object v8

    iget v8, v8, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;->mWidth:I

    iput v8, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mWidth:I

    .line 1782
    iget-object v8, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mInputProperties:Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;
    invoke-static {v8}, Lcom/lifevibes/trimapp/Trim;->access$3700(Lcom/lifevibes/trimapp/Trim;)Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;

    move-result-object v8

    iget v8, v8, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;->mHeight:I

    iput v8, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mHeight:I

    .line 1798
    iget v8, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mMaxTNNum:I

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mOffsets:[I

    .line 1799
    iget-object v8, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mOffsets:[I

    iget-object v9, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mThumbnailOffset:I
    invoke-static {v9}, Lcom/lifevibes/trimapp/Trim;->access$1300(Lcom/lifevibes/trimapp/Trim;)I

    move-result v9

    aput v9, v8, v6

    .line 1800
    iget-object v8, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mOffsets:[I

    aget v8, v8, v6

    if-gez v8, :cond_5d

    .line 1801
    iget-object v8, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mOffsets:[I

    aput v6, v8, v6

    :cond_5b
    :goto_5b
    move v6, v7

    .line 1851
    goto :goto_15

    .line 1802
    :cond_5d
    iget-object v8, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mOffsets:[I

    aget v8, v8, v6

    iget-object v9, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mInputProperties:Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;
    invoke-static {v9}, Lcom/lifevibes/trimapp/Trim;->access$3700(Lcom/lifevibes/trimapp/Trim;)Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;

    move-result-object v9

    iget v9, v9, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;->mDurationMillis:I

    add-int/lit16 v9, v9, -0xc8

    if-le v8, v9, :cond_5b

    .line 1804
    iget-object v8, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mOffsets:[I

    iget-object v9, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mInputProperties:Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;
    invoke-static {v9}, Lcom/lifevibes/trimapp/Trim;->access$3700(Lcom/lifevibes/trimapp/Trim;)Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;

    move-result-object v9

    iget v9, v9, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;->mDurationMillis:I

    add-int/lit16 v9, v9, -0xc8

    aput v9, v8, v6

    goto :goto_5b

    .line 1808
    :sswitch_7c
    new-instance v6, Ljava/lang/ref/WeakReference;

    iget-object v8, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mIvThumbnails:[Landroid/widget/ImageView;
    invoke-static {v8}, Lcom/lifevibes/trimapp/Trim;->access$1000(Lcom/lifevibes/trimapp/Trim;)[Landroid/widget/ImageView;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mImageViewsReference:Ljava/lang/ref/WeakReference;

    .line 1809
    iget-object v6, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;
    invoke-static {v6}, Lcom/lifevibes/trimapp/Trim;->access$600(Lcom/lifevibes/trimapp/Trim;)Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getImageWidth()I

    move-result v6

    iput v6, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mWidth:I

    .line 1810
    iget-object v6, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;
    invoke-static {v6}, Lcom/lifevibes/trimapp/Trim;->access$600(Lcom/lifevibes/trimapp/Trim;)Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getImageHeight()I

    move-result v6

    iput v6, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mHeight:I

    .line 1811
    iget-object v6, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mNumberOfImages:I
    invoke-static {v6}, Lcom/lifevibes/trimapp/Trim;->access$700(Lcom/lifevibes/trimapp/Trim;)I

    move-result v6

    iput v6, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mMaxTNNum:I

    .line 1813
    iget v6, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mMaxTNNum:I

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mOffsets:[I

    .line 1815
    iget-object v6, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mInputProperties:Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;
    invoke-static {v6}, Lcom/lifevibes/trimapp/Trim;->access$3700(Lcom/lifevibes/trimapp/Trim;)Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;

    move-result-object v6

    iget v2, v6, Lcom/lifevibes/trimapp/util/MediaShare$MediaShareProperties;->mDurationMillis:I

    .line 1816
    .local v2, maxDuration:I
    const/4 v5, 0x0

    .line 1817
    .local v5, sum:I
    iget v6, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mMaxTNNum:I

    div-int v6, v2, v6

    int-to-float v6, v6

    add-float/2addr v6, v9

    float-to-int v0, v6

    .line 1818
    .local v0, duration:I
    div-int/lit8 v6, v0, 0x2

    int-to-float v6, v6

    add-float/2addr v6, v9

    float-to-int v3, v6

    .line 1819
    .local v3, middle:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c5
    iget v6, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mMaxTNNum:I

    if-ge v1, v6, :cond_5b

    .line 1820
    add-int/2addr v5, v0

    .line 1821
    if-le v5, v2, :cond_cd

    .line 1822
    move v5, v2

    .line 1824
    :cond_cd
    iget-object v6, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mOffsets:[I

    sub-int v8, v5, v3

    aput v8, v6, v1

    .line 1819
    add-int/lit8 v1, v1, 0x1

    goto :goto_c5

    .line 1829
    .end local v0           #duration:I
    .end local v1           #i:I
    .end local v2           #maxDuration:I
    .end local v3           #middle:I
    .end local v5           #sum:I
    :sswitch_d6
    new-instance v6, Ljava/lang/ref/WeakReference;

    iget-object v8, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mIvThumbnailsZoom:[Landroid/widget/ImageView;
    invoke-static {v8}, Lcom/lifevibes/trimapp/Trim;->access$800(Lcom/lifevibes/trimapp/Trim;)[Landroid/widget/ImageView;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mImageViewsReference:Ljava/lang/ref/WeakReference;

    .line 1830
    iget-object v6, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;
    invoke-static {v6}, Lcom/lifevibes/trimapp/Trim;->access$600(Lcom/lifevibes/trimapp/Trim;)Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getImageWidth()I

    move-result v6

    iput v6, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mWidth:I

    .line 1831
    iget-object v6, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;
    invoke-static {v6}, Lcom/lifevibes/trimapp/Trim;->access$600(Lcom/lifevibes/trimapp/Trim;)Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getImageHeight()I

    move-result v6

    iput v6, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mHeight:I

    .line 1832
    iget-object v6, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mNumberOfImages:I
    invoke-static {v6}, Lcom/lifevibes/trimapp/Trim;->access$700(Lcom/lifevibes/trimapp/Trim;)I

    move-result v6

    iput v6, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mMaxTNNum:I

    .line 1834
    iget v6, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mMaxTNNum:I

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mOffsets:[I

    .line 1835
    iget-object v6, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;
    invoke-static {v6}, Lcom/lifevibes/trimapp/Trim;->access$600(Lcom/lifevibes/trimapp/Trim;)Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getEndTime()I

    move-result v2

    .line 1836
    .restart local v2       #maxDuration:I
    iget-object v6, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;
    invoke-static {v6}, Lcom/lifevibes/trimapp/Trim;->access$600(Lcom/lifevibes/trimapp/Trim;)Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getDuration()I

    move-result v6

    iget v8, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mMaxTNNum:I

    div-int/2addr v6, v8

    int-to-float v6, v6

    add-float/2addr v6, v9

    float-to-int v0, v6

    .line 1837
    .restart local v0       #duration:I
    div-int/lit8 v6, v0, 0x2

    int-to-float v6, v6

    add-float/2addr v6, v9

    float-to-int v3, v6

    .line 1838
    .restart local v3       #middle:I
    iget-object v6, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mDoubleSeekBar:Lcom/lifevibes/trimapp/widget/DoubleSeekBar;
    invoke-static {v6}, Lcom/lifevibes/trimapp/Trim;->access$600(Lcom/lifevibes/trimapp/Trim;)Lcom/lifevibes/trimapp/widget/DoubleSeekBar;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lifevibes/trimapp/widget/DoubleSeekBar;->getStartTime()I

    move-result v4

    .line 1839
    .local v4, offset:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_133
    iget v6, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mMaxTNNum:I

    if-ge v1, v6, :cond_5b

    .line 1840
    add-int/2addr v4, v0

    .line 1841
    if-le v4, v2, :cond_13b

    .line 1842
    move v4, v2

    .line 1844
    :cond_13b
    iget-object v6, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mOffsets:[I

    sub-int v8, v4, v3

    aput v8, v6, v1

    .line 1839
    add-int/lit8 v1, v1, 0x1

    goto :goto_133

    .line 1773
    :sswitch_data_144
    .sparse-switch
        0x2 -> :sswitch_16
        0x4 -> :sswitch_7c
        0x8 -> :sswitch_d6
    .end sparse-switch
.end method

.method private onTaskDestroyed(I)V
    .registers 5
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 1726
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    const/4 v1, 0x0

    #setter for: Lcom/lifevibes/trimapp/Trim;->mThumbnailTask:Lcom/lifevibes/trimapp/Trim$ThumbnailTask;
    invoke-static {v0, v1}, Lcom/lifevibes/trimapp/Trim;->access$1102(Lcom/lifevibes/trimapp/Trim;Lcom/lifevibes/trimapp/Trim$ThumbnailTask;)Lcom/lifevibes/trimapp/Trim$ThumbnailTask;

    .line 1728
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    const v1, 0x7f060012

    invoke-virtual {v0, v1}, Lcom/lifevibes/trimapp/Trim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1729
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    invoke-virtual {v0}, Lcom/lifevibes/trimapp/Trim;->updateButtonsEnabled()V

    .line 1731
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2b

    .line 1732
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    const v1, 0x7f07000d

    invoke-virtual {v0, v1, v2}, Lcom/lifevibes/trimapp/Trim;->showToast(II)V

    .line 1733
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    #calls: Lcom/lifevibes/trimapp/Trim;->returnToInvoker()V
    invoke-static {v0}, Lcom/lifevibes/trimapp/Trim;->access$500(Lcom/lifevibes/trimapp/Trim;)V

    .line 1738
    :cond_2a
    :goto_2a
    return-void

    .line 1734
    :cond_2b
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2a

    .line 1735
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    const v1, 0x7f070011

    invoke-virtual {v0, v1, v2}, Lcom/lifevibes/trimapp/Trim;->showToast(II)V

    .line 1736
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    #calls: Lcom/lifevibes/trimapp/Trim;->returnToInvoker()V
    invoke-static {v0}, Lcom/lifevibes/trimapp/Trim;->access$500(Lcom/lifevibes/trimapp/Trim;)V

    goto :goto_2a
.end method

.method private releaseThumbnailHandle()V
    .registers 3

    .prologue
    .line 1741
    iget-boolean v0, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mIsReleased:Z

    if-nez v0, :cond_10

    .line 1742
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mIsReleased:Z

    .line 1743
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mMediaShareApi:Lcom/lifevibes/trimapp/util/MediaShare;
    invoke-static {v0}, Lcom/lifevibes/trimapp/Trim;->access$1400(Lcom/lifevibes/trimapp/Trim;)Lcom/lifevibes/trimapp/util/MediaShare;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lifevibes/trimapp/util/MediaShare;->releaseThumbnail()Z

    .line 1745
    :cond_10
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lcom/lifevibes/trimapp/Trim;->access$2972(Lcom/lifevibes/trimapp/Trim;I)I

    .line 1746
    return-void
.end method

.method private setTaskId()V
    .registers 4

    .prologue
    .line 1749
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mTaskId:J

    .line 1750
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    iget-wide v1, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mTaskId:J

    #setter for: Lcom/lifevibes/trimapp/Trim;->mThumbnailTaskUid:J
    invoke-static {v0, v1, v2}, Lcom/lifevibes/trimapp/Trim;->access$3402(Lcom/lifevibes/trimapp/Trim;J)J

    .line 1751
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .registers 15
    .parameter "args"

    .prologue
    .line 1538
    const-string v1, "TrimApp"

    const-string v2, "**** ThumbnailTask doInBackground() in."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1542
    const/4 v12, 0x3

    .line 1544
    .local v12, result:I
    :try_start_d
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    invoke-virtual {v1}, Lcom/lifevibes/trimapp/Trim;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_21

    iget-wide v1, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mTaskId:J

    iget-object v3, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mThumbnailTaskUid:J
    invoke-static {v3}, Lcom/lifevibes/trimapp/Trim;->access$3400(Lcom/lifevibes/trimapp/Trim;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2c

    .line 1545
    :cond_21
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_e7

    move-result-object v1

    .line 1657
    iget-object v2, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :goto_28
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1661
    :goto_2b
    return-object v1

    .line 1551
    :cond_2c
    const/4 v1, 0x0

    :try_start_2d
    iput-boolean v1, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mOpeningDone:Z

    .line 1552
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mMediaShareApi:Lcom/lifevibes/trimapp/util/MediaShare;
    invoke-static {v1}, Lcom/lifevibes/trimapp/Trim;->access$1400(Lcom/lifevibes/trimapp/Trim;)Lcom/lifevibes/trimapp/util/MediaShare;

    move-result-object v1

    iget-object v2, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mTrimmedFiles:[Ljava/lang/String;
    invoke-static {v2}, Lcom/lifevibes/trimapp/Trim;->access$100(Lcom/lifevibes/trimapp/Trim;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mFileCount:I
    invoke-static {v3}, Lcom/lifevibes/trimapp/Trim;->access$200(Lcom/lifevibes/trimapp/Trim;)I

    move-result v3

    aget-object v2, v2, v3

    sget v3, Lcom/lifevibes/trimapp/Trim;->VIDEOVIEW_WIDTH:I

    sget v4, Lcom/lifevibes/trimapp/Trim;->VIDEOVIEW_HEIGHT:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/lifevibes/trimapp/util/MediaShare;->createThumbnail(Ljava/lang/String;II)Z

    move-result v7

    .line 1554
    .local v7, created:Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mOpeningDone:Z

    .line 1555
    if-nez v7, :cond_60

    .line 1556
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_54
    .catchall {:try_start_2d .. :try_end_54} :catchall_e7

    move-result-object v1

    .line 1657
    iget-object v2, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_28

    .line 1574
    :cond_58
    :try_start_58
    iget v1, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mCurrentMask:I

    invoke-direct {p0, v1}, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->getThumbnailInfo(I)Z

    move-result v1

    if-nez v1, :cond_b2

    .line 1559
    :cond_60
    :goto_60
    const/4 v1, 0x3

    if-ne v12, v1, :cond_78

    .line 1561
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    invoke-virtual {v1}, Lcom/lifevibes/trimapp/Trim;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_77

    iget-wide v1, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mTaskId:J

    iget-object v3, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mThumbnailTaskUid:J
    invoke-static {v3}, Lcom/lifevibes/trimapp/Trim;->access$3400(Lcom/lifevibes/trimapp/Trim;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_8c

    .line 1562
    :cond_77
    const/4 v12, 0x2

    .line 1655
    :cond_78
    :goto_78
    invoke-direct {p0}, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->releaseThumbnailHandle()V
    :try_end_7b
    .catchall {:try_start_58 .. :try_end_7b} :catchall_e7

    .line 1657
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1660
    const-string v1, "TrimApp"

    const-string v2, "**** ThumbnailTask doInBackground() done."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2b

    .line 1567
    :cond_8c
    :try_start_8c
    invoke-direct {p0}, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->getNextMask()I

    move-result v1

    iput v1, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mCurrentMask:I

    .line 1568
    const-string v1, "TrimApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "**** doInBackground() TN type :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mCurrentMask:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    iget v1, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mCurrentMask:I

    if-nez v1, :cond_58

    .line 1571
    const/4 v12, 0x3

    .line 1572
    goto :goto_78

    .line 1577
    :cond_b2
    iget v1, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mWidth:I

    iget v2, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mHeight:I

    add-int/2addr v1, v2

    if-lez v1, :cond_60

    .line 1589
    const/4 v9, 0x0

    .local v9, i:I
    :goto_ba
    iget v1, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mMaxTNNum:I

    if-ge v9, v1, :cond_d3

    .line 1590
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    invoke-virtual {v1}, Lcom/lifevibes/trimapp/Trim;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_d2

    iget-wide v1, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mTaskId:J

    iget-object v3, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mThumbnailTaskUid:J
    invoke-static {v3}, Lcom/lifevibes/trimapp/Trim;->access$3400(Lcom/lifevibes/trimapp/Trim;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_ee

    .line 1592
    :cond_d2
    const/4 v12, 0x2

    .line 1648
    :cond_d3
    :goto_d3
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    invoke-virtual {v1}, Lcom/lifevibes/trimapp/Trim;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_60

    iget-boolean v1, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mNeedLoopRestart:Z

    if-eqz v1, :cond_60

    .line 1649
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mNeedLoopRestart:Z

    .line 1650
    invoke-direct {p0}, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->setTaskId()V
    :try_end_e5
    .catchall {:try_start_8c .. :try_end_e5} :catchall_e7

    goto/16 :goto_60

    .line 1657
    .end local v7           #created:Z
    .end local v9           #i:I
    :catchall_e7
    move-exception v1

    iget-object v2, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v1

    .line 1595
    .restart local v7       #created:Z
    .restart local v9       #i:I
    :cond_ee
    :try_start_ee
    iget v1, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mCurrentMask:I

    if-eqz v1, :cond_d3

    .line 1600
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mGetPixelsDone:Z
    :try_end_f5
    .catchall {:try_start_ee .. :try_end_f5} :catchall_e7

    .line 1601
    const/4 v0, 0x0

    .line 1603
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_f6
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mMediaShareApi:Lcom/lifevibes/trimapp/util/MediaShare;
    invoke-static {v1}, Lcom/lifevibes/trimapp/Trim;->access$1400(Lcom/lifevibes/trimapp/Trim;)Lcom/lifevibes/trimapp/util/MediaShare;

    move-result-object v1

    iget v2, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mWidth:I

    iget v3, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mHeight:I

    iget-object v4, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mOffsets:[I

    aget v4, v4, v9

    invoke-virtual {v1, v2, v3, v4}, Lcom/lifevibes/trimapp/util/MediaShare;->getThumbnail(III)Landroid/graphics/Bitmap;
    :try_end_107
    .catchall {:try_start_f6 .. :try_end_107} :catchall_e7
    .catch Ljava/lang/RuntimeException; {:try_start_f6 .. :try_end_107} :catch_116

    move-result-object v0

    .line 1610
    const/4 v1, 0x1

    :try_start_109
    iput-boolean v1, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mGetPixelsDone:Z

    .line 1611
    if-nez v0, :cond_120

    .line 1612
    const-string v1, "TrimApp"

    const-string v2, "the  returned bitmap is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    const/4 v12, 0x1

    .line 1614
    goto :goto_d3

    .line 1604
    :catch_116
    move-exception v8

    .line 1605
    .local v8, ex:Ljava/lang/RuntimeException;
    const-string v1, "TrimApp"

    const-string v2, "the  returned bitmap is null - runtime exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    const/4 v12, 0x4

    .line 1607
    goto :goto_d3

    .line 1618
    .end local v8           #ex:Ljava/lang/RuntimeException;
    :cond_120
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    invoke-virtual {v1}, Lcom/lifevibes/trimapp/Trim;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_134

    iget-wide v1, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mTaskId:J

    iget-object v3, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mThumbnailTaskUid:J
    invoke-static {v3}, Lcom/lifevibes/trimapp/Trim;->access$3400(Lcom/lifevibes/trimapp/Trim;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_136

    .line 1620
    :cond_134
    const/4 v12, 0x2

    .line 1621
    goto :goto_d3

    .line 1625
    :cond_136
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mImageViewsReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/widget/ImageView;

    .line 1626
    .local v10, imageViews:[Landroid/widget/ImageView;
    new-instance v11, Lcom/lifevibes/trimapp/Trim$ThumbnailImage;

    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    invoke-direct {v11, v1}, Lcom/lifevibes/trimapp/Trim$ThumbnailImage;-><init>(Lcom/lifevibes/trimapp/Trim;)V

    .line 1627
    .local v11, img:Lcom/lifevibes/trimapp/Trim$ThumbnailImage;
    if-eqz v10, :cond_19a

    .line 1628
    new-instance v1, Ljava/lang/ref/WeakReference;

    aget-object v2, v10, v9

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v11, Lcom/lifevibes/trimapp/Trim$ThumbnailImage;->mImageViewReference:Ljava/lang/ref/WeakReference;

    .line 1629
    iput-object v0, v11, Lcom/lifevibes/trimapp/Trim$ThumbnailImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 1631
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mVideoRotation:I
    invoke-static {v1}, Lcom/lifevibes/trimapp/Trim;->access$3500(Lcom/lifevibes/trimapp/Trim;)I

    move-result v1

    if-eqz v1, :cond_17a

    .line 1633
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1634
    .local v5, matrix:Landroid/graphics/Matrix;
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mVideoRotation:I
    invoke-static {v1}, Lcom/lifevibes/trimapp/Trim;->access$3500(Lcom/lifevibes/trimapp/Trim;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1635
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v11, Lcom/lifevibes/trimapp/Trim$ThumbnailImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 1640
    .end local v5           #matrix:Landroid/graphics/Matrix;
    :cond_17a
    iget-object v1, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    invoke-virtual {v1}, Lcom/lifevibes/trimapp/Trim;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_18e

    iget-wide v1, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mTaskId:J

    iget-object v3, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mThumbnailTaskUid:J
    invoke-static {v3}, Lcom/lifevibes/trimapp/Trim;->access$3400(Lcom/lifevibes/trimapp/Trim;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_191

    .line 1641
    :cond_18e
    const/4 v12, 0x2

    .line 1642
    goto/16 :goto_d3

    .line 1645
    :cond_191
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/lifevibes/trimapp/Trim$ThumbnailImage;

    const/4 v2, 0x0

    aput-object v11, v1, v2

    invoke-virtual {p0, v1}, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_19a
    .catchall {:try_start_109 .. :try_end_19a} :catchall_e7

    .line 1589
    :cond_19a
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_ba
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1494
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .registers 5

    .prologue
    const/16 v3, 0x32

    .line 1694
    const-string v1, "TrimApp"

    const-string v2, "**** ThumbnailTask onCancelled() in"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    if-ge v0, v3, :cond_10

    .line 1697
    iget-boolean v1, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mOpeningDone:Z

    if-eqz v1, :cond_29

    .line 1708
    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-ge v0, v3, :cond_17

    .line 1709
    iget-boolean v1, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mGetPixelsDone:Z

    if-eqz v1, :cond_31

    .line 1719
    :cond_17
    invoke-direct {p0}, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->releaseThumbnailHandle()V

    .line 1720
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->onTaskDestroyed(I)V

    .line 1721
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 1722
    const-string v1, "TrimApp"

    const-string v2, "**** ThumbnailTask onCancelled() done."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    return-void

    .line 1701
    :cond_29
    const-wide/16 v1, 0x64

    :try_start_2b
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2e
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_2e} :catch_39

    .line 1696
    :goto_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1713
    :cond_31
    const-wide/16 v1, 0x64

    :try_start_33
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_36
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_36} :catch_3b

    .line 1708
    :goto_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 1702
    :catch_39
    move-exception v1

    goto :goto_2e

    .line 1714
    :catch_3b
    move-exception v1

    goto :goto_36
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .registers 4
    .parameter "result"

    .prologue
    .line 1680
    const-string v0, "TrimApp"

    const-string v1, "**** ThumbnailTask onPostExecute() in."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->onTaskDestroyed(I)V

    .line 1682
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1683
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1685
    :cond_1f
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mPreviewState:I
    invoke-static {v0}, Lcom/lifevibes/trimapp/Trim;->access$900(Lcom/lifevibes/trimapp/Trim;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2d

    .line 1686
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    invoke-virtual {v0}, Lcom/lifevibes/trimapp/Trim;->doPlayPauseAction()V

    .line 1688
    :cond_2d
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1689
    const-string v0, "TrimApp"

    const-string v1, "**** ThumbnailTask onPostExecute() done."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1494
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1526
    const-string v0, "TrimApp"

    const-string v1, "**** ThumbnailTask onPreExecute() in."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mPlayButton:Landroid/view/View;
    invoke-static {v0}, Lcom/lifevibes/trimapp/Trim;->access$3200(Lcom/lifevibes/trimapp/Trim;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1530
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    #getter for: Lcom/lifevibes/trimapp/Trim;->mTrimButton:Landroid/view/View;
    invoke-static {v0}, Lcom/lifevibes/trimapp/Trim;->access$3300(Lcom/lifevibes/trimapp/Trim;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1532
    iget-object v0, p0, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->this$0:Lcom/lifevibes/trimapp/Trim;

    const v1, 0x7f060012

    invoke-virtual {v0, v1}, Lcom/lifevibes/trimapp/Trim;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1533
    return-void
.end method

.method protected varargs onProgressUpdate([Lcom/lifevibes/trimapp/Trim$ThumbnailImage;)V
    .registers 5
    .parameter "values"

    .prologue
    .line 1666
    const/4 v2, 0x0

    aget-object v0, p1, v2

    .line 1667
    .local v0, img:Lcom/lifevibes/trimapp/Trim$ThumbnailImage;
    if-eqz v0, :cond_17

    .line 1668
    iget-object v2, v0, Lcom/lifevibes/trimapp/Trim$ThumbnailImage;->mImageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1669
    .local v1, iv:Landroid/widget/ImageView;
    if-eqz v1, :cond_14

    .line 1670
    iget-object v2, v0, Lcom/lifevibes/trimapp/Trim$ThumbnailImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1672
    :cond_14
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/lifevibes/trimapp/Trim$ThumbnailImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 1675
    .end local v1           #iv:Landroid/widget/ImageView;
    :cond_17
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 1676
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1494
    check-cast p1, [Lcom/lifevibes/trimapp/Trim$ThumbnailImage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/lifevibes/trimapp/Trim$ThumbnailTask;->onProgressUpdate([Lcom/lifevibes/trimapp/Trim$ThumbnailImage;)V

    return-void
.end method
