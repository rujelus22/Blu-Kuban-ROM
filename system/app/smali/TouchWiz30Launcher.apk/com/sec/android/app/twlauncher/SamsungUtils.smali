.class final Lcom/sec/android/app/twlauncher/SamsungUtils;
.super Ljava/lang/Object;
.source "SamsungUtils.java"


# static fields
.field private static final lt1:[F

.field private static final lt2:[F

.field private static final projMatrix:[F

.field private static final rb1:[F

.field private static final rb2:[F

.field private static final traMatrix:[F


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x4

    .line 213
    new-array v0, v2, [F

    sput-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->traMatrix:[F

    .line 214
    new-array v0, v2, [F

    sput-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->projMatrix:[F

    .line 215
    new-array v0, v1, [F

    sput-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->lt1:[F

    .line 216
    new-array v0, v1, [F

    sput-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->lt2:[F

    .line 217
    new-array v0, v1, [F

    sput-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->rb1:[F

    .line 218
    new-array v0, v1, [F

    sput-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->rb2:[F

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method static acquireDVFSlock(II)V
    .registers 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 68
    return-void
.end method

.method static broadcastStkIntent(Landroid/content/Context;)V
    .registers 1
    .parameter "context"

    .prologue
    .line 55
    return-void
.end method

.method public static centerChildInParent(Landroid/graphics/RectF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .registers 6
    .parameter "dest"
    .parameter "sizeParent"
    .parameter "sizeChild"

    .prologue
    const/high16 v2, 0x4000

    .line 287
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 288
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 289
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 290
    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 291
    return-void
.end method

.method public static centerChildInParent(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;)V
    .registers 7
    .parameter "dest"
    .parameter "sizeParent"
    .parameter "sizeChild"

    .prologue
    const/high16 v3, 0x4000

    .line 294
    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->left:F

    .line 295
    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 296
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->right:F

    .line 297
    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/RectF;->bottom:F

    .line 298
    return-void
.end method

.method static drawBorder(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;FFF)V
    .registers 11
    .parameter "aCanvas"
    .parameter "aView"
    .parameter "aR"
    .parameter "aG"
    .parameter "aB"

    .prologue
    .line 124
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/SamsungUtils;->drawBorder(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;FFFZ)V

    .line 125
    return-void
.end method

.method static drawBorder(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/view/View;FFFZ)V
    .registers 12
    .parameter "aCanvas"
    .parameter "aView"
    .parameter "aR"
    .parameter "aG"
    .parameter "aB"
    .parameter "aTranslate"

    .prologue
    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    .line 110
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->save()V

    .line 111
    if-eqz p5, :cond_15

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/twlauncher/GLCanvas;->translate(FF)V

    .line 114
    :cond_15
    invoke-virtual {p0, p2, p3, p4}, Lcom/sec/android/app/twlauncher/GLCanvas;->setColor(FFF)V

    .line 115
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 116
    .local v0, dim:Landroid/graphics/PointF;
    iget v1, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v4, v4, v5, v1}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(FFFF)V

    .line 117
    iget v1, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, v4, v4, v1, v5}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(FFFF)V

    .line 118
    iget v1, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v5

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v1, v4, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(FFFF)V

    .line 119
    iget v1, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v1, v5

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v4, v1, v2, v3}, Lcom/sec/android/app/twlauncher/GLCanvas;->drawRect(FFFF)V

    .line 120
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->restore()V

    .line 121
    return-void
.end method

.method static getScaleRatio(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/PointF;
    .registers 6
    .parameter "aUnscaled"
    .parameter "aScaled"

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 147
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1b

    .line 148
    :cond_15
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 150
    :goto_1a
    return-object v0

    :cond_1b
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_1a
.end method

.method static mapPtToRect(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/PointF;
    .registers 17
    .parameter "aPt"
    .parameter "aSrcRect"
    .parameter "aDstRect"

    .prologue
    .line 156
    move-object v3, p1

    .line 157
    .local v3, origRect:Landroid/graphics/RectF;
    new-instance v4, Landroid/graphics/PointF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v11

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v12

    invoke-direct {v4, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    .line 158
    .local v4, origSize:Landroid/graphics/PointF;
    new-instance v2, Landroid/graphics/PointF;

    iget v11, v4, Landroid/graphics/PointF;->x:F

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    iget v12, v4, Landroid/graphics/PointF;->y:F

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    invoke-direct {v2, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    .line 159
    .local v2, origCenter:Landroid/graphics/PointF;
    new-instance v1, Landroid/graphics/PointF;

    iget v11, p0, Landroid/graphics/PointF;->x:F

    iget v12, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v11, v12

    iget v12, p0, Landroid/graphics/PointF;->y:F

    iget v13, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v12, v13

    invoke-direct {v1, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    .line 161
    .local v1, newPt:Landroid/graphics/PointF;
    move-object/from16 v7, p2

    .line 162
    .local v7, tRefRect:Landroid/graphics/RectF;
    new-instance v8, Landroid/graphics/PointF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v11

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v12

    invoke-direct {v8, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    .line 164
    .local v8, tRefSize:Landroid/graphics/PointF;
    new-instance v0, Landroid/graphics/PointF;

    iget v11, v4, Landroid/graphics/PointF;->x:F

    iget v12, v8, Landroid/graphics/PointF;->x:F

    sub-float/2addr v11, v12

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    iget v12, v4, Landroid/graphics/PointF;->y:F

    iget v13, v8, Landroid/graphics/PointF;->y:F

    sub-float/2addr v12, v13

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    invoke-direct {v0, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    .line 166
    .local v0, idealMargin:Landroid/graphics/PointF;
    new-instance v10, Landroid/graphics/PointF;

    iget v11, v0, Landroid/graphics/PointF;->x:F

    iget v12, v7, Landroid/graphics/RectF;->left:F

    sub-float/2addr v11, v12

    iget v12, v0, Landroid/graphics/PointF;->y:F

    iget v13, v7, Landroid/graphics/RectF;->top:F

    sub-float/2addr v12, v13

    invoke-direct {v10, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    .line 168
    .local v10, translation:Landroid/graphics/PointF;
    iget v11, v1, Landroid/graphics/PointF;->x:F

    iget v12, v10, Landroid/graphics/PointF;->x:F

    add-float/2addr v11, v12

    iput v11, v1, Landroid/graphics/PointF;->x:F

    .line 169
    iget v11, v1, Landroid/graphics/PointF;->y:F

    iget v12, v10, Landroid/graphics/PointF;->y:F

    add-float/2addr v11, v12

    iput v11, v1, Landroid/graphics/PointF;->y:F

    .line 171
    const/4 v5, 0x0

    .line 172
    .local v5, scaleRatio:Landroid/graphics/PointF;
    new-instance v5, Landroid/graphics/PointF;

    .end local v5           #scaleRatio:Landroid/graphics/PointF;
    iget v11, v4, Landroid/graphics/PointF;->x:F

    iget v12, v8, Landroid/graphics/PointF;->x:F

    div-float/2addr v11, v12

    iget v12, v4, Landroid/graphics/PointF;->y:F

    iget v13, v8, Landroid/graphics/PointF;->y:F

    div-float/2addr v12, v13

    invoke-direct {v5, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    .line 173
    .restart local v5       #scaleRatio:Landroid/graphics/PointF;
    new-instance v6, Landroid/graphics/PointF;

    iget v11, v1, Landroid/graphics/PointF;->x:F

    iget v12, v5, Landroid/graphics/PointF;->x:F

    mul-float/2addr v11, v12

    iget v12, v1, Landroid/graphics/PointF;->y:F

    iget v13, v5, Landroid/graphics/PointF;->y:F

    mul-float/2addr v12, v13

    invoke-direct {v6, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    .line 174
    .local v6, scaledPt:Landroid/graphics/PointF;
    new-instance v9, Landroid/graphics/PointF;

    iget v11, v6, Landroid/graphics/PointF;->x:F

    iget v12, v2, Landroid/graphics/PointF;->x:F

    add-float/2addr v11, v12

    iget v12, v6, Landroid/graphics/PointF;->y:F

    iget v13, v2, Landroid/graphics/PointF;->y:F

    add-float/2addr v12, v13

    invoke-direct {v9, v11, v12}, Landroid/graphics/PointF;-><init>(FF)V

    .line 176
    .local v9, transPt:Landroid/graphics/PointF;
    return-object v9
.end method

.method static mapPtToRectGlobal(Landroid/graphics/PointF;Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/PointF;
    .registers 16
    .parameter "aPt"
    .parameter "aSrcRect"
    .parameter "aDstRect"

    .prologue
    const/high16 v12, 0x4000

    .line 189
    move-object v2, p1

    .line 190
    .local v2, origRect:Landroid/graphics/RectF;
    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v10

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v11

    invoke-direct {v3, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    .line 191
    .local v3, origSize:Landroid/graphics/PointF;
    new-instance v1, Landroid/graphics/PointF;

    iget v10, v3, Landroid/graphics/PointF;->x:F

    div-float/2addr v10, v12

    iget v11, v3, Landroid/graphics/PointF;->y:F

    div-float/2addr v11, v12

    invoke-direct {v1, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    .line 193
    .local v1, origCenter:Landroid/graphics/PointF;
    move-object v7, p2

    .line 194
    .local v7, tRefRect:Landroid/graphics/RectF;
    new-instance v8, Landroid/graphics/PointF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v10

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v11

    invoke-direct {v8, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    .line 195
    .local v8, tRefSize:Landroid/graphics/PointF;
    new-instance v6, Landroid/graphics/PointF;

    iget v10, v8, Landroid/graphics/PointF;->x:F

    div-float/2addr v10, v12

    iget v11, v8, Landroid/graphics/PointF;->y:F

    div-float/2addr v11, v12

    invoke-direct {v6, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    .line 197
    .local v6, tRefCenter:Landroid/graphics/PointF;
    const/4 v4, 0x0

    .line 198
    .local v4, scaleRatio:Landroid/graphics/PointF;
    new-instance v4, Landroid/graphics/PointF;

    .end local v4           #scaleRatio:Landroid/graphics/PointF;
    iget v10, v8, Landroid/graphics/PointF;->x:F

    iget v11, v3, Landroid/graphics/PointF;->x:F

    div-float/2addr v10, v11

    iget v11, v8, Landroid/graphics/PointF;->y:F

    iget v12, v3, Landroid/graphics/PointF;->y:F

    div-float/2addr v11, v12

    invoke-direct {v4, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    .line 200
    .restart local v4       #scaleRatio:Landroid/graphics/PointF;
    new-instance v0, Landroid/graphics/PointF;

    iget v10, p0, Landroid/graphics/PointF;->x:F

    iget v11, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v11

    iget v11, p0, Landroid/graphics/PointF;->y:F

    iget v12, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v11, v12

    invoke-direct {v0, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    .line 201
    .local v0, newPt:Landroid/graphics/PointF;
    new-instance v5, Landroid/graphics/PointF;

    iget v10, v0, Landroid/graphics/PointF;->x:F

    iget v11, v4, Landroid/graphics/PointF;->x:F

    mul-float/2addr v10, v11

    iget v11, v0, Landroid/graphics/PointF;->y:F

    iget v12, v4, Landroid/graphics/PointF;->y:F

    mul-float/2addr v11, v12

    invoke-direct {v5, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    .line 202
    .local v5, scaledPt:Landroid/graphics/PointF;
    new-instance v9, Landroid/graphics/PointF;

    iget v10, p2, Landroid/graphics/RectF;->left:F

    iget v11, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v10, v11

    iget v11, v5, Landroid/graphics/PointF;->x:F

    add-float/2addr v10, v11

    iget v11, p2, Landroid/graphics/RectF;->top:F

    iget v12, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v11, v12

    iget v12, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v11, v12

    invoke-direct {v9, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    .line 204
    .local v9, transPt:Landroid/graphics/PointF;
    return-object v9
.end method

.method static mapRectToCanvas(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .registers 4
    .parameter "aCanvas"
    .parameter "aInRect"

    .prologue
    const/4 v1, 0x0

    .line 208
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 209
    .local v0, outRect:Landroid/graphics/RectF;
    invoke-static {p0, p1, v0}, Lcom/sec/android/app/twlauncher/SamsungUtils;->mapRectToCanvas(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 210
    return-object v0
.end method

.method static mapRectToCanvas(Lcom/sec/android/app/twlauncher/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .registers 15
    .parameter "aCanvas"
    .parameter "aInRect"
    .parameter "outRect"

    .prologue
    .line 231
    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->traMatrix:[F

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->getMatrix([F)V

    .line 232
    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->projMatrix:[F

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/GLCanvas;->getProjectionMatrix([F)V

    .line 244
    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->lt1:[F

    const/4 v1, 0x0

    iget v2, p1, Landroid/graphics/RectF;->left:F

    aput v2, v0, v1

    .line 245
    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->lt1:[F

    const/4 v1, 0x1

    iget v2, p1, Landroid/graphics/RectF;->top:F

    aput v2, v0, v1

    .line 246
    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->lt1:[F

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v0, v1

    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->lt1:[F

    const/4 v1, 0x3

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    .line 247
    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->lt2:[F

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/android/app/twlauncher/SamsungUtils;->traMatrix:[F

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/android/app/twlauncher/SamsungUtils;->lt1:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 248
    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->lt1:[F

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/android/app/twlauncher/SamsungUtils;->projMatrix:[F

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/android/app/twlauncher/SamsungUtils;->lt2:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 253
    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->lt1:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    sget-object v1, Lcom/sec/android/app/twlauncher/SamsungUtils;->lt1:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    div-float v6, v0, v1

    .line 254
    .local v6, ltX:F
    const/high16 v0, -0x4080

    sget-object v1, Lcom/sec/android/app/twlauncher/SamsungUtils;->lt1:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    sget-object v2, Lcom/sec/android/app/twlauncher/SamsungUtils;->lt1:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    div-float/2addr v1, v2

    mul-float v7, v0, v1

    .line 256
    .local v7, ltY:F
    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->rb1:[F

    const/4 v1, 0x0

    iget v2, p1, Landroid/graphics/RectF;->right:F

    aput v2, v0, v1

    .line 257
    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->rb1:[F

    const/4 v1, 0x1

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    aput v2, v0, v1

    .line 258
    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->rb1:[F

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v0, v1

    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->rb1:[F

    const/4 v1, 0x3

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    .line 259
    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->rb2:[F

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/android/app/twlauncher/SamsungUtils;->traMatrix:[F

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/android/app/twlauncher/SamsungUtils;->rb1:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 260
    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->rb1:[F

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/android/app/twlauncher/SamsungUtils;->projMatrix:[F

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/android/app/twlauncher/SamsungUtils;->rb2:[F

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 262
    sget-object v0, Lcom/sec/android/app/twlauncher/SamsungUtils;->rb1:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    sget-object v1, Lcom/sec/android/app/twlauncher/SamsungUtils;->rb1:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    div-float v8, v0, v1

    .line 263
    .local v8, rbX:F
    const/high16 v0, -0x4080

    sget-object v1, Lcom/sec/android/app/twlauncher/SamsungUtils;->rb1:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    sget-object v2, Lcom/sec/android/app/twlauncher/SamsungUtils;->rb1:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    div-float/2addr v1, v2

    mul-float v9, v0, v1

    .line 269
    .local v9, rbY:F
    const/high16 v0, 0x3f80

    add-float/2addr v6, v0

    const/high16 v0, 0x3f80

    add-float/2addr v7, v0

    const/high16 v0, 0x3f80

    add-float/2addr v8, v0

    const/high16 v0, 0x3f80

    add-float/2addr v9, v0

    .line 274
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float v10, v0, v1

    .line 275
    .local v10, scrSizeHalfX:F
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/GLCanvas;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float v11, v0, v1

    .line 277
    .local v11, scrSizeHalfY:F
    mul-float/2addr v6, v10

    mul-float/2addr v7, v11

    .line 278
    mul-float/2addr v8, v10

    mul-float/2addr v9, v11

    .line 280
    iput v6, p2, Landroid/graphics/RectF;->left:F

    .line 281
    iput v7, p2, Landroid/graphics/RectF;->top:F

    .line 282
    iput v8, p2, Landroid/graphics/RectF;->right:F

    .line 283
    iput v9, p2, Landroid/graphics/RectF;->bottom:F

    .line 284
    return-void
.end method

.method static setWallpaperVisibility(Landroid/app/WallpaperManager;Z)V
    .registers 2
    .parameter "wpm"
    .parameter "visiblity"

    .prologue
    .line 92
    return-void
.end method
