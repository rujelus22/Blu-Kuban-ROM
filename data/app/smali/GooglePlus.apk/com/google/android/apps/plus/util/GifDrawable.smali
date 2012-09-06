.class public Lcom/google/android/apps/plus/util/GifDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "GifDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Ljava/lang/Runnable;


# static fields
.field private static final NETSCAPE2_0:[B

.field private static sPaint:Landroid/graphics/Paint;

.field private static sScalePaint:Landroid/graphics/Paint;


# instance fields
.field private mActiveColorTable:[I

.field private mBackgroundColor:I

.field private mBackgroundIndex:I

.field private mBackup:[I

.field private mBackupSaved:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBlock:[B

.field private mBlockSize:I

.field private mCloned:Z

.field private mColorTableBuffer:[B

.field private mColors:[I

.field private final mData:[B

.field private mDisposalMethod:I

.field private mDone:Z

.field private mError:Z

.field private mFirstFrame:Landroid/graphics/Bitmap;

.field private mFrameCount:I

.field private mFrameDelay:I

.field private mFrameHeight:I

.field private mFrameWidth:I

.field private mFrameX:I

.field private mFrameY:I

.field private mGlobalColorTable:[I

.field private mGlobalColorTableSize:I

.field private mGlobalColorTableUsed:Z

.field private mHeight:I

.field private mInterlace:Z

.field private mIntrinsicHeight:I

.field private mIntrinsicWidth:I

.field private mLocalColorTable:[I

.field private mLocalColorTableSize:I

.field private mLocalColorTableUsed:Z

.field private mPixelStack:[B

.field private mPixels:[B

.field private mPrefix:[S

.field private mRunning:Z

.field private mScale:Z

.field private mScaleFactor:F

.field private final mStream:Ljava/io/ByteArrayInputStream;

.field private mSuffix:[B

.field private mTransparency:Z

.field private mTransparentColorIndex:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    const-string v0, "NETSCAPE2.0"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/util/GifDrawable;->NETSCAPE2_0:[B

    return-void
.end method

.method public constructor <init>([B)V
    .registers 6
    .parameter "data"

    .prologue
    const/16 v3, 0x1000

    const/16 v2, 0x100

    .line 119
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 85
    const/16 v1, 0x300

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mColorTableBuffer:[B

    .line 86
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mGlobalColorTable:[I

    .line 97
    new-array v1, v2, [B

    iput-object v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mBlock:[B

    .line 99
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mDisposalMethod:I

    .line 104
    new-array v1, v3, [S

    iput-object v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mPrefix:[S

    .line 105
    new-array v1, v3, [B

    iput-object v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mSuffix:[B

    .line 106
    const/16 v1, 0x1001

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mPixelStack:[B

    .line 120
    iput-object p1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mData:[B

    .line 121
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mStream:Ljava/io/ByteArrayInputStream;

    .line 122
    invoke-direct {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->readHeader()V

    .line 125
    iget-object v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mStream:Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 127
    iget-boolean v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mError:Z

    if-nez v1, :cond_61

    .line 128
    iget v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mIntrinsicWidth:I

    iget v2, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mIntrinsicHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 131
    iget v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mIntrinsicWidth:I

    iget v2, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mIntrinsicHeight:I

    mul-int v0, v1, v2

    .line 132
    .local v0, pixelCount:I
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mColors:[I

    .line 133
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mPixels:[B

    .line 135
    iget v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mIntrinsicHeight:I

    iput v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mWidth:I

    .line 136
    iget v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mIntrinsicHeight:I

    iput v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mHeight:I

    .line 139
    invoke-direct {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->readNextFrame()V

    .line 142
    .end local v0           #pixelCount:I
    :cond_61
    sget-object v1, Lcom/google/android/apps/plus/util/GifDrawable;->sPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_79

    .line 143
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/util/GifDrawable;->sPaint:Landroid/graphics/Paint;

    .line 144
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/google/android/apps/plus/util/GifDrawable;->sScalePaint:Landroid/graphics/Paint;

    .line 145
    sget-object v1, Lcom/google/android/apps/plus/util/GifDrawable;->sScalePaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 147
    :cond_79
    return-void
.end method

.method private backupFrame()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 618
    iget-boolean v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mBackupSaved:Z

    if-eqz v1, :cond_6

    .line 635
    :cond_5
    :goto_5
    return-void

    .line 622
    :cond_6
    iget-object v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mBackup:[I

    if-nez v1, :cond_14

    .line 623
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mBackup:[I

    .line 625
    :try_start_d
    iget-object v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mColors:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mBackup:[I
    :try_end_14
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_14} :catch_26

    .line 631
    :cond_14
    :goto_14
    iget-object v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mBackup:[I

    if-eqz v1, :cond_5

    .line 632
    iget-object v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mColors:[I

    iget-object v2, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mBackup:[I

    iget-object v3, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mColors:[I

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 633
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mBackupSaved:Z

    goto :goto_5

    .line 626
    :catch_26
    move-exception v0

    .line 627
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v1, "GifDrawable"

    const-string v2, "GifDrawable.backupFrame threw an OOME"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method private decodeBitmapData()V
    .registers 26

    .prologue
    .line 641
    const/16 v17, -0x1

    .line 642
    .local v17, nullCode:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/util/GifDrawable;->mFrameWidth:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/apps/plus/util/GifDrawable;->mFrameHeight:I

    move/from16 v24, v0

    mul-int v16, v23, v24

    .line 645
    .local v16, npix:I
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/util/GifDrawable;->read()I

    move-result v10

    .line 646
    .local v10, dataSize:I
    const/16 v23, 0x1

    shl-int v5, v23, v10

    .line 647
    .local v5, clear:I
    add-int/lit8 v12, v5, 0x1

    .line 648
    .local v12, endOfInformation:I
    add-int/lit8 v2, v5, 0x2

    .line 649
    .local v2, available:I
    move/from16 v18, v17

    .line 650
    .local v18, oldCode:I
    add-int/lit8 v8, v10, 0x1

    .line 651
    .local v8, codeSize:I
    const/16 v23, 0x1

    shl-int v23, v23, v8

    add-int/lit8 v7, v23, -0x1

    .line 652
    .local v7, codeMask:I
    const/4 v6, 0x0

    .local v6, code:I
    :goto_27
    if-ge v6, v5, :cond_41

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/util/GifDrawable;->mPrefix:[S

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-short v24, v23, v6

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/util/GifDrawable;->mSuffix:[B

    move-object/from16 v23, v0

    int-to-byte v0, v6

    move/from16 v24, v0

    aput-byte v24, v23, v6

    .line 652
    add-int/lit8 v6, v6, 0x1

    goto :goto_27

    .line 658
    :cond_41
    const/4 v11, 0x0

    .line 659
    .local v11, datum:I
    const/4 v4, 0x0

    .line 660
    .local v4, bits:I
    const/4 v9, 0x0

    .line 661
    .local v9, count:I
    const/4 v13, 0x0

    .line 662
    .local v13, first:I
    const/16 v21, 0x0

    .line 663
    .local v21, top:I
    const/16 v19, 0x0

    .line 664
    .local v19, pi:I
    const/4 v3, 0x0

    .line 665
    .local v3, bi:I
    const/4 v14, 0x0

    .local v14, i:I
    move/from16 v20, v19

    .end local v19           #pi:I
    .local v20, pi:I
    move/from16 v22, v21

    .end local v21           #top:I
    .local v22, top:I
    :goto_4f
    move/from16 v0, v16

    if-ge v14, v0, :cond_162

    .line 666
    if-nez v22, :cond_166

    .line 667
    if-ge v4, v8, :cond_8e

    .line 670
    if-nez v9, :cond_75

    .line 673
    invoke-direct/range {p0 .. p0}, Lcom/google/android/apps/plus/util/GifDrawable;->readBlock()I

    move-result v9

    .line 674
    if-gtz v9, :cond_74

    move/from16 v21, v22

    .line 742
    .end local v22           #top:I
    .restart local v21       #top:I
    :goto_61
    move/from16 v14, v20

    :goto_63
    move/from16 v0, v16

    if-ge v14, v0, :cond_161

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/util/GifDrawable;->mPixels:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-byte v24, v23, v14

    .line 742
    add-int/lit8 v14, v14, 0x1

    goto :goto_63

    .line 677
    .end local v21           #top:I
    .restart local v22       #top:I
    :cond_74
    const/4 v3, 0x0

    .line 679
    :cond_75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/util/GifDrawable;->mBlock:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v3

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    shl-int v23, v23, v4

    add-int v11, v11, v23

    .line 680
    add-int/lit8 v4, v4, 0x8

    .line 681
    add-int/lit8 v3, v3, 0x1

    .line 682
    add-int/lit8 v9, v9, -0x1

    .line 683
    goto :goto_4f

    .line 687
    :cond_8e
    and-int v6, v11, v7

    .line 688
    shr-int/2addr v11, v8

    .line 689
    sub-int/2addr v4, v8

    .line 692
    if-gt v6, v2, :cond_162

    if-ne v6, v12, :cond_99

    move/from16 v21, v22

    .line 693
    .end local v22           #top:I
    .restart local v21       #top:I
    goto :goto_61

    .line 695
    .end local v21           #top:I
    .restart local v22       #top:I
    :cond_99
    if-ne v6, v5, :cond_a8

    .line 697
    add-int/lit8 v8, v10, 0x1

    .line 698
    const/16 v23, 0x1

    shl-int v23, v23, v8

    add-int/lit8 v7, v23, -0x1

    .line 699
    add-int/lit8 v2, v5, 0x2

    .line 700
    move/from16 v18, v17

    .line 701
    goto :goto_4f

    .line 703
    :cond_a8
    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_c6

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/util/GifDrawable;->mPixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22           #top:I
    .restart local v21       #top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/util/GifDrawable;->mSuffix:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v6

    aput-byte v24, v23, v22

    .line 705
    move/from16 v18, v6

    .line 706
    move v13, v6

    move/from16 v22, v21

    .line 707
    .end local v21           #top:I
    .restart local v22       #top:I
    goto :goto_4f

    .line 709
    :cond_c6
    move v15, v6

    .line 710
    .local v15, inCode:I
    if-ne v6, v2, :cond_da

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/util/GifDrawable;->mPixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22           #top:I
    .restart local v21       #top:I
    int-to-byte v0, v13

    move/from16 v24, v0

    aput-byte v24, v23, v22

    .line 712
    move/from16 v6, v18

    move/from16 v22, v21

    .line 714
    .end local v21           #top:I
    .restart local v22       #top:I
    :cond_da
    :goto_da
    if-le v6, v5, :cond_f9

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/util/GifDrawable;->mPixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22           #top:I
    .restart local v21       #top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/util/GifDrawable;->mSuffix:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v6

    aput-byte v24, v23, v22

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/util/GifDrawable;->mPrefix:[S

    move-object/from16 v23, v0

    aget-short v6, v23, v6

    move/from16 v22, v21

    .end local v21           #top:I
    .restart local v22       #top:I
    goto :goto_da

    .line 718
    :cond_f9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/util/GifDrawable;->mSuffix:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v6

    move/from16 v0, v23

    and-int/lit16 v13, v0, 0xff

    .line 721
    const/16 v23, 0x1000

    move/from16 v0, v23

    if-lt v2, v0, :cond_10f

    move/from16 v21, v22

    .line 722
    .end local v22           #top:I
    .restart local v21       #top:I
    goto/16 :goto_61

    .line 725
    .end local v21           #top:I
    .restart local v22       #top:I
    :cond_10f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/util/GifDrawable;->mPixelStack:[B

    move-object/from16 v23, v0

    add-int/lit8 v21, v22, 0x1

    .end local v22           #top:I
    .restart local v21       #top:I
    int-to-byte v0, v13

    move/from16 v24, v0

    aput-byte v24, v23, v22

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/util/GifDrawable;->mPrefix:[S

    move-object/from16 v23, v0

    move/from16 v0, v18

    int-to-short v0, v0

    move/from16 v24, v0

    aput-short v24, v23, v2

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/util/GifDrawable;->mSuffix:[B

    move-object/from16 v23, v0

    int-to-byte v0, v13

    move/from16 v24, v0

    aput-byte v24, v23, v2

    .line 728
    add-int/lit8 v2, v2, 0x1

    .line 729
    and-int v23, v2, v7

    if-nez v23, :cond_143

    const/16 v23, 0x1000

    move/from16 v0, v23

    if-ge v2, v0, :cond_143

    .line 730
    add-int/lit8 v8, v8, 0x1

    .line 731
    add-int/2addr v7, v2

    .line 733
    :cond_143
    move/from16 v18, v15

    .line 737
    .end local v15           #inCode:I
    :goto_145
    add-int/lit8 v21, v21, -0x1

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/util/GifDrawable;->mPixels:[B

    move-object/from16 v23, v0

    add-int/lit8 v19, v20, 0x1

    .end local v20           #pi:I
    .restart local v19       #pi:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/apps/plus/util/GifDrawable;->mPixelStack:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v21

    aput-byte v24, v23, v20

    .line 739
    add-int/lit8 v14, v14, 0x1

    move/from16 v20, v19

    .end local v19           #pi:I
    .restart local v20       #pi:I
    move/from16 v22, v21

    .end local v21           #top:I
    .restart local v22       #top:I
    goto/16 :goto_4f

    .line 745
    .end local v22           #top:I
    .restart local v21       #top:I
    :cond_161
    return-void

    .end local v21           #top:I
    .restart local v22       #top:I
    :cond_162
    move/from16 v21, v22

    .end local v22           #top:I
    .restart local v21       #top:I
    goto/16 :goto_61

    .end local v21           #top:I
    .restart local v22       #top:I
    :cond_166
    move/from16 v21, v22

    .end local v22           #top:I
    .restart local v21       #top:I
    goto :goto_145
.end method

.method private disposeOfLastFrame()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 493
    iget v5, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mDisposalMethod:I

    packed-switch v5, :pswitch_data_42

    .line 523
    :cond_6
    :goto_6
    return-void

    .line 496
    :pswitch_7
    iput-boolean v8, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mBackupSaved:Z

    goto :goto_6

    .line 500
    :pswitch_a
    iget-boolean v5, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mBackupSaved:Z

    if-eqz v5, :cond_6

    .line 501
    iget-object v5, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mBackup:[I

    iget-object v6, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mColors:[I

    iget-object v7, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mBackup:[I

    array-length v7, v7

    invoke-static {v5, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6

    .line 506
    :pswitch_19
    iput-boolean v8, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mBackupSaved:Z

    .line 509
    const/4 v0, 0x0

    .line 510
    .local v0, color:I
    iget-boolean v5, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mTransparency:Z

    if-nez v5, :cond_22

    .line 511
    iget v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mBackgroundColor:I

    .line 513
    :cond_22
    const/4 v1, 0x0

    .local v1, i:I
    :goto_23
    iget v5, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mFrameHeight:I

    if-ge v1, v5, :cond_6

    .line 514
    iget v5, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mFrameY:I

    add-int/2addr v5, v1

    iget v6, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mIntrinsicWidth:I

    mul-int/2addr v5, v6

    iget v6, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mFrameX:I

    add-int v3, v5, v6

    .line 515
    .local v3, n1:I
    iget v5, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mFrameWidth:I

    add-int v4, v3, v5

    .line 516
    .local v4, n2:I
    move v2, v3

    .local v2, k:I
    :goto_36
    if-ge v2, v4, :cond_3f

    .line 517
    iget-object v5, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mColors:[I

    aput v0, v5, v2

    .line 516
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 513
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 493
    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_19
        :pswitch_a
    .end packed-switch
.end method

.method public static isGif([B)Z
    .registers 5
    .parameter "data"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 158
    array-length v2, p0

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1a

    aget-byte v2, p0, v1

    const/16 v3, 0x47

    if-ne v2, v3, :cond_1a

    aget-byte v2, p0, v0

    const/16 v3, 0x49

    if-ne v2, v3, :cond_1a

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    const/16 v3, 0x46

    if-ne v2, v3, :cond_1a

    :goto_19
    return v0

    :cond_1a
    move v0, v1

    goto :goto_19
.end method

.method private populateImageData()V
    .registers 22

    .prologue
    .line 753
    const/16 v18, 0x1

    .line 754
    .local v18, pass:I
    const/16 v14, 0x8

    .line 755
    .local v14, inc:I
    const/4 v13, 0x0

    .line 756
    .local v13, iline:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/plus/util/GifDrawable;->mFrameHeight:I

    if-ge v12, v1, :cond_82

    .line 757
    move/from16 v17, v12

    .line 758
    .local v17, line:I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/apps/plus/util/GifDrawable;->mInterlace:Z

    if-eqz v1, :cond_22

    .line 759
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/plus/util/GifDrawable;->mFrameHeight:I

    if-lt v13, v1, :cond_1f

    .line 760
    add-int/lit8 v18, v18, 0x1

    .line 761
    packed-switch v18, :pswitch_data_9e

    .line 777
    :cond_1f
    :goto_1f
    move/from16 v17, v13

    .line 778
    add-int/2addr v13, v14

    .line 780
    :cond_22
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/plus/util/GifDrawable;->mFrameY:I

    add-int v17, v17, v1

    .line 781
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/plus/util/GifDrawable;->mIntrinsicHeight:I

    move/from16 v0, v17

    if-ge v0, v1, :cond_7f

    .line 782
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/plus/util/GifDrawable;->mIntrinsicWidth:I

    mul-int v16, v17, v1

    .line 783
    .local v16, k:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/plus/util/GifDrawable;->mFrameX:I

    add-int v11, v16, v1

    .line 784
    .local v11, dx:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/plus/util/GifDrawable;->mFrameWidth:I

    add-int v10, v11, v1

    .line 785
    .local v10, dlim:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/plus/util/GifDrawable;->mIntrinsicWidth:I

    add-int v1, v1, v16

    if-ge v1, v10, :cond_50

    .line 786
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/plus/util/GifDrawable;->mIntrinsicWidth:I

    add-int v10, v16, v1

    .line 788
    :cond_50
    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/android/apps/plus/util/GifDrawable;->mFrameWidth:I

    mul-int v19, v12, v1

    .local v19, sx:I
    move/from16 v20, v19

    .line 789
    .end local v19           #sx:I
    .local v20, sx:I
    :goto_58
    if-ge v11, v10, :cond_7f

    .line 791
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/util/GifDrawable;->mPixels:[B

    add-int/lit8 v19, v20, 0x1

    .end local v20           #sx:I
    .restart local v19       #sx:I
    aget-byte v1, v1, v20

    and-int/lit16 v15, v1, 0xff

    .line 792
    .local v15, index:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/util/GifDrawable;->mActiveColorTable:[I

    aget v9, v1, v15

    .line 793
    .local v9, c:I
    if-eqz v9, :cond_72

    .line 794
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/util/GifDrawable;->mColors:[I

    aput v9, v1, v11

    .line 796
    :cond_72
    add-int/lit8 v11, v11, 0x1

    move/from16 v20, v19

    .line 797
    .end local v19           #sx:I
    .restart local v20       #sx:I
    goto :goto_58

    .line 763
    .end local v9           #c:I
    .end local v10           #dlim:I
    .end local v11           #dx:I
    .end local v15           #index:I
    .end local v16           #k:I
    .end local v20           #sx:I
    :pswitch_77
    const/4 v13, 0x4

    .line 764
    goto :goto_1f

    .line 766
    :pswitch_79
    const/4 v13, 0x2

    .line 767
    const/4 v14, 0x4

    .line 768
    goto :goto_1f

    .line 770
    :pswitch_7c
    const/4 v13, 0x1

    .line 771
    const/4 v14, 0x2

    .line 772
    goto :goto_1f

    .line 756
    :cond_7f
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 801
    .end local v17           #line:I
    :cond_82
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/apps/plus/util/GifDrawable;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/apps/plus/util/GifDrawable;->mColors:[I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/apps/plus/util/GifDrawable;->mIntrinsicWidth:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/google/android/apps/plus/util/GifDrawable;->mIntrinsicWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/google/android/apps/plus/util/GifDrawable;->mIntrinsicHeight:I

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 802
    return-void

    .line 761
    nop

    :pswitch_data_9e
    .packed-switch 0x2
        :pswitch_77
        :pswitch_79
        :pswitch_7c
    .end packed-switch
.end method

.method private read()I
    .registers 4

    .prologue
    .line 808
    const/4 v0, 0x0

    .line 810
    .local v0, curByte:I
    :try_start_1
    iget-object v2, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mStream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->read()I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_8

    move-result v0

    .line 814
    :goto_7
    return v0

    .line 811
    :catch_8
    move-exception v1

    .line 812
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mError:Z

    goto :goto_7
.end method

.method private readBitmap()V
    .registers 10

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 554
    invoke-direct {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->readShort()I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mFrameX:I

    .line 555
    invoke-direct {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->readShort()I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mFrameY:I

    .line 556
    invoke-direct {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->readShort()I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mFrameWidth:I

    .line 557
    invoke-direct {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->readShort()I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mFrameHeight:I

    .line 558
    invoke-direct {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->read()I

    move-result v0

    .line 559
    .local v0, packed:I
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_6f

    move v2, v3

    :goto_23
    iput-boolean v2, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mLocalColorTableUsed:Z

    .line 560
    const-wide/high16 v5, 0x4000

    and-int/lit8 v2, v0, 0x7

    add-int/lit8 v2, v2, 0x1

    int-to-double v7, v2

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-int v2, v5

    iput v2, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mLocalColorTableSize:I

    .line 565
    and-int/lit8 v2, v0, 0x40

    if-eqz v2, :cond_71

    move v2, v3

    :goto_38
    iput-boolean v2, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mInterlace:Z

    .line 566
    iget-boolean v2, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mLocalColorTableUsed:Z

    if-eqz v2, :cond_73

    .line 567
    iget-object v2, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mLocalColorTable:[I

    if-nez v2, :cond_48

    .line 568
    const/16 v2, 0x100

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mLocalColorTable:[I

    .line 570
    :cond_48
    iget-object v2, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mLocalColorTable:[I

    iget v5, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mLocalColorTableSize:I

    invoke-direct {p0, v2, v5}, Lcom/google/android/apps/plus/util/GifDrawable;->readColorTable([II)V

    .line 571
    iget-object v2, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mLocalColorTable:[I

    iput-object v2, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mActiveColorTable:[I

    .line 578
    :cond_53
    :goto_53
    const/4 v1, 0x0

    .line 579
    .local v1, savedColor:I
    iget-boolean v2, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mTransparency:Z

    if-eqz v2, :cond_64

    .line 580
    iget-object v2, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mActiveColorTable:[I

    iget v5, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mTransparentColorIndex:I

    aget v1, v2, v5

    .line 581
    iget-object v2, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mActiveColorTable:[I

    iget v5, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mTransparentColorIndex:I

    aput v4, v2, v5

    .line 584
    :cond_64
    iget-object v2, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mActiveColorTable:[I

    if-nez v2, :cond_6a

    .line 585
    iput-boolean v3, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mError:Z

    .line 588
    :cond_6a
    iget-boolean v2, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mError:Z

    if-eqz v2, :cond_80

    .line 611
    :cond_6e
    :goto_6e
    return-void

    .end local v1           #savedColor:I
    :cond_6f
    move v2, v4

    .line 559
    goto :goto_23

    :cond_71
    move v2, v4

    .line 565
    goto :goto_38

    .line 573
    :cond_73
    iget-object v2, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mGlobalColorTable:[I

    iput-object v2, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mActiveColorTable:[I

    .line 574
    iget v2, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mBackgroundIndex:I

    iget v5, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mTransparentColorIndex:I

    if-ne v2, v5, :cond_53

    .line 575
    iput v4, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mBackgroundColor:I

    goto :goto_53

    .line 592
    .restart local v1       #savedColor:I
    :cond_80
    invoke-direct {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->decodeBitmapData()V

    .line 594
    invoke-direct {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->skip()V

    .line 596
    iget-boolean v2, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mError:Z

    if-nez v2, :cond_6e

    .line 600
    iget v2, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mDisposalMethod:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_92

    .line 601
    invoke-direct {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->backupFrame()V

    .line 604
    :cond_92
    invoke-direct {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->populateImageData()V

    .line 606
    iget-boolean v2, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mTransparency:Z

    if-eqz v2, :cond_9f

    .line 607
    iget-object v2, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mActiveColorTable:[I

    iget v3, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mTransparentColorIndex:I

    aput v1, v2, v3

    .line 610
    :cond_9f
    iget v2, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mFrameCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mFrameCount:I

    goto :goto_6e
.end method

.method private readBlock()I
    .registers 7

    .prologue
    .line 823
    invoke-direct {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->read()I

    move-result v3

    iput v3, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mBlockSize:I

    .line 824
    const/4 v2, 0x0

    .line 825
    .local v2, n:I
    iget v3, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mBlockSize:I

    if-lez v3, :cond_25

    .line 827
    const/4 v0, 0x0

    .line 828
    .local v0, count:I
    :goto_c
    :try_start_c
    iget v3, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mBlockSize:I

    if-ge v2, v3, :cond_1e

    .line 829
    iget-object v3, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mStream:Ljava/io/ByteArrayInputStream;

    iget-object v4, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mBlock:[B

    iget v5, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mBlockSize:I

    sub-int/2addr v5, v2

    invoke-virtual {v3, v4, v2, v5}, Ljava/io/ByteArrayInputStream;->read([BII)I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1a} :catch_28

    move-result v0

    .line 830
    const/4 v3, -0x1

    if-ne v0, v3, :cond_26

    .line 838
    :cond_1e
    :goto_1e
    iget v3, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mBlockSize:I

    if-ge v2, v3, :cond_25

    .line 839
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mError:Z

    .line 842
    .end local v0           #count:I
    :cond_25
    return v2

    .line 833
    .restart local v0       #count:I
    :cond_26
    add-int/2addr v2, v0

    goto :goto_c

    .line 835
    :catch_28
    move-exception v1

    .line 836
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e
.end method

.method private readColorTable([II)V
    .registers 16
    .parameter "colorTable"
    .parameter "ncolors"

    .prologue
    .line 404
    mul-int/lit8 v8, p2, 0x3

    .line 405
    .local v8, nbytes:I
    const/4 v7, 0x0

    .line 407
    .local v7, n:I
    :try_start_3
    iget-object v10, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mStream:Ljava/io/ByteArrayInputStream;

    iget-object v11, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mColorTableBuffer:[B

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v8}, Ljava/io/ByteArrayInputStream;->read([BII)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b} :catch_12

    move-result v7

    .line 412
    :goto_c
    if-ge v7, v8, :cond_1b

    .line 413
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mError:Z

    .line 424
    :cond_11
    return-void

    .line 408
    :catch_12
    move-exception v1

    .line 409
    .local v1, e:Ljava/lang/Exception;
    const-string v10, "GifDrawable"

    const-string v11, "Cannot read color table"

    invoke-static {v10, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 415
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1b
    const/4 v3, 0x0

    .line 416
    .local v3, i:I
    const/4 v5, 0x0

    .local v5, j:I
    move v6, v5

    .end local v5           #j:I
    .local v6, j:I
    move v4, v3

    .line 417
    .end local v3           #i:I
    .local v4, i:I
    :goto_1f
    if-ge v4, p2, :cond_11

    .line 418
    iget-object v10, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mColorTableBuffer:[B

    add-int/lit8 v5, v6, 0x1

    .end local v6           #j:I
    .restart local v5       #j:I
    aget-byte v10, v10, v6

    and-int/lit16 v9, v10, 0xff

    .line 419
    .local v9, r:I
    iget-object v10, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mColorTableBuffer:[B

    add-int/lit8 v6, v5, 0x1

    .end local v5           #j:I
    .restart local v6       #j:I
    aget-byte v10, v10, v5

    and-int/lit16 v2, v10, 0xff

    .line 420
    .local v2, g:I
    iget-object v10, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mColorTableBuffer:[B

    add-int/lit8 v5, v6, 0x1

    .end local v6           #j:I
    .restart local v5       #j:I
    aget-byte v10, v10, v6

    and-int/lit16 v0, v10, 0xff

    .line 421
    .local v0, b:I
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    const/high16 v10, -0x100

    shl-int/lit8 v11, v9, 0x10

    or-int/2addr v10, v11

    shl-int/lit8 v11, v2, 0x8

    or-int/2addr v10, v11

    or-int/2addr v10, v0

    aput v10, p1, v4

    move v6, v5

    .end local v5           #j:I
    .restart local v6       #j:I
    move v4, v3

    .line 422
    .end local v3           #i:I
    .restart local v4       #i:I
    goto :goto_1f
.end method

.method private readGraphicControlExt()V
    .registers 3

    .prologue
    .line 529
    invoke-direct {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->read()I

    .line 531
    invoke-direct {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->read()I

    move-result v0

    .line 533
    .local v0, packed:I
    and-int/lit8 v1, v0, 0x1c

    shr-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mDisposalMethod:I

    .line 534
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_26

    const/4 v1, 0x1

    :goto_12
    iput-boolean v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mTransparency:Z

    .line 535
    invoke-direct {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->readShort()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mFrameDelay:I

    .line 536
    invoke-direct {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->read()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mTransparentColorIndex:I

    .line 538
    invoke-direct {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->read()I

    .line 539
    return-void

    .line 534
    :cond_26
    const/4 v1, 0x0

    goto :goto_12
.end method

.method private readHeader()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 360
    invoke-direct {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->read()I

    move-result v3

    const/16 v4, 0x47

    if-ne v3, v4, :cond_26

    move v0, v1

    .line 361
    .local v0, valid:Z
    :goto_b
    if-eqz v0, :cond_28

    invoke-direct {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->read()I

    move-result v3

    const/16 v4, 0x49

    if-ne v3, v4, :cond_28

    move v0, v1

    .line 362
    :goto_16
    if-eqz v0, :cond_2a

    invoke-direct {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->read()I

    move-result v3

    const/16 v4, 0x46

    if-ne v3, v4, :cond_2a

    move v0, v1

    .line 363
    :goto_21
    if-nez v0, :cond_2c

    .line 364
    iput-boolean v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mError:Z

    .line 379
    :cond_25
    :goto_25
    return-void

    .end local v0           #valid:Z
    :cond_26
    move v0, v2

    .line 360
    goto :goto_b

    .restart local v0       #valid:Z
    :cond_28
    move v0, v2

    .line 361
    goto :goto_16

    :cond_2a
    move v0, v2

    .line 362
    goto :goto_21

    .line 369
    :cond_2c
    invoke-direct {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->read()I

    .line 370
    invoke-direct {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->read()I

    .line 371
    invoke-direct {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->read()I

    .line 373
    invoke-direct {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->readLogicalScreenDescriptor()V

    .line 375
    iget-boolean v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mGlobalColorTableUsed:Z

    if-eqz v1, :cond_25

    iget-boolean v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mError:Z

    if-nez v1, :cond_25

    .line 376
    iget-object v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mGlobalColorTable:[I

    iget v2, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mGlobalColorTableSize:I

    invoke-direct {p0, v1, v2}, Lcom/google/android/apps/plus/util/GifDrawable;->readColorTable([II)V

    .line 377
    iget-object v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mGlobalColorTable:[I

    iget v2, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mBackgroundIndex:I

    aget v1, v1, v2

    iput v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mBackgroundColor:I

    goto :goto_25
.end method

.method private readLogicalScreenDescriptor()V
    .registers 4

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->readShort()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mFrameWidth:I

    iput v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mIntrinsicWidth:I

    .line 387
    invoke-direct {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->readShort()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mFrameHeight:I

    iput v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mIntrinsicHeight:I

    .line 389
    invoke-direct {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->read()I

    move-result v0

    .line 390
    .local v0, packed:I
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_2b

    const/4 v1, 0x1

    :goto_19
    iput-boolean v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mGlobalColorTableUsed:Z

    .line 393
    const/4 v1, 0x2

    and-int/lit8 v2, v0, 0x7

    shl-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mGlobalColorTableSize:I

    .line 394
    invoke-direct {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->read()I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mBackgroundIndex:I

    .line 395
    invoke-direct {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->read()I

    .line 396
    return-void

    .line 390
    :cond_2b
    const/4 v1, 0x0

    goto :goto_19
.end method

.method private readNetscapeExtension()V
    .registers 2

    .prologue
    .line 546
    :cond_0
    invoke-direct {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->readBlock()I

    .line 547
    iget v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mBlockSize:I

    if-lez v0, :cond_b

    iget-boolean v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mError:Z

    if-eqz v0, :cond_0

    .line 548
    :cond_b
    return-void
.end method

.method private readNextFrame()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 433
    invoke-direct {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->disposeOfLastFrame()V

    .line 435
    iput v3, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mDisposalMethod:I

    .line 436
    iput-boolean v3, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mTransparency:Z

    .line 437
    iput v3, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mFrameDelay:I

    .line 438
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mLocalColorTable:[I

    .line 441
    :goto_e
    invoke-direct {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->read()I

    move-result v0

    .line 442
    .local v0, code:I
    sparse-switch v0, :sswitch_data_58

    .line 483
    iput-boolean v5, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mError:Z

    .line 484
    :goto_17
    return-void

    .line 444
    :sswitch_18
    invoke-direct {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->read()I

    move-result v0

    .line 445
    sparse-switch v0, :sswitch_data_66

    .line 470
    invoke-direct {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->skip()V

    goto :goto_e

    .line 447
    :sswitch_23
    invoke-direct {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->readGraphicControlExt()V

    goto :goto_e

    .line 450
    :sswitch_27
    invoke-direct {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->readBlock()I

    .line 451
    const/4 v2, 0x1

    .line 452
    .local v2, netscape:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2c
    sget-object v3, Lcom/google/android/apps/plus/util/GifDrawable;->NETSCAPE2_0:[B

    array-length v3, v3

    if-ge v1, v3, :cond_3f

    .line 453
    iget-object v3, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mBlock:[B

    aget-byte v3, v3, v1

    sget-object v4, Lcom/google/android/apps/plus/util/GifDrawable;->NETSCAPE2_0:[B

    aget-byte v4, v4, v1

    if-eq v3, v4, :cond_3c

    .line 454
    const/4 v2, 0x0

    .line 452
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 457
    :cond_3f
    if-eqz v2, :cond_45

    .line 458
    invoke-direct {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->readNetscapeExtension()V

    goto :goto_e

    .line 460
    :cond_45
    invoke-direct {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->skip()V

    goto :goto_e

    .line 464
    .end local v1           #i:I
    .end local v2           #netscape:Z
    :sswitch_49
    invoke-direct {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->skip()V

    goto :goto_e

    .line 467
    :sswitch_4d
    invoke-direct {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->skip()V

    goto :goto_e

    .line 475
    :sswitch_51
    invoke-direct {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->readBitmap()V

    goto :goto_17

    .line 479
    :sswitch_55
    iput-boolean v5, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mDone:Z

    goto :goto_17

    .line 442
    :sswitch_data_58
    .sparse-switch
        0x21 -> :sswitch_18
        0x2c -> :sswitch_51
        0x3b -> :sswitch_55
    .end sparse-switch

    .line 445
    :sswitch_data_66
    .sparse-switch
        0x1 -> :sswitch_4d
        0xf9 -> :sswitch_23
        0xfe -> :sswitch_49
        0xff -> :sswitch_27
    .end sparse-switch
.end method

.method private readShort()I
    .registers 3

    .prologue
    .line 850
    invoke-direct {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->read()I

    move-result v0

    invoke-direct {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method private reset()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 350
    iget-object v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mStream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 351
    iput-boolean v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mBackupSaved:Z

    .line 352
    iput v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mFrameCount:I

    .line 353
    iput v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mDisposalMethod:I

    .line 354
    return-void
.end method

.method private skip()V
    .registers 2

    .prologue
    .line 858
    :cond_0
    invoke-direct {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->readBlock()I

    .line 859
    iget v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mBlockSize:I

    if-lez v0, :cond_b

    iget-boolean v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mError:Z

    if-eqz v0, :cond_0

    .line 860
    :cond_b
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 6
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 215
    iget-boolean v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mError:Z

    if-nez v0, :cond_d

    iget v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mWidth:I

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mHeight:I

    if-nez v0, :cond_e

    .line 235
    :cond_d
    :goto_d
    return-void

    .line 219
    :cond_e
    iget-boolean v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mScale:Z

    if-eqz v0, :cond_36

    .line 220
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 221
    iget v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mScaleFactor:F

    iget v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mScaleFactor:F

    invoke-virtual {p1, v0, v1, v2, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 222
    iget-object v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/google/android/apps/plus/util/GifDrawable;->sScalePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 223
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 228
    :goto_26
    iget-boolean v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mRunning:Z

    if-eqz v0, :cond_3e

    .line 229
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mFrameDelay:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, p0, v0, v1}, Lcom/google/android/apps/plus/util/GifDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    goto :goto_d

    .line 225
    :cond_36
    iget-object v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Lcom/google/android/apps/plus/util/GifDrawable;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_26

    .line 230
    :cond_3e
    iget-boolean v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mDone:Z

    if-nez v0, :cond_46

    .line 231
    invoke-virtual {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->start()V

    goto :goto_d

    .line 233
    :cond_46
    invoke-virtual {p0, p0}, Lcom/google/android/apps/plus/util/GifDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    goto :goto_d
.end method

.method public getFirstFrame()Landroid/graphics/Bitmap;
    .registers 5

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mFirstFrame:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mError:Z

    if-nez v0, :cond_2a

    iget v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mWidth:I

    if-lez v0, :cond_2a

    iget v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mHeight:I

    if-lez v0, :cond_2a

    .line 166
    iget-boolean v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mScale:Z

    if-eqz v0, :cond_2d

    .line 167
    iget v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mWidth:I

    iget v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mFirstFrame:Landroid/graphics/Bitmap;

    .line 168
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mFirstFrame:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/util/GifDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 174
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mFirstFrame:Landroid/graphics/Bitmap;

    return-object v0

    .line 170
    :cond_2d
    iget-object v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mColors:[I

    iget v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mIntrinsicWidth:I

    iget v2, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mIntrinsicHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mFirstFrame:Landroid/graphics/Bitmap;

    goto :goto_2a
.end method

.method public getIntrinsicHeight()I
    .registers 2

    .prologue
    .line 250
    iget v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mIntrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .registers 2

    .prologue
    .line 242
    iget v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mIntrinsicWidth:I

    return v0
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method public isRunning()Z
    .registers 2

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mRunning:Z

    return v0
.end method

.method public newDrawable()Lcom/google/android/apps/plus/util/GifDrawable;
    .registers 3

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mCloned:Z

    if-nez v0, :cond_8

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mCloned:Z

    .line 154
    .end local p0
    :goto_7
    return-object p0

    .restart local p0
    :cond_8
    new-instance v0, Lcom/google/android/apps/plus/util/GifDrawable;

    iget-object v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mData:[B

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/util/GifDrawable;-><init>([B)V

    move-object p0, v0

    goto :goto_7
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .registers 5
    .parameter "bounds"

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 183
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mWidth:I

    .line 184
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mHeight:I

    .line 185
    iget v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mWidth:I

    iget v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mIntrinsicWidth:I

    if-eq v0, v1, :cond_3d

    iget v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mHeight:I

    iget v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mIntrinsicHeight:I

    if-eq v0, v1, :cond_3d

    const/4 v0, 0x1

    :goto_1c
    iput-boolean v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mScale:Z

    .line 186
    iget-boolean v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mScale:Z

    if-eqz v0, :cond_36

    .line 187
    iget v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mIntrinsicWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mIntrinsicHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mScaleFactor:F

    .line 190
    :cond_36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mFirstFrame:Landroid/graphics/Bitmap;

    .line 191
    invoke-direct {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->reset()V

    .line 192
    return-void

    .line 185
    :cond_3d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public run()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 319
    iget-boolean v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mDone:Z

    if-eqz v0, :cond_f

    .line 322
    iget v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mFrameCount:I

    if-le v0, v1, :cond_2e

    .line 323
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mDone:Z

    .line 324
    invoke-direct {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->reset()V

    .line 333
    :cond_f
    invoke-direct {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->readNextFrame()V

    .line 334
    iget-boolean v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mDone:Z

    if-nez v0, :cond_22

    iget v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mFrameDelay:I

    if-nez v0, :cond_22

    iget v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mDisposalMethod:I

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mDisposalMethod:I

    if-eq v0, v1, :cond_f

    .line 338
    :cond_22
    iget v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mFrameDelay:I

    if-nez v0, :cond_2a

    .line 339
    const/16 v0, 0xf

    iput v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mFrameDelay:I

    .line 342
    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->invalidateSelf()V

    .line 343
    :goto_2d
    return-void

    .line 326
    :cond_2e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->stop()V

    goto :goto_2d
.end method

.method public setAlpha(I)V
    .registers 2
    .parameter "alpha"

    .prologue
    .line 266
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2
    .parameter "cf"

    .prologue
    .line 273
    return-void
.end method

.method public setVisible(ZZ)Z
    .registers 4
    .parameter "visible"
    .parameter "restart"

    .prologue
    .line 199
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 200
    .local v0, changed:Z
    if-eqz p1, :cond_e

    .line 201
    if-nez v0, :cond_a

    if-eqz p2, :cond_d

    .line 202
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->start()V

    .line 207
    :cond_d
    :goto_d
    return v0

    .line 205
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->stop()V

    goto :goto_d
.end method

.method public start()V
    .registers 2

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_c

    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mRunning:Z

    .line 290
    invoke-virtual {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->run()V

    .line 292
    :cond_c
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/google/android/apps/plus/util/GifDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 300
    invoke-virtual {p0, p0}, Lcom/google/android/apps/plus/util/GifDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 302
    :cond_9
    return-void
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .registers 3
    .parameter "what"

    .prologue
    .line 309
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/util/GifDrawable;->mRunning:Z

    .line 311
    return-void
.end method
