.class public Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;
.super Ljava/lang/Object;
.source "Ui3dDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;,
        Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;,
        Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CloseHandlerThreadAction;,
        Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$GetImageHandler;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final MAXZOOMLEVEL:I = 0x4

.field private static final mBuildboardMinHeight:I = 0x0

.field private static final mBuildboardMinWidth:I = 0x0

.field private static mCity:Ljava/lang/String; = null

.field private static mCountry:Ljava/lang/String; = null

.field static final mMaxCities:I = 0x134

.field private static mSelectedTextSize:I = 0x0

.field private static mTextSize:I = 0x0

.field private static mZoomSt:I = 0x0

.field static final mfEventTimezoneSet:I = 0x1

.field static final mfEventZoomChange:I = 0x2


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCanceledRequestHash:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCityChangedSelectionHash:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

.field private mCitySpotBmp:Landroid/graphics/Bitmap;

.field private mCitySpotBmpUp:Landroid/graphics/Bitmap;

.field private mCitySpotSelBmp:Landroid/graphics/Bitmap;

.field private mCitySpotSelBmpUp:Landroid/graphics/Bitmap;

.field private mCitySpotTzSelBmpUp:Landroid/graphics/Bitmap;

.field private mCityStopTzSelBmp:Landroid/graphics/Bitmap;

.field protected mDpID:Ljava/lang/String;

.field private mIsAsyncHandling:Z

.field private mLastEventBeforeRefreshContent:I

.field private mLastSelTz:Ljava/lang/String;

.field private mLatAngle:I

.field private final mLock:Ljava/lang/Object;

.field private mMainActivity:Landroid/app/Activity;

