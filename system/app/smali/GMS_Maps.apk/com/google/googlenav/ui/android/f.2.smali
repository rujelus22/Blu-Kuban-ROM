.class public Lcom/google/googlenav/ui/android/F;
.super Landroid/graphics/Canvas;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Canvas;

.field private final b:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/graphics/Canvas;-><init>()V

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/F;->b:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;)V
    .registers 2
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    .line 30
    return-void
.end method

.method public clipPath(Landroid/graphics/Path;)Z
    .registers 3
    .parameter

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    move-result v0

    return v0
.end method

.method public clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    move-result v0

    return v0
.end method

.method public clipRect(FFFF)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    move-result v0

    return v0
.end method

.method public clipRect(FFFFLandroid/graphics/Region$Op;)Z
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    move-result v0

    return v0
.end method

.method public clipRect(IIII)Z
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    move-result v0

    return v0
.end method

.method public clipRect(Landroid/graphics/Rect;)Z
    .registers 3
    .parameter

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    move-result v0

    return v0
.end method

.method public clipRect(Landroid/graphics/RectF;)Z
    .registers 3
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method public clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    move-result v0

    return v0
.end method

.method public clipRegion(Landroid/graphics/Region;)Z
    .registers 3
    .parameter

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->clipRegion(Landroid/graphics/Region;)Z

    move-result v0

    return v0
.end method

