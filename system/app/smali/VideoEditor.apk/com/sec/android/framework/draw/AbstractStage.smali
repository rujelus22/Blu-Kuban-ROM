.class public abstract Lcom/sec/android/framework/draw/AbstractStage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field public cacheBuilder:Lcom/sec/android/framework/draw/sprites/a;

.field public context:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

.field public fixedSprites:Landroid/graphics/Bitmap;

.field protected listOfLayers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sec/android/framework/draw/Layer;",
            ">;"
        }
    .end annotation
.end field

.field protected listOfRedos:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/framework/draw/sprites/commands/ISpriteCommand;",
            ">;"
        }
    .end annotation
.end field

.field protected listOfSprites:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/framework/draw/sprites/AbstractSprite;",
            ">;"
        }
    .end annotation
.end field

.field protected listOfUndos:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/framework/draw/sprites/commands/ISpriteCommand;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/framework/draw/modes/AbstractModeContext;)V
    .registers 3
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Lcom/sec/android/framework/draw/LicenseManager;->checkModelNumber()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 51
    invoke-static {}, Lcom/sec/android/framework/draw/LicenseManager;->printErrorMessage()V

    .line 55
    :goto_c
    iput-object p1, p0, Lcom/sec/android/framework/draw/AbstractStage;->context:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

    .line 57
    invoke-virtual {p0}, Lcom/sec/android/framework/draw/AbstractStage;->initializeSprites()V

    .line 58
    invoke-virtual {p0}, Lcom/sec/android/framework/draw/AbstractStage;->initializeHistories()V

    .line 59
    invoke-virtual {p0}, Lcom/sec/android/framework/draw/AbstractStage;->initializeLayers()V

    .line 61
    iget-object v0, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {p0, v0}, Lcom/sec/android/framework/draw/AbstractStage;->beginCacheBuilder(Lcom/sec/android/framework/draw/Setting;)V

    .line 62
    return-void

    .line 53
    :cond_1d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->a:Z

    goto :goto_c
.end method

