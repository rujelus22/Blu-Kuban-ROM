.class public Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;
.super Ljava/lang/Object;
.source "MPrintPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PreviewFlipperManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;
    }
.end annotation


# instance fields
.field private mImageDisplayRotation:I

.field private mImageStateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;",
            ">;"
        }
    .end annotation
.end field

.field private mInitID:J

.field private final mMaxViews:I

.field private final mPreviewFilper:Landroid/widget/ViewFlipper;

.field private mTotalImages:I

.field private mUsableViews:I

.field final synthetic this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;Landroid/widget/ViewFlipper;I)V
    .registers 5
    .parameter
    .parameter "viewFilper"
    .parameter "maxViews"

    .prologue
    .line 1244
    iput-object p1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mImageStateList:Ljava/util/ArrayList;

    .line 1240
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mImageDisplayRotation:I

    .line 1245
    iput-object p2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mPreviewFilper:Landroid/widget/ViewFlipper;

    .line 1246
    iput p3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mMaxViews:I

    .line 1247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mImageStateList:Ljava/util/ArrayList;

    .line 1248
    return-void
.end method

.method private validateIndex(II)I
    .registers 4
    .parameter "current"
    .parameter "totalSize"

    .prologue
    .line 1414
    move v0, p1

    .line 1415
    .local v0, index:I
    if-gez v0, :cond_5

    .line 1416
    add-int/2addr v0, p2

    .line 1421
    :cond_4
    :goto_4
    return v0

    .line 1418
    :cond_5
    if-lt v0, p2, :cond_4

    .line 1419
    sub-int/2addr v0, p2

    goto :goto_4
.end method