.method public clipRegion(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->clipRegion(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    move-result v0

    return v0
.end method

.method public concat(Landroid/graphics/Matrix;)V
    .registers 3
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 126
    return-void
.end method

.method public drawARGB(IIII)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 235
    return-void
.end method

.method public drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 314
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 315
    return-void
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 330
    if-nez p4, :cond_a

    .line 331
    iget-object p4, p0, Lcom/google/googlenav/ui/android/F;->b:Landroid/graphics/Paint;

    .line 335
    :goto_4
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 336
    return-void

    .line 333
    :cond_a
    const/4 v0, 0x1

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    goto :goto_4
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 374
    if-nez p3, :cond_a

    .line 375
    iget-object p3, p0, Lcom/google/googlenav/ui/android/F;->b:Landroid/graphics/Paint;

    .line 379
    :goto_4
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 380
    return-void

    .line 377
    :cond_a
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    goto :goto_4
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 351
    if-nez p4, :cond_a

    .line 352
    iget-object p4, p0, Lcom/google/googlenav/ui/android/F;->b:Landroid/graphics/Paint;

    .line 356
    :goto_4
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 357
    return-void

    .line 354
    :cond_a
    const/4 v0, 0x1

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    goto :goto_4
.end method

.method public drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 341
    if-nez p4, :cond_a

    .line 342
    iget-object p4, p0, Lcom/google/googlenav/ui/android/F;->b:Landroid/graphics/Paint;

    .line 346
    :goto_4
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 347
    return-void

    .line 344
    :cond_a
    const/4 v0, 0x1

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    goto :goto_4
.end method

.method public drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V
    .registers 21
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 363
    if-nez p9, :cond_16

    .line 364
    iget-object v10, p0, Lcom/google/googlenav/ui/android/F;->b:Landroid/graphics/Paint;

    .line 368
    :goto_4
    iget-object v1, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v10}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 370
    return-void

    .line 366
    :cond_16
    const/4 v1, 0x1

    move-object/from16 v0, p9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    move-object/from16 v10, p9

    goto :goto_4
.end method

.method public drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V
    .registers 18
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 386
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Canvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    .line 389
    return-void
.end method

.method public drawCircle(FFFLandroid/graphics/Paint;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 308
    return-void
.end method

.method public drawColor(I)V
    .registers 3
    .parameter

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 240
    return-void
.end method

.method public drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 245
    return-void
.end method

.method public drawLine(FFFFLandroid/graphics/Paint;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 272
    return-void
.end method

.method public drawLines([FIILandroid/graphics/Paint;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 276
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 277
    return-void
.end method

.method public drawLines([FLandroid/graphics/Paint;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 281
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 282
    return-void
.end method

.method public drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 302
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 303
    return-void
.end method

.method public drawPaint(Landroid/graphics/Paint;)V
    .registers 3
    .parameter

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 250
    return-void
.end method

.method public drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 325
    return-void
.end method

.method public drawPicture(Landroid/graphics/Picture;)V
    .registers 3
    .parameter

    .prologue
    .line 453
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 454
    return-void
.end method

.method public drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 463
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V

    .line 464
    return-void
.end method

.method public drawPicture(Landroid/graphics/Picture;Landroid/graphics/RectF;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 458
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;Landroid/graphics/RectF;)V

    .line 459
    return-void
.end method

.method public drawPoint(FFLandroid/graphics/Paint;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 266
    return-void
.end method

.method public drawPoints([FIILandroid/graphics/Paint;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 256
    return-void
.end method

.method public drawPoints([FLandroid/graphics/Paint;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->drawPoints([FLandroid/graphics/Paint;)V

    .line 261
    return-void
.end method

.method public drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 433
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Canvas;->drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V

    .line 434
    return-void
.end method

.method public drawPosText([CII[FLandroid/graphics/Paint;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 428
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawPosText([CII[FLandroid/graphics/Paint;)V

    .line 429
    return-void
.end method

.method public drawRGB(III)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 229
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Canvas;->drawRGB(III)V

    .line 230
    return-void
.end method

.method public drawRect(FFFFLandroid/graphics/Paint;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 298
    return-void
.end method

.method public drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 291
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 292
    return-void
.end method

.method public drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 287
    return-void
.end method

.method public drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 320
    return-void
.end method

.method public drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 423
    return-void
.end method

.method public drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 410
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 411
    return-void
.end method

.method public drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 416
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 417
    return-void
.end method

.method public drawText([CIIFFLandroid/graphics/Paint;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 405
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 406
    return-void
.end method

.method public drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 448
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 449
    return-void
.end method

.method public drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 440
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V

    .line 442
    return-void
.end method

.method public drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V
    .registers 26
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 397
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    invoke-virtual/range {v0 .. v12}, Landroid/graphics/Canvas;->drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V

    .line 400
    return-void
.end method

.method public getClipBounds(Landroid/graphics/Rect;)Z
    .registers 3
    .parameter

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public getDrawFilter()Landroid/graphics/DrawFilter;
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getDrawFilter()Landroid/graphics/DrawFilter;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMatrix(Landroid/graphics/Matrix;)V
    .registers 3
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 136
    return-void
.end method

.method public getSaveCount()I
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    return v0
.end method

.method public isOpaque()Z
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result v0

    return v0
.end method

.method public quickReject(Landroid/graphics/Path;Landroid/graphics/Canvas$EdgeType;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->quickReject(Landroid/graphics/Path;Landroid/graphics/Canvas$EdgeType;)Z

    move-result v0

    return v0
.end method

.method public quickReject(Landroid/graphics/RectF;Landroid/graphics/Canvas$EdgeType;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 207
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->quickReject(Landroid/graphics/RectF;Landroid/graphics/Canvas$EdgeType;)Z

    move-result v0

    return v0
.end method

.method public restore()V
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    .line 91
    return-void
.end method

.method public restoreToCount(I)V
    .registers 3
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 101
    return-void
.end method

.method public rotate(F)V
    .registers 3
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 116
    return-void
.end method

.method public save()I
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    return v0
.end method

.method public save(I)I
    .registers 3
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->save(I)I

    move-result v0

    return v0
.end method

.method public saveLayer(FFFFLandroid/graphics/Paint;I)I
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    return v0
.end method

.method public saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v0

    return v0
.end method

.method public saveLayerAlpha(FFFFII)I
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-result v0

    return v0
.end method

.method public saveLayerAlpha(Landroid/graphics/RectF;II)I
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    move-result v0

    return v0
.end method

.method public scale(FF)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 111
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 3
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 35
    return-void
.end method

.method public setDrawFilter(Landroid/graphics/DrawFilter;)V
    .registers 3
    .parameter

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 203
    return-void
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .registers 3
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 131
    return-void
.end method

.method public skew(FF)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->skew(FF)V

    .line 121
    return-void
.end method

.method public translate(FF)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/googlenav/ui/android/F;->a:Landroid/graphics/Canvas;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 106
    return-void
.end method
