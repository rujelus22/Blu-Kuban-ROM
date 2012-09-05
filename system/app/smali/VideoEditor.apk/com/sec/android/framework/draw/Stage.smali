.class public Lcom/sec/android/framework/draw/Stage;
.super Lcom/sec/android/framework/draw/AbstractStage;
.source "SourceFile"


# static fields
.field public static final FIXED_LAYER_ID:I = 0x0

.field public static final FLUID_LAYER_ID:I = 0x1


# direct methods
.method public constructor <init>(Lcom/sec/android/framework/draw/modes/AbstractModeContext;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 24
    invoke-direct {p0, p1}, Lcom/sec/android/framework/draw/AbstractStage;-><init>(Lcom/sec/android/framework/draw/modes/AbstractModeContext;)V

    .line 26
    new-array v0, v3, [I

    iget-object v1, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/Setting;->getCanvasWidth()I

    move-result v1

    aput v1, v0, v4

    iget-object v1, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/Setting;->getScreenWidth()I

    move-result v1

    aput v1, v0, v5

    .line 27
    new-array v1, v3, [I

    iget-object v2, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v2}, Lcom/sec/android/framework/draw/Setting;->getCanvasHeight()I

    move-result v2

    aput v2, v1, v4

    iget-object v2, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v2}, Lcom/sec/android/framework/draw/Setting;->getScreenHeight()I

    move-result v2

    aput v2, v1, v5

    .line 26
    invoke-virtual {p0, v3, v0, v1}, Lcom/sec/android/framework/draw/Stage;->initializeLayers(I[I[I)V

    .line 29
    iget-object v0, p0, Lcom/sec/android/framework/draw/Stage;->fixedSprites:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_36

    .line 30
    iget-object v0, p0, Lcom/sec/android/framework/draw/Stage;->fixedSprites:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 32
    :cond_36
    iget-object v0, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/Setting;->getCanvasWidth()I

    move-result v0

    iget-object v1, p1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v1}, Lcom/sec/android/framework/draw/Setting;->getCanvasHeight()I

    move-result v1

    .line 33
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 32
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/framework/draw/Stage;->fixedSprites:Landroid/graphics/Bitmap;

    .line 34
    return-void
.end method


# virtual methods
.method public addSprite(Lcom/sec/android/framework/draw/sprites/AbstractSprite;Z)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 38
    iget-object v0, p0, Lcom/sec/android/framework/draw/Stage;->listOfSprites:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 40
    if-eqz p2, :cond_45

    .line 41
    iget-object v0, p0, Lcom/sec/android/framework/draw/Stage;->context:Lcom/sec/android/framework/draw/modes/AbstractModeContext;

    iget-object v0, v0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/Setting;->getHistorySize()I

    move-result v0

    .line 43
    iget-object v1, p0, Lcom/sec/android/framework/draw/Stage;->listOfUndos:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ne v1, v0, :cond_36

    .line 44
    iget-object v0, p0, Lcom/sec/android/framework/draw/Stage;->listOfUndos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/commands/ISpriteCommand;

    .line 45
    instance-of v1, v0, Lcom/sec/android/framework/draw/sprites/commands/SpriteCreateCommand;

    if-eqz v1, :cond_49

    move-object v1, v0

    .line 46
    check-cast v1, Lcom/sec/android/framework/draw/sprites/commands/SpriteCreateCommand;

    iget-object v1, v1, Lcom/sec/android/framework/draw/sprites/commands/SpriteCreateCommand;->sprite:Lcom/sec/android/framework/draw/sprites/AbstractSprite;

    instance-of v1, v1, Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    if-eqz v1, :cond_49

    .line 47
    check-cast v0, Lcom/sec/android/framework/draw/sprites/commands/SpriteCreateCommand;

    iget-object v0, v0, Lcom/sec/android/framework/draw/sprites/commands/SpriteCreateCommand;->sprite:Lcom/sec/android/framework/draw/sprites/AbstractSprite;

    check-cast v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {p0, v0}, Lcom/sec/android/framework/draw/Stage;->strokeToFixedStroke(Lcom/sec/android/framework/draw/sprites/StrokeSprite;)V

    .line 53
    :cond_36
    iget-object v0, p0, Lcom/sec/android/framework/draw/Stage;->listOfUndos:Ljava/util/LinkedList;

    new-instance v1, Lcom/sec/android/framework/draw/sprites/commands/SpriteCreateCommand;

    invoke-direct {v1, p1, p0}, Lcom/sec/android/framework/draw/sprites/commands/SpriteCreateCommand;-><init>(Lcom/sec/android/framework/draw/sprites/AbstractSprite;Lcom/sec/android/framework/draw/AbstractStage;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lcom/sec/android/framework/draw/Stage;->listOfRedos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 57
    :cond_45
    invoke-virtual {p1, v3}, Lcom/sec/android/framework/draw/sprites/AbstractSprite;->setVisible(Z)V

    .line 58
    return-void

    .line 49
    :cond_49
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "addSprite : %s"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public deleteSprite(Lcom/sec/android/framework/draw/sprites/AbstractSprite;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 62
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public initializeLayers()V
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sec/android/framework/draw/Stage;->listOfLayers:Ljava/util/Vector;

    if-eqz v0, :cond_7

    .line 86
    invoke-virtual {p0}, Lcom/sec/android/framework/draw/Stage;->cleanUpLayers()V

    .line 88
    :cond_7
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sec/android/framework/draw/Stage;->listOfLayers:Ljava/util/Vector;

    .line 89
    return-void
.end method

.method public initializeLayers(I[I[I)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/sec/android/framework/draw/Stage;->initializeLayers()V

    .line 79
    const/4 v0, 0x0

    :goto_4
    if-lt v0, p1, :cond_7

    .line 81
    return-void

    .line 80
    :cond_7
    iget-object v1, p0, Lcom/sec/android/framework/draw/Stage;->listOfLayers:Ljava/util/Vector;

    new-instance v2, Lcom/sec/android/framework/draw/Layer;

    aget v3, p2, v0

    aget v4, p3, v0

    invoke-direct {v2, v3, v4}, Lcom/sec/android/framework/draw/Layer;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public moveSprite(Lcom/sec/android/framework/draw/sprites/AbstractSprite;Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public resizeSprite(Lcom/sec/android/framework/draw/sprites/AbstractSprite;Landroid/graphics/RectF;Z)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
