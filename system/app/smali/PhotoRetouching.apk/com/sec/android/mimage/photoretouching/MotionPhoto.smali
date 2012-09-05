.class public Lcom/sec/android/mimage/photoretouching/MotionPhoto;
.super Ljava/lang/Object;
.source "MotionPhoto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$sec$android$mimage$photoretouching$MotionPhoto$FLAG_MOTION:[I


# instance fields
.field private center_x:I

.field private center_y:I

.field private flag_cal_sl:Z

.field private gh_axis_x:F

.field private gh_axis_y:F

.field private gh_flag_rotation:Z

.field private gh_ghost_num:I

.field private gh_trans_x:F

.field private gh_trans_y:F

.field private lp_step_num:I

.field private lp_trans_x:F

.field private lp_trans_y:F

.field private mBdry:Landroid/graphics/Rect;

.field private mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

.field private mRandom:Ljava/util/Random;

.field private mode:Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;

.field private pre_gh_ghost_num:I

.field private pre_lp_step_num:I

.field private pre_lp_trans_x:F

.field private pre_lp_trans_y:F

.field private pre_rp_radial_num:I

.field private rp_radial_num:I

.field private side_mask:[B

.field private sl_axis_x:F

.field private sl_axis_y:F

.field private sl_flag_rotation:Z

.field private sl_mdegree:F

.field private sl_trans_x:F

.field private sl_trans_y:F

.field private start_x:F

.field private start_y:F


# direct methods
.method static synthetic $SWITCH_TABLE$com$sec$android$mimage$photoretouching$MotionPhoto$FLAG_MOTION()[I
    .registers 3

    .prologue
    .line 10
    sget-object v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->$SWITCH_TABLE$com$sec$android$mimage$photoretouching$MotionPhoto$FLAG_MOTION:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;->values()[Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;->BG_LINEAR_PAN:Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_39

    :goto_15
    :try_start_15
    sget-object v1, Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;->BG_RADIAL_PAN:Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_37

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;->FG_GHOST:Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_35

    :goto_27
    :try_start_27
    sget-object v1, Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;->FG_SPEED_LINE:Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_33

    :goto_30
    sput-object v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->$SWITCH_TABLE$com$sec$android$mimage$photoretouching$MotionPhoto$FLAG_MOTION:[I

    goto :goto_4

    :catch_33
    move-exception v1

    goto :goto_30

    :catch_35
    move-exception v1

    goto :goto_27

    :catch_37
    move-exception v1

    goto :goto_1e

    :catch_39
    move-exception v1

    goto :goto_15
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 728
    const-string v0, "MotionPhoto_JNI"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->clear()V

    .line 76
    return-void
.end method

.method public static native LinearPanning([I[B[IIIFFI)V
.end method

.method public static native MakeGhostRot([I[B[IIIIIILandroid/graphics/Rect;)I
.end method

.method public static native MakeGhostTrans([I[B[IIIIIILandroid/graphics/Rect;)I
.end method

.method public static native MakeSLineRot([I[B[III[BFIILandroid/graphics/Rect;)V
.end method

.method public static native MakeSLineTrans([I[B[III[BIILandroid/graphics/Rect;)V
.end method

.method public static native MakeSLineTransScaled([I[B[III[BIILandroid/graphics/Rect;F)V
.end method

.method public static native RadialPanning([I[B[IIIIIII)I
.end method


# virtual methods
.method public FirstRun([I[B[III)V
    .registers 25
    .parameter "in"
    .parameter "mask"
    .parameter "out"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 274
    const/16 v1, 0x8

    new-array v10, v1, [I

    .line 275
    .local v10, dir_num:[I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_5
    const/16 v1, 0x8

    if-lt v11, v1, :cond_3e

    .line 279
    const/16 v16, -0x1

    .line 280
    .local v16, max_v:I
    const/4 v14, -0x1

    .line 282
    .local v14, loc:I
    const/4 v11, 0x1

    :goto_d
    add-int/lit8 v1, p5, -0x1

    if-lt v11, v1, :cond_44

    .line 360
    const/4 v15, 0x0

    .line 361
    .local v15, max_loc:I
    const/4 v1, 0x0

    aget v16, v10, v1

    .line 362
    const/4 v11, 0x1

    :goto_16
    const/16 v1, 0x8

    if-lt v11, v1, :cond_28b

    .line 368
    packed-switch v15, :pswitch_data_2c4

    .line 394
    const/4 v6, 0x0

    .local v6, tr_x:F
    const/4 v7, 0x0

    .line 398
    .local v7, tr_y:F
    :goto_1f
    move-object/from16 v0, p0

    iput v6, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->lp_trans_x:F

    .line 399
    move-object/from16 v0, p0

    iput v7, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->lp_trans_y:F

    .line 400
    const/4 v1, 0x5

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->lp_step_num:I

    .line 401
    const/4 v8, 0x5

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-static/range {v1 .. v8}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->LinearPanning([I[B[IIIFFI)V

    .line 403
    const/4 v10, 0x0

    check-cast v10, [I

    .line 404
    return-void

    .line 276
    .end local v6           #tr_x:F
    .end local v7           #tr_y:F
    .end local v14           #loc:I
    .end local v15           #max_loc:I
    .end local v16           #max_v:I
    :cond_3e
    const/4 v1, 0x0

    aput v1, v10, v11

    .line 275
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 283
    .restart local v14       #loc:I
    .restart local v16       #max_v:I
    :cond_44
    const/4 v13, 0x1

    .local v13, j:I
    :goto_45
    add-int/lit8 v1, p4, -0x2

    if-lt v13, v1, :cond_4c

    .line 282
    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    .line 284
    :cond_4c
    mul-int v1, v11, p4

    add-int v12, v1, v13

    .line 285
    .local v12, ind:I
    aget-byte v1, p2, v12

    const/4 v2, 0x1

    if-ne v1, v2, :cond_168

    add-int/lit8 v1, v12, 0x1

    aget-byte v1, p2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_168

    .line 287
    add-int/lit8 v1, v11, -0x1

    mul-int v1, v1, p4

    add-int/2addr v1, v13

    aget v17, p1, v1

    .line 288
    .local v17, v1:I
    add-int/lit8 v1, v11, 0x1

    mul-int v1, v1, p4

    add-int/2addr v1, v13

    aget v18, p1, v1

    .line 289
    .local v18, v2:I
    const/high16 v1, 0xff

    and-int v1, v1, v17

    const/high16 v2, 0xff

    and-int v2, v2, v18

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const v2, 0xff00

    and-int v2, v2, v17

    const v3, 0xff00

    and-int v3, v3, v18

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    move/from16 v0, v17

    and-int/lit16 v2, v0, 0xff

    move/from16 v0, v18

    and-int/lit16 v3, v0, 0xff

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int v9, v1, v2

    .line 290
    .local v9, can_v:I
    move/from16 v0, v16

    if-le v9, v0, :cond_9d

    .line 291
    move/from16 v16, v9

    .line 292
    const/4 v14, 0x0

    .line 295
    :cond_9d
    mul-int v1, v11, p4

    add-int/2addr v1, v13

    add-int/lit8 v1, v1, -0x1

    aget v17, p1, v1

    .line 296
    mul-int v1, v11, p4

    add-int/2addr v1, v13

    add-int/lit8 v1, v1, 0x1

    aget v18, p1, v1

    .line 297
    const/high16 v1, 0xff

    and-int v1, v1, v17

    const/high16 v2, 0xff

    and-int v2, v2, v18

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const v2, 0xff00

    and-int v2, v2, v17

    const v3, 0xff00

    and-int v3, v3, v18

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    move/from16 v0, v17

    and-int/lit16 v2, v0, 0xff

    move/from16 v0, v18

    and-int/lit16 v3, v0, 0xff

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int v9, v1, v2

    .line 298
    move/from16 v0, v16

    if-le v9, v0, :cond_de

    .line 299
    move/from16 v16, v9

    .line 300
    const/4 v14, 0x1

    .line 303
    :cond_de
    add-int/lit8 v1, v11, -0x1

    mul-int v1, v1, p4

    add-int/2addr v1, v13

    add-int/lit8 v1, v1, -0x1

    aget v17, p1, v1

    .line 304
    add-int/lit8 v1, v11, 0x1

    mul-int v1, v1, p4

    add-int/2addr v1, v13

    add-int/lit8 v1, v1, 0x1

    aget v18, p1, v1

    .line 305
    const/high16 v1, 0xff

    and-int v1, v1, v17

    const/high16 v2, 0xff

    and-int v2, v2, v18

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const v2, 0xff00

    and-int v2, v2, v17

    const v3, 0xff00

    and-int v3, v3, v18

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    move/from16 v0, v17

    and-int/lit16 v2, v0, 0xff

    move/from16 v0, v18

    and-int/lit16 v3, v0, 0xff

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int v9, v1, v2

    .line 306
    move/from16 v0, v16

    if-le v9, v0, :cond_123

    .line 307
    move/from16 v16, v9

    .line 308
    const/4 v14, 0x2

    .line 311
    :cond_123
    add-int/lit8 v1, v11, -0x1

    mul-int v1, v1, p4

    add-int/2addr v1, v13

    add-int/lit8 v1, v1, 0x1

    aget v17, p1, v1

    .line 312
    add-int/lit8 v1, v11, 0x1

    mul-int v1, v1, p4

    add-int/2addr v1, v13

    add-int/lit8 v1, v1, -0x1

    aget v18, p1, v1

    .line 313
    const/high16 v1, 0xff

    and-int v1, v1, v17

    const/high16 v2, 0xff

    and-int v2, v2, v18

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const v2, 0xff00

    and-int v2, v2, v17

    const v3, 0xff00

    and-int v3, v3, v18

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    move/from16 v0, v17

    and-int/lit16 v2, v0, 0xff

    move/from16 v0, v18

    and-int/lit16 v3, v0, 0xff

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int v9, v1, v2

    .line 314
    move/from16 v0, v16

    if-le v9, v0, :cond_168

    .line 315
    move/from16 v16, v9

    .line 316
    const/4 v14, 0x3

    .line 319
    .end local v9           #can_v:I
    .end local v17           #v1:I
    .end local v18           #v2:I
    :cond_168
    aget-byte v1, p2, v12

    const/4 v2, 0x1

    if-eq v1, v2, :cond_27e

    add-int/lit8 v1, v12, 0x1

    aget-byte v1, p2, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_27e

    .line 321
    add-int/lit8 v1, v11, -0x1

    mul-int v1, v1, p4

    add-int/2addr v1, v13

    add-int/lit8 v1, v1, 0x1

    aget v17, p1, v1

    .line 322
    .restart local v17       #v1:I
    add-int/lit8 v1, v11, 0x1

    mul-int v1, v1, p4

    add-int/2addr v1, v13

    add-int/lit8 v1, v1, 0x1

    aget v18, p1, v1

    .line 323
    .restart local v18       #v2:I
    const/high16 v1, 0xff

    and-int v1, v1, v17

    const/high16 v2, 0xff

    and-int v2, v2, v18

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const v2, 0xff00

    and-int v2, v2, v17

    const v3, 0xff00

    and-int v3, v3, v18

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    move/from16 v0, v17

    and-int/lit16 v2, v0, 0xff

    move/from16 v0, v18

    and-int/lit16 v3, v0, 0xff

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int v9, v1, v2

    .line 324
    .restart local v9       #can_v:I
    move/from16 v0, v16

    if-le v9, v0, :cond_1b9

    .line 325
    move/from16 v16, v9

    .line 326
    const/4 v14, 0x4

    .line 329
    :cond_1b9
    mul-int v1, v11, p4

    add-int/2addr v1, v13

    aget v17, p1, v1

    .line 330
    mul-int v1, v11, p4

    add-int/2addr v1, v13

    add-int/lit8 v1, v1, 0x2

    aget v18, p1, v1

    .line 331
    const/high16 v1, 0xff

    and-int v1, v1, v17

    const/high16 v2, 0xff

    and-int v2, v2, v18

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const v2, 0xff00

    and-int v2, v2, v17

    const v3, 0xff00

    and-int v3, v3, v18

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    move/from16 v0, v17

    and-int/lit16 v2, v0, 0xff

    move/from16 v0, v18

    and-int/lit16 v3, v0, 0xff

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int v9, v1, v2

    .line 332
    move/from16 v0, v16

    if-le v9, v0, :cond_1f8

    .line 333
    move/from16 v16, v9

    .line 334
    const/4 v14, 0x5

    .line 337
    :cond_1f8
    add-int/lit8 v1, v11, -0x1

    mul-int v1, v1, p4

    add-int/2addr v1, v13

    aget v17, p1, v1

    .line 338
    add-int/lit8 v1, v11, 0x1

    mul-int v1, v1, p4

    add-int/2addr v1, v13

    add-int/lit8 v1, v1, 0x2

    aget v18, p1, v1

    .line 339
    const/high16 v1, 0xff

    and-int v1, v1, v17

    const/high16 v2, 0xff

    and-int v2, v2, v18

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const v2, 0xff00

    and-int v2, v2, v17

    const v3, 0xff00

    and-int v3, v3, v18

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    move/from16 v0, v17

    and-int/lit16 v2, v0, 0xff

    move/from16 v0, v18

    and-int/lit16 v3, v0, 0xff

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int v9, v1, v2

    .line 340
    move/from16 v0, v16

    if-le v9, v0, :cond_23b

    .line 341
    move/from16 v16, v9

    .line 342
    const/4 v14, 0x6

    .line 345
    :cond_23b
    add-int/lit8 v1, v11, -0x1

    mul-int v1, v1, p4

    add-int/2addr v1, v13

    add-int/lit8 v1, v1, 0x2

    aget v17, p1, v1

    .line 346
    add-int/lit8 v1, v11, 0x1

    mul-int v1, v1, p4

    add-int/2addr v1, v13

    aget v18, p1, v1

    .line 347
    const/high16 v1, 0xff

    and-int v1, v1, v17

    const/high16 v2, 0xff

    and-int v2, v2, v18

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const v2, 0xff00

    and-int v2, v2, v17

    const v3, 0xff00

    and-int v3, v3, v18

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/2addr v1, v2

    move/from16 v0, v17

    and-int/lit16 v2, v0, 0xff

    move/from16 v0, v18

    and-int/lit16 v3, v0, 0xff

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int v9, v1, v2

    .line 348
    move/from16 v0, v16

    if-le v9, v0, :cond_27e

    .line 349
    move/from16 v16, v9

    .line 350
    const/4 v14, 0x7

    .line 354
    .end local v9           #can_v:I
    .end local v17           #v1:I
    .end local v18           #v2:I
    :cond_27e
    if-gez v14, :cond_284

    .line 283
    :goto_280
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_45

    .line 356
    :cond_284
    aget v1, v10, v14

    add-int/lit8 v1, v1, 0x1

    aput v1, v10, v14

    goto :goto_280

    .line 363
    .end local v12           #ind:I
    .end local v13           #j:I
    .restart local v15       #max_loc:I
    :cond_28b
    aget v1, v10, v11

    move/from16 v0, v16

    if-le v1, v0, :cond_294

    .line 364
    aget v16, v10, v11

    .line 365
    move v15, v11

    .line 362
    :cond_294
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_16

    .line 370
    :pswitch_298
    const/4 v6, 0x0

    .restart local v6       #tr_x:F
    const/high16 v7, 0x3f80

    .line 371
    .restart local v7       #tr_y:F
    goto/16 :goto_1f

    .line 373
    .end local v6           #tr_x:F
    .end local v7           #tr_y:F
    :pswitch_29d
    const/high16 v6, -0x4080

    .restart local v6       #tr_x:F
    const/4 v7, 0x0

    .line 374
    .restart local v7       #tr_y:F
    goto/16 :goto_1f

    .line 376
    .end local v6           #tr_x:F
    .end local v7           #tr_y:F
    :pswitch_2a2
    const/high16 v6, -0x4100

    .restart local v6       #tr_x:F
    const/high16 v7, -0x4100

    .line 377
    .restart local v7       #tr_y:F
    goto/16 :goto_1f

    .line 379
    .end local v6           #tr_x:F
    .end local v7           #tr_y:F
    :pswitch_2a8
    const/high16 v6, -0x4100

    .restart local v6       #tr_x:F
    const/high16 v7, 0x3f00

    .line 380
    .restart local v7       #tr_y:F
    goto/16 :goto_1f

    .line 382
    .end local v6           #tr_x:F
    .end local v7           #tr_y:F
    :pswitch_2ae
    const/4 v6, 0x0

    .restart local v6       #tr_x:F
    const/high16 v7, -0x4080

    .line 383
    .restart local v7       #tr_y:F
    goto/16 :goto_1f

    .line 385
    .end local v6           #tr_x:F
    .end local v7           #tr_y:F
    :pswitch_2b3
    const/high16 v6, 0x3f80

    .restart local v6       #tr_x:F
    const/4 v7, 0x0

    .line 386
    .restart local v7       #tr_y:F
    goto/16 :goto_1f

    .line 388
    .end local v6           #tr_x:F
    .end local v7           #tr_y:F
    :pswitch_2b8
    const/high16 v6, 0x3f00

    .restart local v6       #tr_x:F
    const/high16 v7, 0x3f00

    .line 389
    .restart local v7       #tr_y:F
    goto/16 :goto_1f

    .line 391
    .end local v6           #tr_x:F
    .end local v7           #tr_y:F
    :pswitch_2be
    const/high16 v6, 0x3f00

    .restart local v6       #tr_x:F
    const/high16 v7, -0x4100

    .line 392
    .restart local v7       #tr_y:F
    goto/16 :goto_1f

    .line 368
    :pswitch_data_2c4
    .packed-switch 0x0
        :pswitch_298
        :pswitch_29d
        :pswitch_2a2
        :pswitch_2a8
        :pswitch_2ae
        :pswitch_2b3
        :pswitch_2b8
        :pswitch_2be
    .end packed-switch
.end method

.method public Reapply([I[B[IIIZ)V
    .registers 18
    .parameter "in"
    .parameter "mask"
    .parameter "out"
    .parameter "width"
    .parameter "height"
    .parameter "isChanged"

    .prologue
    .line 407
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->$SWITCH_TABLE$com$sec$android$mimage$photoretouching$MotionPhoto$FLAG_MOTION()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->mode:Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_f6

    .line 459
    :goto_f
    return-void

    .line 410
    :pswitch_10
    iget v5, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->lp_trans_x:F

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->lp_trans_y:F

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->lp_step_num:I

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move/from16 v4, p5

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->LinearPanning([I[B[IIIFFI)V

    goto :goto_f

    .line 414
    :pswitch_20
    iget v5, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->pre_rp_radial_num:I

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->rp_radial_num:I

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->center_x:I

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->center_y:I

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move/from16 v4, p5

    invoke-static/range {v0 .. v8}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->RadialPanning([I[B[IIIIIII)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->pre_rp_radial_num:I

    goto :goto_f

    .line 418
    :pswitch_35
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_flag_rotation:Z

    if-eqz v0, :cond_66

    .line 419
    if-eqz p6, :cond_52

    .line 420
    const/4 v0, 0x2

    new-array v10, v0, [F

    .line 421
    .local v10, pt:[F
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_axis_x:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_axis_y:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->changePtByOrientation(FF)[F

    move-result-object v10

    .line 422
    const/4 v0, 0x0

    aget v0, v10, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_axis_x:F

    .line 423
    const/4 v0, 0x1

    aget v0, v10, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_axis_y:F

    .line 425
    .end local v10           #pt:[F
    :cond_52
    iget v5, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_ghost_num:I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_axis_x:F

    float-to-int v6, v0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_axis_y:F

    float-to-int v7, v0

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->mBdry:Landroid/graphics/Rect;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move/from16 v4, p5

    invoke-static/range {v0 .. v8}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->MakeGhostRot([I[B[IIIIIILandroid/graphics/Rect;)I

    goto :goto_f

    .line 428
    :cond_66
    if-eqz p6, :cond_7f

    .line 429
    const/4 v0, 0x2

    new-array v10, v0, [F

    .line 430
    .restart local v10       #pt:[F
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_trans_x:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_trans_y:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->changePtByOrientation(FF)[F

    move-result-object v10

    .line 431
    const/4 v0, 0x0

    aget v0, v10, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_trans_x:F

    .line 432
    const/4 v0, 0x1

    aget v0, v10, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_trans_y:F

    .line 434
    .end local v10           #pt:[F
    :cond_7f
    iget v5, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_ghost_num:I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_trans_x:F

    float-to-int v6, v0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_trans_y:F

    float-to-int v7, v0

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->mBdry:Landroid/graphics/Rect;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move/from16 v4, p5

    invoke-static/range {v0 .. v8}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->MakeGhostTrans([I[B[IIIIIILandroid/graphics/Rect;)I

    goto/16 :goto_f

    .line 439
    :pswitch_94
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->sl_flag_rotation:Z

    if-eqz v0, :cond_c8

    .line 440
    if-eqz p6, :cond_b1

    .line 441
    const/4 v0, 0x2

    new-array v10, v0, [F

    .line 442
    .restart local v10       #pt:[F
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->sl_axis_x:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->sl_axis_y:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->changePtByOrientation(FF)[F

    move-result-object v10

    .line 443
    const/4 v0, 0x0

    aget v0, v10, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->sl_axis_x:F

    .line 444
    const/4 v0, 0x1

    aget v0, v10, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->sl_axis_y:F

    .line 446
    .end local v10           #pt:[F
    :cond_b1
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->side_mask:[B

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->sl_mdegree:F

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->sl_axis_x:F

    float-to-int v7, v0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->sl_axis_y:F

    float-to-int v8, v0

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->mBdry:Landroid/graphics/Rect;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move/from16 v4, p5

    invoke-static/range {v0 .. v9}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->MakeSLineRot([I[B[III[BFIILandroid/graphics/Rect;)V

    goto/16 :goto_f

    .line 449
    :cond_c8
    if-eqz p6, :cond_e1

    .line 450
    const/4 v0, 0x2

    new-array v10, v0, [F

    .line 451
    .restart local v10       #pt:[F
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    iget v1, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->sl_trans_x:F

    iget v2, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->sl_trans_y:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->changePtByOrientation(FF)[F

    move-result-object v10

    .line 452
    const/4 v0, 0x0

    aget v0, v10, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->sl_trans_x:F

    .line 453
    const/4 v0, 0x1

    aget v0, v10, v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->sl_trans_y:F

    .line 455
    .end local v10           #pt:[F
    :cond_e1
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->side_mask:[B

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->sl_trans_x:F

    float-to-int v6, v0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->sl_trans_y:F

    float-to-int v7, v0

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->mBdry:Landroid/graphics/Rect;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move/from16 v4, p5

    invoke-static/range {v0 .. v8}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->MakeSLineTrans([I[B[III[BIILandroid/graphics/Rect;)V

    goto/16 :goto_f

    .line 407
    :pswitch_data_f6
    .packed-switch 0x1
        :pswitch_10
        :pswitch_20
        :pswitch_35
        :pswitch_94
    .end packed-switch
.end method

.method public Run(FF[I[B[III)Z
    .registers 18
    .parameter "cur_x"
    .parameter "cur_y"
    .parameter "in"
    .parameter "mask"
    .parameter "out"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 156
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->$SWITCH_TABLE$com$sec$android$mimage$photoretouching$MotionPhoto$FLAG_MOTION()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->mode:Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_bc

    .line 207
    const/4 v0, 0x0

    :goto_10
    return v0

    .line 159
    :pswitch_11
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->SetParamLP(FF)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 160
    iget v5, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->lp_trans_x:F

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->lp_trans_y:F

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->lp_step_num:I

    move-object v0, p3

    move-object v1, p4

    move-object v2, p5

    move/from16 v3, p6

    move/from16 v4, p7

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->LinearPanning([I[B[IIIFFI)V

    .line 161
    const/4 v0, 0x1

    goto :goto_10

    .line 164
    :cond_29
    const/4 v0, 0x0

    goto :goto_10

    .line 168
    :pswitch_2b
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->SetParamRP(FF)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 169
    iget v5, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->pre_rp_radial_num:I

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->rp_radial_num:I

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->center_x:I

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->center_y:I

    move-object v0, p3

    move-object v1, p4

    move-object v2, p5

    move/from16 v3, p6

    move/from16 v4, p7

    invoke-static/range {v0 .. v8}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->RadialPanning([I[B[IIIIIII)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->pre_rp_radial_num:I

    .line 170
    const/4 v0, 0x1

    goto :goto_10

    .line 173
    :cond_48
    const/4 v0, 0x0

    goto :goto_10

    .line 177
    :pswitch_4a
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->SetParamGhost(FF)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 178
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_flag_rotation:Z

    if-eqz v0, :cond_6a

    .line 179
    iget v5, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_ghost_num:I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_axis_x:F

    float-to-int v6, v0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_axis_y:F

    float-to-int v7, v0

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->mBdry:Landroid/graphics/Rect;

    move-object v0, p3

    move-object v1, p4

    move-object v2, p5

    move/from16 v3, p6

    move/from16 v4, p7

    invoke-static/range {v0 .. v8}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->MakeGhostRot([I[B[IIIIIILandroid/graphics/Rect;)I

    .line 185
    :goto_68
    const/4 v0, 0x1

    goto :goto_10

    .line 182
    :cond_6a
    iget v5, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_ghost_num:I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_trans_x:F

    float-to-int v6, v0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_trans_y:F

    float-to-int v7, v0

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->mBdry:Landroid/graphics/Rect;

    move-object v0, p3

    move-object v1, p4

    move-object v2, p5

    move/from16 v3, p6

    move/from16 v4, p7

    invoke-static/range {v0 .. v8}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->MakeGhostTrans([I[B[IIIIIILandroid/graphics/Rect;)I

    goto :goto_68

    .line 188
    :cond_7f
    const/4 v0, 0x0

    goto :goto_10

    .line 192
    :pswitch_81
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->SetParamSLine(FF)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 193
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->sl_flag_rotation:Z

    if-eqz v0, :cond_a4

    .line 194
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->side_mask:[B

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->sl_mdegree:F

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->sl_axis_x:F

    float-to-int v7, v0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->sl_axis_y:F

    float-to-int v8, v0

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->mBdry:Landroid/graphics/Rect;

    move-object v0, p3

    move-object v1, p4

    move-object v2, p5

    move/from16 v3, p6

    move/from16 v4, p7

    invoke-static/range {v0 .. v9}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->MakeSLineRot([I[B[III[BFIILandroid/graphics/Rect;)V

    .line 199
    :goto_a1
    const/4 v0, 0x1

    goto/16 :goto_10

    .line 197
    :cond_a4
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->side_mask:[B

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->sl_trans_x:F

    float-to-int v6, v0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->sl_trans_y:F

    float-to-int v7, v0

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->mBdry:Landroid/graphics/Rect;

    move-object v0, p3

    move-object v1, p4

    move-object v2, p5

    move/from16 v3, p6

    move/from16 v4, p7

    invoke-static/range {v0 .. v8}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->MakeSLineTrans([I[B[III[BIILandroid/graphics/Rect;)V

    goto :goto_a1

    .line 202
    :cond_b9
    const/4 v0, 0x0

    goto/16 :goto_10

    .line 156
    :pswitch_data_bc
    .packed-switch 0x1
        :pswitch_11
        :pswitch_2b
        :pswitch_4a
        :pswitch_81
    .end packed-switch
.end method

.method public RunforSave([I[B[IIIF)V
    .registers 17
    .parameter "in"
    .parameter "mask"
    .parameter "out"
    .parameter "width"
    .parameter "height"
    .parameter "scale"

    .prologue
    .line 212
    invoke-static {}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->$SWITCH_TABLE$com$sec$android$mimage$photoretouching$MotionPhoto$FLAG_MOTION()[I

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->mode:Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;

    invoke-virtual {v1}, Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_cc

    .line 266
    :goto_f
    return-void

    .line 216
    :pswitch_10
    iget v5, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->lp_trans_x:F

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->lp_trans_y:F

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->lp_step_num:I

    add-int/lit8 v7, v0, 0x1

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    invoke-static/range {v0 .. v7}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->LinearPanning([I[B[IIIFFI)V

    goto :goto_f

    .line 221
    :pswitch_21
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->rp_radial_num:I

    if-gez v0, :cond_2b

    .line 222
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->rp_radial_num:I

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->pre_rp_radial_num:I

    .line 224
    :cond_2b
    iget v5, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->pre_rp_radial_num:I

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->rp_radial_num:I

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->center_x:I

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->center_y:I

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    invoke-static/range {v0 .. v8}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->RadialPanning([I[B[IIIIIII)I

    goto :goto_f

    .line 237
    :pswitch_3c
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_flag_rotation:Z

    if-eqz v0, :cond_57

    .line 238
    iget v5, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_ghost_num:I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_axis_x:F

    mul-float v0, v0, p6

    float-to-int v6, v0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_axis_y:F

    mul-float v0, v0, p6

    float-to-int v7, v0

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->mBdry:Landroid/graphics/Rect;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    invoke-static/range {v0 .. v8}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->MakeGhostRot([I[B[IIIIIILandroid/graphics/Rect;)I

    goto :goto_f

    .line 241
    :cond_57
    iget v5, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_ghost_num:I

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_trans_x:F

    mul-float v0, v0, p6

    float-to-int v6, v0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_trans_y:F

    mul-float v0, v0, p6

    float-to-int v7, v0

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->mBdry:Landroid/graphics/Rect;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    invoke-static/range {v0 .. v8}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->MakeGhostTrans([I[B[IIIIIILandroid/graphics/Rect;)I

    goto :goto_f

    .line 248
    :pswitch_6e
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->flag_cal_sl:Z

    if-nez v0, :cond_97

    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->sl_flag_rotation:Z

    .line 250
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->lp_trans_x:F

    const/high16 v1, -0x3d38

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->sl_trans_x:F

    .line 251
    iget v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->lp_trans_y:F

    const/high16 v1, -0x3d38

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->sl_trans_y:F

    .line 252
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->side_mask:[B

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->sl_trans_x:F

    float-to-int v6, v0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->sl_trans_y:F

    float-to-int v7, v0

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->mBdry:Landroid/graphics/Rect;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    invoke-static/range {v0 .. v8}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->MakeSLineTrans([I[B[III[BIILandroid/graphics/Rect;)V

    goto/16 :goto_f

    .line 255
    :cond_97
    iget-boolean v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->sl_flag_rotation:Z

    if-eqz v0, :cond_b5

    .line 256
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->side_mask:[B

    iget v6, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->sl_mdegree:F

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->sl_axis_x:F

    mul-float v0, v0, p6

    float-to-int v7, v0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->sl_axis_y:F

    mul-float v0, v0, p6

    float-to-int v8, v0

    iget-object v9, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->mBdry:Landroid/graphics/Rect;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    invoke-static/range {v0 .. v9}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->MakeSLineRot([I[B[III[BFIILandroid/graphics/Rect;)V

    goto/16 :goto_f

    .line 260
    :cond_b5
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->side_mask:[B

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->sl_trans_x:F

    float-to-int v6, v0

    iget v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->sl_trans_y:F

    float-to-int v7, v0

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->mBdry:Landroid/graphics/Rect;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move/from16 v9, p6

    invoke-static/range {v0 .. v9}, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->MakeSLineTransScaled([I[B[III[BIILandroid/graphics/Rect;F)V

    goto/16 :goto_f

    .line 212
    nop

    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_10
        :pswitch_21
        :pswitch_3c
        :pswitch_6e
    .end packed-switch
.end method

.method public SetParamGhost(FF)Z
    .registers 24
    .parameter "x"
    .parameter "y"

    .prologue
    .line 546
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v6, v0, [F

    .line 551
    .local v6, center_sc:[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->center_x:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->center_y:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScreenPoint(II)[F

    move-result-object v6

    .line 552
    const/16 v18, 0x0

    aget v18, v6, v18

    const/16 v19, 0x0

    aget v19, v6, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->start_x:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    add-float v4, v18, v19

    .line 553
    .local v4, axis_x:F
    const/16 v18, 0x1

    aget v18, v6, v18

    const/16 v19, 0x1

    aget v19, v6, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->start_y:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    add-float v5, v18, v19

    .line 555
    .local v5, axis_y:F
    const/16 v18, 0x0

    aget v18, v6, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->start_x:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    const/16 v19, 0x1

    aget v19, v6, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->start_y:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v19

    add-float v12, v18, v19

    .line 556
    .local v12, dist:F
    const/high16 v18, 0x4248

    cmpg-float v18, v12, v18

    if-gez v18, :cond_1de

    .line 557
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_flag_rotation:Z

    move/from16 v18, v0

    if-eqz v18, :cond_80

    .line 558
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->pre_gh_ghost_num:I

    .line 559
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_flag_rotation:Z

    .line 569
    :cond_80
    :goto_80
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->start_x:F

    move/from16 v18, v0

    sub-float v18, v4, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->start_x:F

    move/from16 v19, v0

    sub-float v19, v4, v19

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->start_y:F

    move/from16 v19, v0

    sub-float v19, v5, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->start_y:F

    move/from16 v20, v0

    sub-float v20, v5, v20

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v10, v0

    .line 570
    .local v10, dis_AS:F
    sub-float v18, v4, p1

    sub-float v19, v4, p1

    mul-float v18, v18, v19

    sub-float v19, v5, p2

    sub-float v20, v5, p2

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v9, v0

    .line 571
    .local v9, dis_AE:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->start_x:F

    move/from16 v18, v0

    sub-float v18, p1, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->start_x:F

    move/from16 v19, v0

    sub-float v19, p1, v19

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->start_y:F

    move/from16 v19, v0

    sub-float v19, p2, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->start_y:F

    move/from16 v20, v0

    sub-float v20, p2, v20

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v11, v0

    .line 573
    .local v11, dis_SE:F
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v14, v0, [F

    .line 574
    .local v14, pt:[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImagePoint(FF)[F

    move-result-object v14

    .line 576
    const/16 v18, 0x0

    aget v18, v14, v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_axis_x:F

    .line 577
    const/16 v18, 0x1

    aget v18, v14, v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_axis_y:F

    .line 579
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_flag_rotation:Z

    move/from16 v18, v0

    if-eqz v18, :cond_205

    .line 581
    mul-float v18, v10, v10

    mul-float v19, v9, v9

    add-float v18, v18, v19

    mul-float v19, v11, v11

    sub-float v18, v18, v19

    const/high16 v19, 0x4000

    mul-float v19, v19, v10

    mul-float v19, v19, v9

    div-float v7, v18, v19

    .line 584
    .local v7, cosA:F
    float-to-double v0, v7

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->acos(D)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v3, v0

    .line 587
    .local v3, A:F
    const/16 v18, 0x1

    aget v18, v6, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->start_y:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    const/16 v19, 0x0

    aget v19, v6, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->start_x:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    div-float v15, v18, v19

    .line 588
    .local v15, slope:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->start_y:F

    move/from16 v18, v0

    const/16 v19, 0x0

    aget v19, v6, v19

    mul-float v18, v18, v19

    const/16 v19, 0x1

    aget v19, v6, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->start_x:F

    move/from16 v20, v0

    mul-float v19, v19, v20

    sub-float v18, v18, v19

    const/16 v19, 0x0

    aget v19, v6, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->start_x:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    div-float v17, v18, v19

    .line 590
    .local v17, y_intercept:F
    const/16 v18, 0x0

    aget v18, v6, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->start_x:F

    move/from16 v19, v0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_1f8

    .line 591
    mul-float v18, v15, p1

    add-float v18, v18, v17

    cmpl-float v18, p2, v18

    if-lez v18, :cond_1a8

    .line 592
    const/high16 v18, -0x4080

    mul-float v3, v3, v18

    .line 599
    :cond_1a8
    :goto_1a8
    const/high16 v18, 0x4120

    div-float v18, v3, v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_ghost_num:I

    .line 630
    .end local v3           #A:F
    .end local v7           #cosA:F
    .end local v15           #slope:F
    .end local v17           #y_intercept:F
    :goto_1b7
    const/4 v14, 0x0

    check-cast v14, [F

    .line 631
    const/4 v6, 0x0

    check-cast v6, [F

    .line 633
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->pre_gh_ghost_num:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_ghost_num:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2ca

    .line 634
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_ghost_num:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->pre_gh_ghost_num:I

    .line 635
    const/16 v18, 0x1

    .line 638
    :goto_1dd
    return v18

    .line 563
    .end local v9           #dis_AE:F
    .end local v10           #dis_AS:F
    .end local v11           #dis_SE:F
    .end local v14           #pt:[F
    :cond_1de
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_flag_rotation:Z

    move/from16 v18, v0

    if-nez v18, :cond_80

    .line 564
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->pre_gh_ghost_num:I

    .line 565
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_flag_rotation:Z

    goto/16 :goto_80

    .line 595
    .restart local v3       #A:F
    .restart local v7       #cosA:F
    .restart local v9       #dis_AE:F
    .restart local v10       #dis_AS:F
    .restart local v11       #dis_SE:F
    .restart local v14       #pt:[F
    .restart local v15       #slope:F
    .restart local v17       #y_intercept:F
    :cond_1f8
    mul-float v18, v15, p1

    add-float v18, v18, v17

    cmpg-float v18, p2, v18

    if-gez v18, :cond_1a8

    .line 596
    const/high16 v18, -0x4080

    mul-float v3, v3, v18

    goto :goto_1a8

    .line 603
    .end local v3           #A:F
    .end local v7           #cosA:F
    .end local v15           #slope:F
    .end local v17           #y_intercept:F
    :cond_205
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v16, v0

    .line 604
    .local v16, spt:[F
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v13, v0, [F

    .line 605
    .local v13, ept:[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->start_x:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->start_y:F

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImagePoint(FF)[F

    move-result-object v16

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImagePoint(FF)[F

    move-result-object v13

    .line 609
    const/16 v18, 0x0

    aget v18, v13, v18

    const/16 v19, 0x0

    aget v19, v16, v19

    sub-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    const/16 v19, 0x1

    aget v19, v13, v19

    const/16 v20, 0x1

    aget v20, v16, v20

    sub-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v19

    add-float v8, v18, v19

    .line 610
    .local v8, dis:F
    const/high16 v18, 0x42b4

    cmpg-float v18, v8, v18

    if-gez v18, :cond_2ac

    .line 611
    float-to-int v0, v8

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x1e

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_ghost_num:I

    .line 622
    :goto_268
    const/16 v18, 0x0

    aget v18, v13, v18

    const/16 v19, 0x0

    aget v19, v16, v19

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_ghost_num:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_trans_x:F

    .line 623
    const/16 v18, 0x1

    aget v18, v13, v18

    const/16 v19, 0x1

    aget v19, v16, v19

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_ghost_num:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_trans_y:F

    .line 625
    const/16 v16, 0x0

    check-cast v16, [F

    .line 626
    const/16 v18, 0x0

    check-cast v18, [F

    goto/16 :goto_1b7

    .line 613
    :cond_2ac
    const/high16 v18, 0x42fa

    cmpg-float v18, v8, v18

    if-gez v18, :cond_2be

    .line 614
    float-to-int v0, v8

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x1c

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_ghost_num:I

    goto :goto_268

    .line 617
    :cond_2be
    float-to-int v0, v8

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_ghost_num:I

    goto :goto_268

    .line 638
    .end local v8           #dis:F
    .end local v13           #ept:[F
    .end local v16           #spt:[F
    :cond_2ca
    const/16 v18, 0x0

    goto/16 :goto_1dd
.end method

.method public SetParamLP(FF)Z
    .registers 15
    .parameter "cur_x"
    .parameter "cur_y"

    .prologue
    const/4 v11, 0x5

    const v10, 0x3f28f5c3

    const/high16 v9, 0x3f00

    const v8, 0x3eae147b

    const/4 v7, 0x0

    .line 466
    iget v3, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->start_x:F

    sub-float v0, v3, p1

    .line 467
    .local v0, move_x:F
    iget v3, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->start_y:F

    sub-float v1, v3, p2

    .line 469
    .local v1, move_y:F
    cmpl-float v3, v0, v7

    if-nez v3, :cond_5c

    .line 470
    iput v7, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->lp_trans_x:F

    .line 471
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v3

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->lp_trans_y:F

    .line 472
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    shr-int/lit8 v3, v3, 0x7

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->lp_step_num:I

    .line 504
    :goto_2c
    iget v3, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->lp_step_num:I

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->lp_step_num:I

    .line 505
    iget v3, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->lp_step_num:I

    if-le v3, v11, :cond_38

    .line 506
    iput v11, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->lp_step_num:I

    .line 509
    :cond_38
    iget v3, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->pre_lp_trans_x:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->lp_trans_x:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4e

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->pre_lp_trans_y:F

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->lp_trans_y:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4e

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->pre_lp_step_num:I

    iget v4, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->lp_step_num:I

    if-eq v3, v4, :cond_117

    .line 510
    :cond_4e
    iget v3, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->lp_trans_x:F

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->pre_lp_trans_x:F

    .line 511
    iget v3, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->lp_trans_y:F

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->pre_lp_trans_y:F

    .line 512
    iget v3, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->lp_step_num:I

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->pre_lp_step_num:I

    .line 514
    const/4 v3, 0x1

    .line 517
    :goto_5b
    return v3

    .line 475
    :cond_5c
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    div-float v2, v3, v4

    .line 477
    .local v2, ratio:F
    float-to-double v3, v2

    const-wide v5, 0x4016b851eb851eb8L

    cmpl-double v3, v3, v5

    if-lez v3, :cond_87

    .line 478
    iput v7, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->lp_trans_x:F

    .line 479
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v3

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->lp_trans_y:F

    .line 480
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    shr-int/lit8 v3, v3, 0x7

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->lp_step_num:I

    goto :goto_2c

    .line 482
    :cond_87
    float-to-double v3, v2

    const-wide v5, 0x3ffbd70a3d70a3d7L

    cmpl-double v3, v3, v5

    if-lez v3, :cond_af

    .line 483
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v3

    mul-float/2addr v3, v8

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->lp_trans_x:F

    .line 484
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v3

    mul-float/2addr v3, v10

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->lp_trans_y:F

    .line 485
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    shr-int/lit8 v3, v3, 0x7

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->lp_step_num:I

    goto/16 :goto_2c

    .line 487
    :cond_af
    float-to-double v3, v2

    const-wide v5, 0x3fe27ef9db22d0e5L

    cmpl-double v3, v3, v5

    if-lez v3, :cond_d7

    .line 488
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v3

    mul-float/2addr v3, v9

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->lp_trans_x:F

    .line 489
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v3

    mul-float/2addr v3, v9

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->lp_trans_y:F

    .line 490
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    shr-int/lit8 v3, v3, 0x7

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->lp_step_num:I

    goto/16 :goto_2c

    .line 492
    :cond_d7
    float-to-double v3, v2

    const-wide v5, 0x3fc6a7ef9db22d0eL

    cmpl-double v3, v3, v5

    if-lez v3, :cond_ff

    .line 493
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v3

    mul-float/2addr v3, v10

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->lp_trans_x:F

    .line 494
    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v3

    mul-float/2addr v3, v8

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->lp_trans_y:F

    .line 495
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    shr-int/lit8 v3, v3, 0x7

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->lp_step_num:I

    goto/16 :goto_2c

    .line 498
    :cond_ff
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v3

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->lp_trans_x:F

    .line 499
    iput v7, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->lp_trans_y:F

    .line 500
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    shr-int/lit8 v3, v3, 0x7

    iput v3, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->lp_step_num:I

    goto/16 :goto_2c

    .line 517
    .end local v2           #ratio:F
    :cond_117
    const/4 v3, 0x0

    goto/16 :goto_5b
.end method

.method public SetParamRP(FF)Z
    .registers 8
    .parameter "cur_x"
    .parameter "cur_y"

    .prologue
    const/16 v4, 0xf

    .line 526
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->start_x:F

    sub-float v0, v2, p1

    .line 527
    .local v0, move_x:F
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->start_y:F

    sub-float v1, v2, p2

    .line 529
    .local v1, move_y:F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v2, v2

    shr-int/lit8 v2, v2, 0x5

    iput v2, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->rp_radial_num:I

    .line 531
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->rp_radial_num:I

    if-le v2, v4, :cond_1e

    .line 532
    iput v4, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->rp_radial_num:I

    .line 535
    :cond_1e
    iget v2, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->pre_rp_radial_num:I

    iget v3, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->rp_radial_num:I

    if-eq v2, v3, :cond_26

    .line 536
    const/4 v2, 0x1

    .line 539
    :goto_25
    return v2

    :cond_26
    const/4 v2, 0x0

    goto :goto_25
.end method

.method public SetParamSLine(FF)Z
    .registers 23
    .parameter "x"
    .parameter "y"

    .prologue
    .line 643
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v6, v0, [F

    .line 648
    .local v6, center_sc:[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->center_x:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->center_y:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getScreenPoint(II)[F

    move-result-object v6

    .line 649
    const/16 v17, 0x0

    aget v17, v6, v17

    const/16 v18, 0x0

    aget v18, v6, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->start_x:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    add-float v4, v17, v18

    .line 650
    .local v4, axis_x:F
    const/16 v17, 0x1

    aget v17, v6, v17

    const/16 v18, 0x1

    aget v18, v6, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->start_y:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    add-float v5, v17, v18

    .line 652
    .local v5, axis_y:F
    const/16 v17, 0x0

    aget v17, v6, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->start_x:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    const/16 v18, 0x1

    aget v18, v6, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->start_y:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    add-float v11, v17, v18

    .line 653
    .local v11, dist:F
    const/high16 v17, 0x4248

    cmpg-float v17, v11, v17

    if-gez v17, :cond_1ad

    .line 654
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->sl_flag_rotation:Z

    .line 660
    :goto_70
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->start_x:F

    move/from16 v17, v0

    sub-float v17, v4, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->start_x:F

    move/from16 v18, v0

    sub-float v18, v4, v18

    mul-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->start_y:F

    move/from16 v18, v0

    sub-float v18, v5, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->start_y:F

    move/from16 v19, v0

    sub-float v19, v5, v19

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v9, v0

    .line 661
    .local v9, dis_AS:F
    sub-float v17, v4, p1

    sub-float v18, v4, p1

    mul-float v17, v17, v18

    sub-float v18, v5, p2

    sub-float v19, v5, p2

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v8, v0

    .line 662
    .local v8, dis_AE:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->start_x:F

    move/from16 v17, v0

    sub-float v17, p1, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->start_x:F

    move/from16 v18, v0

    sub-float v18, p1, v18

    mul-float v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->start_y:F

    move/from16 v18, v0

    sub-float v18, p2, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->start_y:F

    move/from16 v19, v0

    sub-float v19, p2, v19

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v10, v0

    .line 664
    .local v10, dis_SE:F
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->flag_cal_sl:Z

    .line 666
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v13, v0, [F

    .line 667
    .local v13, pt:[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImagePoint(FF)[F

    move-result-object v13

    .line 669
    const/16 v17, 0x0

    aget v17, v13, v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->sl_axis_x:F

    .line 670
    const/16 v17, 0x1

    aget v17, v13, v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->sl_axis_y:F

    .line 672
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->sl_flag_rotation:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1c4

    .line 674
    mul-float v17, v9, v9

    mul-float v18, v8, v8

    add-float v17, v17, v18

    mul-float v18, v10, v10

    sub-float v17, v17, v18

    const/high16 v18, 0x4000

    mul-float v18, v18, v9

    mul-float v18, v18, v8

    div-float v7, v17, v18

    .line 676
    .local v7, cosA:F
    float-to-double v0, v7

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->acos(D)D

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v3, v0

    .line 679
    .local v3, A:F
    const/16 v17, 0x1

    aget v17, v6, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->start_y:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    const/16 v18, 0x0

    aget v18, v6, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->start_x:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    div-float v14, v17, v18

    .line 680
    .local v14, slope:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->start_y:F

    move/from16 v17, v0

    const/16 v18, 0x0

    aget v18, v6, v18

    mul-float v17, v17, v18

    const/16 v18, 0x1

    aget v18, v6, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->start_x:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    sub-float v17, v17, v18

    const/16 v18, 0x0

    aget v18, v6, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->start_x:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    div-float v16, v17, v18

    .line 682
    .local v16, y_intercept:F
    const/16 v17, 0x0

    aget v17, v6, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->start_x:F

    move/from16 v18, v0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_1b7

    .line 683
    mul-float v17, v14, p1

    add-float v17, v17, v16

    cmpl-float v17, p2, v17

    if-lez v17, :cond_1a0

    .line 684
    const/high16 v17, -0x4080

    mul-float v3, v3, v17

    .line 691
    :cond_1a0
    :goto_1a0
    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->sl_mdegree:F

    .line 693
    const/4 v6, 0x0

    check-cast v6, [F

    .line 694
    const/4 v13, 0x0

    check-cast v13, [F

    .line 696
    const/16 v17, 0x1

    .line 715
    .end local v3           #A:F
    .end local v7           #cosA:F
    .end local v14           #slope:F
    .end local v16           #y_intercept:F
    :goto_1ac
    return v17

    .line 657
    .end local v8           #dis_AE:F
    .end local v9           #dis_AS:F
    .end local v10           #dis_SE:F
    .end local v13           #pt:[F
    :cond_1ad
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->sl_flag_rotation:Z

    goto/16 :goto_70

    .line 687
    .restart local v3       #A:F
    .restart local v7       #cosA:F
    .restart local v8       #dis_AE:F
    .restart local v9       #dis_AS:F
    .restart local v10       #dis_SE:F
    .restart local v13       #pt:[F
    .restart local v14       #slope:F
    .restart local v16       #y_intercept:F
    :cond_1b7
    mul-float v17, v14, p1

    add-float v17, v17, v16

    cmpg-float v17, p2, v17

    if-gez v17, :cond_1a0

    .line 688
    const/high16 v17, -0x4080

    mul-float v3, v3, v17

    goto :goto_1a0

    .line 700
    .end local v3           #A:F
    .end local v7           #cosA:F
    .end local v14           #slope:F
    .end local v16           #y_intercept:F
    :cond_1c4
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v15, v0, [F

    .line 701
    .local v15, spt:[F
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v12, v0, [F

    .line 702
    .local v12, ept:[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->start_x:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->start_y:F

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImagePoint(FF)[F

    move-result-object v15

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/mimage/photoretouching/common/ImageInfo;->getImagePoint(FF)[F

    move-result-object v12

    .line 705
    const/16 v17, 0x0

    aget v17, v12, v17

    const/16 v18, 0x0

    aget v18, v15, v18

    sub-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->sl_trans_x:F

    .line 706
    const/16 v17, 0x1

    aget v17, v12, v17

    const/16 v18, 0x1

    aget v18, v15, v18

    sub-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->sl_trans_y:F

    .line 708
    const/4 v6, 0x0

    check-cast v6, [F

    .line 709
    const/4 v13, 0x0

    check-cast v13, [F

    .line 711
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->sl_trans_x:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-nez v17, :cond_234

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->sl_trans_y:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_238

    .line 712
    :cond_234
    const/16 v17, 0x1

    goto/16 :goto_1ac

    .line 715
    :cond_238
    const/16 v17, 0x0

    goto/16 :goto_1ac
.end method

.method public clear()V
    .registers 6

    .prologue
    const/high16 v4, -0x4080

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 14
    iput v4, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->pre_lp_trans_x:F

    .line 15
    iput v4, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->pre_lp_trans_y:F

    .line 16
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->pre_rp_radial_num:I

    .line 17
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->pre_lp_step_num:I

    .line 18
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->pre_gh_ghost_num:I

    .line 20
    iput v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->lp_trans_x:F

    .line 21
    iput v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->lp_trans_y:F

    .line 22
    iput v3, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->lp_step_num:I

    .line 23
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->rp_radial_num:I

    .line 24
    iput v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_trans_x:F

    .line 25
    iput v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_trans_y:F

    .line 26
    iput v3, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_ghost_num:I

    .line 27
    iput v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->sl_trans_x:F

    .line 28
    iput v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->sl_trans_y:F

    .line 29
    iput v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->sl_mdegree:F

    .line 31
    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->mRandom:Ljava/util/Random;

    .line 32
    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->side_mask:[B

    .line 34
    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    .line 35
    iput-object v2, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->mBdry:Landroid/graphics/Rect;

    .line 37
    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->flag_cal_sl:Z

    .line 38
    return-void
.end method

.method public init(IILandroid/graphics/Rect;Lcom/sec/android/mimage/photoretouching/common/ImageInfo;)V
    .registers 7
    .parameter "width"
    .parameter "height"
    .parameter "bdry"
    .parameter "info"

    .prologue
    .line 80
    iput-object p3, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->mBdry:Landroid/graphics/Rect;

    .line 81
    iput-object p4, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    .line 83
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->mBdry:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->mBdry:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->center_x:I

    .line 84
    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->mBdry:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->mBdry:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->center_y:I

    .line 85
    return-void
.end method

.method public init_speedline([BIILandroid/graphics/Rect;Lcom/sec/android/mimage/photoretouching/common/ImageInfo;)V
    .registers 15
    .parameter "mask"
    .parameter "width"
    .parameter "height"
    .parameter "bdry"
    .parameter "info"

    .prologue
    const/4 v8, 0x1

    .line 89
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    iput-object v5, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->mRandom:Ljava/util/Random;

    .line 90
    iput-object p4, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->mBdry:Landroid/graphics/Rect;

    .line 91
    iput-object p5, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->mImageInfo:Lcom/sec/android/mimage/photoretouching/common/ImageInfo;

    .line 92
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->side_mask:[B

    if-eqz v5, :cond_13

    .line 93
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->side_mask:[B

    .line 95
    :cond_13
    mul-int v5, p2, p3

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->side_mask:[B

    .line 97
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->mBdry:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->mBdry:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    shr-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->center_x:I

    .line 98
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->mBdry:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->mBdry:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    shr-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->center_y:I

    .line 103
    const/4 v0, 0x1

    .local v0, i:I
    :goto_34
    add-int/lit8 v5, p3, -0x1

    if-lt v0, v5, :cond_39

    .line 125
    return-void

    .line 104
    :cond_39
    const/4 v1, 0x1

    .local v1, j:I
    :goto_3a
    add-int/lit8 v5, p2, -0x1

    if-lt v1, v5, :cond_41

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 106
    :cond_41
    mul-int v5, v0, p2

    add-int/2addr v5, v1

    aget-byte v5, p1, v5

    if-ne v5, v8, :cond_4b

    .line 108
    const/4 v2, -0x1

    .local v2, k:I
    :goto_49
    if-le v2, v8, :cond_4e

    .line 104
    .end local v2           #k:I
    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 109
    .restart local v2       #k:I
    :cond_4e
    const/4 v3, -0x1

    .local v3, l:I
    :goto_4f
    if-le v3, v8, :cond_54

    .line 108
    :goto_51
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 110
    :cond_54
    add-int v5, v0, v2

    mul-int/2addr v5, p2

    add-int v6, v1, v3

    add-int/2addr v5, v6

    aget-byte v5, p1, v5

    if-nez v5, :cond_7c

    .line 111
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->mRandom:Ljava/util/Random;

    const/16 v6, 0x96

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 112
    .local v4, temp:I
    const/16 v5, 0x64

    if-gt v4, v5, :cond_73

    .line 113
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->side_mask:[B

    mul-int v6, v0, p2

    add-int/2addr v6, v1

    int-to-byte v7, v4

    aput-byte v7, v5, v6

    goto :goto_51

    .line 115
    :cond_73
    iget-object v5, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->side_mask:[B

    mul-int v6, v0, p2

    add-int/2addr v6, v1

    const/4 v7, 0x0

    aput-byte v7, v5, v6

    goto :goto_51

    .line 109
    .end local v4           #temp:I
    :cond_7c
    add-int/lit8 v3, v3, 0x1

    goto :goto_4f
.end method

.method public setMode(Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;)V
    .registers 6
    .parameter "m"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v1, -0x4080

    const/4 v0, -0x1

    .line 136
    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->mode:Lcom/sec/android/mimage/photoretouching/MotionPhoto$FLAG_MOTION;

    .line 138
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->pre_lp_trans_x:F

    .line 139
    iput v1, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->pre_lp_trans_y:F

    .line 140
    iput v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->pre_lp_step_num:I

    .line 141
    iput v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->pre_rp_radial_num:I

    .line 142
    iput v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->pre_gh_ghost_num:I

    .line 144
    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_flag_rotation:Z

    .line 145
    iput-boolean v3, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->sl_flag_rotation:Z

    .line 147
    iput v2, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->lp_step_num:I

    .line 148
    iput v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->rp_radial_num:I

    .line 149
    iput v2, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->gh_ghost_num:I

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->sl_mdegree:F

    .line 152
    return-void
.end method

.method public setStartPoint(FF)V
    .registers 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 130
    iput p1, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->start_x:F

    .line 131
    iput p2, p0, Lcom/sec/android/mimage/photoretouching/MotionPhoto;->start_y:F

    .line 132
    return-void
.end method
