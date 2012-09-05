.class public Lcom/google/android/apps/plus/views/PhotoHomeViewItem;
.super Landroid/view/View;
.source "PhotoHomeViewItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;,
        Lcom/google/android/apps/plus/views/PhotoHomeViewItem$OnMeasuredListener;
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

.field private final mLoadingRect:[Landroid/graphics/Rect;

.field private mMaxCoverCount:I

.field private mMeasuredListener:Lcom/google/android/apps/plus/views/PhotoHomeViewItem$OnMeasuredListener;

.field private final mPhoto:[Landroid/graphics/Bitmap;

.field private final mPhotoRect:[Landroid/graphics/Rect;

.field private final mPhotoSize:[Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-array v0, v1, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mPhoto:[Landroid/graphics/Bitmap;

    .line 58
    new-array v0, v1, [Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mPhotoSize:[Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;

    .line 59
    new-array v0, v1, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mPhotoRect:[Landroid/graphics/Rect;

    .line 60
    new-array v0, v1, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mLoadingRect:[Landroid/graphics/Rect;

    .line 78
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->initialize()V

    .line 79
    return-void
.end method

.method private createPhotoRect()V
    .registers 35

    .prologue
    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->getMeasuredWidth()I

    move-result v18

    .line 282
    .local v18, measuredWidth:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_5
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ge v6, v0, :cond_2c

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mPhotoSize:[Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v26, v25, v6

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mPhotoRect:[Landroid/graphics/Rect;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v26, v25, v6

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mLoadingRect:[Landroid/graphics/Rect;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v26, v25, v6

    .line 282
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 288
    :cond_2c
    if-nez v18, :cond_2f

    .line 417
    :goto_2e
    return-void

    .line 293
    :cond_2f
    sget-object v25, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sLoadingImage:Landroid/graphics/Bitmap;

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 294
    .local v14, loadingHeight:I
    sget-object v25, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sLoadingImage:Landroid/graphics/Bitmap;

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 295
    .local v17, loadingWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mMaxCoverCount:I

    move/from16 v25, v0

    packed-switch v25, :pswitch_data_430

    goto :goto_2e

    .line 297
    :pswitch_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mPhotoSize:[Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    new-instance v27, Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;

    sget v28, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sItemHeight:I

    move-object/from16 v0, v27

    move/from16 v1, v18

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;-><init>(II)V

    aput-object v27, v25, v26

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mPhotoRect:[Landroid/graphics/Rect;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    new-instance v27, Landroid/graphics/Rect;

    const/16 v28, 0x0

    const/16 v29, 0x0

    sget v30, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sItemHeight:I

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v18

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v27, v25, v26

    .line 300
    sget v25, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sItemHeight:I

    sub-int v25, v25, v14

    div-int/lit8 v16, v25, 0x2

    .line 301
    .local v16, loadingTop:I
    sub-int v25, v18, v17

    div-int/lit8 v15, v25, 0x2

    .line 302
    .local v15, loadingLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mLoadingRect:[Landroid/graphics/Rect;

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

    .line 317
    .end local v15           #loadingLeft:I
    .end local v16           #loadingTop:I
    :pswitch_a1
    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0x29b

    move/from16 v25, v0

    move/from16 v0, v25

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v25, v0

    sget v26, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sItemInnerPadding:I

    sub-int v23, v25, v26

    .line 318
    .local v23, width1:I
    sub-int v25, v18, v23

    sget v26, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sItemInnerPadding:I

    sub-int v24, v25, v26

    .line 319
    .local v24, width2:I
    sget v25, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sItemInnerPadding:I

    add-int v19, v23, v25

    .line 320
    .local v19, photo2Left:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mPhotoSize:[Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    new-instance v27, Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;

    sget v28, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sItemHeight:I

    move-object/from16 v0, v27

    move/from16 v1, v23

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;-><init>(II)V

    aput-object v27, v25, v26

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mPhotoSize:[Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    new-instance v27, Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;

    sget v28, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sItemHeight:I

    move-object/from16 v0, v27

    move/from16 v1, v24

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;-><init>(II)V

    aput-object v27, v25, v26

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mPhotoRect:[Landroid/graphics/Rect;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    new-instance v27, Landroid/graphics/Rect;

    const/16 v28, 0x0

    const/16 v29, 0x0

    sget v30, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sItemHeight:I

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v23

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v27, v25, v26

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mPhotoRect:[Landroid/graphics/Rect;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    new-instance v27, Landroid/graphics/Rect;

    const/16 v28, 0x0

    sget v29, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sItemHeight:I

    move-object/from16 v0, v27

    move/from16 v1, v19

    move/from16 v2, v28

    move/from16 v3, v18

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v27, v25, v26

    .line 325
    sget v25, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sItemHeight:I

    sub-int v25, v25, v14

    div-int/lit8 v16, v25, 0x2

    .line 326
    .restart local v16       #loadingTop:I
    sub-int v25, v23, v17

    div-int/lit8 v7, v25, 0x2

    .line 327
    .local v7, loading1Left:I
    sub-int v25, v24, v17

    div-int/lit8 v25, v25, 0x2

    add-int v9, v19, v25

    .line 328
    .local v9, loading2Left:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mLoadingRect:[Landroid/graphics/Rect;

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

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mLoadingRect:[Landroid/graphics/Rect;

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

    .line 347
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

    sget v26, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sItemInnerPadding:I

    sub-int v23, v25, v26

    .line 348
    .restart local v23       #width1:I
    sub-int v25, v18, v23

    sget v26, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sItemInnerPadding:I

    sub-int v24, v25, v26

    .line 349
    .restart local v24       #width2:I
    sget v25, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sItemHeight:I

    div-int/lit8 v25, v25, 0x2

    sget v26, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sItemInnerPadding:I

    sub-int v5, v25, v26

    .line 350
    .local v5, height2:I
    sget v25, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sItemInnerPadding:I

    add-int v19, v23, v25

    .line 351
    .restart local v19       #photo2Left:I
    sget v25, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sItemInnerPadding:I

    add-int v21, v5, v25

    .line 352
    .local v21, photo3Top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mPhotoSize:[Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    new-instance v27, Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;

    sget v28, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sItemHeight:I

    move-object/from16 v0, v27

    move/from16 v1, v23

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;-><init>(II)V

    aput-object v27, v25, v26

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mPhotoSize:[Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mPhotoSize:[Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    new-instance v29, Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;

    move-object/from16 v0, v29

    move/from16 v1, v24

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;-><init>(II)V

    aput-object v29, v27, v28

    aput-object v29, v25, v26

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mPhotoRect:[Landroid/graphics/Rect;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    new-instance v27, Landroid/graphics/Rect;

    const/16 v28, 0x0

    const/16 v29, 0x0

    sget v30, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sItemHeight:I

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v23

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v27, v25, v26

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mPhotoRect:[Landroid/graphics/Rect;

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

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mPhotoRect:[Landroid/graphics/Rect;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    new-instance v27, Landroid/graphics/Rect;

    sget v28, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sItemHeight:I

    move-object/from16 v0, v27

    move/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v18

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v27, v25, v26

    .line 358
    sget v25, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sItemHeight:I

    sub-int v25, v25, v14

    div-int/lit8 v8, v25, 0x2

    .line 359
    .local v8, loading1Top:I
    sub-int v25, v5, v14

    div-int/lit8 v10, v25, 0x2

    .line 360
    .local v10, loading2Top:I
    add-int v25, v10, v5

    sget v26, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sItemInnerPadding:I

    add-int v12, v25, v26

    .line 361
    .local v12, loading3Top:I
    sub-int v25, v23, v17

    div-int/lit8 v7, v25, 0x2

    .line 362
    .restart local v7       #loading1Left:I
    sub-int v25, v24, v17

    div-int/lit8 v25, v25, 0x2

    add-int v9, v19, v25

    .line 363
    .restart local v9       #loading2Left:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mLoadingRect:[Landroid/graphics/Rect;

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

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mLoadingRect:[Landroid/graphics/Rect;

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

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mLoadingRect:[Landroid/graphics/Rect;

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

    .line 382
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

    sget v26, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sItemInnerPadding:I

    sub-int v23, v25, v26

    .line 383
    .restart local v23       #width1:I
    sub-int v25, v18, v23

    sget v26, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sItemInnerPadding:I

    sub-int v25, v25, v26

    sget v26, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sItemInnerPadding:I

    sub-int v25, v25, v26

    div-int/lit8 v24, v25, 0x2

    .line 385
    .restart local v24       #width2:I
    sget v25, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sItemHeight:I

    div-int/lit8 v25, v25, 0x2

    sget v26, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sItemInnerPadding:I

    sub-int v5, v25, v26

    .line 386
    .restart local v5       #height2:I
    sget v25, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sItemInnerPadding:I

    add-int v19, v23, v25

    .line 387
    .restart local v19       #photo2Left:I
    add-int v25, v19, v24

    sget v26, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sItemInnerPadding:I

    add-int v20, v25, v26

    .line 388
    .local v20, photo3Left:I
    sget v25, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sItemInnerPadding:I

    add-int v22, v5, v25

    .line 389
    .local v22, photo4Top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mPhotoSize:[Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    new-instance v27, Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;

    sget v28, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sItemHeight:I

    move-object/from16 v0, v27

    move/from16 v1, v23

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;-><init>(II)V

    aput-object v27, v25, v26

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mPhotoSize:[Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mPhotoSize:[Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mPhotoSize:[Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;

    move-object/from16 v29, v0

    const/16 v30, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mPhotoSize:[Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;

    move-object/from16 v31, v0

    const/16 v32, 0x4

    new-instance v33, Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;

    move-object/from16 v0, v33

    move/from16 v1, v24

    invoke-direct {v0, v1, v5}, Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;-><init>(II)V

    aput-object v33, v31, v32

    aput-object v33, v29, v30

    aput-object v33, v27, v28

    aput-object v33, v25, v26

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mPhotoRect:[Landroid/graphics/Rect;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    new-instance v27, Landroid/graphics/Rect;

    const/16 v28, 0x0

    const/16 v29, 0x0

    sget v30, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sItemHeight:I

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v23

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v27, v25, v26

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mPhotoRect:[Landroid/graphics/Rect;

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

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mPhotoRect:[Landroid/graphics/Rect;

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

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mPhotoRect:[Landroid/graphics/Rect;

    move-object/from16 v25, v0

    const/16 v26, 0x3

    new-instance v27, Landroid/graphics/Rect;

    add-int v28, v19, v24

    sget v29, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sItemHeight:I

    move-object/from16 v0, v27

    move/from16 v1, v19

    move/from16 v2, v22

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v27, v25, v26

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mPhotoRect:[Landroid/graphics/Rect;

    move-object/from16 v25, v0

    const/16 v26, 0x4

    new-instance v27, Landroid/graphics/Rect;

    sget v28, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sItemHeight:I

    move-object/from16 v0, v27

    move/from16 v1, v20

    move/from16 v2, v22

    move/from16 v3, v18

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v27, v25, v26

    .line 398
    sget v25, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sItemHeight:I

    sub-int v25, v25, v14

    div-int/lit8 v8, v25, 0x2

    .line 399
    .restart local v8       #loading1Top:I
    sub-int v25, v5, v14

    div-int/lit8 v10, v25, 0x2

    .line 400
    .restart local v10       #loading2Top:I
    add-int v25, v10, v5

    sget v26, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sItemInnerPadding:I

    add-int v13, v25, v26

    .line 401
    .local v13, loading4Top:I
    sub-int v25, v23, v17

    div-int/lit8 v7, v25, 0x2

    .line 402
    .restart local v7       #loading1Left:I
    sub-int v25, v24, v17

    div-int/lit8 v25, v25, 0x2

    add-int v9, v19, v25

    .line 403
    .restart local v9       #loading2Left:I
    add-int v25, v9, v24

    sget v26, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sItemInnerPadding:I

    add-int v11, v25, v26

    .line 404
    .local v11, loading3Left:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mLoadingRect:[Landroid/graphics/Rect;

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

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mLoadingRect:[Landroid/graphics/Rect;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mLoadingRect:[Landroid/graphics/Rect;

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

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mLoadingRect:[Landroid/graphics/Rect;

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

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mLoadingRect:[Landroid/graphics/Rect;

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

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mLoadingRect:[Landroid/graphics/Rect;

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

    .line 295
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
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 420
    sget-boolean v1, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sInitialized:Z

    if-nez v1, :cond_bb

    .line 421
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 423
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0200a8

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sLoadingImage:Landroid/graphics/Bitmap;

    .line 425
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sNamePaint:Landroid/text/TextPaint;

    .line 426
    sget-object v1, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sNamePaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 427
    sget-object v1, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sNamePaint:Landroid/text/TextPaint;

    const v2, 0x7f090030

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 428
    sget-object v1, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sNamePaint:Landroid/text/TextPaint;

    const v2, 0x7f0c0055

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 430
    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sCountPaint:Landroid/text/TextPaint;

    .line 431
    sget-object v1, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sCountPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 432
    sget-object v1, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sCountPaint:Landroid/text/TextPaint;

    const v2, 0x7f090031

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    .line 433
    sget-object v1, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sCountPaint:Landroid/text/TextPaint;

    const v2, 0x7f0c0056

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 435
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sInfoPaint:Landroid/graphics/Paint;

    .line 436
    sget-object v1, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sInfoPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 437
    sget-object v1, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sInfoPaint:Landroid/graphics/Paint;

    const v2, 0x7f09002f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 439
    const v1, 0x7f0c0058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sNameLeftPadding:I

    .line 441
    const v1, 0x7f0c0059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sNameRightPadding:I

    .line 443
    const v1, 0x7f0c005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sCountLeftPadding:I

    .line 445
    const v1, 0x7f0c005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sCountRightPadding:I

    .line 447
    const v1, 0x7f0c0053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sItemInnerPadding:I

    .line 450
    const v1, 0x7f0c0057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sInfoHeight:I

    .line 451
    const v1, 0x7f0c0052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sItemHeight:I

    .line 453
    sput-boolean v3, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sInitialized:Z

    .line 455
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_bb
    return-void
.end method


# virtual methods
.method public getMediaRefs()[Lcom/google/android/apps/plus/api/MediaRef;
    .registers 2

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/plus/api/MediaRef;

    check-cast v0, [Lcom/google/android/apps/plus/api/MediaRef;

    return-object v0
.end method

.method public getPhotoSize(I)Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;
    .registers 3
    .parameter "position"

    .prologue
    .line 194
    if-ltz p1, :cond_6

    iget v0, p0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mMaxCoverCount:I

    if-lt p1, v0, :cond_8

    .line 195
    :cond_6
    const/4 v0, 0x0

    .line 198
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mPhotoSize:[Lcom/google/android/apps/plus/views/PhotoHomeViewItem$Size;

    aget-object v0, v0, p1

    goto :goto_7
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 25
    .parameter "canvas"

    .prologue
    .line 230
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->getMeasuredWidth()I

    move-result v17

    .line 231
    .local v17, measuredWidth:I
    const/16 v21, 0x0

    .line 232
    .local v21, xPos:I
    const/16 v22, 0x0

    .line 235
    .local v22, yPos:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mMaxCoverCount:I

    if-ge v15, v3, :cond_3e

    .line 236
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mPhotoRect:[Landroid/graphics/Rect;

    aget-object v19, v3, v15

    .line 237
    .local v19, photoRect:Landroid/graphics/Rect;
    if-nez v19, :cond_1a

    .line 235
    :goto_17
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 241
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mPhoto:[Landroid/graphics/Bitmap;

    aget-object v18, v3, v15

    .line 242
    .local v18, photo:Landroid/graphics/Bitmap;
    if-eqz v18, :cond_2e

    .line 243
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_17

    .line 245
    :cond_2e
    sget-object v3, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sLoadingImage:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mLoadingRect:[Landroid/graphics/Rect;

    aget-object v6, v6, v15

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_17

    .line 250
    .end local v18           #photo:Landroid/graphics/Bitmap;
    .end local v19           #photoRect:Landroid/graphics/Rect;
    :cond_3e
    sget v3, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sItemHeight:I

    sget v5, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sInfoHeight:I

    sub-int v22, v3, v5

    .line 251
    move/from16 v0, v21

    int-to-float v4, v0

    move/from16 v0, v22

    int-to-float v5, v0

    move/from16 v0, v17

    int-to-float v6, v0

    sget v3, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sItemHeight:I

    int-to-float v7, v3

    sget-object v8, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sInfoPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 254
    sget-object v3, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sNamePaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    sget-object v5, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sNamePaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->ascent()F

    move-result v5

    sub-float v20, v3, v5

    .line 255
    .local v20, textHeight:F
    move/from16 v0, v22

    int-to-float v3, v0

    sget v5, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sInfoHeight:I

    int-to-float v5, v5

    sub-float v5, v5, v20

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    add-float/2addr v3, v5

    float-to-int v0, v3

    move/from16 v22, v0

    .line 256
    move/from16 v0, v22

    int-to-float v3, v0

    sget-object v5, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sNamePaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->ascent()F

    move-result v5

    sub-float/2addr v3, v5

    float-to-int v0, v3

    move/from16 v22, v0

    .line 258
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mAlbumNameText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_bb

    .line 259
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mAlbumCountWidth:I

    sub-int v3, v17, v3

    sget v5, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sNameLeftPadding:I

    sub-int/2addr v3, v5

    sget v5, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sNameRightPadding:I

    sub-int/2addr v3, v5

    sget v5, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sCountLeftPadding:I

    sub-int/2addr v3, v5

    sget v5, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sCountRightPadding:I

    sub-int v16, v3, v5

    .line 261
    .local v16, maxTextWidth:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mAlbumNameText:Ljava/lang/CharSequence;

    sget-object v5, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sNamePaint:Landroid/text/TextPaint;

    move/from16 v0, v16

    int-to-float v6, v0

    sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v3, v5, v6, v8}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 263
    .local v4, drawText:Ljava/lang/CharSequence;
    sget v3, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sNameLeftPadding:I

    int-to-float v7, v3

    .line 265
    .local v7, drawX:F
    const/4 v5, 0x0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move/from16 v0, v22

    int-to-float v8, v0

    sget-object v9, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sNamePaint:Landroid/text/TextPaint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 268
    .end local v4           #drawText:Ljava/lang/CharSequence;
    .end local v7           #drawX:F
    .end local v16           #maxTextWidth:I
    :cond_bb
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mAlbumCountText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_e3

    .line 269
    sget v3, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sCountRightPadding:I

    sub-int v3, v17, v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mAlbumCountWidth:I

    sub-int/2addr v3, v5

    int-to-float v7, v3

    .line 270
    .restart local v7       #drawX:F
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mAlbumCountText:Ljava/lang/CharSequence;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mAlbumCountText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v11

    move/from16 v0, v22

    int-to-float v13, v0

    sget-object v14, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sCountPaint:Landroid/text/TextPaint;

    move-object/from16 v8, p1

    move v12, v7

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 272
    .end local v7           #drawX:F
    :cond_e3
    return-void
.end method

.method protected onMeasure(II)V
    .registers 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 215
    sget v2, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sItemHeight:I

    const/high16 v3, 0x4000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 216
    .local v0, fixedHeightSpec:I
    invoke-super {p0, p1, v0}, Landroid/view/View;->onMeasure(II)V

    .line 218
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->getMeasuredWidth()I

    move-result v1

    .line 219
    .local v1, measuredWidth:I
    sget v2, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sItemHeight:I

    invoke-virtual {p0, v1, v2}, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->setMeasuredDimension(II)V

    .line 221
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->createPhotoRect()V

    .line 223
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mMeasuredListener:Lcom/google/android/apps/plus/views/PhotoHomeViewItem$OnMeasuredListener;

    if-eqz v2, :cond_20

    .line 224
    iget-object v2, p0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mMeasuredListener:Lcom/google/android/apps/plus/views/PhotoHomeViewItem$OnMeasuredListener;

    invoke-interface {v2, p0}, Lcom/google/android/apps/plus/views/PhotoHomeViewItem$OnMeasuredListener;->onMeasured(Landroid/view/View;)V

    .line 226
    :cond_20
    return-void
.end method

.method public setAlbumCount(Ljava/lang/Integer;)V
    .registers 7
    .parameter "albumCount"

    .prologue
    const/4 v4, 0x0

    .line 94
    if-nez p1, :cond_c

    .line 95
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mAlbumCountText:Ljava/lang/CharSequence;

    .line 96
    iput v4, p0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mAlbumCountWidth:I

    .line 109
    :goto_8
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->invalidate()V

    .line 110
    return-void

    .line 98
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 99
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_31

    .line 100
    const v1, 0x7f07007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mAlbumCountText:Ljava/lang/CharSequence;

    .line 105
    :goto_1f
    sget-object v1, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->sCountPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mAlbumCountText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mAlbumCountText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mAlbumCountWidth:I

    goto :goto_8

    .line 102
    :cond_31
    const/high16 v1, 0x7f0e

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mAlbumCountText:Ljava/lang/CharSequence;

    goto :goto_1f
.end method

.method public setAlbumName(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mAlbumNameText:Ljava/lang/CharSequence;

    .line 87
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->invalidate()V

    .line 88
    return-void
.end method

.method public setCoverCount(II)V
    .registers 6
    .parameter "coverCount"
    .parameter "albumCount"

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x1

    .line 117
    if-ltz p1, :cond_6

    if-le p1, v1, :cond_7

    .line 137
    :cond_6
    :goto_6
    return-void

    .line 125
    :cond_7
    if-nez p2, :cond_13

    .line 126
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mMaxCoverCount:I

    .line 136
    :goto_f
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->createPhotoRect()V

    goto :goto_6

    .line 127
    :cond_13
    const/16 v0, 0xa

    if-ge p2, v0, :cond_1e

    .line 128
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mMaxCoverCount:I

    goto :goto_f

    .line 129
    :cond_1e
    const/16 v0, 0x14

    if-ge p2, v0, :cond_2a

    .line 130
    const/4 v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mMaxCoverCount:I

    goto :goto_f

    .line 131
    :cond_2a
    const/16 v0, 0x32

    if-ge p2, v0, :cond_36

    .line 132
    const/4 v0, 0x3

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mMaxCoverCount:I

    goto :goto_f

    .line 134
    :cond_36
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mMaxCoverCount:I

    goto :goto_f
.end method

.method public setMediaRefs([Lcom/google/android/apps/plus/api/MediaRef;)V
    .registers 4
    .parameter "refs"

    .prologue
    .line 176
    if-eqz p1, :cond_7

    array-length v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    .line 180
    :goto_6
    return-void

    .line 179
    :cond_7
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->setTag(Ljava/lang/Object;)V

    goto :goto_6
.end method

.method public setOnMeasureListener(Lcom/google/android/apps/plus/views/PhotoHomeViewItem$OnMeasuredListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 205
    iput-object p1, p0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mMeasuredListener:Lcom/google/android/apps/plus/views/PhotoHomeViewItem$OnMeasuredListener;

    .line 206
    return-void
.end method

.method public setPhoto(Lcom/google/android/apps/plus/api/MediaRef;Landroid/graphics/Bitmap;)V
    .registers 11
    .parameter "ref"
    .parameter "photo"

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/google/android/apps/plus/api/MediaRef;

    move-object v0, v7

    check-cast v0, [Lcom/google/android/apps/plus/api/MediaRef;

    .line 147
    .local v0, allRefs:[Lcom/google/android/apps/plus/api/MediaRef;
    if-nez v0, :cond_c

    .line 167
    :cond_b
    :goto_b
    return-void

    .line 152
    :cond_c
    const/4 v3, 0x0

    .line 153
    .local v3, invalidate:Z
    const/4 v6, 0x0

    .line 154
    .local v6, position:I
    move-object v1, v0

    .local v1, arr$:[Lcom/google/android/apps/plus/api/MediaRef;
    array-length v5, v1

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_11
    if-ge v2, v5, :cond_27

    aget-object v4, v1, v2

    .line 155
    .local v4, itemRef:Lcom/google/android/apps/plus/api/MediaRef;
    if-eqz p1, :cond_1d

    invoke-virtual {p1, v4}, Lcom/google/android/apps/plus/api/MediaRef;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 156
    :cond_1d
    iget-object v7, p0, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->mPhoto:[Landroid/graphics/Bitmap;

    aput-object p2, v7, v6

    .line 157
    const/4 v3, 0x1

    .line 160
    :cond_22
    add-int/lit8 v6, v6, 0x1

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 164
    .end local v4           #itemRef:Lcom/google/android/apps/plus/api/MediaRef;
    :cond_27
    if-eqz v3, :cond_b

    .line 165
    invoke-virtual {p0}, Lcom/google/android/apps/plus/views/PhotoHomeViewItem;->invalidate()V

    goto :goto_b
.end method
