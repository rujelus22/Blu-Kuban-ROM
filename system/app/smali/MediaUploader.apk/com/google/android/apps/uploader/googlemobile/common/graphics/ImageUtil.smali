.class public Lcom/google/android/apps/uploader/googlemobile/common/graphics/ImageUtil;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT:I = 0x0

.field public static final HIGH_QUALITY:I = 0x1

.field public static final PROCESS_ALPHA:I = 0x2


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyImage(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;)Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;
    .registers 5

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getInstance()Lcom/google/android/apps/uploader/googlemobile/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getImageFactory()Lcom/google/android/apps/uploader/googlemobile/common/graphics/ImageFactory;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;->getWidth()I

    move-result v1

    invoke-interface {p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;->getHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/ImageFactory;->createImage(II)Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;->getGraphics()Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;

    move-result-object v1

    invoke-interface {v1, p0, v3, v3}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;->drawImage(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;II)V

    return-object v0
.end method

.method public static copyImage(Ljava/lang/String;)Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getInstance()Lcom/google/android/apps/uploader/googlemobile/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getImageFactory()Lcom/google/android/apps/uploader/googlemobile/common/graphics/ImageFactory;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/ImageFactory;->createImage(Ljava/lang/String;)Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/ImageUtil;->copyImage(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;)Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;

    move-result-object v0

    return-object v0
.end method

.method public static createPartialImage(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;IIII)Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;
    .registers 9

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getInstance()Lcom/google/android/apps/uploader/googlemobile/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getImageFactory()Lcom/google/android/apps/uploader/googlemobile/common/graphics/ImageFactory;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/ImageFactory;->createImage(II)Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;->getGraphics()Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;

    move-result-object v1

    neg-int v2, p1

    neg-int v3, p2

    invoke-interface {v1, p0, v2, v3}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;->drawImage(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;II)V

    return-object v0
.end method

.method public static createScaledImage(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;IIIIIII)Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;
    .registers 25

    if-nez p1, :cond_44

    if-nez p2, :cond_44

    invoke-interface/range {p0 .. p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;->getHeight()I

    move-result v5

    move/from16 v0, p4

    move v1, v5

    if-ne v0, v1, :cond_44

    invoke-interface/range {p0 .. p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;->getWidth()I

    move-result v5

    move/from16 v0, p3

    move v1, v5

    if-ne v0, v1, :cond_44

    mul-int/lit8 v5, p5, 0x2

    move/from16 v0, p3

    move v1, v5

    if-ne v0, v1, :cond_2f

    mul-int/lit8 v5, p5, 0x2

    move/from16 v0, p4

    move v1, v5

    if-ne v0, v1, :cond_2f

    const/4 v5, 0x1

    move/from16 v0, p7

    move v1, v5

    if-ne v0, v1, :cond_2f

    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/ImageUtil;->quarterImage(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;)Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;

    move-result-object p0

    :goto_2e
    return-object p0

    :cond_2f
    mul-int/lit8 v5, p3, 0x2

    move v0, v5

    move/from16 v1, p5

    if-ne v0, v1, :cond_44

    mul-int/lit8 v5, p4, 0x2

    move v0, v5

    move/from16 v1, p6

    if-ne v0, v1, :cond_44

    if-nez p7, :cond_44

    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/ImageUtil;->quadrupleImage(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;)Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;

    move-result-object p0

    goto :goto_2e

    :cond_44
    mul-int v5, p5, p6

    new-array v13, v5, [I

    mul-int v5, p3, p4

    new-array v6, v5, [I

    const/4 v7, 0x0

    move-object/from16 v5, p0

    move/from16 v8, p3

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-interface/range {v5 .. v12}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;->getRGB([IIIIIII)V

    const/16 p0, 0x0

    shl-int/lit8 p1, p3, 0x10

    div-int v11, p1, p5

    shl-int/lit8 p1, p4, 0x10

    div-int p1, p1, p6

    const/16 p2, 0x0

    move/from16 v10, p0

    move/from16 p0, p2

    :goto_6c
    move/from16 v0, p0

    move/from16 v1, p6

    if-ge v0, v1, :cond_88

    const/4 v9, 0x0

    const/4 v12, 0x0

    mul-int v14, p0, p5

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v15, p5

    move/from16 v16, p7

    invoke-static/range {v6 .. v16}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/ImageUtil;->transformScanline([IIIIIII[IIII)V

    add-int p2, v10, p1

    add-int/lit8 p0, p0, 0x1

    move/from16 v10, p2

    goto :goto_6c

    :cond_88
    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getInstance()Lcom/google/android/apps/uploader/googlemobile/common/Config;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getImageFactory()Lcom/google/android/apps/uploader/googlemobile/common/graphics/ImageFactory;

    move-result-object p0

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_a4

    const/16 p1, 0x1

    :goto_96
    move-object/from16 v0, p0

    move-object v1, v13

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p1

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/ImageFactory;->createRGBImage([IIIZ)Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;

    move-result-object p0

    goto :goto_2e

    :cond_a4
    const/16 p1, 0x0

    goto :goto_96
.end method

.method public static createSquareImage(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;I)Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;
    .registers 5

    invoke-interface {p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;->getWidth()I

    move-result v0

    invoke-interface {p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;->getHeight()I

    move-result v1

    if-ne v0, p1, :cond_e

    if-ne v1, p1, :cond_e

    move-object v0, p0

    :goto_d
    return-object v0

    :cond_e
    if-ne v0, v1, :cond_15

    invoke-interface {p0, p1, p1}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;->createScaledImage(II)Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;

    move-result-object v0

    goto :goto_d

    :cond_15
    if-le v0, v1, :cond_28

    int-to-float v1, v1

    int-to-float v2, p1

    int-to-float v0, v0

    div-float v0, v2, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    move v1, p1

    :goto_1f
    invoke-interface {p0, v1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;->createScaledImage(II)Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/ImageUtil;->padImageToSquare(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;I)Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;

    move-result-object v0

    goto :goto_d

    :cond_28
    int-to-float v0, v0

    int-to-float v2, p1

    int-to-float v1, v1

    div-float v1, v2, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    move v1, v0

    move v0, p1

    goto :goto_1f
.end method

.method public static drawScaledByTwoImage(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;IIIIIIII)Z
    .registers 25

    mul-int/lit8 v5, p8, 0x2

    move/from16 v0, p4

    move v1, v5

    if-eq v0, v1, :cond_10

    mul-int/lit8 v5, p9, 0x2

    move/from16 v0, p5

    move v1, v5

    if-eq v0, v1, :cond_10

    const/4 p0, 0x0

    :goto_f
    return p0

    :cond_10
    mul-int v5, p8, p9

    new-array v6, v5, [I

    mul-int v5, p4, p5

    new-array v13, v5, [I

    const/4 v7, 0x0

    move-object v5, p0

    move/from16 v8, p8

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-interface/range {v5 .. v12}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;->getRGB([IIIIIII)V

    const/4 p0, 0x0

    :goto_28
    move v0, p0

    move/from16 v1, p9

    if-ge v0, v1, :cond_69

    mul-int p6, p0, p8

    mul-int p7, p0, p4

    mul-int/lit8 p7, p7, 0x2

    aget v5, v6, p6

    const/4 v7, 0x0

    move v14, v7

    move/from16 v7, p6

    move/from16 p6, v14

    :goto_3b
    move/from16 v0, p6

    move/from16 v1, p8

    if-ge v0, v1, :cond_66

    add-int/lit8 v8, v7, 0x1

    aget v7, v6, v7

    xor-int v9, v7, v5

    const v10, -0x10102

    and-int/2addr v9, v10

    shr-int/lit8 v9, v9, 0x1

    and-int/2addr v5, v7

    add-int/2addr v5, v9

    mul-int/lit8 v9, p6, 0x2

    add-int v9, v9, p7

    aput v5, v13, v9

    add-int/lit8 v10, v9, 0x1

    aput v7, v13, v10

    add-int v9, v9, p4

    aput v5, v13, v9

    add-int/lit8 v5, v9, 0x1

    aput v7, v13, v5

    add-int/lit8 p6, p6, 0x1

    move v5, v7

    move v7, v8

    goto :goto_3b

    :cond_66
    add-int/lit8 p0, p0, 0x1

    goto :goto_28

    :cond_69
    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getInstance()Lcom/google/android/apps/uploader/googlemobile/common/Config;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getImageFactory()Lcom/google/android/apps/uploader/googlemobile/common/graphics/ImageFactory;

    move-result-object p0

    const/16 p6, 0x0

    move-object v0, p0

    move-object v1, v13

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/ImageFactory;->createRGBImage([IIIZ)Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;

    move-result-object p0

    move-object/from16 v0, p1

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;->drawImage(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;II)V

    const/4 p0, 0x1

    goto :goto_f
.end method

.method static getColor([IIIII)I
    .registers 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-gez p3, :cond_c

    move v0, v1

    :goto_5
    if-gez p4, :cond_11

    :goto_7
    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    aget v0, p0, v0

    return v0

    :cond_c
    if-lt p3, p1, :cond_18

    sub-int v0, p1, v2

    goto :goto_5

    :cond_11
    if-lt p4, p2, :cond_16

    sub-int v1, p2, v2

    goto :goto_7

    :cond_16
    move v1, p4

    goto :goto_7

    :cond_18
    move v0, p3

    goto :goto_5
.end method

.method public static mixColors(III)I
    .registers 7

    const v2, 0xff00ff

    const v3, 0xff00

    const/16 v0, 0x100

    sub-int/2addr v0, p2

    and-int v1, p0, v2

    mul-int/2addr v1, v0

    and-int/2addr v2, p1

    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    const v2, -0xff0100

    and-int/2addr v1, v2

    and-int v2, p0, v3

    mul-int/2addr v0, v2

    and-int v2, p1, v3

    mul-int/2addr v2, p2

    add-int/2addr v0, v2

    const/high16 v2, 0xff

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static padImageToSquare(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;I)Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;
    .registers 8

    const/4 v5, 0x0

    invoke-interface {p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;->getWidth()I

    move-result v0

    invoke-interface {p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;->getHeight()I

    move-result v1

    if-ne p1, v0, :cond_f

    if-ne p1, v1, :cond_f

    move-object v0, p0

    :goto_e
    return-object v0

    :cond_f
    if-le v0, v1, :cond_32

    sub-int v0, p1, v1

    div-int/lit8 v0, v0, 0x2

    move v1, v5

    :goto_16
    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getInstance()Lcom/google/android/apps/uploader/googlemobile/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getImageFactory()Lcom/google/android/apps/uploader/googlemobile/common/graphics/ImageFactory;

    move-result-object v2

    invoke-interface {v2, p1, p1}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/ImageFactory;->createImage(II)Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;->getGraphics()Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;

    move-result-object v3

    const/4 v4, -0x1

    invoke-interface {v3, v4}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;->setColor(I)V

    invoke-interface {v3, v5, v5, p1, p1}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;->fillRect(IIII)V

    invoke-interface {v3, p0, v1, v0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;->drawImage(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;II)V

    move-object v0, v2

    goto :goto_e

    :cond_32
    sub-int v0, p1, v0

    div-int/lit8 v0, v0, 0x2

    move v1, v0

    move v0, v5

    goto :goto_16
.end method

.method public static quadrupleImage(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;)Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;
    .registers 11

    const/4 v2, 0x0

    invoke-interface {p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;->getWidth()I

    move-result v6

    invoke-interface {p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;->getHeight()I

    move-result v7

    shl-int/lit8 v0, v6, 0x1

    shl-int/lit8 v1, v7, 0x1

    mul-int/2addr v0, v1

    new-array v1, v0, [I

    shl-int/lit8 v3, v6, 0x2

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-interface/range {v0 .. v7}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;->getRGB([IIIIIII)V

    shl-int/lit8 v0, v6, 0x1

    shl-int/lit8 v3, v7, 0x1

    move v4, v2

    move v5, v2

    :goto_1e
    if-ge v4, v3, :cond_40

    const/4 v6, 0x1

    sub-int v6, v0, v6

    :goto_23
    if-ltz v6, :cond_35

    add-int v7, v5, v6

    shr-int/lit8 v8, v6, 0x1

    add-int/2addr v8, v5

    aget v8, v1, v8

    add-int/lit8 v9, v7, -0x1

    aput v8, v1, v7

    aput v8, v1, v9

    add-int/lit8 v6, v6, -0x2

    goto :goto_23

    :cond_35
    add-int v6, v5, v0

    invoke-static {v1, v5, v1, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    shl-int/lit8 v6, v0, 0x1

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x2

    goto :goto_1e

    :cond_40
    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getInstance()Lcom/google/android/apps/uploader/googlemobile/common/Config;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getImageFactory()Lcom/google/android/apps/uploader/googlemobile/common/graphics/ImageFactory;

    move-result-object v4

    invoke-interface {v4, v1, v0, v3, v2}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/ImageFactory;->createRGBImage([IIIZ)Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;

    move-result-object v0

    return-object v0
.end method

.method public static quarterImage(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;)Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;
    .registers 25

    invoke-interface/range {p0 .. p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;->getWidth()I

    move-result v10

    invoke-interface/range {p0 .. p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;->getHeight()I

    move-result v14

    mul-int v8, v10, v14

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v10

    move-object/from16 v0, p0

    move-object v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    move v6, v13

    move v7, v14

    invoke-interface/range {v0 .. v7}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;->getRGB([IIIIIII)V

    shr-int/lit8 p0, v10, 0x1

    shr-int/lit8 v9, v14, 0x1

    mul-int v11, p0, v9

    new-array v11, v11, [I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v23, v14

    move v14, v12

    move/from16 v12, v23

    :goto_2c
    if-ge v12, v9, :cond_b7

    const/4 v15, 0x0

    :goto_2f
    move v0, v15

    move/from16 v1, p0

    if-ge v0, v1, :cond_ae

    add-int v16, v13, v15

    aget v17, v8, v16

    add-int/lit8 v18, v16, 0x1

    aget v18, v8, v18

    add-int v19, v16, v10

    aget v19, v8, v19

    add-int v16, v16, v10

    add-int/lit8 v16, v16, 0x1

    aget v16, v8, v16

    const/high16 v20, 0xff

    and-int v20, v20, v17

    const/high16 v21, 0xff

    and-int v21, v21, v18

    add-int v20, v20, v21

    const/high16 v21, 0xff

    and-int v21, v21, v19

    add-int v20, v20, v21

    const/high16 v21, 0xff

    and-int v21, v21, v16

    add-int v20, v20, v21

    shr-int/lit8 v20, v20, 0x2

    const v21, 0xff00

    and-int v21, v21, v17

    const v22, 0xff00

    and-int v22, v22, v18

    add-int v21, v21, v22

    const v22, 0xff00

    and-int v22, v22, v19

    add-int v21, v21, v22

    const v22, 0xff00

    and-int v22, v22, v16

    add-int v21, v21, v22

    shr-int/lit8 v21, v21, 0x2

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    add-int v16, v16, v17

    shr-int/lit8 v16, v16, 0x2

    add-int v17, v14, v15

    const/high16 v18, 0xff

    and-int v18, v18, v20

    const v19, 0xff00

    and-int v19, v19, v21

    or-int v18, v18, v19

    or-int v16, v16, v18

    aput v16, v11, v17

    add-int/lit8 v15, v15, 0x1

    goto :goto_2f

    :cond_ae
    add-int v14, v14, p0

    shl-int/lit8 v15, v10, 0x1

    add-int/2addr v13, v15

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2c

    :cond_b7
    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getInstance()Lcom/google/android/apps/uploader/googlemobile/common/Config;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getImageFactory()Lcom/google/android/apps/uploader/googlemobile/common/graphics/ImageFactory;

    move-result-object v8

    const/4 v10, 0x0

    move-object v0, v8

    move-object v1, v11

    move/from16 v2, p0

    move v3, v9

    move v4, v10

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/ImageFactory;->createRGBImage([IIIZ)Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;

    move-result-object p0

    return-object p0
.end method

.method public static resizeImage(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;II)Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;
    .registers 13

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-lez p1, :cond_6

    if-gtz p2, :cond_e

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal target width or height"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    invoke-interface {p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;->getWidth()I

    move-result v0

    invoke-interface {p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;->getHeight()I

    move-result v1

    if-ne p1, v0, :cond_1c

    if-ne p2, v1, :cond_1c

    move-object v0, p0

    :cond_1b
    :goto_1b
    return-object v0

    :cond_1c
    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getInstance()Lcom/google/android/apps/uploader/googlemobile/common/Config;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getImageFactory()Lcom/google/android/apps/uploader/googlemobile/common/graphics/ImageFactory;

    move-result-object v2

    if-eq p1, v0, :cond_67

    invoke-interface {v2, p1, v1}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/ImageFactory;->createImage(II)Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;->getGraphics()Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;

    move-result-object v4

    shl-int/lit8 v0, v0, 0x10

    div-int/2addr v0, p1

    div-int/lit8 v5, v0, 0x2

    move v6, v5

    move v5, v8

    :goto_35
    if-ge v5, p1, :cond_45

    invoke-interface {v4, v5, v8, v9, v1}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;->setClip(IIII)V

    shr-int/lit8 v7, v6, 0x10

    sub-int v7, v5, v7

    invoke-interface {v4, p0, v7, v8}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;->drawImage(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;II)V

    add-int/2addr v6, v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    :cond_45
    move-object v0, v3

    :goto_46
    if-eq p2, v1, :cond_1b

    invoke-interface {v2, p1, p2}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/ImageFactory;->createImage(II)Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;->getGraphics()Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;

    move-result-object v3

    shl-int/lit8 v1, v1, 0x10

    div-int/2addr v1, p2

    div-int/lit8 v4, v1, 0x2

    move v5, v4

    move v4, v8

    :goto_57
    if-ge v4, p2, :cond_69

    invoke-interface {v3, v8, v4, p1, v9}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;->setClip(IIII)V

    shr-int/lit8 v6, v5, 0x10

    sub-int v6, v4, v6

    invoke-interface {v3, v0, v8, v6}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleGraphics;->drawImage(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;II)V

    add-int/2addr v5, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_57

    :cond_67
    move-object v0, p0

    goto :goto_46

    :cond_69
    move-object v0, v2

    goto :goto_1b
.end method

.method public static rotate90(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;)Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;
    .registers 12

    const/4 v2, 0x0

    invoke-interface {p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;->getWidth()I

    move-result v3

    invoke-interface {p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;->getHeight()I

    move-result v7

    mul-int v0, v3, v7

    new-array v1, v0, [I

    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-interface/range {v0 .. v7}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;->getRGB([IIIIIII)V

    array-length v0, v1

    new-array v0, v0, [I

    move v4, v2

    :goto_18
    if-ge v4, v7, :cond_31

    move v5, v2

    :goto_1b
    if-ge v5, v3, :cond_2e

    mul-int v6, v4, v3

    add-int/2addr v6, v5

    mul-int v8, v5, v7

    sub-int v9, v7, v4

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    add-int/2addr v8, v9

    aget v6, v1, v6

    aput v6, v0, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_31
    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getInstance()Lcom/google/android/apps/uploader/googlemobile/common/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->getImageFactory()Lcom/google/android/apps/uploader/googlemobile/common/graphics/ImageFactory;

    move-result-object v1

    invoke-interface {v1, v0, v7, v3, v2}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/ImageFactory;->createRGBImage([IIIZ)Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;

    move-result-object v0

    return-object v0
.end method

.method public static toBmp(Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;)[B
    .registers 13

    const/4 v9, 0x4

    const/4 v2, 0x0

    invoke-interface {p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;->getWidth()I

    move-result v3

    invoke-interface {p0}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;->getHeight()I

    move-result v7

    mul-int v0, v3, v7

    new-array v1, v0, [I

    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-interface/range {v0 .. v7}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/GoogleImage;->getRGB([IIIIIII)V

    mul-int v0, v3, v7

    new-array v0, v0, [I

    move v4, v2

    :goto_1a
    if-ge v4, v7, :cond_32

    move v5, v2

    :goto_1d
    if-ge v5, v3, :cond_2f

    mul-int v6, v4, v3

    add-int/2addr v6, v5

    const/4 v8, 0x1

    sub-int v8, v7, v8

    sub-int/2addr v8, v4

    mul-int/2addr v8, v3

    add-int/2addr v8, v5

    aget v6, v1, v6

    aput v6, v0, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_32
    const/16 v1, 0x36

    new-array v1, v1, [B

    fill-array-data v1, :array_f4

    const/16 v4, 0x15

    shr-int/lit8 v5, v3, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    const/16 v4, 0x14

    shr-int/lit8 v5, v3, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    const/16 v4, 0x13

    shr-int/lit8 v5, v3, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    const/16 v4, 0x12

    and-int/lit16 v5, v3, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    const/16 v4, 0x19

    shr-int/lit8 v5, v7, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    const/16 v4, 0x18

    shr-int/lit8 v5, v7, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    const/16 v4, 0x17

    shr-int/lit8 v5, v7, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    const/16 v4, 0x16

    and-int/lit16 v5, v7, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    mul-int/lit8 v4, v3, 0x3

    rem-int/lit8 v5, v4, 0x4

    if-nez v5, :cond_e7

    move v4, v2

    :goto_84
    array-length v5, v1

    mul-int/lit8 v6, v3, 0x3

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    mul-int v6, v4, v7

    add-int/2addr v5, v6

    const/4 v6, 0x5

    shr-int/lit8 v7, v5, 0x18

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    shr-int/lit8 v6, v5, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v9

    const/4 v6, 0x3

    shr-int/lit8 v7, v5, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    const/4 v6, 0x2

    and-int/lit16 v7, v5, 0xff

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    new-array v5, v5, [B

    array-length v6, v1

    invoke-static {v1, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    move v6, v2

    move v7, v1

    move v1, v2

    :goto_b3
    array-length v8, v0

    if-ge v1, v8, :cond_f0

    aget v8, v0, v1

    shr-int/lit8 v8, v8, 0x10

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aget v9, v0, v1

    shr-int/lit8 v9, v9, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aget v10, v0, v1

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    add-int/lit8 v11, v7, 0x1

    aput-byte v10, v5, v7

    add-int/lit8 v7, v11, 0x1

    aput-byte v9, v5, v11

    add-int/lit8 v9, v7, 0x1

    aput-byte v8, v5, v7

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v3, :cond_f1

    if-eqz v4, :cond_f1

    move v6, v2

    move v7, v9

    :goto_dd
    if-ge v6, v4, :cond_ec

    add-int/lit8 v8, v7, 0x1

    aput-byte v2, v5, v7

    add-int/lit8 v6, v6, 0x1

    move v7, v8

    goto :goto_dd

    :cond_e7
    rem-int/lit8 v4, v4, 0x4

    sub-int v4, v9, v4

    goto :goto_84

    :cond_ec
    move v6, v2

    :goto_ed
    add-int/lit8 v1, v1, 0x1

    goto :goto_b3

    :cond_f0
    return-object v5

    :cond_f1
    move v7, v9

    goto :goto_ed

    nop

    :array_f4
    .array-data 0x1
        0x42t
        0x4dt
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x36t
        0x0t
        0x0t
        0x0t
        0x28t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x18t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static transformScanline([IIIIIII[IIII)V
    .registers 51

    and-int/lit8 v5, p10, 0x2

    if-eqz v5, :cond_17d

    const/4 v5, 0x1

    :goto_5
    and-int/lit8 p10, p10, 0x1

    if-eqz p10, :cond_1fb

    shr-int/lit8 p10, p5, 0x10

    add-int/lit8 p10, p10, 0x1

    shr-int/lit8 v6, p6, 0x10

    add-int/lit8 v6, v6, 0x1

    div-int v7, p5, p10

    div-int v8, p6, v6

    mul-int v9, p10, v6

    move/from16 v38, p9

    move/from16 p9, p3

    move/from16 p3, v38

    move/from16 v39, p4

    move/from16 p4, p8

    move/from16 p8, v39

    :goto_23
    add-int/lit8 v10, p3, -0x1

    if-lez p3, :cond_1f7

    const/16 p3, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v15, p9

    move/from16 p9, v13

    move/from16 v13, p3

    move/from16 p3, v14

    move/from16 v14, p8

    move/from16 v38, v12

    move v12, v11

    move/from16 v11, v38

    :goto_3c
    move/from16 v0, p3

    move v1, v6

    if-ge v0, v1, :cond_18e

    const/16 v16, 0x0

    move/from16 v17, v15

    move/from16 v38, p9

    move/from16 p9, v16

    move/from16 v16, v13

    move v13, v12

    move v12, v11

    move/from16 v11, v38

    :goto_4f
    move/from16 v0, p9

    move/from16 v1, p10

    if-ge v0, v1, :cond_180

    shr-int/lit8 v18, v17, 0x10

    shr-int/lit8 v19, v14, 0x10

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/ImageUtil;->getColor([IIIII)I

    move-result v20

    add-int/lit8 v21, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v21

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/ImageUtil;->getColor([IIIII)I

    move-result v21

    add-int/lit8 v22, v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v18

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/ImageUtil;->getColor([IIIII)I

    move-result v22

    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/uploader/googlemobile/common/graphics/ImageUtil;->getColor([IIIII)I

    move-result v18

    const v19, 0xffff

    and-int v19, v19, v17

    shr-int/lit8 v19, v19, 0x8

    const v23, 0xffff

    and-int v23, v23, v14

    shr-int/lit8 v23, v23, 0x8

    const/16 v24, 0x100

    sub-int v24, v24, v19

    const/16 v25, 0x100

    sub-int v25, v25, v23

    mul-int v24, v24, v25

    const/16 v25, 0x100

    sub-int v25, v25, v23

    mul-int v25, v25, v19

    const/16 v26, 0x100

    sub-int v26, v26, v19

    mul-int v26, v26, v23

    mul-int v19, v19, v23

    shr-int/lit8 v23, v20, 0x10

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    shr-int/lit8 v27, v20, 0x8

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    shr-int/lit8 v29, v21, 0x10

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0xff

    move/from16 v29, v0

    shr-int/lit8 v30, v21, 0x8

    move/from16 v0, v30

    and-int/lit16 v0, v0, 0xff

    move/from16 v30, v0

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v31, v0

    shr-int/lit8 v32, v22, 0x10

    move/from16 v0, v32

    and-int/lit16 v0, v0, 0xff

    move/from16 v32, v0

    shr-int/lit8 v33, v22, 0x8

    move/from16 v0, v33

    and-int/lit16 v0, v0, 0xff

    move/from16 v33, v0

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v34, v0

    shr-int/lit8 v35, v18, 0x10

    move/from16 v0, v35

    and-int/lit16 v0, v0, 0xff

    move/from16 v35, v0

    shr-int/lit8 v36, v18, 0x8

    move/from16 v0, v36

    and-int/lit16 v0, v0, 0xff

    move/from16 v36, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v37, v0

    mul-int v23, v23, v24

    mul-int v32, v32, v26

    add-int v23, v23, v32

    mul-int v29, v29, v25

    add-int v23, v23, v29

    mul-int v29, v35, v19

    add-int v23, v23, v29

    add-int v13, v13, v23

    mul-int v23, v27, v24

    mul-int v27, v33, v26

    add-int v23, v23, v27

    mul-int v27, v30, v25

    add-int v23, v23, v27

    mul-int v27, v36, v19

    add-int v23, v23, v27

    add-int v12, v12, v23

    mul-int v23, v28, v24

    mul-int v27, v34, v26

    add-int v23, v23, v27

    mul-int v27, v31, v25

    add-int v23, v23, v27

    mul-int v27, v37, v19

    add-int v23, v23, v27

    add-int v11, v11, v23

    if-eqz v5, :cond_177

    shr-int/lit8 v16, v20, 0x18

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shr-int/lit8 v20, v21, 0x18

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shr-int/lit8 v21, v22, 0x18

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    shr-int/lit8 v18, v18, 0x18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    mul-int v16, v16, v24

    mul-int v21, v21, v26

    add-int v16, v16, v21

    mul-int v20, v20, v25

    add-int v16, v16, v20

    mul-int v18, v18, v19

    add-int v16, v16, v18

    :cond_177
    add-int v17, v17, v7

    add-int/lit8 p9, p9, 0x1

    goto/16 :goto_4f

    :cond_17d
    const/4 v5, 0x0

    goto/16 :goto_5

    :cond_180
    add-int p9, v14, v8

    add-int/lit8 p3, p3, 0x1

    move/from16 v14, p9

    move/from16 p9, v11

    move v11, v12

    move v12, v13

    move/from16 v13, v16

    goto/16 :goto_3c

    :cond_18e
    div-int p3, v12, v9

    const/high16 v12, 0xff

    and-int p3, p3, v12

    div-int/2addr v11, v9

    shr-int/lit8 v11, v11, 0x8

    const v12, 0xff00

    and-int/2addr v11, v12

    or-int p3, p3, v11

    div-int p9, p9, v9

    shr-int/lit8 p9, p9, 0x10

    move/from16 v0, p9

    and-int/lit16 v0, v0, 0xff

    move/from16 p9, v0

    or-int p3, p3, p9

    add-int/lit8 p9, p4, 0x1

    if-eqz v5, :cond_1c6

    div-int v11, v13, v9

    shl-int/lit8 v11, v11, 0x8

    const/high16 v12, -0x100

    and-int/2addr v11, v12

    :goto_1b4
    or-int p3, p3, v11

    aput p3, p7, p4

    add-int p3, v15, p5

    add-int p4, p8, p6

    move/from16 p8, p4

    move/from16 p4, p9

    move/from16 p9, p3

    move/from16 p3, v10

    goto/16 :goto_23

    :cond_1c6
    const/high16 v11, -0x100

    goto :goto_1b4

    :goto_1c9
    add-int/lit8 p10, p3, -0x1

    if-lez p3, :cond_1f7

    shr-int/lit8 p3, p9, 0x10

    shr-int/lit8 v5, p8, 0x10

    if-ltz p3, :cond_1f8

    if-ltz v5, :cond_1f8

    move/from16 v0, p3

    move/from16 v1, p1

    if-ge v0, v1, :cond_1f8

    move v0, v5

    move/from16 v1, p2

    if-ge v0, v1, :cond_1f8

    add-int/lit8 v6, p4, 0x1

    mul-int v5, v5, p1

    add-int p3, p3, v5

    aget p3, p0, p3

    aput p3, p7, p4

    move/from16 p3, v6

    :goto_1ec
    add-int p4, p9, p5

    add-int p8, p8, p6

    move/from16 p9, p4

    move/from16 p4, p3

    move/from16 p3, p10

    goto :goto_1c9

    :cond_1f7
    return-void

    :cond_1f8
    move/from16 p3, p4

    goto :goto_1ec

    :cond_1fb
    move/from16 v38, p9

    move/from16 p9, p3

    move/from16 p3, v38

    move/from16 v39, p4

    move/from16 p4, p8

    move/from16 p8, v39

    goto :goto_1c9
.end method