# virtual methods
.method public declared-synchronized getCurrentImageIndex()I
    .registers 3

    .prologue
    .line 1291
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mImageStateList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mPreviewFilper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;

    iget v0, v0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;->index:I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getImageBitmap(I)Landroid/graphics/Bitmap;
    .registers 5
    .parameter "imageIndex"

    .prologue
    .line 1334
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mImageStateList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 1335
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mImageStateList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;

    iget v1, v1, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;->index:I

    if-ne v1, p1, :cond_31

    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mImageStateList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;

    iget-boolean v1, v1, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;->loaded:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_31

    .line 1336
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mPreviewFilper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;
    :try_end_2e
    .catchall {:try_start_2 .. :try_end_2e} :catchall_36

    move-result-object v1

    .line 1339
    :goto_2f
    monitor-exit p0

    return-object v1

    .line 1334
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1339
    :cond_34
    const/4 v1, 0x0

    goto :goto_2f

    .line 1334
    :catchall_36
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized initPreviewFliper(I)V
    .registers 8
    .parameter "totalImages"

    .prologue
    .line 1251
    monitor-enter p0

    if-lez p1, :cond_71

    .line 1252
    :try_start_3
    iput p1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mTotalImages:I

    .line 1257
    :goto_5
    iget v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mTotalImages:I

    iget v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mMaxViews:I

    if-ge v2, v3, :cond_78

    .line 1258
    iget v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mTotalImages:I

    iput v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mUsableViews:I

    .line 1264
    :goto_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mInitID:J

    .line 1265
    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mImageLoadingHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$1200(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1267
    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mPreviewFilper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mUsableViews:I

    if-eq v2, v3, :cond_7d

    .line 1268
    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mPreviewFilper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v2

    if-lez v2, :cond_3c

    .line 1269
    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mPreviewFilper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->removeAllViews()V

    .line 1270
    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mImageStateList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1272
    :cond_3c
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3d
    iget v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mUsableViews:I

    if-ge v0, v2, :cond_9b

    .line 1273
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mAppContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$1300(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1274
    .local v1, imgView:Landroid/widget/ImageView;
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1275
    const/16 v2, 0x14

    const/4 v3, 0x0

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1276
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1277
    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mPreviewFilper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 1278
    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mImageStateList:Ljava/util/ArrayList;

    new-instance v3, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;-><init>(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$1;)V

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1272
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 1255
    .end local v0           #i:I
    .end local v1           #imgView:Landroid/widget/ImageView;
    :cond_71
    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mTotalImages:I
    :try_end_74
    .catchall {:try_start_3 .. :try_end_74} :catchall_75

    goto :goto_5

    .line 1251
    :catchall_75
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1261
    :cond_78
    :try_start_78
    iget v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mMaxViews:I

    iput v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mUsableViews:I

    goto :goto_f

    .line 1282
    :cond_7d
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_7e
    iget v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mUsableViews:I

    if-ge v0, v2, :cond_9b

    .line 1284
    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mImageStateList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;

    const/4 v3, -0x1

    iput v3, v2, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;->index:I

    .line 1285
    iget-object v2, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mImageStateList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;->loaded:Z
    :try_end_98
    .catchall {:try_start_78 .. :try_end_98} :catchall_75

    .line 1282
    add-int/lit8 v0, v0, 0x1

    goto :goto_7e

    .line 1288
    :cond_9b
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized prepareImageViews(II)V
    .registers 18
    .parameter "mainImageIndex"
    .parameter "displayRotation"

    .prologue
    .line 1295
    monitor-enter p0

    :try_start_1
    iget v9, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mTotalImages:I

    move/from16 v0, p1

    if-ge v0, v9, :cond_9

    if-gez p1, :cond_25

    .line 1296
    :cond_9
    const-string v9, "MobilePrint"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PreviewFlipperManager : mainIndex is invalid - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_105

    .line 1331
    :cond_23
    monitor-exit p0

    return-void

    .line 1300
    :cond_25
    :try_start_25
    move/from16 v0, p2

    iput v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mImageDisplayRotation:I

    .line 1303
    iget-object v9, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mPreviewFilper:Landroid/widget/ViewFlipper;

    invoke-virtual {v9}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v2

    .line 1304
    .local v2, currentViewIndex:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_30
    iget v9, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mUsableViews:I

    if-ge v5, v9, :cond_64

    .line 1305
    iget v9, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mUsableViews:I

    div-int/lit8 v9, v9, 0x2

    sub-int v9, p1, v9

    add-int v6, v9, v5

    .line 1306
    .local v6, imageIndex:I
    sub-int v3, v6, p1

    .line 1307
    .local v3, diff:I
    add-int v8, v2, v3

    .line 1309
    .local v8, viewIndex:I
    iget v9, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mTotalImages:I

    invoke-direct {p0, v6, v9}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->validateIndex(II)I

    move-result v6

    .line 1310
    iget v9, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mUsableViews:I

    invoke-direct {p0, v8, v9}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->validateIndex(II)I

    move-result v8

    .line 1311
    iget-object v9, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mImageStateList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;

    iput v6, v9, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;->index:I

    .line 1312
    iget-object v9, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mImageStateList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;->loaded:Z

    .line 1304
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    .line 1315
    .end local v3           #diff:I
    .end local v6           #imageIndex:I
    .end local v8           #viewIndex:I
    :cond_64
    const-string v9, "MobilePrint"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PreviewFlipperManager : mainImage = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", ImageIndexList = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mImageStateList:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catchall {:try_start_25 .. :try_end_8a} :catchall_105

    .line 1319
    move v1, v2

    .line 1320
    .local v1, currentIndex:I
    const/4 v5, 0x0

    :goto_8c
    :try_start_8c
    iget v9, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mUsableViews:I

    if-ge v5, v9, :cond_23

    .line 1321
    rem-int/lit8 v9, v5, 0x2

    const/4 v10, 0x1

    if-ne v9, v10, :cond_c8

    const/4 v9, -0x1

    :goto_96
    mul-int/2addr v9, v5

    add-int/2addr v1, v9

    .line 1322
    iget v9, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mUsableViews:I

    invoke-direct {p0, v1, v9}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->validateIndex(II)I

    move-result v7

    .line 1323
    .local v7, loadIndex:I
    iget-object v9, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mImageLoadingHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$1200(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)Landroid/os/Handler;

    move-result-object v10

    iget-object v9, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mImageLoadingHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$1200(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x65

    iget-object v9, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mImageStateList:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;

    iget v9, v9, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;->index:I

    iget-wide v13, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mInitID:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v11, v12, v9, v0, v13}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_c5
    .catchall {:try_start_8c .. :try_end_c5} :catchall_105
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8c .. :try_end_c5} :catch_ca

    .line 1320
    add-int/lit8 v5, v5, 0x1

    goto :goto_8c

    .line 1321
    .end local v7           #loadIndex:I
    :cond_c8
    const/4 v9, 0x1

    goto :goto_96

    .line 1325
    :catch_ca
    move-exception v4

    .line 1326
    .local v4, e:Ljava/lang/IndexOutOfBoundsException;
    :try_start_cb
    const-string v9, "MobilePrint"

    const-string v10, "MPrintPreviewActivity : IndexOutOfBoundsException!!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    const/4 v5, 0x0

    :goto_d3
    iget-object v9, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mImageStateList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_23

    .line 1328
    iget-object v9, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mImageLoadingHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$1200(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)Landroid/os/Handler;

    move-result-object v10

    iget-object v9, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mImageLoadingHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$1200(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x65

    iget-object v9, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mImageStateList:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;

    iget v9, v9, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;->index:I

    iget-wide v13, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mInitID:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v11, v12, v9, v0, v13}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_102
    .catchall {:try_start_cb .. :try_end_102} :catchall_105

    .line 1327
    add-int/lit8 v5, v5, 0x1

    goto :goto_d3

    .line 1295
    .end local v1           #currentIndex:I
    .end local v2           #currentViewIndex:I
    .end local v4           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v5           #i:I
    :catchall_105
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method public declared-synchronized setImageBitmap(JILandroid/graphics/Bitmap;)Z
    .registers 10
    .parameter "initID"
    .parameter "imageIndex"
    .parameter "image"

    .prologue
    const/4 v2, 0x1

    .line 1343
    monitor-enter p0

    :try_start_2
    iget-wide v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mInitID:J

    cmp-long v1, v3, p1

    if-nez v1, :cond_8f

    .line 1344
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mImageStateList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_63

    .line 1345
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mImageStateList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;

    iget v1, v1, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;->index:I

    if-ne v1, p3, :cond_60

    .line 1346
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mImageStateList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;

    iget-boolean v1, v1, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;->loaded:Z

    if-nez v1, :cond_42

    .line 1347
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mPreviewFilper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1, v0}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1348
    iget-object v1, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mImageStateList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;->loaded:Z
    :try_end_3f
    .catchall {:try_start_2 .. :try_end_3f} :catchall_97

    move v1, v2

    .line 1362
    .end local v0           #i:I
    :goto_40
    monitor-exit p0

    return v1

    .line 1352
    .restart local v0       #i:I
    :cond_42
    :try_start_42
    const-string v1, "MobilePrint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PreviewFlipperManager : invalid Flipper loading state (flipper index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    :cond_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1357
    :cond_63
    const-string v1, "MobilePrint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PreviewFlipperManager : can\'t find imageIndex in ImageStateList (imageIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ImageStateList="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mImageStateList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    .end local v0           #i:I
    :goto_8d
    const/4 v1, 0x0

    goto :goto_40

    .line 1360
    :cond_8f
    const-string v1, "MobilePrint"

    const-string v2, "PreviewFlipperManager : invalid initID"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_96
    .catchall {:try_start_42 .. :try_end_96} :catchall_97

    goto :goto_8d

    .line 1343
    :catchall_97
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 3
    .parameter "listener"

    .prologue
    .line 1406
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mPreviewFilper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, p1}, Landroid/widget/ViewFlipper;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 1407
    monitor-exit p0

    return-void

    .line 1406
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setVisibility(I)V
    .registers 3
    .parameter "visibility"

    .prologue
    .line 1410
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mPreviewFilper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, p1}, Landroid/widget/ViewFlipper;->setVisibility(I)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 1411
    monitor-exit p0

    return-void

    .line 1410
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized showNext()V
    .registers 10

    .prologue
    .line 1386
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mPreviewFilper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    .line 1388
    .local v0, currentViewIndex:I
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mImageStateList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;

    iget v3, v3, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;->index:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mUsableViews:I

    div-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    .line 1389
    .local v1, replaceImageIndex:I
    iget v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mTotalImages:I

    invoke-direct {p0, v1, v3}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->validateIndex(II)I

    move-result v1

    .line 1391
    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mUsableViews:I

    div-int/lit8 v4, v4, 0x2

    add-int v2, v3, v4

    .line 1392
    .local v2, replaceViewIndex:I
    iget v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mUsableViews:I

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->validateIndex(II)I

    move-result v2

    .line 1394
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mImageStateList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;

    iget v3, v3, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;->index:I

    if-eq v1, v3, :cond_6b

    .line 1396
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mImageStateList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;

    iput v1, v3, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;->index:I

    .line 1397
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mImageStateList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;->loaded:Z

    .line 1399
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mImageLoadingHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$1200(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mImageLoadingHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$1200(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x65

    iget v6, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mImageDisplayRotation:I

    iget-wide v7, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mInitID:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v5, v1, v6, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1402
    :cond_6b
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mPreviewFilper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3}, Landroid/widget/ViewFlipper;->showNext()V
    :try_end_70
    .catchall {:try_start_1 .. :try_end_70} :catchall_72

    .line 1403
    monitor-exit p0

    return-void

    .line 1386
    .end local v0           #currentViewIndex:I
    .end local v1           #replaceImageIndex:I
    .end local v2           #replaceViewIndex:I
    :catchall_72
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized showPrevious()V
    .registers 10

    .prologue
    .line 1366
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mPreviewFilper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    .line 1368
    .local v0, currentViewIndex:I
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mImageStateList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;

    iget v3, v3, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;->index:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mUsableViews:I

    div-int/lit8 v4, v4, 0x2

    sub-int v1, v3, v4

    .line 1369
    .local v1, replaceImageIndex:I
    iget v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mTotalImages:I

    invoke-direct {p0, v1, v3}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->validateIndex(II)I

    move-result v1

    .line 1371
    add-int/lit8 v3, v0, -0x1

    iget v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mUsableViews:I

    div-int/lit8 v4, v4, 0x2

    sub-int v2, v3, v4

    .line 1372
    .local v2, replaceViewIndex:I
    iget v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mUsableViews:I

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->validateIndex(II)I

    move-result v2

    .line 1374
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mImageStateList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;

    iget v3, v3, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;->index:I

    if-eq v1, v3, :cond_6b

    .line 1376
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mImageStateList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;

    iput v1, v3, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;->index:I

    .line 1377
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mImageStateList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager$ImageViewState;->loaded:Z

    .line 1379
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mImageLoadingHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$1200(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->this$0:Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;

    #getter for: Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->mImageLoadingHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;->access$1200(Lcom/sec/android/app/mobileprint/MPrintPreviewActivity;)Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0x65

    iget v6, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mImageDisplayRotation:I

    iget-wide v7, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mInitID:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v4, v5, v1, v6, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1382
    :cond_6b
    iget-object v3, p0, Lcom/sec/android/app/mobileprint/MPrintPreviewActivity$PreviewFlipperManager;->mPreviewFilper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3}, Landroid/widget/ViewFlipper;->showPrevious()V
    :try_end_70
    .catchall {:try_start_1 .. :try_end_70} :catchall_72

    .line 1383
    monitor-exit p0

    return-void

    .line 1366
    .end local v0           #currentViewIndex:I
    .end local v1           #replaceImageIndex:I
    .end local v2           #replaceViewIndex:I
    :catchall_72
    move-exception v3

    monitor-exit p0

    throw v3
.end method
