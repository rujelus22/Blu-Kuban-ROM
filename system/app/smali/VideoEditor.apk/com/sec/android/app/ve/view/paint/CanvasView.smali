.class public Lcom/sec/android/app/ve/view/paint/CanvasView;
.super Landroid/view/View;
.source "CanvasView.java"


# static fields
.field public static final BITMAP_HEIGHT:I = 0x320

.field public static final BITMAP_WIDTH:I = 0x500

.field private static final CACHE_DIRECTORY_POSTFIX:Ljava/lang/String; = "cache"

.field private static final CACHE_DIRECTORY_PREFIX:Ljava/lang/String; = "/mnt/sdcard/android/data"

.field private static final CACHE_TIME:I = 0x46

.field private static final HISTORY_SIZE:I = 0x1e

.field public static modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;


# instance fields
.field protected canvasRect:Landroid/graphics/Rect;

.field public isEdited:Z

.field public isEmpty:Z

.field public mBitmap:Landroid/graphics/Bitmap;

.field private needToRefreshStrokeType:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 31
    iput-boolean v1, p0, Lcom/sec/android/app/ve/view/paint/CanvasView;->isEdited:Z

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/ve/view/paint/CanvasView;->isEmpty:Z

    .line 36
    iput-boolean v1, p0, Lcom/sec/android/app/ve/view/paint/CanvasView;->needToRefreshStrokeType:Z

    .line 45
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/CanvasView;->initializeEngine()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .parameter "context"
    .parameter "attr"

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-boolean v1, p0, Lcom/sec/android/app/ve/view/paint/CanvasView;->isEdited:Z

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/ve/view/paint/CanvasView;->isEmpty:Z

    .line 36
    iput-boolean v1, p0, Lcom/sec/android/app/ve/view/paint/CanvasView;->needToRefreshStrokeType:Z

    .line 50
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/CanvasView;->initializeEngine()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .parameter "context"
    .parameter "attr"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput-boolean v1, p0, Lcom/sec/android/app/ve/view/paint/CanvasView;->isEdited:Z

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/ve/view/paint/CanvasView;->isEmpty:Z

    .line 36
    iput-boolean v1, p0, Lcom/sec/android/app/ve/view/paint/CanvasView;->needToRefreshStrokeType:Z

    .line 55
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/CanvasView;->initializeEngine()V

    .line 56
    return-void
.end method


