.class public Lcom/google/android/apps/plus/views/PhotoGridItemView;
.super Landroid/view/View;
.source "PhotoGridItemView.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/PhotoGridItemView$1;,
        Lcom/google/android/apps/plus/views/PhotoGridItemView$Size;,
        Lcom/google/android/apps/plus/views/PhotoGridItemView$OnMeasuredListener;,
        Lcom/google/android/apps/plus/views/PhotoGridItemView$DrawableInfo;
    }
.end annotation


# static fields
.field private static sCountLeftPadding:I

.field private static sCountPaint:Landroid/text/TextPaint;

.field private static sCountRightPadding:I

.field private static sInfoHeight:I

.field private static sInfoPaint:Landroid/graphics/Paint;

.field private static sInitialized:Z

.field private static sItemHeight:I

.field private static sItemInnerPadding:I

.field private static sLoadingImage:Landroid/graphics/Bitmap;

.field private static sNameLeftPadding:I

.field private static sNamePaint:Landroid/text/TextPaint;

.field private static sNameRightPadding:I


# instance fields
.field private mAlbumCountText:Ljava/lang/CharSequence;

.field private mAlbumCountWidth:I

.field private mAlbumNameText:Ljava/lang/CharSequence;

.field private mHandler:Landroid/os/Handler;

