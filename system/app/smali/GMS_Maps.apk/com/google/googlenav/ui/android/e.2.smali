.class Lcom/google/googlenav/ui/android/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ui/aS;


# instance fields
.field private a:Landroid/graphics/Canvas;

.field private b:Landroid/graphics/Bitmap;

.field private c:LT/f;

.field private final d:Landroid/graphics/Path;

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Paint;

.field private final g:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object v0, p0, Lcom/google/googlenav/ui/android/e;->a:Landroid/graphics/Canvas;

    .line 112
    iput-object v0, p0, Lcom/google/googlenav/ui/android/e;->b:Landroid/graphics/Bitmap;

    .line 113
    iput-object v0, p0, Lcom/google/googlenav/ui/android/e;->c:LT/f;

    .line 115
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/e;->d:Landroid/graphics/Path;

    .line 116
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/e;->e:Landroid/graphics/Paint;

    .line 117
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/e;->f:Landroid/graphics/Paint;

    .line 118
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/e;->g:Landroid/graphics/Paint;

    .line 121
    iget-object v0, p0, Lcom/google/googlenav/ui/android/e;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 122
    iget-object v0, p0, Lcom/google/googlenav/ui/android/e;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 123
    iget-object v0, p0, Lcom/google/googlenav/ui/android/e;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 124
    iget-object v0, p0, Lcom/google/googlenav/ui/android/e;->f:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 125
    iget-object v0, p0, Lcom/google/googlenav/ui/android/e;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 126
    return-void
.end method

.method private a(ILandroid/graphics/Paint;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 158
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 159
    const v1, 0xffffff

    and-int/2addr v1, p1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 160
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 161
    return-void
.end method

.method private c()V
    .registers 4

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/googlenav/ui/android/e;->a:Landroid/graphics/Canvas;

    if-nez v0, :cond_22

    .line 145
    iget-object v0, p0, Lcom/google/googlenav/ui/android/e;->c:LT/f;

    invoke-virtual {v0}, LT/f;->a()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/android/e;->c:LT/f;

    invoke-virtual {v1}, LT/f;->b()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/e;->b:Landroid/graphics/Bitmap;

    .line 147
    iget-object v0, p0, Lcom/google/googlenav/ui/android/e;->b:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/e;->c:LT/f;

    invoke-static {v0, v1}, Lcom/google/googlenav/ui/android/d;->a(Landroid/graphics/Bitmap;LT/f;)Landroid/graphics/Canvas;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/android/e;->a:Landroid/graphics/Canvas;

    .line 149
    :cond_22
    return-void
.end method

.method private d()V
    .registers 4

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/e;->c()V

    .line 196
    iget-object v0, p0, Lcom/google/googlenav/ui/android/e;->a:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/e;->d:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/e;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 197
    iget-object v0, p0, Lcom/google/googlenav/ui/android/e;->d:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 198
    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/e;->d()V

    .line 181
    return-void
.end method

.method public a(III)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/e;->c()V

    .line 167
    iget-object v0, p0, Lcom/google/googlenav/ui/android/e;->d:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 169
    iget-object v0, p0, Lcom/google/googlenav/ui/android/e;->e:Landroid/graphics/Paint;

    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 170
    const/4 v0, 0x1

    if-ne p3, v0, :cond_20

    .line 171
    iget-object v0, p0, Lcom/google/googlenav/ui/android/e;->e:Landroid/graphics/Paint;

    invoke-static {}, Lcom/google/googlenav/ui/android/d;->g()Landroid/graphics/PathEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 175
    :goto_1a
    iget-object v0, p0, Lcom/google/googlenav/ui/android/e;->e:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0}, Lcom/google/googlenav/ui/android/e;->a(ILandroid/graphics/Paint;)V

    .line 176
    return-void

    .line 173
    :cond_20
    iget-object v0, p0, Lcom/google/googlenav/ui/android/e;->e:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_1a
.end method