# virtual methods
.method public expandRealSize(II)Landroid/graphics/Bitmap;
    .registers 6
    .parameter "width"
    .parameter "height"

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, mdrawingBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/CanvasView;->makeStrokeToFlat()V

    .line 164
    sget-object v1, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    iget-object v1, v1, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    iget-object v1, v1, Lcom/sec/android/framework/draw/AbstractStage;->fixedSprites:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    invoke-static {v1, p1, p2, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 165
    return-object v0
.end method

.method protected initializeEngine()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 59
    new-instance v0, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    invoke-direct {v0, p0}, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;-><init>(Landroid/view/View;)V

    sput-object v0, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    .line 60
    sget-object v0, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0x500

    const/16 v3, 0x320

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->changeCanvasSize(Landroid/graphics/Rect;)V

    .line 61
    sget-object v0, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    iget-object v0, v0, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/sec/android/framework/draw/Setting;->setHistorySize(I)V

    .line 62
    sget-object v0, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    iget-object v0, v0, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    const-string v1, "%s/%s/%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "/mnt/sdcard/android/data"

    aput-object v3, v2, v4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/CanvasView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 63
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "cache"

    aput-object v4, v2, v3

    .line 62
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/framework/draw/Setting;->setCacheDirectory(Ljava/lang/String;)V

    .line 64
    sget-object v0, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    iget-object v0, v0, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Lcom/sec/android/framework/draw/Setting;->setCacheTime(I)V

    .line 65
    sget-object v0, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    iget-object v0, v0, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/sec/android/framework/draw/Setting;->setStrokeVectorLimitation(I)V

    .line 66
    return-void
.end method

.method public loadDrawinge(Ljava/lang/String;)V
    .registers 15
    .parameter "memoPath"

    .prologue
    const/4 v12, 0x0

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 198
    .local v5, startTime:J
    const/4 v8, 0x0

    :try_start_6
    iput-boolean v8, p0, Lcom/sec/android/app/ve/view/paint/CanvasView;->isEmpty:Z

    .line 199
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    .local v4, file:Ljava/io/File;
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 201
    .local v7, stream:Ljava/io/FileInputStream;
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v0, v8, [B

    .line 202
    .local v0, bytes:[B
    invoke-virtual {v7, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 203
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 204
    new-instance v8, Lcom/sec/android/framework/draw/XMLParser;

    sget-object v9, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    invoke-direct {v8, v9}, Lcom/sec/android/framework/draw/XMLParser;-><init>(Lcom/sec/android/framework/draw/modes/AbstractModeContext;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v0, v10}, Lcom/sec/android/framework/draw/XMLParser;->parse(Ljava/lang/String;[BLjava/util/Vector;)Z
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_2b} :catch_44
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_2b} :catch_49

    .line 212
    .end local v0           #bytes:[B
    .end local v4           #file:Ljava/io/File;
    .end local v7           #stream:Ljava/io/FileInputStream;
    :goto_2b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 213
    .local v2, endTime:J
    const-string v8, "Load : %d ms"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    .line 214
    sub-long v10, v2, v5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v12

    .line 213
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    .line 215
    return-void

    .line 205
    .end local v2           #endTime:J
    :catch_44
    move-exception v1

    .line 207
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2b

    .line 208
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_49
    move-exception v1

    .line 210
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2b
.end method

.method protected makeStrokeToFlat()V
    .registers 11

    .prologue
    .line 239
    sget-object v5, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    if-eqz v5, :cond_a

    sget-object v5, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    iget-object v5, v5, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    if-nez v5, :cond_b

    .line 263
    :cond_a
    return-void

    .line 243
    :cond_b
    sget-object v5, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    iget-object v5, v5, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    invoke-virtual {v5}, Lcom/sec/android/framework/draw/AbstractStage;->getRedoList()Ljava/util/LinkedList;

    move-result-object v3

    .line 244
    .local v3, listOfRedos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/sec/android/framework/draw/sprites/commands/ISpriteCommand;>;"
    sget-object v5, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    iget-object v5, v5, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    invoke-virtual {v5}, Lcom/sec/android/framework/draw/AbstractStage;->getUndoList()Ljava/util/LinkedList;

    move-result-object v4

    .line 246
    .local v4, listOfUndos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/sec/android/framework/draw/sprites/commands/ISpriteCommand;>;"
    if-eqz v3, :cond_a

    if-eqz v4, :cond_a

    .line 249
    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 250
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 252
    .local v0, historySize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_27
    if-ge v1, v0, :cond_a

    .line 253
    invoke-virtual {v4}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/framework/draw/sprites/commands/ISpriteCommand;

    .line 254
    .local v2, lastCommand:Lcom/sec/android/framework/draw/sprites/commands/ISpriteCommand;
    if-eqz v2, :cond_4e

    instance-of v5, v2, Lcom/sec/android/framework/draw/sprites/commands/SpriteCreateCommand;

    if-eqz v5, :cond_4e

    move-object v5, v2

    .line 255
    check-cast v5, Lcom/sec/android/framework/draw/sprites/commands/SpriteCreateCommand;

    iget-object v5, v5, Lcom/sec/android/framework/draw/sprites/commands/SpriteCreateCommand;->sprite:Lcom/sec/android/framework/draw/sprites/AbstractSprite;

    instance-of v5, v5, Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    if-eqz v5, :cond_4e

    .line 257
    sget-object v5, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    iget-object v6, v5, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    check-cast v2, Lcom/sec/android/framework/draw/sprites/commands/SpriteCreateCommand;

    .end local v2           #lastCommand:Lcom/sec/android/framework/draw/sprites/commands/ISpriteCommand;
    iget-object v5, v2, Lcom/sec/android/framework/draw/sprites/commands/SpriteCreateCommand;->sprite:Lcom/sec/android/framework/draw/sprites/AbstractSprite;

    check-cast v5, Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v6, v5}, Lcom/sec/android/framework/draw/AbstractStage;->strokeToFixedStroke(Lcom/sec/android/framework/draw/sprites/StrokeSprite;)V

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 260
    .restart local v2       #lastCommand:Lcom/sec/android/framework/draw/sprites/commands/ISpriteCommand;
    :cond_4e
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "addSprite : %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 155
    sget-object v0, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->onFinishJob()V

    .line 156
    sget-object v0, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->dispose()V

    .line 158
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 159
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5
    .parameter "canvas"

    .prologue
    .line 141
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 142
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/CanvasView;->canvasRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_14

    .line 143
    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/CanvasView;->canvasRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/app/ve/view/paint/CanvasView;->canvasRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 145
    :cond_14
    sget-object v1, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->onDraw(Landroid/graphics/Canvas;)V

    .line 147
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 151
    :goto_1c
    return-void

    .line 148
    :catch_1d
    move-exception v0

    .line 149
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1c
.end method

.method protected onLayout(ZIIII)V
    .registers 9
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 71
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/CanvasView;->canvasRect:Landroid/graphics/Rect;

    if-nez v0, :cond_e

    .line 74
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/sec/android/app/ve/view/paint/CanvasView;->canvasRect:Landroid/graphics/Rect;

    .line 76
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/ve/view/paint/CanvasView;->canvasRect:Landroid/graphics/Rect;

    neg-int v1, p2

    neg-int v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 77
    sget-object v0, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/CanvasView;->canvasRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->changeScreenSize(Landroid/graphics/Rect;)V

    .line 78
    sget-object v0, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->setView(Landroid/view/View;)V

    .line 79
    sget-object v0, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    iget-object v1, p0, Lcom/sec/android/app/ve/view/paint/CanvasView;->canvasRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->onLayout(Landroid/graphics/Rect;)V

    .line 80
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 96
    const/16 v1, 0x400

    .line 97
    .local v1, meta_eraser_on:I
    const/16 v2, 0x200

    .line 99
    .local v2, meta_pen_on:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    and-int/lit16 v3, v3, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9d

    .line 100
    sget-object v3, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    sget-object v4, Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;->Tablet:Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->setInputMethod(Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;)V

    .line 104
    :goto_17
    invoke-static {}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->getInstance()Lcom/sec/android/app/ve/activity/PenDrawActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->isEraser()Z

    move-result v0

    .line 105
    .local v0, isEraserMode:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    and-int/2addr v3, v2

    if-eqz v3, :cond_33

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_33

    .line 107
    invoke-static {}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->getInstance()Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->refreshStrokeType()V

    .line 111
    :cond_33
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    and-int/2addr v3, v1

    if-eqz v3, :cond_72

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_72

    .line 113
    if-nez v0, :cond_72

    .line 115
    iput-boolean v5, p0, Lcom/sec/android/app/ve/view/paint/CanvasView;->needToRefreshStrokeType:Z

    .line 116
    sget-object v3, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    iget-object v3, v3, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    const-string v4, "Eraser"

    invoke-static {v4}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->valueOf(Ljava/lang/String;)Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/framework/draw/Setting;->setStrokeType(Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;)V

    .line 117
    sget-object v3, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    iget-object v3, v3, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    const-string v4, "Constant"

    invoke-static {v4}, Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;->valueOf(Ljava/lang/String;)Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/framework/draw/Setting;->setStrokeParameter(Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;)V

    .line 118
    sget-object v3, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    iget-object v3, v3, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/CanvasView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/ve/view/paint/EraserSelectorPopup;->getEraserThickness()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/sec/android/framework/draw/Setting;->setStrokeWidth(F)V

    .line 122
    :cond_72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v3

    and-int/2addr v3, v1

    if-eqz v3, :cond_8c

    .line 123
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v5, :cond_8c

    .line 124
    iget-boolean v3, p0, Lcom/sec/android/app/ve/view/paint/CanvasView;->needToRefreshStrokeType:Z

    if-eqz v3, :cond_8c

    .line 126
    iput-boolean v6, p0, Lcom/sec/android/app/ve/view/paint/CanvasView;->needToRefreshStrokeType:Z

    .line 127
    invoke-static {}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->getInstance()Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/view/paint/PaintSelectorPopup;->refreshStrokeType()V

    .line 131
    :cond_8c
    sget-object v3, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 132
    iput-boolean v5, p0, Lcom/sec/android/app/ve/view/paint/CanvasView;->isEdited:Z

    .line 133
    iput-boolean v6, p0, Lcom/sec/android/app/ve/view/paint/CanvasView;->isEmpty:Z

    .line 134
    invoke-static {}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->getInstance()Lcom/sec/android/app/ve/activity/PenDrawActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/ve/activity/PenDrawActivity;->updateUndoRedoButtons()V

    .line 135
    return v5

    .line 102
    .end local v0           #isEraserMode:Z
    :cond_9d
    sget-object v3, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    sget-object v4, Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;->Hand:Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->setInputMethod(Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;)V

    goto/16 :goto_17
.end method

.method public saveDrawing(Ljava/lang/String;)V
    .registers 7
    .parameter "memoPath"

    .prologue
    .line 219
    sget-object v2, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    iget-object v2, v2, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    iget-object v2, v2, Lcom/sec/android/framework/draw/AbstractStage;->fixedSprites:Landroid/graphics/Bitmap;

    if-nez v2, :cond_9

    .line 235
    :goto_8
    return-void

    .line 222
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/ve/view/paint/CanvasView;->makeStrokeToFlat()V

    .line 225
    :try_start_c
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 226
    .local v1, out:Ljava/io/FileOutputStream;
    sget-object v2, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    iget-object v2, v2, Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    iget-object v2, v2, Lcom/sec/android/framework/draw/AbstractStage;->fixedSprites:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 227
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_21
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_21} :catch_22
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_21} :catch_27

    goto :goto_8

    .line 228
    .end local v1           #out:Ljava/io/FileOutputStream;
    :catch_22
    move-exception v0

    .line 230
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_8

    .line 231
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_27
    move-exception v0

    .line 233
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8
.end method

.method public setSaveFilePath(Ljava/lang/String;)V
    .registers 3
    .parameter "saveFilePath"

    .prologue
    .line 84
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 85
    sget-object v0, Lcom/sec/android/app/ve/view/paint/CanvasView;->modeContext:Lcom/sec/android/app/ve/view/paint/drawingmodes/ModeContext;

    if-eqz v0, :cond_10

    .line 86
    invoke-virtual {p0, p1}, Lcom/sec/android/app/ve/view/paint/CanvasView;->loadDrawinge(Ljava/lang/String;)V

    .line 91
    :cond_f
    :goto_f
    return-void

    .line 88
    :cond_10
    const-string v0, "modeContext is null"

    invoke-static {v0}, Lcom/sec/android/app/ve/util/Utils;->log(Ljava/lang/String;)V

    goto :goto_f
.end method