.field private mPriorityRequestCount:[I

.field private mRequestHandler:Landroid/os/Handler;

.field private mRequestHash:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestId:I

.field private mResponseHash:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mRotationListener:Lcom/samsung/stri/ui3dglobe/OnRotationChangedListener;

.field private mSelTextColor:I

.field private mSelTz:Ljava/lang/String;

.field private mTextColor:I

.field private mTouchCityListener:Lcom/samsung/stri/ui3dglobe/OnTouchCityListener;

.field private mTzTextColor:I

.field private mZoomChangedListener:Lcom/samsung/stri/ui3dglobe/OnZoomChangedListener;

.field private mZoomLevel:I

.field private mapCountryToFlag:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field protected mfDefaultImage:Ljava/lang/String;

.field protected mfDefaultImageReflection:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 28
    const-class v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_17

    const/4 v0, 0x1

    :goto_a
    sput-boolean v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->$assertionsDisabled:Z

    .line 36
    sput v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mZoomSt:I

    .line 54
    const/16 v0, 0x10

    sput v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mTextSize:I

    .line 55
    const/16 v0, 0x1c

    sput v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mSelectedTextSize:I

    return-void

    :cond_17
    move v0, v1

    .line 28
    goto :goto_a
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const/16 v5, 0x134

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 89
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v1, "Ui3dDP"

    iput-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->TAG:Ljava/lang/String;

    .line 37
    iput v3, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mZoomLevel:I

    .line 38
    iput v3, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLatAngle:I

    .line 39
    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mSelTz:Ljava/lang/String;

    .line 40
    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLastSelTz:Ljava/lang/String;

    .line 50
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mTextColor:I

    .line 66
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mapCountryToFlag:Ljava/util/Hashtable;

    .line 68
    new-array v1, v5, [Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    iput-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    .line 70
    new-instance v1, Ljava/lang/String;

    const-string v2, "dp_cities"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mDpID:Ljava/lang/String;

    .line 72
    iput v3, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLastEventBeforeRefreshContent:I

    .line 74
    iput-object v4, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mMainActivity:Landroid/app/Activity;

    .line 75
    iput-object v4, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRotationListener:Lcom/samsung/stri/ui3dglobe/OnRotationChangedListener;

    .line 76
    iput-object v4, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mTouchCityListener:Lcom/samsung/stri/ui3dglobe/OnTouchCityListener;

    .line 77
    iput-object v4, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mZoomChangedListener:Lcom/samsung/stri/ui3dglobe/OnZoomChangedListener;

    .line 79
    iput-boolean v3, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mIsAsyncHandling:Z

    .line 80
    iput v3, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRequestId:I

    .line 81
    iput-object v4, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRequestHandler:Landroid/os/Handler;

    .line 82
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLock:Ljava/lang/Object;

    .line 83
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mResponseHash:Ljava/util/Hashtable;

    .line 84
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRequestHash:Ljava/util/Hashtable;

    .line 85
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCanceledRequestHash:Ljava/util/HashSet;

    .line 86
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityChangedSelectionHash:Ljava/util/HashSet;

    .line 87
    sget-object v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;->eLast:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

    invoke-virtual {v1}, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;->ordinal()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mPriorityRequestCount:[I

    .line 90
    const/4 v0, 0x0

    .local v0, i:I
    :goto_6c
    sget-object v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;->eLast:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

    invoke-virtual {v1}, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_7b

    .line 91
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mPriorityRequestCount:[I

    aput v3, v1, v0

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_6c

    .line 94
    :cond_7b
    const/4 v0, 0x0

    :goto_7c
    if-ge v0, v5, :cond_8a

    .line 95
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    new-instance v2, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    invoke-direct {v2, p0, v4}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;-><init>(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$1;)V

    aput-object v2, v1, v0

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_7c

    .line 97
    :cond_8a
    return-void
.end method

.method private CloseHandlerThread()V
    .registers 3

    .prologue
    .line 121
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 122
    :try_start_3
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRequestHandler:Landroid/os/Handler;

    if-eqz v0, :cond_13

    .line 123
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRequestHandler:Landroid/os/Handler;

    .line 126
    :cond_13
    monitor-exit v1

    .line 127
    return-void

    .line 126
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method protected static GetDefaultImageBuffer(Ljava/lang/String;[BIII)V
    .registers 22
    .parameter "filename"
    .parameter "destBuf"
    .parameter "width"
    .parameter "height"
    .parameter "destImageFormat"

    .prologue
    .line 527
    invoke-static/range {p0 .. p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 529
    .local v4, bmpNew:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_b1

    .line 530
    move-object v3, v4

    .line 532
    .local v3, bitmapSrc:Landroid/graphics/Bitmap;
    invoke-static/range {p4 .. p4}, Lcom/samsung/stri/ui3dglobe/Ui3d_DPUtils;->ConvertFormat(I)Landroid/graphics/Bitmap$Config;

    move-result-object v5

    .line 533
    .local v5, cfg:Landroid/graphics/Bitmap$Config;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v14

    if-eq v14, v5, :cond_19

    .line 534
    const/4 v14, 0x0

    invoke-virtual {v4, v5, v14}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 535
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 538
    :cond_19
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 539
    .local v7, h:I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 541
    .local v13, w:I
    const/4 v2, 0x0

    .line 542
    .local v2, bitmap:Landroid/graphics/Bitmap;
    move/from16 v0, p3

    if-ne v7, v0, :cond_2a

    move/from16 v0, p2

    if-eq v13, v0, :cond_a7

    .line 543
    :cond_2a
    const/4 v14, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v3, v0, v1, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 547
    :goto_33
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 548
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 549
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v12

    .line 551
    .local v12, rowSize:I
    const-string v14, "DPM:"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "The default image width = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", the image Height = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    mul-int v14, v12, v7

    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 554
    .local v9, imageBytesBuffer:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 555
    invoke-virtual {v2, v9}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 557
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 558
    .local v6, curPos:I
    const-string v14, "DPM:"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Current Position = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 562
    add-int/lit8 v14, v7, -0x1

    mul-int v11, v14, v12

    .line 563
    .local v11, posSrc:I
    const/4 v10, 0x0

    .line 565
    .local v10, posDest:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_97
    if-ge v8, v7, :cond_a9

    .line 566
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v14

    move-object/from16 v0, p1

    invoke-static {v14, v11, v0, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 567
    sub-int/2addr v11, v12

    .line 568
    add-int/2addr v10, v12

    .line 565
    add-int/lit8 v8, v8, 0x1

    goto :goto_97

    .line 545
    .end local v6           #curPos:I
    .end local v8           #i:I
    .end local v9           #imageBytesBuffer:Ljava/nio/ByteBuffer;
    .end local v10           #posDest:I
    .end local v11           #posSrc:I
    .end local v12           #rowSize:I
    :cond_a7
    move-object v2, v3

    goto :goto_33

    .line 571
    .restart local v6       #curPos:I
    .restart local v8       #i:I
    .restart local v9       #imageBytesBuffer:Ljava/nio/ByteBuffer;
    .restart local v10       #posDest:I
    .restart local v11       #posSrc:I
    .restart local v12       #rowSize:I
    :cond_a9
    if-eq v2, v3, :cond_ae

    .line 572
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 573
    :cond_ae
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 575
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #bitmapSrc:Landroid/graphics/Bitmap;
    .end local v5           #cfg:Landroid/graphics/Bitmap$Config;
    .end local v6           #curPos:I
    .end local v7           #h:I
    .end local v8           #i:I
    .end local v9           #imageBytesBuffer:Ljava/nio/ByteBuffer;
    .end local v10           #posDest:I
    .end local v11           #posSrc:I
    .end local v12           #rowSize:I
    .end local v13           #w:I
    :cond_b1
    return-void
.end method

.method private GetImage(Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;)Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;
    .registers 16
    .parameter "request"

    .prologue
    const/4 v13, 0x1

    const/4 v8, 0x0

    .line 416
    iget v0, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->field:I

    invoke-virtual {p0}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->GetCount()I

    move-result v6

    if-ge v0, v6, :cond_14

    iget v0, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->field:I

    if-gez v0, :cond_17

    invoke-virtual {p0}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->GetCount()I

    move-result v0

    if-lez v0, :cond_17

    .line 417
    :cond_14
    iput-boolean v8, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->isProceed:Z

    .line 481
    :cond_16
    :goto_16
    return-object p1

    .line 421
    :cond_17
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    iget v6, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->field:I

    aget-object v0, v0, v6

    iget-object v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mDisplayCity:Ljava/lang/String;

    if-nez v0, :cond_44

    .line 422
    const-string v0, "Ui3dDP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "======= ERROR : field index ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->field:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") NOT exists in MAP to string"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iput-boolean v8, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->isProceed:Z

    goto :goto_16

    .line 428
    :cond_44
    const/4 v4, 0x0

    .line 430
    .local v4, bInSelTz:Z
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    iget v6, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->field:I

    aget-object v0, v0, v6

    iget-object v2, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mDisplayCountry:Ljava/lang/String;

    .line 431
    .local v2, country:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    iget v6, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->field:I

    aget-object v0, v0, v6

    iget-object v1, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mDisplayCity:Ljava/lang/String;

    .line 433
    .local v1, city:Ljava/lang/String;
    const/4 v3, 0x0

    .line 435
    .local v3, bCitySelected:Z
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    iget v6, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->field:I

    aget-object v0, v0, v6

    iget-boolean v3, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mbIsSelected:Z

    .line 437
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    iget v6, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->field:I

    aget-object v0, v0, v6

    iget-object v11, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mGMT:Ljava/lang/String;

    .line 439
    .local v11, gmt:Ljava/lang/String;
    if-nez v11, :cond_d9

    .line 440
    const-string v0, "Ui3dDP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--- Warning : GMT For Field Index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->field:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Not Found in mGMT[]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_88
    :goto_88
    const/4 v10, 0x1

    .line 446
    .local v10, bArrowDown:Z
    iget v0, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->alignY:I

    const/4 v6, 0x2

    if-ne v0, v6, :cond_8f

    .line 447
    const/4 v10, 0x0

    .line 450
    :cond_8f
    iget v0, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->cityX2d:I

    iget v6, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->cityLableX2d:I

    sub-int v9, v0, v6

    .line 453
    .local v9, x_ArrowOffset:I
    iget v0, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->width:I

    if-lez v0, :cond_9e

    .line 454
    iget v0, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->width:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v9, v0

    .line 456
    :cond_9e
    iget v0, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->width:I

    if-le v9, v0, :cond_a4

    .line 457
    iget v9, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->width:I

    .line 459
    :cond_a4
    if-gez v9, :cond_a7

    .line 460
    const/4 v9, 0x0

    .line 463
    :cond_a7
    iget v0, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->width:I

    iget v6, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->height:I

    iget v7, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->format:I

    invoke-virtual {p0, v0, v6, v7}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->nativeGetBufferForImage(III)[B

    move-result-object v5

    .line 465
    .local v5, imageBuf:[B
    iget v6, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->width:I

    iget v7, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->height:I

    iget v0, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->format:I

    invoke-static {v0}, Lcom/samsung/stri/ui3dglobe/Ui3d_DPUtils;->ConvertFormat(I)Landroid/graphics/Bitmap$Config;

    move-result-object v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->CreateBitmapFromText(Ljava/lang/String;Ljava/lang/String;ZZ[BIILandroid/graphics/Bitmap$Config;IZ)Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;

    move-result-object v12

    .line 472
    .local v12, result:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;
    iget v0, v12, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->width:I

    iput v0, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->width:I

    .line 473
    iget v0, v12, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->height:I

    iput v0, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->height:I

    .line 474
    iput-boolean v13, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->isProceed:Z

    .line 476
    if-eqz v5, :cond_16

    .line 477
    iget v0, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->requestId:I

    iget v6, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->width:I

    iget v7, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->height:I

    iget v8, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->format:I

    invoke-virtual {p0, v0, v6, v7, v8}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->nativeCopyBufferWithImage(IIII)V

    goto/16 :goto_16

    .line 441
    .end local v5           #imageBuf:[B
    .end local v9           #x_ArrowOffset:I
    .end local v10           #bArrowDown:Z
    .end local v12           #result:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;
    :cond_d9
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mSelTz:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v13, :cond_88

    .line 442
    const/4 v4, 0x1

    goto :goto_88
.end method

.method protected static GetImageBuffer(Landroid/graphics/Bitmap;[BIIIII)Z
    .registers 36
    .parameter "bmp"
    .parameter "destBuf"
    .parameter "destBufWidth"
    .parameter "destBufHeight"
    .parameter "destImageFormat"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 837
    if-nez p0, :cond_5

    .line 838
    const/16 v27, 0x0

    .line 912
    :goto_4
    return v27

    .line 840
    :cond_5
    sub-int v24, p2, p5

    .line 841
    .local v24, wantedWidth:I
    sub-int v23, p3, p6

    .line 843
    .local v23, wantedHeight:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    .line 844
    .local v25, widthReal:I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 846
    .local v8, heightReal:I
    move/from16 v22, v24

    .line 847
    .local v22, wMin:I
    move/from16 v7, v23

    .line 848
    .local v7, hMin:I
    const/16 v16, 0x0

    .line 849
    .local v16, offsetW:I
    const/4 v13, 0x0

    .line 850
    .local v13, offsetH:I
    const/4 v15, 0x0

    .line 851
    .local v15, offsetNewW:I
    const/4 v14, 0x0

    .line 852
    .local v14, offsetNewH:I
    const/16 v26, 0x0

    .local v26, widthResult:I
    const/4 v9, 0x0

    .line 854
    .local v9, heightResult:I
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v27, v0

    int-to-float v0, v8

    move/from16 v28, v0

    div-float v5, v27, v28

    .line 855
    .local v5, aspectR:F
    move/from16 v0, v25

    move/from16 v1, v24

    if-ne v0, v1, :cond_31

    move/from16 v0, v23

    if-eq v8, v0, :cond_66

    .line 856
    :cond_31
    move/from16 v26, v24

    .line 857
    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v27, v27, v5

    move/from16 v0, v27

    float-to-int v9, v0

    .line 859
    move/from16 v0, v23

    if-ge v9, v0, :cond_4d

    .line 860
    move/from16 v9, v23

    .line 861
    int-to-float v0, v9

    move/from16 v27, v0

    mul-float v27, v27, v5

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v26, v0

    .line 864
    :cond_4d
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v9, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 865
    .local v21, scaledBitmap:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 866
    move-object/from16 p0, v21

    .line 867
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    .line 868
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 871
    .end local v21           #scaledBitmap:Landroid/graphics/Bitmap;
    :cond_66
    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_dd

    .line 872
    move/from16 v22, v25

    .line 873
    const/16 v16, 0x0

    .line 874
    sub-int v27, v24, v25

    div-int/lit8 v27, v27, 0x2

    add-int v15, v27, p5

    .line 881
    :goto_76
    move/from16 v0, v23

    if-le v0, v8, :cond_e6

    .line 882
    move v7, v8

    .line 883
    const/4 v13, 0x0

    .line 884
    sub-int v27, v23, v8

    div-int/lit8 v27, v27, 0x2

    add-int v14, v27, p6

    .line 891
    :goto_82
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v20

    .line 892
    .local v20, rowBytes:I
    div-int v12, v20, v25

    .line 893
    .local v12, numBytesInPixel:I
    add-int v27, v24, p5

    mul-int v11, v27, v12

    .line 895
    .local v11, newRowBytes:I
    mul-int v27, v20, v8

    move/from16 v0, v27

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 897
    .local v17, pixels:[B
    mul-int v27, v20, v8

    invoke-static/range {v27 .. v27}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 898
    .local v6, bb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 899
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 900
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 901
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 902
    add-int v27, v13, v7

    add-int/lit8 v27, v27, -0x1

    mul-int v27, v27, v25

    add-int v27, v27, v16

    mul-int v19, v27, v12

    .line 903
    .local v19, posSrc:I
    mul-int v27, p2, v14

    add-int v27, v27, v15

    mul-int v18, v27, v12

    .line 904
    .local v18, posDest:I
    mul-int v22, v22, v12

    .line 906
    move v10, v13

    .local v10, i:I
    :goto_c7
    if-ge v10, v7, :cond_ef

    .line 907
    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object/from16 v2, p1

    move/from16 v3, v18

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 908
    sub-int v19, v19, v20

    .line 909
    add-int v18, v18, v11

    .line 906
    add-int/lit8 v10, v10, 0x1

    goto :goto_c7

    .line 876
    .end local v6           #bb:Ljava/nio/ByteBuffer;
    .end local v10           #i:I
    .end local v11           #newRowBytes:I
    .end local v12           #numBytesInPixel:I
    .end local v17           #pixels:[B
    .end local v18           #posDest:I
    .end local v19           #posSrc:I
    .end local v20           #rowBytes:I
    :cond_dd
    move/from16 v22, v24

    .line 877
    sub-int v27, v25, v24

    div-int/lit8 v16, v27, 0x2

    .line 878
    move/from16 v15, p5

    goto :goto_76

    .line 886
    :cond_e6
    move/from16 v7, v23

    .line 887
    sub-int v27, v8, v23

    div-int/lit8 v13, v27, 0x2

    .line 888
    move/from16 v14, p6

    goto :goto_82

    .line 911
    .restart local v6       #bb:Ljava/nio/ByteBuffer;
    .restart local v10       #i:I
    .restart local v11       #newRowBytes:I
    .restart local v12       #numBytesInPixel:I
    .restart local v17       #pixels:[B
    .restart local v18       #posDest:I
    .restart local v19       #posSrc:I
    .restart local v20       #rowBytes:I
    :cond_ef
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 912
    const/16 v27, 0x1

    goto/16 :goto_4
.end method

.method protected static GetImageBuffer(Ljava/lang/String;[BIIIII)Z
    .registers 16
    .parameter "filename"
    .parameter "destBuf"
    .parameter "destBufWidth"
    .parameter "destBufHeight"
    .parameter "destImageFormat"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    const/4 v1, 0x0

    .line 918
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 920
    .local v7, bmpNew:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_23

    .line 921
    move-object v0, v7

    .line 923
    .local v0, bmp:Landroid/graphics/Bitmap;
    invoke-static {p4}, Lcom/samsung/stri/ui3dglobe/Ui3d_DPUtils;->ConvertFormat(I)Landroid/graphics/Bitmap$Config;

    move-result-object v8

    .line 924
    .local v8, cfg:Landroid/graphics/Bitmap$Config;
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    if-eq v2, v8, :cond_19

    .line 925
    invoke-virtual {v7, v8, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 926
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_19
    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 929
    invoke-static/range {v0 .. v6}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->_GetImageBuffer(Landroid/graphics/Bitmap;[BIIIII)Z

    move-result v1

    .line 933
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v8           #cfg:Landroid/graphics/Bitmap$Config;
    :cond_23
    return v1
.end method

.method private IsToProceed(Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;)Z
    .registers 11
    .parameter "request"

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 367
    iget-object v6, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    iget v7, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->field:I

    aget-object v6, v6, v7

    iget-boolean v6, v6, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mbIsImageInitialized:Z

    if-nez v6, :cond_e

    .line 406
    :cond_d
    :goto_d
    return v4

    .line 372
    :cond_e
    iget-object v6, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityChangedSelectionHash:Ljava/util/HashSet;

    iget v7, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->field:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eq v6, v4, :cond_d

    .line 376
    const/4 v2, 0x0

    .line 377
    .local v2, bInSelTz:Z
    const/4 v1, 0x0

    .line 379
    .local v1, bInLastSelTz:Z
    const/4 v0, 0x0

    .line 381
    .local v0, bCitySelected:Z
    iget-object v6, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    iget v7, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->field:I

    aget-object v6, v6, v7

    iget-boolean v0, v6, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mbIsSelected:Z

    .line 384
    iget v6, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLastEventBeforeRefreshContent:I

    if-eq v6, v8, :cond_2f

    iget v6, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLastEventBeforeRefreshContent:I

    if-nez v6, :cond_37

    .line 386
    :cond_2f
    iget v6, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLastEventBeforeRefreshContent:I

    if-ne v6, v8, :cond_37

    if-nez v0, :cond_37

    move v4, v5

    .line 387
    goto :goto_d

    .line 391
    :cond_37
    iget-object v6, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    iget v7, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->field:I

    aget-object v6, v6, v7

    iget-object v3, v6, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mGMT:Ljava/lang/String;

    .line 393
    .local v3, gmt:Ljava/lang/String;
    if-nez v3, :cond_6d

    .line 394
    const-string v6, "Ui3dDP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--- Warning : GMT For Field Index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->field:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Not Found in mGMT[]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_61
    :goto_61
    iget v6, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLastEventBeforeRefreshContent:I

    if-ne v6, v4, :cond_d

    if-nez v2, :cond_69

    if-eqz v1, :cond_6b

    :cond_69
    if-ne v0, v4, :cond_d

    :cond_6b
    move v4, v5

    .line 403
    goto :goto_d

    .line 395
    :cond_6d
    iget-object v6, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mSelTz:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v4, :cond_77

    .line 396
    const/4 v2, 0x1

    goto :goto_61

    .line 397
    :cond_77
    iget-object v6, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLastSelTz:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v4, :cond_61

    .line 398
    const/4 v1, 0x1

    goto :goto_61
.end method

.method protected static _GetImageBuffer(Landroid/graphics/Bitmap;[BIIIII)Z
    .registers 23
    .parameter "_bmp"
    .parameter "destBuf"
    .parameter "destBufWidth"
    .parameter "destBufHeight"
    .parameter "destImageFormat"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 782
    if-nez p0, :cond_4

    .line 783
    const/4 v14, 0x0

    .line 832
    :goto_3
    return v14

    .line 786
    :cond_4
    const/4 v2, 0x0

    .line 787
    .local v2, bReleaseBitmap:Z
    move-object/from16 v4, p0

    .line 789
    .local v4, bmp:Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v14

    sget-object v15, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eq v14, v15, :cond_18

    .line 790
    sget-object v14, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 791
    .local v5, bmpNew:Landroid/graphics/Bitmap;
    const/4 v2, 0x1

    .line 792
    move-object v4, v5

    .line 795
    .end local v5           #bmpNew:Landroid/graphics/Bitmap;
    :cond_18
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 796
    .local v13, widthReal:I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 798
    .local v6, heightReal:I
    move/from16 v0, p2

    if-ne v13, v0, :cond_28

    move/from16 v0, p3

    if-eq v6, v0, :cond_3b

    .line 799
    :cond_28
    const/4 v14, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v4, v0, v1, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 802
    .local v12, scaledBitmap:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_36

    .line 803
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 806
    :cond_36
    if-nez v12, :cond_3a

    .line 807
    const/4 v14, 0x0

    goto :goto_3

    .line 810
    :cond_3a
    move-object v4, v12

    .line 813
    .end local v12           #scaledBitmap:Landroid/graphics/Bitmap;
    :cond_3b
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v11

    .line 814
    .local v11, rowBytes:I
    mul-int v14, v11, p3

    new-array v8, v14, [B

    .line 815
    .local v8, pixels:[B
    mul-int v14, v11, p3

    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 816
    .local v3, bb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 817
    invoke-virtual {v4, v3}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 818
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 819
    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 821
    mul-int v14, v11, p3

    sub-int v10, v14, v11

    .line 822
    .local v10, posSrc:I
    const/4 v9, 0x0

    .line 824
    .local v9, posDest:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_60
    move/from16 v0, p3

    if-ge v7, v0, :cond_6e

    .line 825
    move-object/from16 v0, p1

    invoke-static {v8, v10, v0, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 826
    sub-int/2addr v10, v11

    .line 827
    add-int/2addr v9, v11

    .line 824
    add-int/lit8 v7, v7, 0x1

    goto :goto_60

    .line 830
    :cond_6e
    if-eqz v2, :cond_73

    .line 831
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 832
    :cond_73
    const/4 v14, 0x1

    goto :goto_3
.end method

.method static synthetic access$1100(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)Ljava/lang/Object;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)Ljava/util/HashSet;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCanceledRequestHash:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mPriorityRequestCount:[I

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;)Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->GetImage(Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;)Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)Ljava/util/Hashtable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mResponseHash:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRequestHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->CloseHandlerThread()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLatAngle:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)Lcom/samsung/stri/ui3dglobe/OnRotationChangedListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRotationListener:Lcom/samsung/stri/ui3dglobe/OnRotationChangedListener;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)Lcom/samsung/stri/ui3dglobe/OnTouchCityListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mTouchCityListener:Lcom/samsung/stri/ui3dglobe/OnTouchCityListener;

    return-object v0
.end method

.method static synthetic access$700()I
    .registers 1

    .prologue
    .line 28
    sget v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mZoomSt:I

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)Lcom/samsung/stri/ui3dglobe/OnZoomChangedListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mZoomChangedListener:Lcom/samsung/stri/ui3dglobe/OnZoomChangedListener;

    return-object v0
.end method


# virtual methods
.method public AddCity(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "id"
    .parameter "city"
    .parameter "country"
    .parameter "gmt"

    .prologue
    .line 951
    const/16 v0, 0x134

    if-ge p1, v0, :cond_30

    .line 952
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 953
    :try_start_7
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    aget-object v0, v0, p1

    iput-object p2, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mDisplayCity:Ljava/lang/String;

    .line 954
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    aget-object v0, v0, p1

    iput-object p3, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mDisplayCountry:Ljava/lang/String;

    .line 956
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mGMT:Ljava/lang/String;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mGMT:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 957
    :cond_29
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    aget-object v0, v0, p1

    iput-object p4, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mGMT:Ljava/lang/String;

    .line 958
    :cond_2f
    monitor-exit v1

    .line 960
    :cond_30
    return-void

    .line 958
    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_31

    throw v0
.end method

.method public AddCountryFlag(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5
    .parameter "ContryName"
    .parameter "countryFlag"

    .prologue
    .line 980
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 981
    :try_start_3
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mapCountryToFlag:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    monitor-exit v1

    .line 983
    return-void

    .line 982
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public AttachActivity(Landroid/app/Activity;)V
    .registers 3
    .parameter "act"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mMainActivity:Landroid/app/Activity;

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mZoomLevel:I

    .line 102
    return-void
.end method

.method public CancelRequest(I)Z
    .registers 7
    .parameter "requestId"

    .prologue
    .line 185
    iget-object v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 186
    :try_start_3
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mResponseHash:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;

    .line 187
    .local v0, response:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;
    if-nez v0, :cond_1d

    .line 188
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCanceledRequestHash:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 192
    :goto_1a
    monitor-exit v2

    .line 194
    const/4 v1, 0x1

    return v1

    .line 190
    :cond_1d
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mPriorityRequestCount:[I

    iget-object v3, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->priority:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

    invoke-virtual {v3}, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;->ordinal()I

    move-result v3

    aget v4, v1, v3

    add-int/lit8 v4, v4, -0x1

    aput v4, v1, v3

    goto :goto_1a

    .line 192
    .end local v0           #response:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;
    :catchall_2c
    move-exception v1

    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method public Create()V
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mDpID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->nativeCreate(Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public CreateBitmapFromText(Ljava/lang/String;Ljava/lang/String;ZZ[BIILandroid/graphics/Bitmap$Config;IZ)Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;
    .registers 39
    .parameter "text"
    .parameter "country"
    .parameter "bSelected"
    .parameter "bInSelectedTz"
    .parameter "dstBuf"
    .parameter "dstBufWidth"
    .parameter "dstBufHeight"
    .parameter "format"
    .parameter "x_Arrowoffset"
    .parameter "bArrowDown"

    .prologue
    .line 580
    new-instance v18, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;-><init>(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$1;)V

    .line 581
    .local v18, result:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mTextColor:I

    .line 588
    .local v12, color:I
    if-eqz p3, :cond_164

    .line 589
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mSelTextColor:I

    .line 596
    :cond_17
    :goto_17
    if-eqz p10, :cond_16c

    .line 597
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCitySpotBmp:Landroid/graphics/Bitmap;

    .line 598
    .local v9, citySpotBmp:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCitySpotSelBmp:Landroid/graphics/Bitmap;

    .line 599
    .local v10, citySpotSelBmp:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityStopTzSelBmp:Landroid/graphics/Bitmap;

    .line 607
    .local v11, cityStopTzSelBmp:Landroid/graphics/Bitmap;
    :goto_25
    new-instance v19, Landroid/graphics/Paint;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Paint;-><init>()V

    .line 612
    .local v19, textPaint:Landroid/graphics/Paint;
    sget v24, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mTextSize:I

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 613
    const/16 v24, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 614
    sget-object v24, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 615
    const/16 v24, 0x0

    invoke-static/range {v24 .. v24}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 617
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 618
    const/high16 v24, 0x4000

    const/high16 v25, 0x3f80

    const/high16 v26, 0x3f80

    const/high16 v27, -0x100

    move-object/from16 v0, v19

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 621
    const/16 v24, 0x1

    move/from16 v0, p3

    move/from16 v1, v24

    if-ne v0, v1, :cond_87

    .line 622
    sget v24, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mSelectedTextSize:I

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 626
    :cond_87
    new-instance v22, Landroid/graphics/Rect;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Rect;-><init>()V

    .line 627
    .local v22, textRect:Landroid/graphics/Rect;
    const/16 v24, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v25

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v24

    move/from16 v3, v25

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 631
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->width:I

    .line 632
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->height:I

    .line 634
    move-object/from16 v0, v18

    iget v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->width:I

    move/from16 v24, v0

    if-gez v24, :cond_c3

    .line 635
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->width:I

    .line 638
    :cond_c3
    move-object/from16 v0, v18

    iget v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->height:I

    move/from16 v24, v0

    if-gez v24, :cond_d3

    .line 639
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->height:I

    .line 644
    :cond_d3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mapCountryToFlag:Ljava/util/Hashtable;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Bitmap;

    .line 645
    .local v13, countryFlag:Landroid/graphics/Bitmap;
    const/16 v24, 0x1

    move/from16 v0, p3

    move/from16 v1, v24

    if-ne v0, v1, :cond_185

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mZoomLevel:I

    move/from16 v24, v0

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_185

    if-eqz v10, :cond_185

    if-eqz v13, :cond_185

    .line 647
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 648
    .local v5, FlagImageHeight:I
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 650
    .local v6, FlagImageWidth:I
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v24

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    add-int v24, v24, v25

    add-int/lit8 v23, v24, 0x2

    .line 652
    .local v23, txtHeight:I
    move/from16 v0, v23

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->height:I

    .line 653
    move-object/from16 v0, v18

    iget v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->width:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v0, v6, :cond_17a

    .line 654
    move-object/from16 v0, v18

    iget v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->width:I

    move/from16 v24, v0

    add-int/lit8 v25, v6, 0x2

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->width:I

    .line 664
    .end local v5           #FlagImageHeight:I
    .end local v6           #FlagImageWidth:I
    .end local v23           #txtHeight:I
    :cond_137
    :goto_137
    move-object/from16 v0, v18

    iget v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->width:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x3

    add-int/lit8 v24, v24, 0x4

    and-int/lit8 v24, v24, -0x4

    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->width:I

    .line 665
    move-object/from16 v0, v18

    iget v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->height:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x3

    and-int/lit8 v24, v24, -0x4

    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->height:I

    .line 668
    if-nez p5, :cond_19c

    .line 669
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->isSucceeded:Z

    .line 777
    :goto_163
    return-object v18

    .line 591
    .end local v9           #citySpotBmp:Landroid/graphics/Bitmap;
    .end local v10           #citySpotSelBmp:Landroid/graphics/Bitmap;
    .end local v11           #cityStopTzSelBmp:Landroid/graphics/Bitmap;
    .end local v13           #countryFlag:Landroid/graphics/Bitmap;
    .end local v19           #textPaint:Landroid/graphics/Paint;
    .end local v22           #textRect:Landroid/graphics/Rect;
    :cond_164
    if-eqz p4, :cond_17

    .line 592
    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mTzTextColor:I

    goto/16 :goto_17

    .line 601
    :cond_16c
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCitySpotBmpUp:Landroid/graphics/Bitmap;

    .line 602
    .restart local v9       #citySpotBmp:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCitySpotSelBmpUp:Landroid/graphics/Bitmap;

    .line 603
    .restart local v10       #citySpotSelBmp:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCitySpotTzSelBmpUp:Landroid/graphics/Bitmap;

    .restart local v11       #cityStopTzSelBmp:Landroid/graphics/Bitmap;
    goto/16 :goto_25

    .line 656
    .restart local v5       #FlagImageHeight:I
    .restart local v6       #FlagImageWidth:I
    .restart local v13       #countryFlag:Landroid/graphics/Bitmap;
    .restart local v19       #textPaint:Landroid/graphics/Paint;
    .restart local v22       #textRect:Landroid/graphics/Rect;
    .restart local v23       #txtHeight:I
    :cond_17a
    mul-int/lit8 v24, v6, 0x2

    add-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->width:I

    goto :goto_137

    .line 659
    .end local v5           #FlagImageHeight:I
    .end local v6           #FlagImageWidth:I
    .end local v23           #txtHeight:I
    :cond_185
    if-eqz v10, :cond_137

    .line 660
    move-object/from16 v0, v18

    iget v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->height:I

    move/from16 v24, v0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    add-int/lit8 v25, v25, 0x6

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->height:I

    goto :goto_137

    .line 674
    :cond_19c
    invoke-static/range {p6 .. p8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 675
    .local v16, img:Landroid/graphics/Bitmap;
    const/16 v24, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 678
    const/16 v17, 0x0

    .line 679
    .local v17, nTriangleImageWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mTextColor:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v12, v0, :cond_26b

    .line 680
    if-eqz v9, :cond_267

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 688
    :goto_1bb
    div-int/lit8 v24, v17, 0x2

    sub-int p9, p9, v24

    .line 691
    if-gez p9, :cond_1c3

    .line 692
    const/16 p9, 0x0

    .line 695
    :cond_1c3
    add-int v24, p9, v17

    move-object/from16 v0, v18

    iget v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->width:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_1d9

    .line 696
    move-object/from16 v0, v18

    iget v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->width:I

    move/from16 v24, v0

    sub-int p9, v24, v17

    .line 699
    :cond_1d9
    new-instance v8, Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 702
    .local v8, c:Landroid/graphics/Canvas;
    const/16 v24, 0x1

    move/from16 v0, p3

    move/from16 v1, v24

    if-ne v0, v1, :cond_2e5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mZoomLevel:I

    move/from16 v24, v0

    const/16 v25, 0x4

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2e5

    if-eqz v10, :cond_2e5

    .line 703
    const/16 v21, 0x0

    .line 704
    .local v21, textPosY:I
    const/4 v7, 0x0

    .line 707
    .local v7, arrowPosY:I
    if-eqz v13, :cond_2a6

    .line 708
    if-eqz p10, :cond_28b

    .line 709
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v21

    .line 710
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v24

    add-int/lit8 v7, v24, 0x1

    .line 716
    :goto_209
    const/16 v20, 0x0

    .line 717
    .local v20, textPosX:I
    const/4 v14, 0x0

    .line 719
    .local v14, flagPosX:I
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    div-int/lit8 v25, v17, 0x2

    add-int v24, v24, v25

    move/from16 v0, p9

    move/from16 v1, v24

    if-lt v0, v1, :cond_298

    .line 720
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    add-int/lit8 v20, v24, 0x2

    .line 725
    :goto_220
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v19

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 728
    int-to-float v0, v14

    move/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v19

    invoke-virtual {v8, v13, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 729
    move/from16 v0, p9

    int-to-float v0, v0

    move/from16 v24, v0

    int-to-float v0, v7

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v19

    invoke-virtual {v8, v10, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 773
    .end local v14           #flagPosX:I
    .end local v20           #textPosX:I
    :cond_254
    :goto_254
    invoke-static/range {p5 .. p5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 774
    .local v15, imageBytesBuffer:Ljava/nio/ByteBuffer;
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 776
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->isSucceeded:Z

    goto/16 :goto_163

    .line 680
    .end local v7           #arrowPosY:I
    .end local v8           #c:Landroid/graphics/Canvas;
    .end local v15           #imageBytesBuffer:Ljava/nio/ByteBuffer;
    .end local v21           #textPosY:I
    :cond_267
    const/16 v17, 0x0

    goto/16 :goto_1bb

    .line 681
    :cond_26b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mSelTextColor:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v12, v0, :cond_280

    .line 682
    if-eqz v10, :cond_27d

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    :goto_27b
    goto/16 :goto_1bb

    :cond_27d
    const/16 v17, 0x0

    goto :goto_27b

    .line 684
    :cond_280
    if-eqz v11, :cond_288

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    :goto_286
    goto/16 :goto_1bb

    :cond_288
    const/16 v17, 0x0

    goto :goto_286

    .line 712
    .restart local v7       #arrowPosY:I
    .restart local v8       #c:Landroid/graphics/Canvas;
    .restart local v21       #textPosY:I
    :cond_28b
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v24

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    add-int v21, v24, v25

    .line 713
    const/4 v7, 0x0

    goto/16 :goto_209

    .line 722
    .restart local v14       #flagPosX:I
    .restart local v20       #textPosX:I
    :cond_298
    move-object/from16 v0, v18

    iget v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$BitmapResult;->width:I

    move/from16 v24, v0

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    sub-int v14, v24, v25

    goto/16 :goto_220

    .line 736
    .end local v14           #flagPosX:I
    .end local v20           #textPosX:I
    :cond_2a6
    if-eqz p10, :cond_2d9

    .line 737
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v24

    add-int/lit8 v21, v24, 0x2

    .line 738
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v24

    add-int/lit8 v7, v24, 0x4

    .line 744
    :goto_2b4
    const/16 v24, 0x0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v19

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 745
    move/from16 v0, p9

    int-to-float v0, v0

    move/from16 v24, v0

    int-to-float v0, v7

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v19

    invoke-virtual {v8, v10, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_254

    .line 740
    :cond_2d9
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v24

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    add-int v21, v24, v25

    .line 741
    const/4 v7, 0x0

    goto :goto_2b4

    .line 751
    .end local v7           #arrowPosY:I
    .end local v21           #textPosY:I
    :cond_2e5
    if-nez p10, :cond_2e9

    if-nez v9, :cond_326

    .line 753
    :cond_2e9
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v24

    add-int/lit8 v21, v24, 0x2

    .line 754
    .restart local v21       #textPosY:I
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v24

    add-int/lit8 v7, v24, 0x4

    .line 761
    .restart local v7       #arrowPosY:I
    :goto_2f5
    const/16 v24, 0x0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v19

    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 764
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mTextColor:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v12, v0, :cond_332

    if-eqz v9, :cond_332

    .line 765
    move/from16 v0, p9

    int-to-float v0, v0

    move/from16 v24, v0

    int-to-float v0, v7

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v19

    invoke-virtual {v8, v9, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_254

    .line 756
    .end local v7           #arrowPosY:I
    .end local v21           #textPosY:I
    :cond_326
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v24

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    add-int v21, v24, v25

    .line 757
    .restart local v21       #textPosY:I
    const/4 v7, 0x0

    .restart local v7       #arrowPosY:I
    goto :goto_2f5

    .line 766
    :cond_332
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mSelTextColor:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v12, v0, :cond_351

    if-eqz v10, :cond_351

    .line 767
    move/from16 v0, p9

    int-to-float v0, v0

    move/from16 v24, v0

    int-to-float v0, v7

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v19

    invoke-virtual {v8, v10, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_254

    .line 768
    :cond_351
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mTzTextColor:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v12, v0, :cond_254

    if-eqz v11, :cond_254

    .line 769
    move/from16 v0, p9

    int-to-float v0, v0

    move/from16 v24, v0

    int-to-float v0, v7

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    move-object/from16 v2, v19

    invoke-virtual {v8, v11, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_254
.end method

.method protected DropResponse(I)V
    .registers 4
    .parameter "requestId"

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mResponseHash:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1075
    return-void
.end method

.method public GetCount()I
    .registers 2

    .prologue
    .line 514
    const/16 v0, 0x134

    return v0
.end method

.method public GetDefaultImage(IIII[B)V
    .registers 9
    .parameter "field"
    .parameter "width"
    .parameter "height"
    .parameter "format"
    .parameter "imageBuf"

    .prologue
    .line 300
    const-string v0, "<DataProvider>"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=======Enter GetDefaultImage () width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-void
.end method

.method public GetFieldIndex(Ljava/lang/String;)I
    .registers 6
    .parameter "ff"

    .prologue
    .line 168
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 171
    .local v0, fieldIndex:I
    const/16 v1, 0x134

    if-ge v0, v1, :cond_3a

    .line 172
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mbIsInUi3dDb:Ljava/lang/Boolean;

    if-eqz v1, :cond_2e

    .line 173
    const-string v1, "Ui3dDP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warnning :GetFieldIndex(): fieldIndex "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "- already exists!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_2e
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mbIsInUi3dDb:Ljava/lang/Boolean;

    .line 181
    :goto_39
    return v0

    .line 178
    :cond_3a
    const-string v1, "Ui3dDP"

    const-string v2, "Warnning :GetFieldIndex(): fieldIndex - outof range!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39
.end method

.method public GetID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 518
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mDpID:Ljava/lang/String;

    return-object v0
.end method

.method public GetImage(IIIIIIIIII)Z
    .registers 15
    .parameter "row"
    .parameter "field"
    .parameter "width"
    .parameter "height"
    .parameter "format"
    .parameter "cityX2d"
    .parameter "cityY2d"
    .parameter "cityLableX2d"
    .parameter "cityLableY2d"
    .parameter "alignY"

    .prologue
    .line 486
    iget-object v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 487
    :try_start_3
    new-instance v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;

    invoke-direct {v0}, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;-><init>()V

    .line 488
    .local v0, request:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;
    iput p1, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->row:I

    .line 489
    iput p2, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->field:I

    .line 490
    iput p3, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->width:I

    .line 491
    iput p4, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->height:I

    .line 492
    iput p5, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->format:I

    .line 493
    iput p6, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->cityX2d:I

    .line 494
    iput p7, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->cityY2d:I

    .line 495
    iput p8, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->cityLableX2d:I

    .line 496
    iput p9, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->cityLableY2d:I

    .line 497
    iput p10, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->alignY:I

    .line 499
    invoke-direct {p0, v0}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->IsToProceed(Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 500
    invoke-direct {p0, v0}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->GetImage(Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;)Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;

    move-result-object v0

    .line 501
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mResponseHash:Ljava/util/Hashtable;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    if-eqz p3, :cond_44

    if-eqz p4, :cond_44

    .line 504
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    aget-object v1, v1, p2

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mbIsImageInitialized:Z

    .line 505
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityChangedSelectionHash:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 509
    :cond_44
    iget-boolean v1, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->isProceed:Z

    monitor-exit v2

    return v1

    .line 510
    .end local v0           #request:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;
    :catchall_48
    move-exception v1

    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method public GetImageAsync(IIIIIIIIII)I
    .registers 20
    .parameter "row"
    .parameter "field"
    .parameter "width"
    .parameter "height"
    .parameter "format"
    .parameter "cityX2d"
    .parameter "cityY2d"
    .parameter "cityLableX2d"
    .parameter "cityLableY2d"
    .parameter "alignY"

    .prologue
    .line 307
    new-instance v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;

    invoke-direct {v4}, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;-><init>()V

    .line 308
    .local v4, request:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;
    iput p1, v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->row:I

    .line 309
    iput p2, v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->field:I

    .line 310
    iput p3, v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->width:I

    .line 311
    iput p4, v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->height:I

    .line 312
    iput p5, v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->format:I

    .line 313
    iput p6, v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->cityX2d:I

    .line 314
    move/from16 v0, p7

    iput v0, v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->cityY2d:I

    .line 315
    move/from16 v0, p8

    iput v0, v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->cityLableX2d:I

    .line 316
    move/from16 v0, p9

    iput v0, v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->cityLableY2d:I

    .line 317
    move/from16 v0, p10

    iput v0, v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->alignY:I

    .line 319
    invoke-direct {p0, v4}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->IsToProceed(Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;)Z

    move-result v5

    if-eqz v5, :cond_85

    .line 320
    iget v5, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRequestId:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRequestId:I

    .line 321
    iget v5, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRequestId:I

    iput v5, v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->requestId:I

    .line 323
    iget-object v5, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    iget v6, v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->field:I

    aget-object v5, v5, v6

    iget-boolean v1, v5, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mbIsSelected:Z

    .line 324
    .local v1, bCitySelected:Z
    if-eqz v1, :cond_67

    .line 325
    sget-object v5, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;->eSelectedCity:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

    iput-object v5, v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->priority:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

    .line 335
    :goto_3f
    iget-object v6, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 336
    :try_start_42
    iget-object v5, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mPriorityRequestCount:[I

    iget-object v7, v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->priority:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

    invoke-virtual {v7}, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;->ordinal()I

    move-result v7

    aget v8, v5, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v5, v7

    .line 337
    monitor-exit v6
    :try_end_51
    .catchall {:try_start_42 .. :try_end_51} :catchall_82

    .line 343
    new-instance v3, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$GetImageHandler;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v5}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$GetImageHandler;-><init>(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$1;)V

    .line 344
    .local v3, handler:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$GetImageHandler;
    iput-object v4, v3, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$GetImageHandler;->mRequest:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;

    .line 346
    iget-object v5, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRequestHash:Ljava/util/Hashtable;

    iget v6, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRequestId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    iget v5, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRequestId:I

    .line 351
    .end local v1           #bCitySelected:Z
    .end local v3           #handler:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$GetImageHandler;
    :goto_66
    return v5

    .line 327
    .restart local v1       #bCitySelected:Z
    :cond_67
    iget-object v5, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    iget v6, v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->field:I

    aget-object v5, v5, v6

    iget-object v2, v5, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mGMT:Ljava/lang/String;

    .line 328
    .local v2, gmt:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mSelTz:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7d

    .line 329
    sget-object v5, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;->eSelectedTZ:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

    iput-object v5, v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->priority:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

    goto :goto_3f

    .line 331
    :cond_7d
    sget-object v5, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;->eUnselected:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

    iput-object v5, v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->priority:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest$ERequestPriority;

    goto :goto_3f

    .line 337
    .end local v2           #gmt:Ljava/lang/String;
    :catchall_82
    move-exception v5

    :try_start_83
    monitor-exit v6
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_82

    throw v5

    .line 351
    .end local v1           #bCitySelected:Z
    :cond_85
    const/4 v5, 0x0

    goto :goto_66
.end method

.method protected GetImageField(ILjava/lang/String;)I
    .registers 3
    .parameter "row"
    .parameter "field"

    .prologue
    .line 522
    return p1
.end method

.method protected GetResponseHeight(I)I
    .registers 5
    .parameter "requestId"

    .prologue
    .line 1064
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mResponseHash:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;

    .line 1065
    .local v0, response:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;
    if-eqz v0, :cond_11

    .line 1066
    iget v1, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->height:I

    .line 1069
    :goto_10
    return v1

    :cond_11
    const/4 v1, -0x1

    goto :goto_10
.end method

.method protected GetResponseWidth(I)I
    .registers 5
    .parameter "requestId"

    .prologue
    .line 1054
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mResponseHash:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;

    .line 1055
    .local v0, response:Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;
    if-eqz v0, :cond_11

    .line 1056
    iget v1, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->width:I

    .line 1059
    :goto_10
    return v1

    :cond_11
    const/4 v1, -0x1

    goto :goto_10
.end method

.method public GetTimeZoneByFieldIndex(I)F
    .registers 11
    .parameter "fieldIndex"

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 239
    const-string v5, "Ui3dDP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "=========== GetTimeZoneByFieldIndex "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/16 v5, 0x134

    if-le p1, v5, :cond_27

    .line 242
    const-string v5, "Ui3dDP"

    const-string v6, "Warnning :GetTimeZoneByFieldIndex(): fieldIndex - outof range!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 265
    :cond_26
    :goto_26
    return v1

    .line 245
    :cond_27
    iget-object v5, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    aget-object v5, v5, p1

    iget-object v2, v5, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mGMT:Ljava/lang/String;

    .line 247
    .local v2, tz:Ljava/lang/String;
    if-eqz v2, :cond_37

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 248
    :cond_37
    const-string v4, "Ui3dDP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "======= ERROR : field index ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") NOT exists in mGMT[]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/high16 v1, -0x3d38

    goto :goto_26

    .line 252
    :cond_58
    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, tzStr:[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 255
    .local v1, fTz:F
    array-length v5, v3

    if-le v5, v8, :cond_26

    .line 256
    aget-object v5, v3, v8

    invoke-static {v5}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/high16 v6, 0x4270

    div-float v0, v5, v6

    .line 258
    .local v0, fMinutes:F
    cmpl-float v4, v1, v4

    if-lez v4, :cond_80

    .line 259
    add-float/2addr v1, v0

    goto :goto_26

    .line 261
    :cond_80
    sub-float/2addr v1, v0

    goto :goto_26
.end method

.method public IsCityExists(I)Z
    .registers 4
    .parameter "id"

    .prologue
    const/4 v0, 0x0

    .line 937
    const/16 v1, 0x134

    if-lt p1, v1, :cond_6

    .line 944
    :cond_5
    :goto_5
    return v0

    .line 940
    :cond_6
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mbIsInUi3dDb:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mbIsInUi3dDb:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 944
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public OnCityTouched(I)V
    .registers 6
    .parameter "fieldIndex"

    .prologue
    .line 212
    const-string v0, "Ui3dDP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=========== OnCityTouched "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 215
    :try_start_1b
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mDisplayCity:Ljava/lang/String;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mDisplayCity:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 217
    :cond_31
    const-string v0, "Ui3dDP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "======= ERROR : field index ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") NOT exists in mDisplayCity[]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    monitor-exit v1

    .line 235
    :goto_50
    return-void

    .line 222
    :cond_51
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mDisplayCity:Ljava/lang/String;

    sput-object v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCity:Ljava/lang/String;

    .line 223
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mDisplayCountry:Ljava/lang/String;

    sput-object v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCountry:Ljava/lang/String;

    .line 225
    const-string v0, "Ui3dDP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "== OnCityTouched city = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCity:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Contry = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCountry:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mTouchCityListener:Lcom/samsung/stri/ui3dglobe/OnTouchCityListener;

    if-eqz v0, :cond_95

    .line 228
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mMainActivity:Landroid/app/Activity;

    new-instance v2, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$2;

    invoke-direct {v2, p0}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$2;-><init>(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 234
    :cond_95
    monitor-exit v1

    goto :goto_50

    :catchall_97
    move-exception v0

    monitor-exit v1
    :try_end_99
    .catchall {:try_start_1b .. :try_end_99} :catchall_97

    throw v0
.end method

.method public OnRotateChanged(I)V
    .registers 5
    .parameter "angle"

    .prologue
    .line 198
    const-string v0, "Ui3dDP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=========== OnRotateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iput p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLatAngle:I

    .line 202
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRotationListener:Lcom/samsung/stri/ui3dglobe/OnRotationChangedListener;

    if-eqz v0, :cond_28

    .line 203
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mMainActivity:Landroid/app/Activity;

    new-instance v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$1;

    invoke-direct {v1, p0}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$1;-><init>(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 209
    :cond_28
    return-void
.end method

.method public OnTzSelected(Ljava/lang/String;)V
    .registers 5
    .parameter "timezone"

    .prologue
    .line 269
    const-string v0, "Ui3dDP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=========== OnTzSelected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 272
    :try_start_1b
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mSelTz:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLastSelTz:Ljava/lang/String;

    .line 273
    iput-object p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mSelTz:Ljava/lang/String;

    .line 275
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLastEventBeforeRefreshContent:I

    .line 276
    monitor-exit v1

    .line 277
    return-void

    .line 276
    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_26

    throw v0
.end method

.method public OnZoomChanged(I)V
    .registers 5
    .parameter "zoom_level"

    .prologue
    .line 280
    const-string v0, "Ui3dDP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=========== OnZoomChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mZoomLevel:I

    if-ne v0, p1, :cond_1d

    .line 297
    :cond_1c
    :goto_1c
    return-void

    .line 285
    :cond_1d
    invoke-virtual {p0, p1}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->SetZoomLevel(I)V

    .line 287
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLastEventBeforeRefreshContent:I

    .line 288
    sput p1, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mZoomSt:I

    .line 290
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mZoomChangedListener:Lcom/samsung/stri/ui3dglobe/OnZoomChangedListener;

    if-eqz v0, :cond_1c

    .line 291
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mMainActivity:Landroid/app/Activity;

    new-instance v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$3;

    invoke-direct {v1, p0}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$3;-><init>(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1c
.end method

.method public ProceedAsyncRequest(I)Z
    .registers 6
    .parameter "requestId"

    .prologue
    .line 355
    iget-object v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRequestHash:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 357
    .local v0, getImageHandler:Ljava/lang/Runnable;
    if-eqz v0, :cond_29

    iget-object v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRequestHandler:Landroid/os/Handler;

    if-eqz v2, :cond_29

    const/4 v1, 0x1

    .line 358
    .local v1, res:Z
    :goto_13
    if-eqz v0, :cond_28

    iget-object v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRequestHandler:Landroid/os/Handler;

    if-eqz v2, :cond_28

    .line 359
    iget-object v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRequestHash:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    iget-object v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRequestHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    .line 363
    :cond_28
    return v1

    .line 357
    .end local v1           #res:Z
    :cond_29
    const/4 v1, 0x0

    goto :goto_13
.end method

.method public RefreshAllDPContent()V
    .registers 6

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    .local v0, arr$:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_4
    if-ge v2, v3, :cond_e

    aget-object v1, v0, v2

    .line 1017
    .local v1, c:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mbIsImageInitialized:Z

    .line 1016
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1019
    .end local v1           #c:Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;
    :cond_e
    invoke-virtual {p0}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->nativeRefreshDPContent()V

    .line 1020
    return-void
.end method

.method public RefreshSelected()V
    .registers 2

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityChangedSelectionHash:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 1011
    invoke-virtual {p0}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->nativeRefreshDPContent()V

    .line 1013
    :cond_b
    return-void
.end method

.method public RegisterRotationListener(Lcom/samsung/stri/ui3dglobe/OnRotationChangedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRotationListener:Lcom/samsung/stri/ui3dglobe/OnRotationChangedListener;

    .line 131
    return-void
.end method

.method public RegisterTouchCityListener(Lcom/samsung/stri/ui3dglobe/OnTouchCityListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mTouchCityListener:Lcom/samsung/stri/ui3dglobe/OnTouchCityListener;

    .line 135
    return-void
.end method

.method public RegisterZoomChangedListener(Lcom/samsung/stri/ui3dglobe/OnZoomChangedListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mZoomChangedListener:Lcom/samsung/stri/ui3dglobe/OnZoomChangedListener;

    .line 139
    return-void
.end method

.method public Release()V
    .registers 3

    .prologue
    .line 157
    const-string v0, "Ui3dDP"

    const-string v1, " Release Data Provider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->SetAsyncHandling(Z)V

    .line 160
    invoke-direct {p0}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->CloseHandlerThread()V

    .line 162
    invoke-virtual {p0}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->nativeDestroy()V

    .line 163
    return-void
.end method

.method public ResetTextColor(I)V
    .registers 5
    .parameter "id"

    .prologue
    .line 1024
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1025
    :try_start_3
    iget-object v0, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    aget-object v0, v0, p1

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mbIsSelected:Z

    .line 1026
    monitor-exit v1

    .line 1027
    return-void

    .line 1026
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public SendResponses()V
    .registers 9

    .prologue
    .line 1030
    iget-object v5, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1031
    :try_start_3
    iget-object v4, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRequestHandler:Landroid/os/Handler;

    if-nez v4, :cond_95

    .line 1032
    iget-object v4, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mResponseHash:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 1033
    .local v1, refResponseKeys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1034
    .local v3, responseKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1035
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_77

    .line 1036
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1037
    .local v2, reqid:I
    const-string v4, "Ui3dDP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SendResponses(): request id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " sent."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    iget-object v6, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    iget-object v4, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mResponseHash:Ljava/util/Hashtable;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;

    iget v4, v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->field:I

    aget-object v4, v6, v4

    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mbIsImageInitialized:Z

    .line 1039
    iget-object v6, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityChangedSelectionHash:Ljava/util/HashSet;

    iget-object v4, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mResponseHash:Ljava/util/Hashtable;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;

    iget v4, v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataRequest;->field:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1040
    invoke-virtual {p0, v2}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->nativeSendResponse(I)V

    goto :goto_16

    .line 1049
    .end local v0           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v1           #refResponseKeys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v2           #reqid:I
    .end local v3           #responseKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_74
    move-exception v4

    monitor-exit v5
    :try_end_76
    .catchall {:try_start_3 .. :try_end_76} :catchall_74

    throw v4

    .line 1042
    .restart local v0       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local v1       #refResponseKeys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .restart local v3       #responseKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_77
    :try_start_77
    iget-object v4, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mResponseHash:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_90

    .line 1043
    const-string v4, "Ui3dDP"

    const-string v6, "SendResponses(): mResponseHash is not empty"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    sget-boolean v4, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->$assertionsDisabled:Z

    if-nez v4, :cond_90

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 1047
    :cond_90
    iget-object v4, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mResponseHash:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->clear()V

    .line 1049
    .end local v0           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v1           #refResponseKeys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v3           #responseKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_95
    monitor-exit v5
    :try_end_96
    .catchall {:try_start_77 .. :try_end_96} :catchall_74

    .line 1050
    return-void
.end method

.method public SetAsyncHandling(Z)V
    .registers 6
    .parameter "isAsync"

    .prologue
    .line 105
    iget-boolean v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mIsAsyncHandling:Z

    if-nez v1, :cond_25

    if-eqz p1, :cond_25

    .line 106
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Ui3dGetImageAsync"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 108
    .local v0, pictThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 110
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRequestHandler:Landroid/os/Handler;

    .line 115
    .end local v0           #pictThread:Landroid/os/HandlerThread;
    :cond_1d
    :goto_1d
    iput-boolean p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mIsAsyncHandling:Z

    .line 117
    iget-boolean v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mIsAsyncHandling:Z

    invoke-virtual {p0, v1}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->nativeSetAsyncHandling(Z)V

    .line 118
    return-void

    .line 111
    :cond_25
    iget-boolean v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mIsAsyncHandling:Z

    if-eqz v1, :cond_1d

    if-nez p1, :cond_1d

    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRequestHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1d

    .line 112
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mRequestHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CloseHandlerThreadAction;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CloseHandlerThreadAction;-><init>(Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1d
.end method

.method public SetBitmaps(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 8
    .parameter "citySpotBmp"
    .parameter "citySelBmp"
    .parameter "cityTzSelBmp"
    .parameter "citySpotBmpUp"
    .parameter "citySelBmpUp"
    .parameter "cityTzSelBmpUp"
    .parameter "flagBg"

    .prologue
    .line 143
    iput-object p3, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityStopTzSelBmp:Landroid/graphics/Bitmap;

    .line 144
    iput-object p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCitySpotBmp:Landroid/graphics/Bitmap;

    .line 145
    iput-object p2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCitySpotSelBmp:Landroid/graphics/Bitmap;

    .line 147
    iput-object p6, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCitySpotTzSelBmpUp:Landroid/graphics/Bitmap;

    .line 148
    iput-object p4, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCitySpotBmpUp:Landroid/graphics/Bitmap;

    .line 149
    iput-object p5, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCitySpotSelBmpUp:Landroid/graphics/Bitmap;

    .line 150
    return-void
.end method

.method public SetSelected(IZ)V
    .registers 8
    .parameter "id"
    .parameter "bSelected"

    .prologue
    .line 988
    iget-object v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    array-length v2, v2

    if-lt p1, v2, :cond_6

    .line 1006
    :cond_5
    :goto_5
    return-void

    .line 992
    :cond_6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 994
    .local v1, field:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    iget-boolean v0, v2, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mbIsSelected:Z

    .line 995
    .local v0, bPreviouslySel:Z
    if-eq v0, p2, :cond_5

    .line 996
    iget-object v3, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 997
    :try_start_19
    iget-object v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v2, v2, v4

    iput-boolean p2, v2, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mbIsSelected:Z

    .line 998
    monitor-exit v3
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_36

    .line 1002
    iget-object v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityDetails:[Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    iget-boolean v2, v2, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider$CityDetails;->mbIsImageInitialized:Z

    if-eqz v2, :cond_5

    .line 1003
    iget-object v2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mCityChangedSelectionHash:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 998
    :catchall_36
    move-exception v2

    :try_start_37
    monitor-exit v3
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw v2
.end method

.method public SetTextColor(III)V
    .registers 6
    .parameter "color"
    .parameter "selColor"
    .parameter "tzSelColor"

    .prologue
    .line 964
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 965
    :try_start_3
    iput p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mTextColor:I

    .line 966
    iput p2, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mSelTextColor:I

    .line 967
    iput p3, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mTzTextColor:I

    .line 968
    monitor-exit v1

    .line 969
    return-void

    .line 968
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public SetZoomLevel(I)V
    .registers 4
    .parameter "level"

    .prologue
    .line 973
    iget-object v1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 974
    :try_start_3
    iput p1, p0, Lcom/samsung/stri/ui3dglobe/Ui3dDataProvider;->mZoomLevel:I

    .line 976
    monitor-exit v1

    .line 977
    return-void

    .line 976
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method protected native nativeCopyBufferWithImage(IIII)V
.end method

.method protected native nativeCreate(Ljava/lang/String;)V
.end method

.method protected native nativeDestroy()V
.end method

.method protected native nativeGetBufferForImage(III)[B
.end method

.method protected native nativeRefreshDPContent()V
.end method

.method protected native nativeSendResponse(I)V
.end method

.method protected native nativeSetAsyncHandling(Z)V
.end method
