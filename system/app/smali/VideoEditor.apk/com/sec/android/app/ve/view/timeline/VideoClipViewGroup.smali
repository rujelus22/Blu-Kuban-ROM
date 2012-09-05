.class public Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;
.super Landroid/widget/LinearLayout;
.source "VideoClipViewGroup.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup$DragViewImpl;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DOUBLE_TAP_TIMEOUT:I = 0x0

.field private static final IMAGE_ID:I = 0x2

.field private static final MSG_CHECK_DOUBLE_TAP:I = 0xb

.field private static final MSG_SET_BITMAP:I = 0xc

.field private static final MSG_SET_FRAME_WIDTH:I = 0xa

.field private static final SCALE_TH:F = 0.03f

.field public static final THUMBNAIL_IMAGE_SIZE:I = 0x7d

.field private static final VIDEO_ID:I = 0x1

.field private static dragViewImpl:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup$DragViewImpl;

.field private static mClickListener:Landroid/view/View$OnClickListener;

.field private static mContext:Landroid/content/Context;

.field private static mHandler:Landroid/os/Handler;

.field private static mLongPressListener:Landroid/view/View$OnLongClickListener;

.field private static mThumbFetcherCallback:Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$ThumbnaiFetcherCallbak;


# instance fields
.field private mElement:Lcom/samsung/app/video/editor/external/Element;

.field private mGoingForLongPress:Z

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScaling:Z

.field retinit:I

.field scaleCount:I

.field private thumbNailFrameParent:Landroid/widget/LinearLayout;

.field private thumbParent:Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;

