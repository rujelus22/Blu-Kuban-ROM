.class public final Lcom/anddoes/launcher/do;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I

.field public static final b:I

.field private static final g:Landroid/graphics/BlurMaskFilter;

.field private static final h:Landroid/graphics/BlurMaskFilter;

.field private static final i:Landroid/graphics/BlurMaskFilter;

.field private static final j:Landroid/graphics/BlurMaskFilter;

.field private static final k:Landroid/graphics/BlurMaskFilter;

.field private static final l:Landroid/graphics/BlurMaskFilter;

.field private static final m:Landroid/graphics/BlurMaskFilter;

.field private static final n:Landroid/graphics/MaskFilter;


# instance fields
.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/Paint;

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Paint;

.field private o:[I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/high16 v2, 0x4140

    const/high16 v6, 0x40c0

    const/high16 v5, 0x4000

    const/high16 v4, 0x3f80

    .line 50
    invoke-static {}, Lcom/anddoes/launcher/LauncherApplication;->e()F

    move-result v0

    .line 52
    mul-float v1, v0, v4

    float-to-int v1, v1

    sput v1, Lcom/anddoes/launcher/do;->b:I

    .line 53
    mul-float v1, v0, v2

    float-to-int v1, v1

    sput v1, Lcom/anddoes/launcher/do;->a:I

    .line 55
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    mul-float/2addr v2, v0

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/anddoes/launcher/do;->g:Landroid/graphics/BlurMaskFilter;

    .line 56
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    mul-float v2, v0, v6

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/anddoes/launcher/do;->h:Landroid/graphics/BlurMaskFilter;

    .line 57
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    mul-float v2, v0, v5

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/anddoes/launcher/do;->i:Landroid/graphics/BlurMaskFilter;

    .line 58
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    mul-float v2, v0, v4

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/anddoes/launcher/do;->j:Landroid/graphics/BlurMaskFilter;

    .line 59
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    mul-float v2, v0, v6

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/anddoes/launcher/do;->l:Landroid/graphics/BlurMaskFilter;

    .line 60
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    const/high16 v2, 0x4080

    mul-float/2addr v2, v0

    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/anddoes/launcher/do;->k:Landroid/graphics/BlurMaskFilter;

    .line 61
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    mul-float/2addr v0, v5

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v1, v0, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    sput-object v1, Lcom/anddoes/launcher/do;->m:Landroid/graphics/BlurMaskFilter;

    .line 64
    const/4 v0, 0x0

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v0

    sput-object v0, Lcom/anddoes/launcher/do;->n:Landroid/graphics/MaskFilter;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/do;->c:Landroid/graphics/Paint;

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/do;->d:Landroid/graphics/Paint;

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/do;->e:Landroid/graphics/Paint;

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/anddoes/launcher/do;->f:Landroid/graphics/Paint;

    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/anddoes/launcher/do;->o:[I

    .line 69
    iget-object v0, p0, Lcom/anddoes/launcher/do;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 70
    iget-object v0, p0, Lcom/anddoes/launcher/do;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 71
    iget-object v0, p0, Lcom/anddoes/launcher/do;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 72
    iget-object v0, p0, Lcom/anddoes/launcher/do;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 73
    iget-object v0, p0, Lcom/anddoes/launcher/do;->e:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 74
    iget-object v0, p0, Lcom/anddoes/launcher/do;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 75
    iget-object v0, p0, Lcom/anddoes/launcher/do;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    const/16 v0, 0xb4

    const/16 v1, 0xff

    invoke-static {v0, v1}, Landroid/graphics/TableMaskFilter;->CreateClipTable(II)Landroid/graphics/TableMaskFilter;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/anddoes/launcher/do;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 78
    return-void
.end method

.method public static a(F)F
    .registers 5
    .parameter

    .prologue
    .line 85
    const v0, 0x3f19999a

    const/high16 v1, 0x3f80

    sub-float/2addr v1, p0

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff8

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private a(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;III)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 125
    iget-object v5, p0, Lcom/anddoes/launcher/do;->f:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/anddoes/launcher/do;->a(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IILandroid/graphics/Paint;I)V

    .line 127
    return-void
.end method

.method private a(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IILandroid/graphics/Paint;I)V
    .registers 21
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    if-nez p5, :cond_6

    .line 134
    iget-object v0, p0, Lcom/anddoes/launcher/do;->f:Landroid/graphics/Paint;

    move-object/from16 p5, v0

    .line 136
    :cond_6
    iget-object v1, p0, Lcom/anddoes/launcher/do;->o:[I

    move-object/from16 v0, p5

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 140
    packed-switch p6, :pswitch_data_114

    .line 151
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid blur thickness"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    :pswitch_19
    sget-object v1, Lcom/anddoes/launcher/do;->g:Landroid/graphics/BlurMaskFilter;

    .line 153
    :goto_1b
    iget-object v2, p0, Lcom/anddoes/launcher/do;->d:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 154
    const/4 v1, 0x2

    new-array v8, v1, [I

    .line 155
    iget-object v1, p0, Lcom/anddoes/launcher/do;->d:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v8}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 156
    const/4 v1, 0x2

    move/from16 v0, p6

    if-ne v0, v1, :cond_5d

    .line 157
    iget-object v1, p0, Lcom/anddoes/launcher/do;->d:Landroid/graphics/Paint;

    sget-object v2, Lcom/anddoes/launcher/do;->i:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 162
    :goto_35
    const/4 v1, 0x2

    new-array v10, v1, [I

    .line 163
    iget-object v1, p0, Lcom/anddoes/launcher/do;->d:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v10}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 166
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 167
    const/high16 v1, -0x100

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 169
    packed-switch p6, :pswitch_data_11e

    .line 180
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Invalid blur thickness"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 145
    :pswitch_57
    sget-object v1, Lcom/anddoes/launcher/do;->h:Landroid/graphics/BlurMaskFilter;

    goto :goto_1b

    .line 148
    :pswitch_5a
    sget-object v1, Lcom/anddoes/launcher/do;->i:Landroid/graphics/BlurMaskFilter;

    goto :goto_1b

    .line 159
    :cond_5d
    iget-object v1, p0, Lcom/anddoes/launcher/do;->d:Landroid/graphics/Paint;

    sget-object v2, Lcom/anddoes/launcher/do;->j:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    goto :goto_35

    .line 171
    :pswitch_65
    sget-object v1, Lcom/anddoes/launcher/do;->l:Landroid/graphics/BlurMaskFilter;

    .line 182
    :goto_67
    iget-object v2, p0, Lcom/anddoes/launcher/do;->d:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 183
    const/4 v1, 0x2

    new-array v12, v1, [I

    .line 184
    iget-object v1, p0, Lcom/anddoes/launcher/do;->d:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v12}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 187
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 188
    const/4 v1, 0x0

    aget v1, v12, v1

    neg-int v1, v1

    int-to-float v1, v1

    .line 189
    const/4 v2, 0x1

    aget v2, v12, v2

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/anddoes/launcher/do;->e:Landroid/graphics/Paint;

    .line 188
    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 190
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    aget v1, v12, v1

    neg-int v1, v1

    int-to-float v4, v1

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v5, v1

    .line 191
    iget-object v6, p0, Lcom/anddoes/launcher/do;->e:Landroid/graphics/Paint;

    move-object/from16 v1, p2

    .line 190
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 192
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v4, v1

    const/4 v1, 0x1

    aget v1, v12, v1

    neg-int v1, v1

    int-to-float v5, v1

    .line 193
    iget-object v6, p0, Lcom/anddoes/launcher/do;->e:Landroid/graphics/Paint;

    move-object/from16 v1, p2

    .line 192
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 196
    move-object/from16 v0, p2

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 197
    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 198
    iget-object v1, p0, Lcom/anddoes/launcher/do;->c:Landroid/graphics/Paint;

    move/from16 v0, p3

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 199
    const/4 v1, 0x0

    aget v1, v12, v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v2, v12, v2

    int-to-float v2, v2

    .line 200
    iget-object v3, p0, Lcom/anddoes/launcher/do;->c:Landroid/graphics/Paint;

    .line 199
    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 201
    const/4 v1, 0x0

    aget v1, v8, v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v2, v8, v2

    int-to-float v2, v2

    .line 202
    iget-object v3, p0, Lcom/anddoes/launcher/do;->c:Landroid/graphics/Paint;

    .line 201
    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 205
    iget-object v1, p0, Lcom/anddoes/launcher/do;->c:Landroid/graphics/Paint;

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 206
    const/4 v1, 0x0

    aget v1, v10, v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v2, v10, v2

    int-to-float v2, v2

    .line 207
    iget-object v3, p0, Lcom/anddoes/launcher/do;->c:Landroid/graphics/Paint;

    .line 206
    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 210
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 211
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 212
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    .line 213
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 214
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 215
    return-void

    .line 174
    :pswitch_10c
    sget-object v1, Lcom/anddoes/launcher/do;->k:Landroid/graphics/BlurMaskFilter;

    goto/16 :goto_67

    .line 177
    :pswitch_110
    sget-object v1, Lcom/anddoes/launcher/do;->m:Landroid/graphics/BlurMaskFilter;

    goto/16 :goto_67

    .line 140
    :pswitch_data_114
    .packed-switch 0x0
        :pswitch_57
        :pswitch_5a
        :pswitch_19
    .end packed-switch

    .line 169
    :pswitch_data_11e
    .packed-switch 0x0
        :pswitch_10c
        :pswitch_110
        :pswitch_65
    .end packed-switch
.end method

.method public static b(F)F
    .registers 5
    .parameter

    .prologue
    const v1, 0x3f733333

    .line 93
    cmpg-float v0, p0, v1

    if-gez v0, :cond_12

    .line 95
    div-float v0, p0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff8

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 97
    :goto_11
    return v0

    :cond_12
    const/high16 v0, 0x3f80

    goto :goto_11
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;I)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/anddoes/launcher/do;->d:Landroid/graphics/Paint;

    sget-object v1, Lcom/anddoes/launcher/do;->h:Landroid/graphics/BlurMaskFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 108
    iget-object v0, p0, Lcom/anddoes/launcher/do;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/anddoes/launcher/do;->o:[I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->extractAlpha(Landroid/graphics/Paint;[I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/anddoes/launcher/do;->c:Landroid/graphics/Paint;

    sget-object v2, Lcom/anddoes/launcher/do;->n:Landroid/graphics/MaskFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 112
    iget-object v1, p0, Lcom/anddoes/launcher/do;->c:Landroid/graphics/Paint;

    const/16 v2, 0x96

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 113
    iget-object v1, p0, Lcom/anddoes/launcher/do;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    iget-object v1, p0, Lcom/anddoes/launcher/do;->o:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/anddoes/launcher/do;->o:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/anddoes/launcher/do;->c:Landroid/graphics/Paint;

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 116
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 117
    return-void
.end method

.method final a(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 219
    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/anddoes/launcher/do;->a(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;III)V

    .line 220
    return-void
.end method

.method final b(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 229
    const/4 v5, 0x0

    .line 230
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 229
    invoke-direct/range {v0 .. v6}, Lcom/anddoes/launcher/do;->a(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IILandroid/graphics/Paint;I)V

    .line 231
    return-void
.end method

.method final c(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 235
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/anddoes/launcher/do;->a(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;III)V

    .line 236
    return-void
.end method