.field private final mLoadingRect:[Landroid/graphics/Rect;

.field private mMaxCoverCount:I

.field private mMeasuredListener:Lcom/google/android/apps/plus/views/PhotoGridItemView$OnMeasuredListener;

.field private final mPhoto:[Landroid/graphics/Bitmap;

.field private mPhotoDrawables:[Lcom/google/android/apps/plus/views/PhotoGridItemView$DrawableInfo;

.field private final mPhotoRect:[Landroid/graphics/Rect;

.field private final mPhotoSize:[Lcom/google/android/apps/plus/views/PhotoGridItemView$Size;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/PhotoGridItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    .line 110
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mHandler:Landroid/os/Handler;

    .line 90
    new-array v0, v1, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mPhoto:[Landroid/graphics/Bitmap;

    .line 91
    new-array v0, v1, [Lcom/google/android/apps/plus/views/PhotoGridItemView$Size;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mPhotoSize:[Lcom/google/android/apps/plus/views/PhotoGridItemView$Size;

    .line 92
    new-array v0, v1, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mPhotoRect:[Landroid/graphics/Rect;

    .line 93
    new-array v0, v1, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mLoadingRect:[Landroid/graphics/Rect;

    .line 111
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/PhotoGridItemView;->initialize()V

    .line 112
    return-void
.end method

.method private createPhotoRect()V
    .registers 35

    .prologue
    .line 386
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/PhotoGridItemView;->getMeasuredWidth()I

    move-result v18

    .line 389
    .local v18, measuredWidth:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_5
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ge v6, v0, :cond_2c

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mPhotoSize:[Lcom/google/android/apps/plus/views/PhotoGridItemView$Size;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v26, v25, v6

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mPhotoRect:[Landroid/graphics/Rect;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v26, v25, v6

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mLoadingRect:[Landroid/graphics/Rect;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v26, v25, v6

    .line 389
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 395
    :cond_2c
    if-nez v18, :cond_2f

    .line 524
    :goto_2e
    return-void

    .line 400
    :cond_2f
    sget-object v25, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sLoadingImage:Landroid/graphics/Bitmap;

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 401
    .local v14, loadingHeight:I
    sget-object v25, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sLoadingImage:Landroid/graphics/Bitmap;

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 402
    .local v17, loadingWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mMaxCoverCount:I

    move/from16 v25, v0

    packed-switch v25, :pswitch_data_430

    goto :goto_2e

    .line 404
    :pswitch_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mPhotoSize:[Lcom/google/android/apps/plus/views/PhotoGridItemView$Size;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    new-instance v27, Lcom/google/android/apps/plus/views/PhotoGridItemView$Size;

    sget v28, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sItemHeight:I

    move-object/from16 v0, v27

    move/from16 v1, v18

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/views/PhotoGridItemView$Size;-><init>(II)V

    aput-object v27, v25, v26

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mPhotoRect:[Landroid/graphics/Rect;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    new-instance v27, Landroid/graphics/Rect;

    const/16 v28, 0x0

    const/16 v29, 0x0

    sget v30, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sItemHeight:I

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v18

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v27, v25, v26

    .line 407
    sget v25, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sItemHeight:I

    sub-int v25, v25, v14

    div-int/lit8 v16, v25, 0x2

    .line 408
    .local v16, loadingTop:I
    sub-int v25, v18, v17

    div-int/lit8 v15, v25, 0x2

    .line 409
    .local v15, loadingLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mLoadingRect:[Landroid/graphics/Rect;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    new-instance v27, Landroid/graphics/Rect;

    add-int v28, v15, v17

    add-int v29, v16, v14

    move-object/from16 v0, v27

    move/from16 v1, v16

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v15, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v27, v25, v26

    goto :goto_2e

    .line 424
    .end local v15           #loadingLeft:I
    .end local v16           #loadingTop:I
    :pswitch_a1
    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0x29b

    move/from16 v25, v0

    move/from16 v0, v25

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v25, v0

    sget v26, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sItemInnerPadding:I

    sub-int v23, v25, v26

    .line 425
    .local v23, width1:I
    sub-int v25, v18, v23

    sget v26, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sItemInnerPadding:I

    sub-int v24, v25, v26

    .line 426
    .local v24, width2:I
    sget v25, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sItemInnerPadding:I

    add-int v19, v23, v25

    .line 427
    .local v19, photo2Left:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mPhotoSize:[Lcom/google/android/apps/plus/views/PhotoGridItemView$Size;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    new-instance v27, Lcom/google/android/apps/plus/views/PhotoGridItemView$Size;

    sget v28, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sItemHeight:I

    move-object/from16 v0, v27

    move/from16 v1, v23

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/views/PhotoGridItemView$Size;-><init>(II)V

    aput-object v27, v25, v26

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mPhotoSize:[Lcom/google/android/apps/plus/views/PhotoGridItemView$Size;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    new-instance v27, Lcom/google/android/apps/plus/views/PhotoGridItemView$Size;

    sget v28, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sItemHeight:I

    move-object/from16 v0, v27

    move/from16 v1, v24

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/views/PhotoGridItemView$Size;-><init>(II)V

    aput-object v27, v25, v26

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mPhotoRect:[Landroid/graphics/Rect;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    new-instance v27, Landroid/graphics/Rect;

    const/16 v28, 0x0

    const/16 v29, 0x0

    sget v30, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sItemHeight:I

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v23

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v27, v25, v26

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mPhotoRect:[Landroid/graphics/Rect;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    new-instance v27, Landroid/graphics/Rect;

    const/16 v28, 0x0

    sget v29, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sItemHeight:I

    move-object/from16 v0, v27

    move/from16 v1, v19

    move/from16 v2, v28

    move/from16 v3, v18

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v27, v25, v26

    .line 432
    sget v25, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sItemHeight:I

    sub-int v25, v25, v14

    div-int/lit8 v16, v25, 0x2

    .line 433
    .restart local v16       #loadingTop:I
    sub-int v25, v23, v17

    div-int/lit8 v7, v25, 0x2

    .line 434
    .local v7, loading1Left:I
    sub-int v25, v24, v17

    div-int/lit8 v25, v25, 0x2

    add-int v9, v19, v25

    .line 435
    .local v9, loading2Left:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mLoadingRect:[Landroid/graphics/Rect;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    new-instance v27, Landroid/graphics/Rect;

    add-int v28, v7, v17

    add-int v29, v16, v14

    move-object/from16 v0, v27

    move/from16 v1, v16

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v7, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v27, v25, v26

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mLoadingRect:[Landroid/graphics/Rect;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    new-instance v27, Landroid/graphics/Rect;

    add-int v28, v9, v17

    add-int v29, v16, v14

    move-object/from16 v0, v27

    move/from16 v1, v16

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v9, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v27, v25, v26

    goto/16 :goto_2e

    .line 454
    .end local v7           #loading1Left:I
    .end local v9           #loading2Left:I
    .end local v16           #loadingTop:I
    .end local v19           #photo2Left:I
    .end local v23           #width1:I
    .end local v24           #width2:I
    :pswitch_16d
    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0x29b

    move/from16 v25, v0

    move/from16 v0, v25

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v25, v0

    sget v26, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sItemInnerPadding:I

    sub-int v23, v25, v26

    .line 455
    .restart local v23       #width1:I
    sub-int v25, v18, v23

    sget v26, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sItemInnerPadding:I

    sub-int v24, v25, v26

    .line 456
    .restart local v24       #width2:I
    sget v25, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sItemHeight:I

    div-int/lit8 v25, v25, 0x2

    sget v26, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sItemInnerPadding:I

    sub-int v5, v25, v26

    .line 457
    .local v5, height2:I
    sget v25, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sItemInnerPadding:I

    add-int v19, v23, v25

    .line 458
    .restart local v19       #photo2Left:I
    sget v25, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sItemInnerPadding:I

    add-int v21, v5, v25

    .line 459
    .local v21, photo3Top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mPhotoSize:[Lcom/google/android/apps/plus/views/PhotoGridItemView$Size;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    new-instance v27, Lcom/google/android/apps/plus/views/PhotoGridItemView$Size;

    sget v28, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sItemHeight:I

    move-object/from16 v0, v27

    move/from16 v1, v23

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/views/PhotoGridItemView$Size;-><init>(II)V

    aput-object v27, v25, v26

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mPhotoSize:[Lcom/google/android/apps/plus/views/PhotoGridItemView$Size;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mPhotoSize:[Lcom/google/android/apps/plus/views/PhotoGridItemView$Size;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    new-instance v29, Lcom/google/android/apps/plus/views/PhotoGridItemView$Size;

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/plus/views/PhotoGridItemView$Size;-><init>(II)V

    aput-object v29, v27, v28

    aput-object v29, v25, v26

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mPhotoRect:[Landroid/graphics/Rect;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    new-instance v27, Landroid/graphics/Rect;

    const/16 v28, 0x0

    const/16 v29, 0x0

    sget v30, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sItemHeight:I

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v23

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v27, v25, v26

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mPhotoRect:[Landroid/graphics/Rect;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    new-instance v27, Landroid/graphics/Rect;

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v19

    move/from16 v2, v28

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v27, v25, v26

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mPhotoRect:[Landroid/graphics/Rect;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    new-instance v27, Landroid/graphics/Rect;

    sget v28, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sItemHeight:I

    move-object/from16 v0, v27

    move/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v18

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v27, v25, v26

    .line 465
    sget v25, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sItemHeight:I

    sub-int v25, v25, v14

    div-int/lit8 v8, v25, 0x2

    .line 466
    .local v8, loading1Top:I
    sub-int v25, v5, v14

    div-int/lit8 v10, v25, 0x2

    .line 467
    .local v10, loading2Top:I
    add-int v25, v10, v5

    sget v26, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sItemInnerPadding:I

    add-int v12, v25, v26

    .line 468
    .local v12, loading3Top:I
    sub-int v25, v23, v17

    div-int/lit8 v7, v25, 0x2

    .line 469
    .restart local v7       #loading1Left:I
    sub-int v25, v24, v17

    div-int/lit8 v25, v25, 0x2

    add-int v9, v19, v25

    .line 470
    .restart local v9       #loading2Left:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mLoadingRect:[Landroid/graphics/Rect;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    new-instance v27, Landroid/graphics/Rect;

    add-int v28, v7, v17

    add-int v29, v8, v14

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v7, v8, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v27, v25, v26

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mLoadingRect:[Landroid/graphics/Rect;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    new-instance v27, Landroid/graphics/Rect;

    add-int v28, v9, v17

    add-int v29, v10, v14

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v9, v10, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v27, v25, v26

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mLoadingRect:[Landroid/graphics/Rect;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    new-instance v27, Landroid/graphics/Rect;

    add-int v28, v9, v17

    add-int v29, v12, v14

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v9, v12, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v27, v25, v26

    goto/16 :goto_2e

    .line 489
    .end local v5           #height2:I
    .end local v7           #loading1Left:I
    .end local v8           #loading1Top:I
    .end local v9           #loading2Left:I
    .end local v10           #loading2Top:I
    .end local v12           #loading3Top:I
    .end local v19           #photo2Left:I
    .end local v21           #photo3Top:I
    .end local v23           #width1:I
    .end local v24           #width2:I
    :pswitch_281
    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0x29b

    move/from16 v25, v0

    move/from16 v0, v25

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v25, v0

    sget v26, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sItemInnerPadding:I

    sub-int v23, v25, v26

    .line 490
    .restart local v23       #width1:I
    sub-int v25, v18, v23

    sget v26, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sItemInnerPadding:I

    sub-int v25, v25, v26

    sget v26, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sItemInnerPadding:I

    sub-int v25, v25, v26

    div-int/lit8 v24, v25, 0x2

    .line 492
    .restart local v24       #width2:I
    sget v25, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sItemHeight:I

    div-int/lit8 v25, v25, 0x2

    sget v26, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sItemInnerPadding:I

    sub-int v5, v25, v26

    .line 493
    .restart local v5       #height2:I
    sget v25, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sItemInnerPadding:I

    add-int v19, v23, v25

    .line 494
    .restart local v19       #photo2Left:I
    add-int v25, v19, v24

    sget v26, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sItemInnerPadding:I

    add-int v20, v25, v26

    .line 495
    .local v20, photo3Left:I
    sget v25, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sItemInnerPadding:I

    add-int v22, v5, v25

    .line 496
    .local v22, photo4Top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mPhotoSize:[Lcom/google/android/apps/plus/views/PhotoGridItemView$Size;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    new-instance v27, Lcom/google/android/apps/plus/views/PhotoGridItemView$Size;

    sget v28, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sItemHeight:I

    move-object/from16 v0, v27

    move/from16 v1, v23

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/views/PhotoGridItemView$Size;-><init>(II)V

    aput-object v27, v25, v26

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mPhotoSize:[Lcom/google/android/apps/plus/views/PhotoGridItemView$Size;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mPhotoSize:[Lcom/google/android/apps/plus/views/PhotoGridItemView$Size;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mPhotoSize:[Lcom/google/android/apps/plus/views/PhotoGridItemView$Size;

    move-object/from16 v29, v0

    const/16 v30, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mPhotoSize:[Lcom/google/android/apps/plus/views/PhotoGridItemView$Size;

    move-object/from16 v31, v0

    const/16 v32, 0x4

    new-instance v33, Lcom/google/android/apps/plus/views/PhotoGridItemView$Size;

    move-object/from16 v0, v33

    move/from16 v1, v24

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/plus/views/PhotoGridItemView$Size;-><init>(II)V

    aput-object v33, v31, v32

    aput-object v33, v29, v30

    aput-object v33, v27, v28

    aput-object v33, v25, v26

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mPhotoRect:[Landroid/graphics/Rect;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    new-instance v27, Landroid/graphics/Rect;

    const/16 v28, 0x0

    const/16 v29, 0x0

    sget v30, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sItemHeight:I

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v23

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v27, v25, v26

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mPhotoRect:[Landroid/graphics/Rect;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    new-instance v27, Landroid/graphics/Rect;

    const/16 v28, 0x0

    add-int v29, v19, v24

    move-object/from16 v0, v27

    move/from16 v1, v19

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v27, v25, v26

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mPhotoRect:[Landroid/graphics/Rect;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    new-instance v27, Landroid/graphics/Rect;

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v20

    move/from16 v2, v28

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v27, v25, v26

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mPhotoRect:[Landroid/graphics/Rect;

    move-object/from16 v25, v0

    const/16 v26, 0x3

    new-instance v27, Landroid/graphics/Rect;

    add-int v28, v19, v24

    sget v29, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sItemHeight:I

    move-object/from16 v0, v27

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v27, v25, v26

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mPhotoRect:[Landroid/graphics/Rect;

    move-object/from16 v25, v0

    const/16 v26, 0x4

    new-instance v27, Landroid/graphics/Rect;

    sget v28, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sItemHeight:I

    move-object/from16 v0, v27

    move/from16 v1, v20

    move/from16 v2, v22

    move/from16 v3, v18

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v27, v25, v26

    .line 505
    sget v25, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sItemHeight:I

    sub-int v25, v25, v14

    div-int/lit8 v8, v25, 0x2

    .line 506
    .restart local v8       #loading1Top:I
    sub-int v25, v5, v14

    div-int/lit8 v10, v25, 0x2

    .line 507
    .restart local v10       #loading2Top:I
    add-int v25, v10, v5

    sget v26, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sItemInnerPadding:I

    add-int v13, v25, v26

    .line 508
    .local v13, loading4Top:I
    sub-int v25, v23, v17

    div-int/lit8 v7, v25, 0x2

    .line 509
    .restart local v7       #loading1Left:I
    sub-int v25, v24, v17

    div-int/lit8 v25, v25, 0x2

    add-int v9, v19, v25

    .line 510
    .restart local v9       #loading2Left:I
    add-int v25, v9, v24

    sget v26, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sItemInnerPadding:I

    add-int v11, v25, v26

    .line 511
    .local v11, loading3Left:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mLoadingRect:[Landroid/graphics/Rect;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    new-instance v27, Landroid/graphics/Rect;

    add-int v28, v7, v17

    add-int v29, v8, v14

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v7, v8, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v27, v25, v26

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mLoadingRect:[Landroid/graphics/Rect;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mLoadingRect:[Landroid/graphics/Rect;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    new-instance v29, Landroid/graphics/Rect;

    add-int v30, v9, v17

    add-int v31, v10, v14

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v9, v10, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v29, v27, v28

    aput-object v29, v25, v26

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mLoadingRect:[Landroid/graphics/Rect;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    new-instance v27, Landroid/graphics/Rect;

    add-int v28, v11, v17

    add-int v29, v10, v14

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v11, v10, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v27, v25, v26

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mLoadingRect:[Landroid/graphics/Rect;

    move-object/from16 v25, v0

    const/16 v26, 0x3

    new-instance v27, Landroid/graphics/Rect;

    add-int v28, v9, v17

    add-int v29, v13, v14

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v9, v13, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v27, v25, v26

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mLoadingRect:[Landroid/graphics/Rect;

    move-object/from16 v25, v0

    const/16 v26, 0x4

    new-instance v27, Landroid/graphics/Rect;

    add-int v28, v11, v17

    add-int v29, v13, v14

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v11, v13, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v27, v25, v26

    goto/16 :goto_2e

    .line 402
    nop

    :pswitch_data_430
    .packed-switch 0x1
        :pswitch_45
        :pswitch_a1
        :pswitch_16d
        :pswitch_16d
        :pswitch_281
    .end packed-switch
.end method

.method private initialize()V
    .registers 7

    .prologue
    const v5, 0x7f0d008b

    const v4, 0x7f0d008a

    const/4 v3, 0x1

    .line 527
    sget-boolean v1, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sInitialized:Z

    if-nez v1, :cond_c5

    .line 528
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoGridItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 530
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f02012d

    invoke-static {v0, v1}, Lcom/google/android/apps/plus/util/ImageUtils;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sLoadingImage:Landroid/graphics/Bitmap;

    .line 532
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sNamePaint:Landroid/text/TextPaint;

    .line 533
    sget-object v1, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sNamePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 534
    sget-object v1, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sNamePaint:Landroid/text/TextPaint;

    const v2, 0x7f0a0051

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 535
    sget-object v1, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sNamePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 536
    sget-object v1, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sNamePaint:Landroid/text/TextPaint;

    invoke-static {v1, v4}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 538
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sCountPaint:Landroid/text/TextPaint;

    .line 539
    sget-object v1, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 540
    sget-object v1, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sCountPaint:Landroid/text/TextPaint;

    const v2, 0x7f0a0052

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 541
    sget-object v1, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 542
    sget-object v1, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sCountPaint:Landroid/text/TextPaint;

    invoke-static {v1, v5}, Lcom/google/android/apps/plus/util/TextPaintUtils;->registerTextPaint(Landroid/text/TextPaint;I)V

    .line 544
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sInfoPaint:Landroid/graphics/Paint;

    .line 545
    sget-object v1, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sInfoPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 546
    sget-object v1, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sInfoPaint:Landroid/graphics/Paint;

    const v2, 0x7f0a0050

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 548
    const v1, 0x7f0d008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sNameLeftPadding:I

    .line 550
    const v1, 0x7f0d008e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sNameRightPadding:I

    .line 552
    const v1, 0x7f0d008f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sCountLeftPadding:I

    .line 554
    const v1, 0x7f0d0090

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sCountRightPadding:I

    .line 556
    const v1, 0x7f0d0088

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sItemInnerPadding:I

    .line 559
    const v1, 0x7f0d008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sInfoHeight:I

    .line 560
    const v1, 0x7f0d0087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sItemHeight:I

    .line 562
    sput-boolean v3, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sInitialized:Z

    .line 564
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_c5
    return-void
.end method

.method private updateDrawableInfo(I)V
    .registers 14
    .parameter "index"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 291
    iget-object v7, p0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mPhotoRect:[Landroid/graphics/Rect;

    aget-object v5, v7, p1

    .line 292
    .local v5, photoRect:Landroid/graphics/Rect;
    if-nez v5, :cond_a

    .line 338
    :cond_9
    :goto_9
    return-void

    .line 296
    :cond_a
    iget-object v7, p0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mPhoto:[Landroid/graphics/Bitmap;

    aget-object v3, v7, p1

    .line 297
    .local v3, photo:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 299
    .local v1, drawableInfo:Lcom/google/android/apps/plus/views/PhotoGridItemView$DrawableInfo;
    iget-object v7, p0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mPhotoDrawables:[Lcom/google/android/apps/plus/views/PhotoGridItemView$DrawableInfo;

    aget-object v7, v7, p1

    if-eqz v7, :cond_21

    iget-object v7, p0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mPhotoDrawables:[Lcom/google/android/apps/plus/views/PhotoGridItemView$DrawableInfo;

    aget-object v7, v7, p1

    iget-object v7, v7, Lcom/google/android/apps/plus/views/PhotoGridItemView$DrawableInfo;->mLoadingDrawable:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_79

    :cond_21
    if-eqz v3, :cond_79

    .line 303
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoGridItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v4, v7, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 305
    .local v4, photoDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 307
    iget-object v7, p0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mPhotoDrawables:[Lcom/google/android/apps/plus/views/PhotoGridItemView$DrawableInfo;

    aget-object v7, v7, p1

    if-eqz v7, :cond_5f

    iget-object v7, p0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mPhotoDrawables:[Lcom/google/android/apps/plus/views/PhotoGridItemView$DrawableInfo;

    aget-object v7, v7, p1

    iget-object v7, v7, Lcom/google/android/apps/plus/views/PhotoGridItemView$DrawableInfo;->mDrawn:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_5f

    .line 308
    const/4 v7, 0x2

    new-array v2, v7, [Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mPhotoDrawables:[Lcom/google/android/apps/plus/views/PhotoGridItemView$DrawableInfo;

    aget-object v7, v7, p1

    iget-object v7, v7, Lcom/google/android/apps/plus/views/PhotoGridItemView$DrawableInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v7, v2, v9

    aput-object v4, v2, v10

    .line 311
    .local v2, drawables:[Landroid/graphics/drawable/Drawable;
    new-instance v6, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v6, v2}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 313
    .local v6, transitionDrawable:Landroid/graphics/drawable/TransitionDrawable;
    invoke-virtual {v6, p0}, Landroid/graphics/drawable/TransitionDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 314
    invoke-virtual {v6, v10}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 315
    const/16 v7, 0xfa

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 317
    move-object v4, v6

    .line 320
    .end local v2           #drawables:[Landroid/graphics/drawable/Drawable;
    .end local v6           #transitionDrawable:Landroid/graphics/drawable/TransitionDrawable;
    :cond_5f
    new-instance v1, Lcom/google/android/apps/plus/views/PhotoGridItemView$DrawableInfo;

    .end local v1           #drawableInfo:Lcom/google/android/apps/plus/views/PhotoGridItemView$DrawableInfo;
    invoke-direct {v1, v11}, Lcom/google/android/apps/plus/views/PhotoGridItemView$DrawableInfo;-><init>(Lcom/google/android/apps/plus/views/PhotoGridItemView$1;)V

    .line 321
    .restart local v1       #drawableInfo:Lcom/google/android/apps/plus/views/PhotoGridItemView$DrawableInfo;
    iput-object v4, v1, Lcom/google/android/apps/plus/views/PhotoGridItemView$DrawableInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 322
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v1, Lcom/google/android/apps/plus/views/PhotoGridItemView$DrawableInfo;->mLoadingDrawable:Ljava/lang/Boolean;

    .line 334
    .end local v4           #photoDrawable:Landroid/graphics/drawable/Drawable;
    :cond_6c
    :goto_6c
    if-eqz v1, :cond_9

    .line 335
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v1, Lcom/google/android/apps/plus/views/PhotoGridItemView$DrawableInfo;->mDrawn:Ljava/lang/Boolean;

    .line 336
    iget-object v7, p0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mPhotoDrawables:[Lcom/google/android/apps/plus/views/PhotoGridItemView$DrawableInfo;

    aput-object v1, v7, p1

    goto :goto_9

    .line 323
    :cond_79
    iget-object v7, p0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mPhotoDrawables:[Lcom/google/android/apps/plus/views/PhotoGridItemView$DrawableInfo;

    aget-object v7, v7, p1

    if-nez v7, :cond_6c

    .line 325
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoGridItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget-object v8, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sLoadingImage:Landroid/graphics/Bitmap;

    invoke-direct {v0, v7, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 327
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mLoadingRect:[Landroid/graphics/Rect;

    aget-object v7, v7, p1

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 329
    new-instance v1, Lcom/google/android/apps/plus/views/PhotoGridItemView$DrawableInfo;

    .end local v1           #drawableInfo:Lcom/google/android/apps/plus/views/PhotoGridItemView$DrawableInfo;
    invoke-direct {v1, v11}, Lcom/google/android/apps/plus/views/PhotoGridItemView$DrawableInfo;-><init>(Lcom/google/android/apps/plus/views/PhotoGridItemView$1;)V

    .line 330
    .restart local v1       #drawableInfo:Lcom/google/android/apps/plus/views/PhotoGridItemView$DrawableInfo;
    iput-object v0, v1, Lcom/google/android/apps/plus/views/PhotoGridItemView$DrawableInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 331
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v1, Lcom/google/android/apps/plus/views/PhotoGridItemView$DrawableInfo;->mLoadingDrawable:Ljava/lang/Boolean;

    goto :goto_6c
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .parameter "who"

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoGridItemView;->invalidate()V

    .line 119
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 24
    .parameter "canvas"

    .prologue
    .line 342
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/PhotoGridItemView;->getMeasuredWidth()I

    move-result v18

    .line 343
    .local v18, measuredWidth:I
    const/16 v20, 0x0

    .line 344
    .local v20, xPos:I
    const/16 v21, 0x0

    .line 346
    .local v21, yPos:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mPhotoDrawables:[Lcom/google/android/apps/plus/views/PhotoGridItemView$DrawableInfo;

    if-eqz v1, :cond_2f

    .line 348
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mPhotoDrawables:[Lcom/google/android/apps/plus/views/PhotoGridItemView$DrawableInfo;

    .local v13, arr$:[Lcom/google/android/apps/plus/views/PhotoGridItemView$DrawableInfo;
    array-length v0, v13

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_16
    move/from16 v0, v16

    if-ge v15, v0, :cond_2f

    aget-object v14, v13, v15

    .line 349
    .local v14, drawableInfo:Lcom/google/android/apps/plus/views/PhotoGridItemView$DrawableInfo;
    if-eqz v14, :cond_2c

    .line 350
    iget-object v1, v14, Lcom/google/android/apps/plus/views/PhotoGridItemView$DrawableInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 351
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v14, Lcom/google/android/apps/plus/views/PhotoGridItemView$DrawableInfo;->mDrawn:Ljava/lang/Boolean;

    .line 348
    :cond_2c
    add-int/lit8 v15, v15, 0x1

    goto :goto_16

    .line 357
    .end local v13           #arr$:[Lcom/google/android/apps/plus/views/PhotoGridItemView$DrawableInfo;
    .end local v14           #drawableInfo:Lcom/google/android/apps/plus/views/PhotoGridItemView$DrawableInfo;
    .end local v15           #i$:I
    .end local v16           #len$:I
    :cond_2f
    sget v1, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sItemHeight:I

    sget v3, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sInfoHeight:I

    sub-int v21, v1, v3

    .line 358
    move/from16 v0, v20

    int-to-float v2, v0

    move/from16 v0, v21

    int-to-float v3, v0

    move/from16 v0, v18

    int-to-float v4, v0

    sget v1, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sItemHeight:I

    int-to-float v5, v1

    sget-object v6, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sInfoPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 361
    sget-object v1, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sNamePaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    sget-object v3, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sNamePaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    sub-float v19, v1, v3

    .line 362
    .local v19, textHeight:F
    move/from16 v0, v21

    int-to-float v1, v0

    sget v3, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sInfoHeight:I

    int-to-float v3, v3

    sub-float v3, v3, v19

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    float-to-int v0, v1

    move/from16 v21, v0

    .line 363
    move/from16 v0, v21

    int-to-float v1, v0

    sget-object v3, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sNamePaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    sub-float/2addr v1, v3

    float-to-int v0, v1

    move/from16 v21, v0

    .line 365
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mAlbumNameText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_ac

    .line 366
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mAlbumCountWidth:I

    sub-int v1, v18, v1

    sget v3, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sNameLeftPadding:I

    sub-int/2addr v1, v3

    sget v3, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sNameRightPadding:I

    sub-int/2addr v1, v3

    sget v3, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sCountLeftPadding:I

    sub-int/2addr v1, v3

    sget v3, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sCountRightPadding:I

    sub-int v17, v1, v3

    .line 368
    .local v17, maxTextWidth:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mAlbumNameText:Ljava/lang/CharSequence;

    sget-object v3, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sNamePaint:Landroid/text/TextPaint;

    move/from16 v0, v17

    int-to-float v4, v0

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v3, v4, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 370
    .local v2, drawText:Ljava/lang/CharSequence;
    sget v1, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sNameLeftPadding:I

    int-to-float v5, v1

    .line 372
    .local v5, drawX:F
    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move/from16 v0, v21

    int-to-float v6, v0

    sget-object v7, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sNamePaint:Landroid/text/TextPaint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 375
    .end local v2           #drawText:Ljava/lang/CharSequence;
    .end local v5           #drawX:F
    .end local v17           #maxTextWidth:I
    :cond_ac
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mAlbumCountText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_d4

    .line 376
    sget v1, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sCountRightPadding:I

    sub-int v1, v18, v1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mAlbumCountWidth:I

    sub-int/2addr v1, v3

    int-to-float v5, v1

    .line 377
    .restart local v5       #drawX:F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mAlbumCountText:Ljava/lang/CharSequence;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mAlbumCountText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    move/from16 v0, v21

    int-to-float v11, v0

    sget-object v12, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sCountPaint:Landroid/text/TextPaint;

    move-object/from16 v6, p1

    move v10, v5

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 379
    .end local v5           #drawX:F
    :cond_d4
    return-void
.end method

.method protected onMeasure(II)V
    .registers 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 268
    sget v2, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sItemHeight:I

    const/high16 v3, 0x4000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 269
    .local v0, fixedHeightSpec:I
    invoke-super {p0, p1, v0}, Landroid/view/View;->onMeasure(II)V

    .line 271
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoGridItemView;->getMeasuredWidth()I

    move-result v1

    .line 272
    .local v1, measuredWidth:I
    sget v2, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sItemHeight:I

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/views/PhotoGridItemView;->setMeasuredDimension(II)V

    .line 274
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/PhotoGridItemView;->createPhotoRect()V

    .line 276
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mMeasuredListener:Lcom/google/android/apps/plus/views/PhotoGridItemView$OnMeasuredListener;

    if-eqz v2, :cond_20

    .line 277
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mMeasuredListener:Lcom/google/android/apps/plus/views/PhotoGridItemView$OnMeasuredListener;

    invoke-interface {v2, p0}, Lcom/google/android/apps/plus/views/PhotoGridItemView$OnMeasuredListener;->onMeasured(Landroid/view/View;)V

    .line 279
    :cond_20
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .registers 6
    .parameter "who"
    .parameter "what"
    .parameter "when"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2, p2, p3, p4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 124
    return-void
.end method

.method public setAlbumCount(Ljava/lang/Integer;)V
    .registers 7
    .parameter "albumCount"

    .prologue
    const/4 v4, 0x0

    .line 144
    if-nez p1, :cond_c

    .line 145
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mAlbumCountText:Ljava/lang/CharSequence;

    .line 146
    iput v4, p0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mAlbumCountWidth:I

    .line 159
    :goto_8
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoGridItemView;->invalidate()V

    .line 160
    return-void

    .line 148
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoGridItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 149
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_31

    .line 150
    const v1, 0x7f08009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mAlbumCountText:Ljava/lang/CharSequence;

    .line 155
    :goto_1f
    sget-object v1, Lcom/google/android/apps/plus/views/PhotoGridItemView;->sCountPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mAlbumCountText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mAlbumCountText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mAlbumCountWidth:I

    goto :goto_8

    .line 152
    :cond_31
    const/high16 v1, 0x7f0e

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mAlbumCountText:Ljava/lang/CharSequence;

    goto :goto_1f
.end method

.method public setAlbumName(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mAlbumNameText:Ljava/lang/CharSequence;

    .line 137
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoGridItemView;->invalidate()V

    .line 138
    return-void
.end method

.method public setCoverCount(II)V
    .registers 6
    .parameter "coverCount"
    .parameter "albumCount"

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x1

    .line 167
    if-ltz p1, :cond_6

    if-le p1, v1, :cond_7

    .line 189
    :cond_6
    :goto_6
    return-void

    .line 175
    :cond_7
    if-nez p2, :cond_19

    .line 176
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mMaxCoverCount:I

    .line 187
    :goto_f
    iget v0, p0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mMaxCoverCount:I

    new-array v0, v0, [Lcom/google/android/apps/plus/views/PhotoGridItemView$DrawableInfo;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mPhotoDrawables:[Lcom/google/android/apps/plus/views/PhotoGridItemView$DrawableInfo;

    .line 188
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/PhotoGridItemView;->createPhotoRect()V

    goto :goto_6

    .line 177
    :cond_19
    const/16 v0, 0xa

    if-ge p2, v0, :cond_24

    .line 178
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mMaxCoverCount:I

    goto :goto_f

    .line 179
    :cond_24
    const/16 v0, 0x14

    if-ge p2, v0, :cond_30

    .line 180
    const/4 v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mMaxCoverCount:I

    goto :goto_f

    .line 181
    :cond_30
    const/16 v0, 0x32

    if-ge p2, v0, :cond_3c

    .line 182
    const/4 v0, 0x3

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mMaxCoverCount:I

    goto :goto_f

    .line 184
    :cond_3c
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mMaxCoverCount:I

    goto :goto_f
.end method

.method public setMediaRefs([Lcom/google/android/apps/plus/api/MediaRef;)V
    .registers 4
    .parameter "refs"

    .prologue
    .line 229
    if-eqz p1, :cond_7

    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    .line 233
    :goto_6
    return-void

    .line 232
    :cond_7
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/views/PhotoGridItemView;->setTag(Ljava/lang/Object;)V

    goto :goto_6
.end method

.method public setOnMeasureListener(Lcom/google/android/apps/plus/views/PhotoGridItemView$OnMeasuredListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 258
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mMeasuredListener:Lcom/google/android/apps/plus/views/PhotoGridItemView$OnMeasuredListener;

    .line 259
    return-void
.end method

.method public setPhoto(Lcom/google/android/apps/plus/api/MediaRef;Landroid/graphics/Bitmap;)V
    .registers 11
    .parameter "ref"
    .parameter "photo"

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoGridItemView;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/google/android/apps/plus/api/MediaRef;

    move-object v0, v7

    check-cast v0, [Lcom/google/android/apps/plus/api/MediaRef;

    .line 199
    .local v0, allRefs:[Lcom/google/android/apps/plus/api/MediaRef;
    if-nez v0, :cond_c

    .line 220
    :cond_b
    :goto_b
    return-void

    .line 204
    :cond_c
    const/4 v3, 0x0

    .line 205
    .local v3, invalidate:Z
    const/4 v6, 0x0

    .line 206
    .local v6, position:I
    move-object v1, v0

    .local v1, arr$:[Lcom/google/android/apps/plus/api/MediaRef;
    array-length v5, v1

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_11
    if-ge v2, v5, :cond_2a

    aget-object v4, v1, v2

    .line 207
    .local v4, itemRef:Lcom/google/android/apps/plus/api/MediaRef;
    if-eqz p1, :cond_1d

    invoke-virtual {p1, v4}, Lcom/google/android/apps/plus/api/MediaRef;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    .line 208
    :cond_1d
    iget-object v7, p0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mPhoto:[Landroid/graphics/Bitmap;

    aput-object p2, v7, v6

    .line 209
    invoke-direct {p0, v6}, Lcom/google/android/apps/plus/views/PhotoGridItemView;->updateDrawableInfo(I)V

    .line 210
    const/4 v3, 0x1

    .line 213
    :cond_25
    add-int/lit8 v6, v6, 0x1

    .line 206
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 217
    .end local v4           #itemRef:Lcom/google/android/apps/plus/api/MediaRef;
    :cond_2a
    if-eqz v3, :cond_b

    .line 218
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoGridItemView;->invalidate()V

    goto :goto_b
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .registers 4
    .parameter "who"
    .parameter "what"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoGridItemView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 129
    return-void
.end method