.method public constructor <init>(Lcom/sec/android/framework/draw/modes/AbstractModeContext;I[I[I)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-static {}, Lcom/sec/android/framework/draw/LicenseManager;->checkModelNumber()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 88
    invoke-static {}, Lcom/sec/android/framework/draw/LicenseManager;->printErrorMessage()V

    .line 92
    :goto_c
    iput-object p1, p0, Lcom/sec/android/framework/draw/AbstractStage;->context:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

    .line 94
    invoke-virtual {p0}, Lcom/sec/android/framework/draw/AbstractStage;->initializeSprites()V

    .line 95
    invoke-virtual {p0}, Lcom/sec/android/framework/draw/AbstractStage;->initializeHistories()V

    .line 96
    invoke-virtual {p0, p2, p3, p4}, Lcom/sec/android/framework/draw/AbstractStage;->initializeLayers(I[I[I)V

    .line 98
    iget-object v0, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {p0, v0}, Lcom/sec/android/framework/draw/AbstractStage;->beginCacheBuilder(Lcom/sec/android/framework/draw/Setting;)V

    .line 99
    return-void

    .line 90
    :cond_1d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->a:Z

    goto :goto_c
.end method


# virtual methods
.method public abstract addSprite(Lcom/sec/android/framework/draw/sprites/AbstractSprite;Z)V
.end method

.method protected beginCacheBuilder(Lcom/sec/android/framework/draw/Setting;)V
    .registers 3
    .parameter

    .prologue
    .line 65
    new-instance v0, Lcom/sec/android/framework/draw/sprites/a;

    invoke-direct {v0, p1}, Lcom/sec/android/framework/draw/sprites/a;-><init>(Lcom/sec/android/framework/draw/Setting;)V

    iput-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->cacheBuilder:Lcom/sec/android/framework/draw/sprites/a;

    .line 66
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->cacheBuilder:Lcom/sec/android/framework/draw/sprites/a;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/a;->start()V

    .line 67
    return-void
.end method

.method public changeLayerSize(III)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfLayers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/Layer;

    .line 170
    invoke-virtual {v0, p2, p3}, Lcom/sec/android/framework/draw/Layer;->changeLayerSize(II)V

    .line 171
    return-void
.end method

.method public changeLayersSize([I[I[I)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-lt v0, v1, :cond_5

    .line 156
    return-void

    .line 154
    :cond_5
    aget v1, p1, v0

    aget v2, p2, v0

    aget v3, p3, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/framework/draw/AbstractStage;->changeLayerSize(III)V

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public changeSpriteIndex(Lcom/sec/android/framework/draw/sprites/AbstractSprite;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 743
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfSprites:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfSprites:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 745
    const/4 v0, -0x1

    if-ne p2, v0, :cond_14

    .line 746
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfSprites:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 749
    :goto_13
    return-void

    .line 748
    :cond_14
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfSprites:Ljava/util/LinkedList;

    invoke-virtual {v0, p2, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    goto :goto_13
.end method

.method protected cleanUpCachedSprites()V
    .registers 7

    .prologue
    .line 211
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/framework/draw/AbstractStage;->context:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

    iget-object v1, v1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/Setting;->getCacheDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    :try_start_d
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_13
    if-lt v0, v2, :cond_16

    .line 221
    :goto_15
    return-void

    .line 214
    :cond_16
    aget-object v3, v1, v0

    .line 215
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".nomedia"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 216
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_27
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_27} :catch_2a

    .line 214
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 219
    :catch_2a
    move-exception v0

    const-string v0, "DIOTEK/DRAW"

    const-string v1, "StrokeSpriteCacheBuilder : cacheDirectory is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method public cleanUpFixedSprites()V
    .registers 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->fixedSprites:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_a

    .line 125
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->fixedSprites:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 126
    :cond_a
    return-void
.end method

.method protected cleanUpHistories()V
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfUndos:Ljava/util/LinkedList;

    if-eqz v0, :cond_9

    .line 178
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfUndos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 180
    :cond_9
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfRedos:Ljava/util/LinkedList;

    if-eqz v0, :cond_12

    .line 181
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfRedos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 182
    :cond_12
    return-void
.end method

.method protected cleanUpLayers()V
    .registers 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfLayers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_12

    .line 192
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfLayers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 193
    return-void

    .line 188
    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/Layer;

    .line 189
    invoke-virtual {v0}, Lcom/sec/android/framework/draw/Layer;->dispose()V

    goto :goto_6
.end method

.method protected cleanUpSprites()V
    .registers 3

    .prologue
    .line 199
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfSprites:Ljava/util/LinkedList;

    if-eqz v0, :cond_15

    .line 200
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfSprites:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 203
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfSprites:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 206
    :cond_15
    invoke-virtual {p0}, Lcom/sec/android/framework/draw/AbstractStage;->cleanUpCachedSprites()V

    .line 207
    invoke-virtual {p0}, Lcom/sec/android/framework/draw/AbstractStage;->cleanUpFixedSprites()V

    .line 208
    return-void

    .line 200
    :cond_1c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/AbstractSprite;

    .line 201
    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/AbstractSprite;->dispose()V

    goto :goto_a
.end method

.method public clearLayer(I)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 230
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfLayers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/Layer;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/Layer;->clearLayer()V

    .line 232
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->fixedSprites:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->context:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->getLayerID()I

    move-result v0

    if-ne v0, p1, :cond_22

    .line 233
    invoke-virtual {p0, p1}, Lcom/sec/android/framework/draw/AbstractStage;->getLayerCanvas(I)Landroid/graphics/Canvas;

    move-result-object v0

    .line 234
    iget-object v1, p0, Lcom/sec/android/framework/draw/AbstractStage;->fixedSprites:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 236
    :cond_22
    return-void
.end method

.method public clearLayer(ILandroid/graphics/RectF;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 247
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfLayers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/Layer;

    .line 248
    invoke-virtual {v0, p2}, Lcom/sec/android/framework/draw/Layer;->clearLayer(Landroid/graphics/RectF;)V

    .line 250
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->fixedSprites:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->context:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->getLayerID()I

    move-result v0

    if-ne v0, p1, :cond_38

    .line 251
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 252
    invoke-virtual {p2, v0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 254
    invoke-virtual {p0, p1}, Lcom/sec/android/framework/draw/AbstractStage;->getLayerCanvas(I)Landroid/graphics/Canvas;

    move-result-object v1

    .line 255
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 256
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 257
    iget-object v2, p0, Lcom/sec/android/framework/draw/AbstractStage;->fixedSprites:Landroid/graphics/Bitmap;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 258
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 260
    :cond_38
    return-void
.end method

.method public clearLayers()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 266
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfLayers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_22

    .line 269
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->fixedSprites:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_21

    .line 270
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->context:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->getLayerID()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/framework/draw/AbstractStage;->getLayerCanvas(I)Landroid/graphics/Canvas;

    move-result-object v0

    .line 271
    iget-object v1, p0, Lcom/sec/android/framework/draw/AbstractStage;->fixedSprites:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 273
    :cond_21
    return-void

    .line 266
    :cond_22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/Layer;

    .line 267
    invoke-virtual {v0}, Lcom/sec/android/framework/draw/Layer;->clearLayer()V

    goto :goto_7
.end method

.method public clearStage()V
    .registers 3

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/sec/android/framework/draw/AbstractStage;->cleanUpHistories()V

    .line 133
    invoke-virtual {p0}, Lcom/sec/android/framework/draw/AbstractStage;->cleanUpSprites()V

    .line 135
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfLayers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 138
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->fixedSprites:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1c

    .line 139
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->fixedSprites:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 140
    :cond_1c
    return-void

    .line 135
    :cond_1d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/Layer;

    .line 136
    invoke-virtual {v0}, Lcom/sec/android/framework/draw/Layer;->clearLayer()V

    goto :goto_c
.end method

.method public abstract deleteSprite(Lcom/sec/android/framework/draw/sprites/AbstractSprite;Z)V
.end method

.method public dispose()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 279
    invoke-virtual {p0}, Lcom/sec/android/framework/draw/AbstractStage;->cleanUpLayers()V

    .line 280
    invoke-virtual {p0}, Lcom/sec/android/framework/draw/AbstractStage;->cleanUpSprites()V

    .line 281
    invoke-virtual {p0}, Lcom/sec/android/framework/draw/AbstractStage;->endCacheBuilder()V

    .line 283
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->fixedSprites:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_15

    .line 284
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->fixedSprites:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 285
    iput-object v1, p0, Lcom/sec/android/framework/draw/AbstractStage;->fixedSprites:Landroid/graphics/Bitmap;

    .line 288
    :cond_15
    iput-object v1, p0, Lcom/sec/android/framework/draw/AbstractStage;->context:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

    .line 289
    return-void
.end method

.method protected endCacheBuilder()V
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->cacheBuilder:Lcom/sec/android/framework/draw/sprites/a;

    if-eqz v0, :cond_9

    .line 71
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->cacheBuilder:Lcom/sec/android/framework/draw/sprites/a;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/a;->a()V

    .line 72
    :cond_9
    return-void
.end method

.method public getHittedStrokeSprites(Landroid/graphics/RectF;)Ljava/util/LinkedList;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/RectF;",
            ")",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/framework/draw/sprites/StrokeSprite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 792
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 793
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 795
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfSprites:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_10
    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 802
    invoke-virtual {p1, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 804
    return-object v2

    .line 795
    :cond_1a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/AbstractSprite;

    .line 796
    instance-of v1, v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    if-eqz v1, :cond_10

    invoke-virtual {v0, p1}, Lcom/sec/android/framework/draw/sprites/AbstractSprite;->isHitted(Landroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_10

    move-object v1, v0

    .line 797
    check-cast v1, Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 798
    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/AbstractSprite;->getBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    goto :goto_10
.end method

.method public getLayerBitmap(I)Landroid/graphics/Bitmap;
    .registers 3
    .parameter

    .prologue
    .line 470
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfLayers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/Layer;

    iget-object v0, v0, Lcom/sec/android/framework/draw/Layer;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getLayerCanvas(I)Landroid/graphics/Canvas;
    .registers 3
    .parameter

    .prologue
    .line 474
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfLayers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/Layer;

    iget-object v0, v0, Lcom/sec/android/framework/draw/Layer;->canvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public getPanning(I)Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;
    .registers 4
    .parameter

    .prologue
    .line 497
    new-instance v1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;

    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfLayers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/Layer;

    iget-object v0, v0, Lcom/sec/android/framework/draw/Layer;->panning:Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;

    invoke-direct {v1, v0}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;-><init>(Landroid/graphics/PointF;)V

    return-object v1
.end method

.method public getRedoList()Ljava/util/LinkedList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/framework/draw/sprites/commands/ISpriteCommand;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfRedos:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getSprites()Ljava/util/LinkedList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/framework/draw/sprites/AbstractSprite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfSprites:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getSprites(Ljava/lang/Class;)Ljava/util/LinkedList;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/framework/draw/sprites/AbstractSprite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 752
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 754
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfSprites:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_12

    .line 760
    return-object v1

    .line 754
    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/AbstractSprite;

    .line 755
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 756
    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_b
.end method

.method public getUndoList()Ljava/util/LinkedList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/framework/draw/sprites/commands/ISpriteCommand;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfUndos:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getZoom(I)F
    .registers 3
    .parameter

    .prologue
    .line 520
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfLayers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/Layer;

    iget v0, v0, Lcom/sec/android/framework/draw/Layer;->zoom:F

    return v0
.end method

.method protected initializeHistories()V
    .registers 2

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/sec/android/framework/draw/AbstractStage;->cleanUpHistories()V

    .line 297
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfUndos:Ljava/util/LinkedList;

    .line 298
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfRedos:Ljava/util/LinkedList;

    .line 299
    return-void
.end method

.method protected abstract initializeLayers()V
.end method

.method public abstract initializeLayers(I[I[I)V
.end method

.method public initializeSprites()V
    .registers 3

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/sec/android/framework/draw/AbstractStage;->cleanUpSprites()V

    .line 324
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfSprites:Ljava/util/LinkedList;

    .line 326
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->fixedSprites:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_14

    .line 327
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->fixedSprites:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 328
    :cond_14
    return-void
.end method

.method public initializeSprites(Landroid/graphics/Bitmap;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 331
    invoke-virtual {p0}, Lcom/sec/android/framework/draw/AbstractStage;->cleanUpSprites()V

    .line 333
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfSprites:Ljava/util/LinkedList;

    .line 335
    if-eqz p1, :cond_16

    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->fixedSprites:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_16

    .line 336
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->fixedSprites:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 338
    :cond_16
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->fixedSprites:Landroid/graphics/Bitmap;

    .line 339
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/android/framework/draw/AbstractStage;->fixedSprites:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 340
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 341
    return-void
.end method

.method public isRedoable()Z
    .registers 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfRedos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public isUndoable()Z
    .registers 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfUndos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public mapFromScene(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 4
    .parameter

    .prologue
    .line 554
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 555
    invoke-virtual {p0, v0}, Lcom/sec/android/framework/draw/AbstractStage;->mapFromScene(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    .line 556
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 557
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 558
    return-object v1
.end method

.method public mapFromScene(ILandroid/graphics/RectF;)Landroid/graphics/RectF;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 533
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 534
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfLayers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/Layer;

    iget-object v0, v0, Lcom/sec/android/framework/draw/Layer;->translateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 536
    return-object v1
.end method

.method public mapFromScene(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .registers 4
    .parameter

    .prologue
    .line 547
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 548
    iget-object v1, p0, Lcom/sec/android/framework/draw/AbstractStage;->context:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

    iget-object v1, v1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->translateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 550
    return-object v0
.end method

.method public mapFromScene(Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;)Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 562
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->x:F

    aput v1, v0, v2

    iget v1, p1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->y:F

    aput v1, v0, v3

    .line 563
    iget-object v1, p0, Lcom/sec/android/framework/draw/AbstractStage;->context:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

    iget-object v1, v1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->translateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 565
    new-instance v1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;

    aget v2, v0, v2

    aget v0, v0, v3

    invoke-direct {v1, v2, v0}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;-><init>(FF)V

    return-object v1
.end method

.method public mapToScene(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .registers 4
    .parameter

    .prologue
    .line 607
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 608
    iget-object v1, p0, Lcom/sec/android/framework/draw/AbstractStage;->context:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

    iget-object v1, v1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->inverseTranslateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 610
    return-object v0
.end method

.method public mapToScene(ILcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;)Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 578
    const/4 v0, 0x2

    new-array v1, v0, [F

    iget v0, p2, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->x:F

    aput v0, v1, v2

    iget v0, p2, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->y:F

    aput v0, v1, v3

    .line 580
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfLayers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/Layer;

    iget-object v0, v0, Lcom/sec/android/framework/draw/Layer;->inverseTranslateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 582
    new-instance v0, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;

    aget v2, v1, v2

    aget v1, v1, v3

    invoke-direct {v0, v2, v1}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;-><init>(FF)V

    return-object v0
.end method

.method public mapToScene(Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;)Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 593
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->x:F

    aput v1, v0, v2

    iget v1, p1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->y:F

    aput v1, v0, v3

    .line 594
    iget-object v1, p0, Lcom/sec/android/framework/draw/AbstractStage;->context:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

    iget-object v1, v1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->inverseTranslateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 596
    new-instance v1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;

    aget v2, v0, v2

    aget v0, v0, v3

    invoke-direct {v1, v2, v0}, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;-><init>(FF)V

    return-object v1
.end method

.method public abstract moveSprite(Lcom/sec/android/framework/draw/sprites/AbstractSprite;Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;Z)V
.end method

.method public redo()Landroid/graphics/RectF;
    .registers 4

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/sec/android/framework/draw/AbstractStage;->isRedoable()Z

    move-result v0

    if-nez v0, :cond_c

    .line 368
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 374
    :goto_b
    return-object v0

    .line 370
    :cond_c
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfRedos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/commands/ISpriteCommand;

    .line 371
    new-instance v1, Landroid/graphics/RectF;

    invoke-interface {v0}, Lcom/sec/android/framework/draw/sprites/commands/ISpriteCommand;->redo()Landroid/graphics/RectF;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 372
    iget-object v2, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfUndos:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 374
    invoke-virtual {p0, v1}, Lcom/sec/android/framework/draw/AbstractStage;->mapFromScene(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_b
.end method

.method public renderSprite(ILcom/sec/android/framework/draw/sprites/AbstractSprite;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 402
    if-eqz p2, :cond_9

    .line 403
    invoke-virtual {p2}, Lcom/sec/android/framework/draw/sprites/AbstractSprite;->getBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/framework/draw/AbstractStage;->renderSprite(ILcom/sec/android/framework/draw/sprites/AbstractSprite;Landroid/graphics/RectF;)V

    .line 404
    :cond_9
    return-void
.end method

.method public renderSprite(ILcom/sec/android/framework/draw/sprites/AbstractSprite;Landroid/graphics/RectF;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->a:Z

    if-eqz v0, :cond_f

    .line 418
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfLayers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/Layer;

    invoke-virtual {v0, p2, p3}, Lcom/sec/android/framework/draw/Layer;->renderSprite(Lcom/sec/android/framework/draw/sprites/AbstractSprite;Landroid/graphics/RectF;)V

    .line 419
    :cond_f
    return-void
.end method

.method public renderSprites(I)V
    .registers 4
    .parameter

    .prologue
    .line 428
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfSprites:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    .line 431
    return-void

    .line 428
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/AbstractSprite;

    .line 429
    invoke-virtual {p0, p1, v0}, Lcom/sec/android/framework/draw/AbstractStage;->renderSprite(ILcom/sec/android/framework/draw/sprites/AbstractSprite;)V

    goto :goto_6
.end method

.method public renderSprites(ILandroid/graphics/RectF;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 442
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfSprites:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    .line 445
    return-void

    .line 442
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/AbstractSprite;

    .line 443
    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/android/framework/draw/AbstractStage;->renderSprite(ILcom/sec/android/framework/draw/sprites/AbstractSprite;Landroid/graphics/RectF;)V

    goto :goto_6
.end method

.method public renderSprites(ILcom/sec/android/framework/draw/sprites/AbstractSprite;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 456
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfSprites:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    .line 460
    return-void

    .line 456
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/AbstractSprite;

    .line 457
    if-eq v0, p2, :cond_6

    .line 458
    invoke-virtual {p0, p1, v0}, Lcom/sec/android/framework/draw/AbstractStage;->renderSprite(ILcom/sec/android/framework/draw/sprites/AbstractSprite;)V

    goto :goto_6
.end method

.method public renderSprites(ILjava/util/LinkedList;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/framework/draw/sprites/AbstractSprite;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 764
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/framework/draw/AbstractStage;->renderSprites(ILjava/util/LinkedList;Lcom/sec/android/framework/draw/sprites/AbstractSprite;)V

    .line 765
    return-void
.end method

.method public renderSprites(ILjava/util/LinkedList;Lcom/sec/android/framework/draw/sprites/AbstractSprite;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/framework/draw/sprites/AbstractSprite;",
            ">;",
            "Lcom/sec/android/framework/draw/sprites/AbstractSprite;",
            ")V"
        }
    .end annotation

    .prologue
    .line 768
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 780
    :cond_8
    return-void

    .line 771
    :cond_9
    if-nez p3, :cond_1f

    .line 772
    invoke-virtual {p2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/AbstractSprite;

    .line 773
    invoke-virtual {p0, p1, v0}, Lcom/sec/android/framework/draw/AbstractStage;->renderSprite(ILcom/sec/android/framework/draw/sprites/AbstractSprite;)V

    goto :goto_f

    .line 775
    :cond_1f
    invoke-virtual {p2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_23
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/AbstractSprite;

    .line 776
    if-eq v0, p3, :cond_23

    .line 777
    invoke-virtual {p0, p1, v0}, Lcom/sec/android/framework/draw/AbstractStage;->renderSprite(ILcom/sec/android/framework/draw/sprites/AbstractSprite;)V

    goto :goto_23
.end method

.method public abstract resizeSprite(Lcom/sec/android/framework/draw/sprites/AbstractSprite;Landroid/graphics/RectF;Z)V
.end method

.method public selectHittedSprite(Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;)Lcom/sec/android/framework/draw/sprites/AbstractSprite;
    .registers 9
    .parameter

    .prologue
    const/high16 v6, 0x3f80

    .line 621
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfSprites:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 622
    new-instance v2, Landroid/graphics/RectF;

    iget v1, p1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->x:F

    iget v3, p1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->y:F

    iget v4, p1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->x:F

    add-float/2addr v4, v6

    iget v5, p1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->y:F

    add-float/2addr v5, v6

    invoke-direct {v2, v1, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    move v1, v0

    .line 624
    :goto_1a
    if-gez v1, :cond_1e

    .line 635
    const/4 v0, 0x0

    :cond_1d
    return-object v0

    .line 625
    :cond_1e
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfSprites:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/AbstractSprite;

    .line 627
    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/AbstractSprite;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-virtual {v0, v2}, Lcom/sec/android/framework/draw/sprites/AbstractSprite;->isHitted(Landroid/graphics/RectF;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 628
    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/AbstractSprite;->select()V

    .line 630
    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/AbstractSprite;->isSelected()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 624
    :cond_3b
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1a
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .registers 4
    .parameter

    .prologue
    .line 808
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfLayers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    .line 810
    return-void

    .line 808
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/Layer;

    .line 809
    invoke-virtual {v0, p1}, Lcom/sec/android/framework/draw/Layer;->setMatrix(Landroid/graphics/Matrix;)V

    goto :goto_6
.end method

.method public setPanning(ILcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 486
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfLayers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/Layer;

    invoke-virtual {v0, p2}, Lcom/sec/android/framework/draw/Layer;->setPanning(Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;)V

    .line 487
    return-void
.end method

.method public setZoom(IF)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 509
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfLayers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/Layer;

    invoke-virtual {v0, p2}, Lcom/sec/android/framework/draw/Layer;->setZoom(F)V

    .line 510
    return-void
.end method

.method public strokeToFixedStroke(Lcom/sec/android/framework/draw/sprites/StrokeSprite;)V
    .registers 4
    .parameter

    .prologue
    .line 783
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->fixedSprites:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1d

    .line 784
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/sec/android/framework/draw/AbstractStage;->fixedSprites:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 785
    invoke-virtual {p1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->render(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 786
    invoke-virtual {p1}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->getStrokeVectors()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->clearVectors(Ljava/util/Vector;)V

    .line 787
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/framework/draw/sprites/StrokeSprite;->setStrokeFixed(Z)V

    .line 789
    :cond_1d
    return-void
.end method

.method public toImageSpriteArray()Ljava/util/Vector;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/sec/android/framework/draw/sprites/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 721
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 723
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfSprites:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_12

    .line 730
    return-object v1

    .line 723
    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/AbstractSprite;

    .line 724
    instance-of v3, v0, Lcom/sec/android/framework/draw/sprites/c;

    if-eqz v3, :cond_22

    .line 725
    check-cast v0, Lcom/sec/android/framework/draw/sprites/c;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 727
    :cond_22
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_b
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .prologue
    .line 688
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "<ink>\n"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 690
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfSprites:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8a

    .line 692
    const-string v0, "</ink>\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "<undo>\n"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 695
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfUndos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_99

    .line 697
    const-string v0, "</undo>\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "<redo>\n"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 700
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfRedos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a8

    .line 702
    const-string v0, "</redo>\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 705
    const-string v4, "<slide size=\"%d,%d\">\n"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/framework/draw/AbstractStage;->context:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

    iget-object v7, v7, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v7}, Lcom/sec/android/framework/draw/Setting;->getCanvasWidth()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 706
    iget-object v7, p0, Lcom/sec/android/framework/draw/AbstractStage;->context:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

    iget-object v7, v7, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v7}, Lcom/sec/android/framework/draw/Setting;->getCanvasHeight()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 705
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 708
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 709
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 710
    const-string v1, "</slide>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 690
    :cond_8a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/AbstractSprite;

    .line 691
    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/AbstractSprite;->toXML()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    .line 695
    :cond_99
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/commands/ISpriteCommand;

    .line 696
    invoke-interface {v0}, Lcom/sec/android/framework/draw/sprites/commands/ISpriteCommand;->toXML()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_25

    .line 700
    :cond_a8
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/commands/ISpriteCommand;

    .line 701
    invoke-interface {v0}, Lcom/sec/android/framework/draw/sprites/commands/ISpriteCommand;->toXML()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_3d
.end method

.method public undo()Landroid/graphics/RectF;
    .registers 4

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/sec/android/framework/draw/AbstractStage;->isUndoable()Z

    move-result v0

    if-nez v0, :cond_c

    .line 384
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 390
    :goto_b
    return-object v0

    .line 386
    :cond_c
    iget-object v0, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfUndos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/commands/ISpriteCommand;

    .line 387
    new-instance v1, Landroid/graphics/RectF;

    invoke-interface {v0}, Lcom/sec/android/framework/draw/sprites/commands/ISpriteCommand;->undo()Landroid/graphics/RectF;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 388
    iget-object v2, p0, Lcom/sec/android/framework/draw/AbstractStage;->listOfRedos:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 390
    invoke-virtual {p0, v1}, Lcom/sec/android/framework/draw/AbstractStage;->mapFromScene(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    goto :goto_b
.end method
