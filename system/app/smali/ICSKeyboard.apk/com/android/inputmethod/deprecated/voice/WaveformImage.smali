.class public Lcom/android/inputmethod/deprecated/voice/WaveformImage;
.super Ljava/lang/Object;
.source "WaveformImage.java"


# static fields
.field private static final SAMPLING_RATE:I = 0x1f40


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static drawWaveform(Ljava/io/ByteArrayOutputStream;IIII)Landroid/graphics/Bitmap;
    .registers 28
    .parameter "waveBuffer"
    .parameter "w"
    .parameter "h"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 42
    sget-object v20, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 43
    .local v3, b:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 44
    .local v5, c:Landroid/graphics/Canvas;
    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    .line 45
    .local v14, paint:Landroid/graphics/Paint;
    const/16 v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 47
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 50
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v20

    .line 51
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v20

    .line 52
    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v4

    .line 53
    .local v4, buf:Ljava/nio/ShortBuffer;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 55
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v20

    div-int/lit8 v13, v20, 0x2

    .line 56
    .local v13, numSamples:I
    const/16 v6, 0x320

    .line 57
    .local v6, delay:I
    div-int/lit8 v20, p4, 0x2

    move/from16 v0, v20

    add-int/lit16 v8, v0, 0x320

    .line 58
    .local v8, endIndex:I
    if-eqz p4, :cond_58

    if-lt v8, v13, :cond_59

    .line 59
    :cond_58
    move v8, v13

    .line 61
    :cond_59
    div-int/lit8 v20, p3, 0x2

    move/from16 v0, v20

    add-int/lit16 v10, v0, -0x320

    .line 62
    .local v10, index:I
    if-gez v10, :cond_62

    .line 63
    const/4 v10, 0x0

    .line 65
    :cond_62
    sub-int v17, v8, v10

    .line 66
    .local v17, size:I
    const/16 v12, 0x20

    .line 67
    .local v12, numSamplePerPixel:I
    mul-int v20, v12, p1

    div-int v7, v17, v20

    .line 68
    .local v7, delta:I
    if-nez v7, :cond_6f

    .line 69
    div-int v12, v17, p1

    .line 70
    const/4 v7, 0x1

    .line 73
    :cond_6f
    const/high16 v16, 0x3860

    .line 77
    .local v16, scale:F
    const/4 v9, 0x0

    .local v9, i:I
    :goto_72
    add-int/lit8 v20, p1, -0x1

    move/from16 v0, v20

    if-lt v9, v0, :cond_79

    .line 90
    :goto_78
    return-object v3

    .line 78
    :cond_79
    int-to-float v0, v9

    move/from16 v18, v0

    .line 79
    .local v18, x:F
    const/4 v11, 0x0

    .local v11, j:I
    :goto_7d
    if-lt v11, v12, :cond_82

    .line 77
    add-int/lit8 v9, v9, 0x1

    goto :goto_72

    .line 80
    :cond_82
    :try_start_82
    invoke-virtual {v4, v10}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v15

    .line 81
    .local v15, s:S
    div-int/lit8 v20, p2, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-int v21, v15, p2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x3860

    mul-float v21, v21, v22

    sub-float v19, v20, v21

    .line 82
    .local v19, y:F
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1, v14}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V
    :try_end_a1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_82 .. :try_end_a1} :catch_a5

    .line 83
    add-int/2addr v10, v7

    .line 79
    add-int/lit8 v11, v11, 0x1

    goto :goto_7d

    .line 86
    .end local v15           #s:S
    .end local v19           #y:F
    :catch_a5
    move-exception v20

    goto :goto_78
.end method