.field private toast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->DOUBLE_TAP_TIMEOUT:I

    .line 79
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup$1;

    invoke-direct {v0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mHandler:Landroid/os/Handler;

    .line 266
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup$2;

    invoke-direct {v0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup$2;-><init>()V

    sput-object v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mThumbFetcherCallback:Lcom/sec/android/app/ve/thread/ThumbnaiFetcher$ThumbnaiFetcherCallbak;

    .line 388
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup$3;

    invoke-direct {v0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup$3;-><init>()V

    sput-object v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mLongPressListener:Landroid/view/View$OnLongClickListener;

    .line 404
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup$DragViewImpl;

    invoke-direct {v0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup$DragViewImpl;-><init>()V

    sput-object v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->dragViewImpl:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup$DragViewImpl;

    .line 541
    new-instance v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup$4;

    invoke-direct {v0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup$4;-><init>()V

    sput-object v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mClickListener:Landroid/view/View$OnClickListener;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 573
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->scaleCount:I

    .line 967
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->retinit:I

    .line 126
    sput-object p1, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mContext:Landroid/content/Context;

    .line 127
    sget-object v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mLongPressListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 128
    sget-object v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 573
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->scaleCount:I

    .line 967
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->retinit:I

    .line 118
    sput-object p1, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mContext:Landroid/content/Context;

    .line 119
    sget-object v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mLongPressListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 120
    sget-object v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 122
    return-void
.end method

.method static synthetic access$0(Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 540
    iput-boolean p1, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mGoingForLongPress:Z

    return-void
.end method

.method static synthetic access$1()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 79
    sget-object v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2()Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup$DragViewImpl;
    .registers 1

    .prologue
    .line 404
    sget-object v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->dragViewImpl:Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup$DragViewImpl;

    return-object v0
.end method

.method static synthetic access$3(Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;)Z
    .registers 2
    .parameter

    .prologue
    .line 540
    iget-boolean v0, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mGoingForLongPress:Z

    return v0
.end method

.method static synthetic access$4()I
    .registers 1

    .prologue
    .line 62
    sget v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->DOUBLE_TAP_TIMEOUT:I

    return v0
.end method

.method public static getBitmapFromEngine(Ljava/lang/String;FLcom/samsung/app/video/editor/external/Element;)Landroid/graphics/Bitmap;
    .registers 12
    .parameter "filePath"
    .parameter "sec"
    .parameter "mElement"

    .prologue
    .line 724
    invoke-virtual {p2}, Lcom/samsung/app/video/editor/external/Element;->getType()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_11

    .line 730
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v0

    const/4 v4, 0x3

    invoke-static {p0, v0, v4}, Lcom/sec/android/app/ve/util/Utils;->getImageBitmap(Ljava/lang/String;Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 753
    :goto_10
    return-object v6

    .line 733
    :cond_11
    const/16 v3, 0x90

    .line 734
    .local v3, height:I
    const/16 v2, 0xb0

    .line 735
    .local v2, width:I
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    const/high16 v4, 0x447a

    mul-float/2addr v4, p1

    float-to-int v4, v4

    invoke-virtual {v0, v4, v2, v3}, Lcom/samsung/app/video/editor/external/NativeInterface;->PinchVEGetFrameRGB565Buffer(III)[B

    move-result-object v1

    .line 736
    .local v1, result:[B
    if-nez v1, :cond_37

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "---> Engine not able to get the bitmap :"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 739
    const/4 v6, 0x0

    goto :goto_10

    .line 743
    :cond_37
    invoke-virtual {p2}, Lcom/samsung/app/video/editor/external/Element;->getRetouchEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v8

    .line 744
    .local v8, retouchEdit:Lcom/samsung/app/video/editor/external/Edit;
    if-eqz v8, :cond_57

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()I

    move-result v0

    if-eqz v0, :cond_57

    .line 746
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/app/video/editor/external/NativeInterface;->applyEffectToVideoThumbnail([BIIII)[B

    move-result-object v1

    .line 747
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->updateCurrentView()V

    .line 750
    :cond_57
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 751
    .local v6, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 752
    .local v7, pixelBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v6, v7}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    goto :goto_10
.end method

.method private getImageBitmapFromEngine(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 10
    .parameter "filepath"
    .parameter "sec"

    .prologue
    const/4 v6, 0x0

    .line 759
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v5

    invoke-virtual {v5, p1, v6, v6}, Lcom/samsung/app/video/editor/external/NativeInterface;->JpegtoRGB565(Ljava/lang/String;II)[B

    move-result-object v3

    .line 760
    .local v3, result:[B
    const/16 v1, 0x90

    .line 761
    .local v1, height:I
    const/16 v4, 0xb0

    .line 762
    .local v4, width:I
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 763
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 764
    .local v2, pixelBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 765
    return-object v0
.end method

.method private hideRetouchIcon()V
    .registers 1

    .prologue
    .line 217
    return-void
.end method

.method private isElementImage()Z
    .registers 3

    .prologue
    .line 769
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 770
    const/4 v0, 0x1

    .line 772
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private setBitmapFromEngine(F)V
    .registers 11
    .parameter "duration"

    .prologue
    .line 615
    iget-object v6, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->thumbParent:Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;

    invoke-virtual {v6}, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->getChildCount()I

    move-result v0

    .line 617
    .local v0, childCount:I
    move v4, p1

    .line 618
    .local v4, totalTime:F
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_9
    if-gez v1, :cond_c

    .line 635
    return-void

    .line 620
    :cond_c
    iget-object v6, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->thumbParent:Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;

    invoke-virtual {v6, v1}, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 621
    .local v5, view:Landroid/widget/ImageView;
    int-to-float v6, v0

    div-float v6, v4, v6

    int-to-float v7, v1

    mul-float v2, v6, v7

    .line 622
    .local v2, time:F
    iget-object v6, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/Element;->getType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_36

    .line 623
    iget-object v6, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->thumbParent:Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 618
    :cond_33
    :goto_33
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 625
    :cond_36
    invoke-virtual {v5}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    .line 626
    .local v3, timeSet:Ljava/lang/Float;
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/Element;->getSplitTime()F

    move-result v7

    add-float/2addr v7, v2

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_33

    .line 627
    iget-object v6, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/Element;->getSplitTime()F

    move-result v7

    add-float/2addr v7, v2

    iget-object v8, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-static {v6, v7, v8}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getBitmapFromEngine(Ljava/lang/String;FLcom/samsung/app/video/editor/external/Element;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 628
    iget-object v6, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/Element;->getSplitTime()F

    move-result v6

    add-float/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_33
.end method

.method private setBitmapFromEngine(Z)V
    .registers 11
    .parameter "force"

    .prologue
    .line 577
    iget-object v6, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->thumbParent:Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;

    invoke-virtual {v6}, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->getChildCount()I

    move-result v0

    .line 579
    .local v0, childCount:I
    iget-object v6, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v7

    sub-float v4, v6, v7

    .line 580
    .local v4, totalTime:F
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_16
    if-gez v1, :cond_19

    .line 610
    return-void

    .line 582
    :cond_19
    iget-object v6, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->thumbParent:Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;

    invoke-virtual {v6, v1}, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 583
    .local v5, view:Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/Element;->getType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3d

    .line 584
    iget-object v6, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->thumbParent:Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 580
    :cond_3a
    :goto_3a
    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    .line 586
    :cond_3d
    int-to-float v6, v0

    div-float v6, v4, v6

    int-to-float v7, v1

    mul-float v2, v6, v7

    .line 587
    .local v2, time:F
    if-nez v1, :cond_7e

    .line 589
    invoke-virtual {v5}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    .line 590
    .local v3, timeSet:Ljava/lang/Float;
    if-nez p1, :cond_5b

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v7

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_3a

    .line 591
    :cond_5b
    iget-object v6, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-static {v6, v7, v8}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getBitmapFromEngine(Ljava/lang/String;FLcom/samsung/app/video/editor/external/Element;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 592
    iget-object v6, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_3a

    .line 598
    .end local v3           #timeSet:Ljava/lang/Float;
    :cond_7e
    invoke-virtual {v5}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    .line 599
    .restart local v3       #timeSet:Ljava/lang/Float;
    if-nez p1, :cond_95

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v7

    add-float/2addr v7, v2

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_3a

    .line 600
    :cond_95
    iget-object v6, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v7

    add-float/2addr v7, v2

    iget-object v8, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-static {v6, v7, v8}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getBitmapFromEngine(Ljava/lang/String;FLcom/samsung/app/video/editor/external/Element;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 601
    iget-object v6, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v6

    add-float/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_3a
.end method

.method private showRetouchIcon()V
    .registers 1

    .prologue
    .line 212
    return-void
.end method


# virtual methods
.method public addThumbNailImage(Landroid/graphics/drawable/Drawable;)V
    .registers 8
    .parameter "drawable"

    .prologue
    const/4 v4, 0x2

    .line 225
    const v2, 0x7f0b00fc

    invoke-virtual {p0, v2}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;

    iput-object v2, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->thumbParent:Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;

    .line 226
    new-instance v0, Landroid/widget/ImageView;

    sget-object v2, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 227
    .local v0, imgView:Landroid/widget/ImageView;
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 228
    const/high16 v2, -0x4080

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 230
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x79

    const/16 v3, 0x48

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 231
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 232
    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 236
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->thumbParent:Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setting frame width :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->thumbParent:Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->getChildCount()I

    move-result v3

    mul-int/lit8 v3, v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 240
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->thumbNailFrameParent:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v4, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->thumbParent:Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->getChildCount()I

    move-result v4

    mul-int/lit8 v4, v4, 0x7d

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->thumbNailFrameParent:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 243
    return-void
.end method

.method public applyRetouch()V
    .registers 1

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->showRetouchIcon()V

    .line 201
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->refreshThumbnail()V

    .line 202
    return-void
.end method

.method public captionShown()V
    .registers 4

    .prologue
    .line 1006
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x4220

    div-float v0, v1, v2

    .line 1007
    .local v0, time:F
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->increaseThumbnail(I)V

    .line 1009
    return-void
.end method

.method public changeMode(I)V
    .registers 13
    .parameter "mode"

    .prologue
    const v10, 0x3cf5c28f

    const/4 v8, 0x4

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 777
    if-ne p1, v9, :cond_d3

    .line 778
    invoke-virtual {p0, v7}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 779
    invoke-virtual {p0, v7}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 791
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getNumberOfThumbnail()I

    move-result v0

    .line 792
    .local v0, count:I
    if-ge v0, v8, :cond_19

    .line 793
    const/4 v2, 0x0

    .local v2, i:I
    :goto_15
    rsub-int/lit8 v6, v0, 0x4

    if-lt v2, v6, :cond_8b

    .line 803
    .end local v2           #i:I
    :cond_19
    iget-object v6, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->thumbParent:Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;

    iget-object v7, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getSplitTime()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->setCurrentStartTime(F)V

    .line 804
    iget-object v6, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->thumbParent:Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;

    iget-object v7, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/Element;->getEndTime()F

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getSplitTime()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->setCurrentEndTime(F)V

    .line 806
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v7

    monitor-enter v7

    .line 808
    const/4 v3, 0x1

    .line 809
    .local v3, ret:I
    :try_start_43
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->isElementImage()Z

    move-result v6

    if-nez v6, :cond_5c

    .line 810
    const-string v6, "Pinch init change mode trim ----"

    invoke-static {v6}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 811
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v6

    iget-object v8, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/samsung/app/video/editor/external/NativeInterface;->PinchInit(Ljava/lang/String;)I

    move-result v3

    .line 814
    :cond_5c
    if-ne v3, v9, :cond_ca

    .line 815
    iget-object v6, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/Element;->getDuration()F

    move-result v6

    invoke-direct {p0, v6}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->setBitmapFromEngine(F)V

    .line 819
    :goto_67
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->isElementImage()Z

    move-result v6

    if-nez v6, :cond_7f

    .line 820
    const-string v6, "Pinch deinit change mode trim ---"

    invoke-static {v6}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 821
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v6

    iget-object v8, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/samsung/app/video/editor/external/NativeInterface;->PinchDeInit(Ljava/lang/String;)V

    .line 806
    :cond_7f
    monitor-exit v7
    :try_end_80
    .catchall {:try_start_43 .. :try_end_80} :catchall_d0

    .line 825
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->updateCurrentView()V

    .line 826
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->hideRetouchIcon()V

    .line 903
    .end local v0           #count:I
    .end local v3           #ret:I
    :cond_8a
    :goto_8a
    return-void

    .line 795
    .restart local v0       #count:I
    .restart local v2       #i:I
    :cond_8b
    iget-object v6, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/Element;->getDuration()F

    move-result v5

    .line 796
    .local v5, totalTime:F
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getThumbnailsWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 797
    .local v4, scale:F
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "this is the scale in Trim:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 798
    cmpl-float v6, v4, v10

    if-lez v6, :cond_c6

    .line 799
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0200c5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->addThumbNailImage(Landroid/graphics/drawable/Drawable;)V

    .line 793
    :cond_c6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_15

    .line 817
    .end local v2           #i:I
    .end local v4           #scale:F
    .end local v5           #totalTime:F
    .restart local v3       #ret:I
    :cond_ca
    :try_start_ca
    const-string v6, "<<<< Engine  Pinch Init fails >>>>"

    invoke-static {v6}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_67

    .line 806
    :catchall_d0
    move-exception v6

    monitor-exit v7
    :try_end_d2
    .catchall {:try_start_ca .. :try_end_d2} :catchall_d0

    throw v6

    .line 829
    .end local v0           #count:I
    .end local v3           #ret:I
    :cond_d3
    if-nez p1, :cond_142

    .line 830
    sget-object v6, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mLongPressListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p0, v6}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 831
    sget-object v6, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v6}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 834
    iget-object v6, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->thumbParent:Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;

    invoke-virtual {v6}, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->getChildCount()I

    move-result v0

    .line 835
    .restart local v0       #count:I
    add-int/lit8 v2, v0, -0x1

    .restart local v2       #i:I
    :goto_e7
    if-gtz v2, :cond_133

    .line 841
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v7

    monitor-enter v7

    .line 842
    const/4 v3, 0x1

    .line 843
    .restart local v3       #ret:I
    :try_start_ef
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->isElementImage()Z

    move-result v6

    if-nez v6, :cond_108

    .line 844
    const-string v6, "Change mode Pinch init ---------"

    invoke-static {v6}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 845
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v6

    iget-object v8, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/samsung/app/video/editor/external/NativeInterface;->PinchInit(Ljava/lang/String;)I

    move-result v3

    .line 847
    :cond_108
    if-ne v3, v9, :cond_139

    .line 848
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->setBitmapFromEngine(Z)V

    .line 851
    :goto_10e
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->isElementImage()Z

    move-result v6

    if-nez v6, :cond_126

    .line 852
    const-string v6, "Change mode Pinch deinit ---------"

    invoke-static {v6}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 853
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v6

    iget-object v8, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/samsung/app/video/editor/external/NativeInterface;->PinchDeInit(Ljava/lang/String;)V

    .line 841
    :cond_126
    monitor-exit v7
    :try_end_127
    .catchall {:try_start_ef .. :try_end_127} :catchall_13f

    .line 858
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->updateCurrentView()V

    .line 859
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->hideRetouchIcon()V

    goto/16 :goto_8a

    .line 838
    .end local v3           #ret:I
    :cond_133
    invoke-virtual {p0, v2}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->removeThumbNailImage(I)V

    .line 835
    add-int/lit8 v2, v2, -0x1

    goto :goto_e7

    .line 850
    .restart local v3       #ret:I
    :cond_139
    :try_start_139
    const-string v6, "<<<< Engine  Pinch Init fails >>>>"

    invoke-static {v6}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_10e

    .line 841
    :catchall_13f
    move-exception v6

    monitor-exit v7
    :try_end_141
    .catchall {:try_start_139 .. :try_end_141} :catchall_13f

    throw v6

    .line 860
    .end local v0           #count:I
    .end local v2           #i:I
    .end local v3           #ret:I
    :cond_142
    const/4 v6, 0x2

    if-ne p1, v6, :cond_1e8

    .line 861
    invoke-virtual {p0, v7}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 862
    invoke-virtual {p0, v7}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 864
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getNumberOfThumbnail()I

    move-result v0

    .line 865
    .restart local v0       #count:I
    if-ge v0, v8, :cond_156

    .line 866
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_152
    rsub-int/lit8 v6, v0, 0x4

    if-lt v2, v6, :cond_1a0

    .line 876
    .end local v2           #i:I
    :cond_156
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v7

    monitor-enter v7

    .line 877
    const/4 v3, 0x1

    .line 878
    .restart local v3       #ret:I
    :try_start_15c
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->isElementImage()Z

    move-result v6

    if-nez v6, :cond_175

    .line 879
    const-string v6, "pinch init change mode split -----"

    invoke-static {v6}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 880
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v6

    iget-object v8, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/samsung/app/video/editor/external/NativeInterface;->PinchInit(Ljava/lang/String;)I

    move-result v3

    .line 882
    :cond_175
    if-ne v3, v9, :cond_1df

    .line 883
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->setBitmapFromEngine(Z)V

    .line 886
    :goto_17b
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->isElementImage()Z

    move-result v6

    if-nez v6, :cond_193

    .line 887
    const-string v6, "pinch deinit change mode split ----"

    invoke-static {v6}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 888
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v6

    iget-object v8, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/samsung/app/video/editor/external/NativeInterface;->PinchDeInit(Ljava/lang/String;)V

    .line 876
    :cond_193
    monitor-exit v7
    :try_end_194
    .catchall {:try_start_15c .. :try_end_194} :catchall_1e5

    .line 892
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->updateCurrentView()V

    .line 893
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->hideRetouchIcon()V

    goto/16 :goto_8a

    .line 867
    .end local v3           #ret:I
    .restart local v2       #i:I
    :cond_1a0
    iget-object v6, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/Element;->getDuration()F

    move-result v5

    .line 868
    .restart local v5       #totalTime:F
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getThumbnailsWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 869
    .restart local v4       #scale:F
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "this is the scale in split:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 870
    cmpl-float v6, v4, v10

    if-lez v6, :cond_1db

    .line 871
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0200c5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->addThumbNailImage(Landroid/graphics/drawable/Drawable;)V

    .line 866
    :cond_1db
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_152

    .line 885
    .end local v2           #i:I
    .end local v4           #scale:F
    .end local v5           #totalTime:F
    .restart local v3       #ret:I
    :cond_1df
    :try_start_1df
    const-string v6, "<<<< Engine  Pinch Init fails >>>>"

    invoke-static {v6}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_17b

    .line 876
    :catchall_1e5
    move-exception v6

    monitor-exit v7
    :try_end_1e7
    .catchall {:try_start_1df .. :try_end_1e7} :catchall_1e5

    throw v6

    .line 894
    .end local v0           #count:I
    .end local v3           #ret:I
    :cond_1e8
    const/4 v6, 0x5

    if-ne p1, v6, :cond_8a

    .line 895
    invoke-virtual {p0, v7}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 896
    invoke-virtual {p0, v7}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 898
    iget-object v6, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v6, v8}, Lcom/samsung/app/video/editor/external/Element;->getEdit(I)Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v1

    .line 899
    .local v1, edit:Lcom/samsung/app/video/editor/external/Edit;
    if-eqz v1, :cond_8a

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()I

    move-result v6

    const/16 v7, 0x16

    if-eq v6, v7, :cond_8a

    .line 900
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->showRetouchIcon()V

    goto/16 :goto_8a
.end method

.method public decreaseThumbnail(I)V
    .registers 6
    .parameter "v"

    .prologue
    .line 715
    iget-object v3, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->thumbParent:Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->getChildCount()I

    move-result v0

    .line 716
    .local v0, count:I
    add-int/lit8 v2, v0, -0x1

    .local v2, index:I
    move v1, p1

    .local v1, i:I
    :goto_9
    if-gtz v1, :cond_c

    .line 720
    return-void

    .line 717
    :cond_c
    invoke-virtual {p0, v2}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->removeThumbNailImage(I)V

    .line 718
    add-int/lit8 v2, v2, -0x1

    .line 716
    add-int/lit8 v1, v1, -0x1

    goto :goto_9
.end method

.method public getElement()Lcom/samsung/app/video/editor/external/Element;
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    return-object v0
.end method

.method public getFirstImageView()Landroid/widget/ImageView;
    .registers 3

    .prologue
    .line 255
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->thumbParent:Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public getNumberOfThumbnail()I
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->thumbParent:Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;

    if-eqz v0, :cond_b

    .line 186
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->thumbParent:Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->getChildCount()I

    move-result v0

    .line 188
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getThumbnailsWidth()I
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->thumbParent:Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->getChildCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7d

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public gotFocus()V
    .registers 3

    .prologue
    .line 367
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->thumbNailFrameParent:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->thumbNailFrameParent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isSelected()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 368
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->thumbNailFrameParent:Landroid/widget/LinearLayout;

    const v1, 0x7f0201c4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 369
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->thumbNailFrameParent:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 375
    :cond_1a
    return-void
.end method

.method public increaseThumbnail(I)V
    .registers 7
    .parameter "v"

    .prologue
    .line 642
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, p1, :cond_43

    .line 645
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v3

    monitor-enter v3

    .line 646
    const/4 v1, 0x1

    .line 647
    .local v1, ret:I
    :try_start_9
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->isElementImage()Z

    move-result v2

    if-nez v2, :cond_22

    .line 648
    const-string v2, "increaseThumbnail Pinch init ---------"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 649
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/app/video/editor/external/NativeInterface;->PinchInit(Ljava/lang/String;)I

    move-result v1

    .line 651
    :cond_22
    const/4 v2, 0x1

    if-ne v1, v2, :cond_54

    .line 652
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->setBitmapFromEngine(Z)V

    .line 655
    :goto_29
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->isElementImage()Z

    move-result v2

    if-nez v2, :cond_41

    .line 656
    const-string v2, "increaseThumbnail Pinch deinit ---------"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 657
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/app/video/editor/external/NativeInterface;->PinchDeInit(Ljava/lang/String;)V

    .line 645
    :cond_41
    monitor-exit v3
    :try_end_42
    .catchall {:try_start_9 .. :try_end_42} :catchall_5a

    .line 662
    return-void

    .line 643
    .end local v1           #ret:I
    :cond_43
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0200c5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->addThumbNailImage(Landroid/graphics/drawable/Drawable;)V

    .line 642
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 654
    .restart local v1       #ret:I
    :cond_54
    :try_start_54
    const-string v2, "<<<< Engine  Pinch Init fails >>>>"

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_29

    .line 645
    :catchall_5a
    move-exception v2

    monitor-exit v3
    :try_end_5c
    .catchall {:try_start_54 .. :try_end_5c} :catchall_5a

    throw v2
.end method

.method public init()V
    .registers 2

    .prologue
    .line 196
    const v0, 0x7f0b00fe

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->thumbNailFrameParent:Landroid/widget/LinearLayout;

    .line 197
    return-void
.end method

.method public lostFocus()V
    .registers 3

    .prologue
    .line 354
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->thumbNailFrameParent:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->thumbNailFrameParent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 355
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->thumbNailFrameParent:Landroid/widget/LinearLayout;

    const v1, 0x7f0201c2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 356
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->thumbNailFrameParent:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 361
    :cond_1a
    return-void
.end method

.method public onDoubleTap()V
    .registers 13

    .prologue
    const/4 v10, 0x2

    const/4 v11, 0x0

    .line 459
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Double tap for this :"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 481
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v4

    .line 482
    .local v4, previewInstance:Lcom/sec/android/app/ve/view/PreviewViewGroup;
    if-eqz v4, :cond_8c

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isSurfacePresent()Z

    move-result v8

    if-eqz v8, :cond_8c

    .line 483
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getType()I

    move-result v8

    if-ne v8, v10, :cond_8c

    .line 484
    const-string v8, "double tap..start kenburns for image"

    invoke-static {v8}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getRetouchEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v1

    .line 486
    .local v1, edit:Lcom/samsung/app/video/editor/external/Edit;
    if-eqz v1, :cond_4e

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()I

    move-result v8

    if-eqz v8, :cond_4e

    .line 487
    const-string v8, "effect is set, so disable kenburns"

    invoke-static {v8}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 488
    const v8, 0x7f0800c2

    const/4 v9, -0x1

    const/16 v10, 0x50

    invoke-static {v8, v9, v10, v11}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showToast(IIII)V

    .line 535
    .end local v1           #edit:Lcom/samsung/app/video/editor/external/Edit;
    :cond_4d
    :goto_4d
    return-void

    .line 490
    .restart local v1       #edit:Lcom/samsung/app/video/editor/external/Edit;
    :cond_4e
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->hideCaptionBar()V

    .line 492
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080002

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->showWaitProgress(Ljava/lang/String;Landroid/content/Context;)V

    .line 493
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->freeze(Z)V

    .line 494
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v8

    invoke-virtual {v8, p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getStartPositionInTimeLine(Landroid/view/View;)I

    move-result v3

    .line 495
    .local v3, pos:I
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v8

    add-int/lit8 v9, v3, 0x5

    invoke-virtual {v8, v9, v11}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->smoothScrollTo(II)V

    .line 496
    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->increaseThumbnail(I)V

    .line 498
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v8

    invoke-virtual {v8, v11}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->toggleSurfaceVisibility(Z)V

    goto :goto_4d

    .line 500
    .end local v1           #edit:Lcom/samsung/app/video/editor/external/Edit;
    .end local v3           #pos:I
    :cond_8c
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getType()I

    move-result v8

    if-eq v8, v10, :cond_4d

    .line 503
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v8

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 504
    .local v2, inflator:Landroid/view/LayoutInflater;
    const v8, 0x7f030044

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 506
    .local v6, view:Landroid/view/ViewGroup;
    const v8, 0x7f0b012e

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    .line 507
    .local v5, seekBar:Landroid/widget/SeekBar;
    const/16 v8, 0xa

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setMax(I)V

    .line 508
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getElement()Lcom/samsung/app/video/editor/external/Element;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Element;->getVolumeEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/app/video/editor/external/Edit;->getVolumeLevel()I

    move-result v7

    .line 509
    .local v7, volume:I
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "getting volume for this clip:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 510
    div-int/lit8 v8, v7, 0xa

    invoke-virtual {v5, v8}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 513
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 514
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 515
    const v8, 0x7f080063

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 516
    const v8, 0x7f08004c

    new-instance v9, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup$5;

    invoke-direct {v9, p0, v5}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup$5;-><init>(Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;Landroid/widget/SeekBar;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 525
    const v8, 0x7f08004d

    new-instance v9, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup$6;

    invoke-direct {v9, p0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup$6;-><init>(Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;)V

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 533
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_4d
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 316
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 317
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 335
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 338
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->thumbNailFrameParent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getWidth()I

    .line 348
    return-void
.end method

.method public declared-synchronized onScale(Landroid/view/ScaleGestureDetector;)Z
    .registers 8
    .parameter "detector"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 909
    monitor-enter p0

    :try_start_3
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v4

    if-eqz v4, :cond_13

    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPreviewPlaying()Z

    move-result v4

    if-nez v4, :cond_17

    :cond_13
    sget-boolean v4, Lcom/samsung/app/video/editor/external/NativeInterface;->isInitFIMC:Z
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_44

    if-nez v4, :cond_19

    .line 964
    :cond_17
    :goto_17
    monitor-exit p0

    return v2

    .line 911
    :cond_19
    :try_start_19
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onScale :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 912
    iget v4, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->scaleCount:I

    if-nez v4, :cond_da

    .line 914
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v4

    float-to-int v4, v4

    if-lez v4, :cond_105

    .line 917
    iget v4, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->retinit:I

    if-nez v4, :cond_47

    .line 918
    const-string v3, "<<<< Engine  Pinch Init fails >>>>"

    invoke-static {v3}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_19 .. :try_end_43} :catchall_44

    goto :goto_17

    .line 909
    :catchall_44
    move-exception v2

    monitor-exit p0

    throw v2

    .line 921
    :cond_47
    :try_start_47
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentViewScale()F

    move-result v0

    .line 922
    .local v0, scale:F
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "this is the scale :"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 924
    const v2, 0x3cf5c28f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_e8

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getNumberOfThumbnail()I

    move-result v2

    const/16 v4, 0x1e

    if-gt v2, v4, :cond_e8

    .line 927
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getStartPositionInTimeLine(Landroid/view/View;)I

    move-result v1

    .line 928
    .local v1, startPox:I
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->scrollTo(II)V

    .line 930
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0200c5

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->addThumbNailImage(Landroid/graphics/drawable/Drawable;)V

    .line 932
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v2

    if-ne v2, v3, :cond_e3

    .line 933
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->getDuration()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->setBitmapFromEngine(F)V

    .line 936
    :goto_a8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "adding views :"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->thumbParent:Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->getChildCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " MySize :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 958
    .end local v0           #scale:F
    .end local v1           #startPox:I
    :goto_ce
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->notifyOnUpdateElement(Lcom/samsung/app/video/editor/external/Element;)V

    .line 960
    const/4 v2, 0x6

    iput v2, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->scaleCount:I

    .line 962
    :cond_da
    iget v2, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->scaleCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->scaleCount:I

    move v2, v3

    .line 964
    goto/16 :goto_17

    .line 935
    .restart local v0       #scale:F
    .restart local v1       #startPox:I
    :cond_e3
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->setBitmapFromEngine(Z)V

    goto :goto_a8

    .line 938
    .end local v1           #startPox:I
    :cond_e8
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->toast:Landroid/widget/Toast;

    if-nez v2, :cond_f7

    .line 939
    sget-object v2, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mContext:Landroid/content/Context;

    const-string v4, ""

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->toast:Landroid/widget/Toast;

    .line 940
    :cond_f7
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->toast:Landroid/widget/Toast;

    const v4, 0x7f08000e

    invoke-virtual {v2, v4}, Landroid/widget/Toast;->setText(I)V

    .line 941
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->toast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_ce

    .line 945
    .end local v0           #scale:F
    :cond_105
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getStartPositionInTimeLine(Landroid/view/View;)I

    move-result v1

    .line 947
    .restart local v1       #startPox:I
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v1

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->scrollTo(II)V

    .line 948
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->thumbParent:Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->getChildCount()I

    move-result v2

    if-le v2, v3, :cond_12f

    .line 949
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->thumbParent:Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->removeThumbNailImage(I)V

    .line 952
    :cond_12f
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v2

    if-ne v2, v3, :cond_16a

    .line 953
    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->getDuration()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->setBitmapFromEngine(F)V

    .line 956
    :goto_142
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "removing views :"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->thumbParent:Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->getChildCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " MySize :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto/16 :goto_ce

    .line 955
    :cond_16a
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->setBitmapFromEngine(Z)V
    :try_end_16e
    .catchall {:try_start_47 .. :try_end_16e} :catchall_44

    goto :goto_142
.end method

.method public declared-synchronized onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .registers 5
    .parameter "detector"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 969
    monitor-enter p0

    :try_start_3
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v2

    if-eqz v2, :cond_15

    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPreviewPlaying()Z
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_48

    move-result v2

    if-eqz v2, :cond_15

    .line 980
    :goto_13
    monitor-exit p0

    return v0

    .line 971
    :cond_15
    :try_start_15
    const-string v0, "onScaleBegin"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 972
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mScaling:Z

    .line 973
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 974
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 975
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->setAllowScrolling(Z)V

    .line 976
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->retinit:I

    .line 977
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->isElementImage()Z

    move-result v0

    if-nez v0, :cond_46

    .line 978
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v2}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/app/video/editor/external/NativeInterface;->PinchInit(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->retinit:I
    :try_end_46
    .catchall {:try_start_15 .. :try_end_46} :catchall_48

    :cond_46
    move v0, v1

    .line 980
    goto :goto_13

    .line 969
    :catchall_48
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .registers 5
    .parameter "detector"

    .prologue
    const/4 v2, 0x1

    .line 984
    monitor-enter p0

    :try_start_2
    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->getInstance()Lcom/sec/android/app/ve/view/PreviewViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/PreviewViewGroup;->isPreviewPlaying()Z
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_69

    move-result v0

    if-eqz v0, :cond_14

    .line 1002
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    .line 986
    :cond_14
    :try_start_14
    const-string v0, "onScaleEnd"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 987
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mScaling:Z

    .line 988
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->isElementImage()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 989
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/app/video/editor/external/NativeInterface;->PinchDeInit(Ljava/lang/String;)V

    .line 991
    :cond_2f
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->retinit:I

    .line 992
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->updateCurrentView()V

    .line 993
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->setAllowScrolling(Z)V

    .line 994
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v0

    if-nez v0, :cond_55

    .line 995
    sget-object v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 996
    sget-object v0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mLongPressListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 998
    :cond_55
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getOperationMode()I

    move-result v0

    if-ne v0, v2, :cond_12

    .line 999
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/ve/view/timeline/TimeLineViewGroup;->trimFocusChanged(Lcom/samsung/app/video/editor/external/Element;Lcom/samsung/app/video/editor/external/Element;)V
    :try_end_68
    .catchall {:try_start_14 .. :try_end_68} :catchall_69

    goto :goto_12

    .line 984
    :catchall_69
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSingleTap()V
    .registers 5

    .prologue
    .line 448
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 449
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getCurrentView()Landroid/view/View;

    move-result-object v1

    if-ne v1, p0, :cond_11

    .line 456
    :cond_10
    :goto_10
    return-void

    .line 452
    :cond_11
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getStartPositionInTimeLine(Landroid/view/View;)I

    move-result v0

    .line 453
    .local v0, startX:I
    invoke-static {}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->getInstance()Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getThumbnailsWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/ve/ui/TimeLineHorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_10
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 321
    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 322
    .local v0, b:Z
    iget-boolean v1, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mScaling:Z

    if-eqz v1, :cond_c

    .line 323
    const/4 v1, 0x1

    .line 325
    :goto_b
    return v1

    :cond_c
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_b
.end method

.method public refreshThumbnail()V
    .registers 10

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 667
    iget-object v4, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/Element;->getRetouchEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v1

    .line 668
    .local v1, edit:Lcom/samsung/app/video/editor/external/Edit;
    iget-object v4, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/Element;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_84

    .line 669
    iget-object v4, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->thumbParent:Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;

    invoke-virtual {v4, v6}, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 671
    .local v2, imgView:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v5}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-static {v4, v5, v6}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getBitmapFromEngine(Ljava/lang/String;FLcom/samsung/app/video/editor/external/Element;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 673
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_42

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()I

    move-result v4

    if-eqz v4, :cond_42

    .line 674
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()I

    move-result v4

    invoke-static {v4, v0}, Lcom/sec/android/app/ve/util/Utils;->applyEffect(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 675
    invoke-static {}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->getInstance()Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/timeline/ThumbnailViewGroup;->updateCurrentView()V

    .line 677
    :cond_42
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 697
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_45
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v5

    monitor-enter v5

    .line 698
    const/4 v3, 0x1

    .line 699
    .local v3, ret:I
    :try_start_4b
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->isElementImage()Z

    move-result v4

    if-nez v4, :cond_64

    .line 700
    const-string v4, "Refresh thumbnail Change mode Pinch init ---------"

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 701
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/samsung/app/video/editor/external/NativeInterface;->PinchInit(Ljava/lang/String;)I

    move-result v3

    .line 703
    :cond_64
    if-ne v3, v8, :cond_e6

    .line 704
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->setBitmapFromEngine(Z)V

    .line 707
    :goto_6a
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->isElementImage()Z

    move-result v4

    if-nez v4, :cond_82

    .line 708
    const-string v4, "Refresh thumbnail Change mode Pinch deinit ---------"

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 709
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/samsung/app/video/editor/external/NativeInterface;->PinchDeInit(Ljava/lang/String;)V

    .line 697
    :cond_82
    monitor-exit v5
    :try_end_83
    .catchall {:try_start_4b .. :try_end_83} :catchall_ed

    .line 712
    return-void

    .line 679
    .end local v2           #imgView:Landroid/widget/ImageView;
    .end local v3           #ret:I
    :cond_84
    iget-object v4, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->thumbParent:Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;

    invoke-virtual {v4, v6}, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 683
    .restart local v2       #imgView:Landroid/widget/ImageView;
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v5

    monitor-enter v5

    .line 684
    :try_start_91
    const-string v4, "Refresh thumbnail Change mode Pinch init ---------"

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 686
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/samsung/app/video/editor/external/NativeInterface;->PinchInit(Ljava/lang/String;)I

    move-result v3

    .line 687
    .restart local v3       #ret:I
    if-ne v3, v8, :cond_e0

    .line 688
    iget-object v4, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-static {v4, v6, v7}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getBitmapFromEngine(Ljava/lang/String;FLcom/samsung/app/video/editor/external/Element;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 689
    iget-object v4, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 690
    const-string v4, "Refresh thumbnail Change mode DePinch init ---------"

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 693
    :goto_cd
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/samsung/app/video/editor/external/NativeInterface;->PinchDeInit(Ljava/lang/String;)V

    .line 683
    monitor-exit v5

    goto/16 :goto_45

    .end local v3           #ret:I
    :catchall_dd
    move-exception v4

    monitor-exit v5
    :try_end_df
    .catchall {:try_start_91 .. :try_end_df} :catchall_dd

    throw v4

    .line 692
    .restart local v3       #ret:I
    :cond_e0
    :try_start_e0
    const-string v4, "<<<< Engine  Pinch Init fails >>>>"

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V
    :try_end_e5
    .catchall {:try_start_e0 .. :try_end_e5} :catchall_dd

    goto :goto_cd

    .line 706
    :cond_e6
    :try_start_e6
    const-string v4, "<<<< Engine  Pinch Init fails >>>>"

    invoke-static {v4}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto/16 :goto_6a

    .line 697
    :catchall_ed
    move-exception v4

    monitor-exit v5
    :try_end_ef
    .catchall {:try_start_e6 .. :try_end_ef} :catchall_ed

    throw v4
.end method

.method public removeRetouch()V
    .registers 1

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->hideRetouchIcon()V

    .line 206
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->refreshThumbnail()V

    .line 207
    return-void
.end method

.method public removeThumbNailImage(I)V
    .registers 6
    .parameter "index"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->thumbParent:Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->thumbParent:Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->removeViewAt(I)V

    .line 248
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setting frame width :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->thumbParent:Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->getChildCount()I

    move-result v1

    mul-int/lit8 v1, v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->thumbNailFrameParent:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->thumbParent:Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;

    invoke-virtual {v2}, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->getChildCount()I

    move-result v2

    mul-int/lit8 v2, v2, 0x7d

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->thumbNailFrameParent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 252
    return-void
.end method

.method public setCurrentEndTime(F)V
    .registers 3
    .parameter "endTime"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->thumbParent:Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->setCurrentEndTime(F)V

    .line 264
    return-void
.end method

.method public setCurrentStartTime(F)V
    .registers 3
    .parameter "startTime"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->thumbParent:Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->setCurrentStartTime(F)V

    .line 260
    return-void
.end method

.method public setElement(Lcom/samsung/app/video/editor/external/Element;)Z
    .registers 11
    .parameter "element"

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 133
    iput-object p1, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    .line 137
    iget-object v5, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v5}, Lcom/samsung/app/video/editor/external/Element;->getRetouchEdit()Lcom/samsung/app/video/editor/external/Edit;

    move-result-object v1

    .line 138
    .local v1, edit:Lcom/samsung/app/video/editor/external/Edit;
    iget-object v5, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v5}, Lcom/samsung/app/video/editor/external/Element;->getType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4e

    if-eqz v1, :cond_4e

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()I

    move-result v5

    if-eqz v5, :cond_4e

    .line 139
    iget-object v5, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->thumbParent:Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;

    invoke-virtual {v5, v7}, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 140
    .local v2, imgView:Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v5}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v6}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-static {v5, v6, v7}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getBitmapFromEngine(Ljava/lang/String;FLcom/samsung/app/video/editor/external/Element;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 141
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Edit;->getSubType()I

    move-result v5

    invoke-static {v5, v0}, Lcom/sec/android/app/ve/util/Utils;->applyEffect(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 142
    iget-object v5, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v5}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 143
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 173
    :goto_4d
    return v4

    .line 147
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #imgView:Landroid/widget/ImageView;
    :cond_4e
    iget-object v5, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->thumbParent:Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;

    invoke-virtual {v5, v7}, Lcom/sec/android/app/ve/view/timeline/ThumbImageParent;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 149
    .restart local v2       #imgView:Landroid/widget/ImageView;
    invoke-static {}, Lcom/sec/android/app/ve/activity/ProjectEditActivity;->getInstance()Lcom/sec/android/app/ve/activity/ProjectEditActivity;

    move-result-object v6

    monitor-enter v6

    .line 150
    const/4 v3, 0x1

    .line 151
    .local v3, ret:I
    :try_start_5c
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->isElementImage()Z

    move-result v5

    if-nez v5, :cond_70

    .line 152
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v5

    iget-object v7, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/samsung/app/video/editor/external/NativeInterface;->PinchInit(Ljava/lang/String;)I

    move-result v3

    .line 154
    :cond_70
    const/4 v0, 0x0

    .line 155
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    if-ne v3, v4, :cond_b0

    .line 156
    iget-object v5, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v5}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v7

    iget-object v8, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-static {v5, v7, v8}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->getBitmapFromEngine(Ljava/lang/String;FLcom/samsung/app/video/editor/external/Element;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 160
    :goto_85
    if-eqz v0, :cond_b6

    .line 161
    const/4 v4, 0x1

    .line 162
    .local v4, success:Z
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 168
    :goto_8b
    iget-object v5, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v5}, Lcom/samsung/app/video/editor/external/Element;->getStartTime()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 169
    invoke-direct {p0}, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->isElementImage()Z

    move-result v5

    if-nez v5, :cond_ab

    .line 170
    invoke-static {}, Lcom/samsung/app/video/editor/external/NativeInterface;->getInstance()Lcom/samsung/app/video/editor/external/NativeInterface;

    move-result-object v5

    iget-object v7, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v7}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/samsung/app/video/editor/external/NativeInterface;->PinchDeInit(Ljava/lang/String;)V

    .line 149
    :cond_ab
    monitor-exit v6

    goto :goto_4d

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #success:Z
    :catchall_ad
    move-exception v5

    monitor-exit v6
    :try_end_af
    .catchall {:try_start_5c .. :try_end_af} :catchall_ad

    throw v5

    .line 158
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_b0
    :try_start_b0
    const-string v5, "<<<< Engine  Pinch Init fails >>>>"

    invoke-static {v5}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_85

    .line 164
    :cond_b6
    sget-object v5, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mContext:Landroid/content/Context;

    const v7, 0x7f080033

    const/4 v8, 0x0

    invoke-static {v5, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_c3
    .catchall {:try_start_b0 .. :try_end_c3} :catchall_ad

    .line 165
    const/4 v4, 0x0

    .restart local v4       #success:Z
    goto :goto_8b
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    if-eqz v0, :cond_b

    .line 379
    iget-object v0, p0, Lcom/sec/android/app/ve/view/timeline/VideoClipViewGroup;->mElement:Lcom/samsung/app/video/editor/external/Element;

    invoke-virtual {v0}, Lcom/samsung/app/video/editor/external/Element;->getFilePath()Ljava/lang/String;

    move-result-object v0

    .line 381
    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method