.method public a(IIIIIII)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/e;->c()V

    .line 271
    new-instance v0, Landroid/graphics/RectF;

    div-int/lit8 v1, p3, 0x2

    sub-int v1, p1, v1

    int-to-float v1, v1

    div-int/lit8 v2, p4, 0x2

    sub-int v2, p2, v2

    int-to-float v2, v2

    int-to-float v3, p3

    int-to-float v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 274
    iget-object v1, p0, Lcom/google/googlenav/ui/android/e;->g:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 275
    iget-object v1, p0, Lcom/google/googlenav/ui/android/e;->g:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 276
    iget-object v1, p0, Lcom/google/googlenav/ui/android/e;->g:Landroid/graphics/Paint;

    invoke-direct {p0, p7, v1}, Lcom/google/googlenav/ui/android/e;->a(ILandroid/graphics/Paint;)V

    .line 277
    iget-object v1, p0, Lcom/google/googlenav/ui/android/e;->a:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/e;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 280
    iget-object v1, p0, Lcom/google/googlenav/ui/android/e;->g:Landroid/graphics/Paint;

    int-to-float v2, p5

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 281
    iget-object v1, p0, Lcom/google/googlenav/ui/android/e;->g:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 282
    iget-object v1, p0, Lcom/google/googlenav/ui/android/e;->g:Landroid/graphics/Paint;

    invoke-direct {p0, p6, v1}, Lcom/google/googlenav/ui/android/e;->a(ILandroid/graphics/Paint;)V

    .line 283
    iget-object v1, p0, Lcom/google/googlenav/ui/android/e;->a:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/e;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 284
    return-void
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;LT/f;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/googlenav/ui/android/e;->a:Landroid/graphics/Canvas;

    .line 135
    iput-object p2, p0, Lcom/google/googlenav/ui/android/e;->b:Landroid/graphics/Bitmap;

    .line 136
    iput-object p3, p0, Lcom/google/googlenav/ui/android/e;->c:LT/f;

    .line 137
    return-void
.end method

.method public a([I[IZ)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 186
    if-eqz p3, :cond_12

    .line 187
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/e;->d()V

    .line 188
    iget-object v0, p0, Lcom/google/googlenav/ui/android/e;->d:Landroid/graphics/Path;

    aget v1, p2, v3

    int-to-float v1, v1

    aget v2, p2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 191
    :cond_12
    iget-object v0, p0, Lcom/google/googlenav/ui/android/e;->d:Landroid/graphics/Path;

    aget v1, p1, v3

    int-to-float v1, v1

    aget v2, p1, v4

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 192
    return-void
.end method

.method public a([[JIII)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, -0x1

    const/4 v2, 0x0

    .line 226
    invoke-direct {p0}, Lcom/google/googlenav/ui/android/e;->c()V

    .line 228
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 229
    array-length v4, p1

    move v1, v2

    .line 230
    :goto_c
    if-ge v1, v4, :cond_48

    .line 232
    aget-object v0, p1, v1

    aget-wide v5, v0, v2

    invoke-static {v5, v6}, Lcom/google/googlenav/ui/aR;->a(J)I

    move-result v0

    int-to-float v0, v0

    aget-object v5, p1, v1

    aget-wide v5, v5, v2

    invoke-static {v5, v6}, Lcom/google/googlenav/ui/aR;->b(J)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v0, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 236
    aget-object v0, p1, v1

    array-length v5, v0

    .line 237
    const/4 v0, 0x1

    :goto_27
    if-ge v0, v5, :cond_41

    .line 238
    aget-object v6, p1, v1

    aget-wide v6, v6, v0

    invoke-static {v6, v7}, Lcom/google/googlenav/ui/aR;->a(J)I

    move-result v6

    int-to-float v6, v6

    aget-object v7, p1, v1

    aget-wide v7, v7, v0

    invoke-static {v7, v8}, Lcom/google/googlenav/ui/aR;->b(J)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 243
    :cond_41
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 230
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_c

    .line 247
    :cond_48
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v3, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 248
    if-ne p4, v9, :cond_83

    .line 249
    iget-object v0, p0, Lcom/google/googlenav/ui/android/e;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 253
    :goto_56
    iget-object v0, p0, Lcom/google/googlenav/ui/android/e;->g:Landroid/graphics/Paint;

    invoke-direct {p0, p4, v0}, Lcom/google/googlenav/ui/android/e;->a(ILandroid/graphics/Paint;)V

    .line 254
    iget-object v0, p0, Lcom/google/googlenav/ui/android/e;->a:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/e;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 257
    if-eq p2, v9, :cond_82

    .line 258
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v3, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 259
    iget-object v0, p0, Lcom/google/googlenav/ui/android/e;->g:Landroid/graphics/Paint;

    int-to-float v1, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 260
    iget-object v0, p0, Lcom/google/googlenav/ui/android/e;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 261
    iget-object v0, p0, Lcom/google/googlenav/ui/android/e;->g:Landroid/graphics/Paint;

    invoke-direct {p0, p2, v0}, Lcom/google/googlenav/ui/android/e;->a(ILandroid/graphics/Paint;)V

    .line 262
    iget-object v0, p0, Lcom/google/googlenav/ui/android/e;->a:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/googlenav/ui/android/e;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 264
    :cond_82
    return-void

    .line 251
    :cond_83
    iget-object v0, p0, Lcom/google/googlenav/ui/android/e;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_56
.end method

.method public b()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/googlenav/ui/android/e;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method
