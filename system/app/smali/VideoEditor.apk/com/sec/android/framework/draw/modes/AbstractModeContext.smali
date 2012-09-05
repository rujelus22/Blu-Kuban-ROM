.class public abstract Lcom/sec/android/framework/draw/modes/AbstractModeContext;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final identityMatrix:Landroid/graphics/Matrix;


# instance fields
.field public currentHandle:I

.field public factory:Lcom/sec/android/framework/draw/sprites/ISpriteFactory;

.field public inverseTranslateMatrix:Landroid/graphics/Matrix;

.field public mode:Lcom/sec/android/framework/draw/modes/IModeState;

.field public setting:Lcom/sec/android/framework/draw/Setting;

.field public stage:Lcom/sec/android/framework/draw/AbstractStage;

.field public translateMatrix:Landroid/graphics/Matrix;

.field public view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->identityMatrix:Landroid/graphics/Matrix;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->translateMatrix:Landroid/graphics/Matrix;

    .line 50
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->inverseTranslateMatrix:Landroid/graphics/Matrix;

    .line 43
    return-void
.end method


# virtual methods
.method protected buildTranslateMatrix()V
    .registers 4

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->getZoom()F

    move-result v0

    .line 207
    invoke-virtual {p0}, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->getPanning()Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;

    move-result-object v1

    .line 209
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->translateMatrix:Landroid/graphics/Matrix;

    .line 210
    iget-object v2, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->translateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 211
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->translateMatrix:Landroid/graphics/Matrix;

    iget v2, v1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->x:F

    neg-float v2, v2

    iget v1, v1, Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;->y:F

    neg-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 213
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->translateMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->inverseTranslateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 214
    return-void
.end method

.method public abstract changeCanvasSize(Landroid/graphics/Rect;)V
.end method

.method public changeModeTo(Lcom/sec/android/framework/draw/modes/IModeState;)V
    .registers 3
    .parameter

    .prologue
    .line 197
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->mode:Lcom/sec/android/framework/draw/modes/IModeState;

    if-ne v0, p1, :cond_5

    .line 203
    :goto_4
    return-void

    .line 200
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->onActivate(Z)V

    .line 201
    iput-object p1, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->mode:Lcom/sec/android/framework/draw/modes/IModeState;

    .line 202
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->onActivate(Z)V

    goto :goto_4
.end method

.method protected abstract changePanningPosition(FF)V
.end method

.method public abstract changeScreenSize(Landroid/graphics/Rect;)V
.end method

.method protected abstract changeZoomFactor(F)V
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->mode:Lcom/sec/android/framework/draw/modes/IModeState;

    if-nez v0, :cond_5

    .line 396
    :goto_4
    return-void

    .line 394
    :cond_5
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/AbstractStage;->clearStage()V

    .line 395
    invoke-virtual {p0}, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->invalidate()V

    goto :goto_4
.end method

.method public deserializeContext(Landroid/app/Activity;)Z
    .registers 15
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 125
    iget v2, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->currentHandle:I

    if-ne v2, v0, :cond_b

    move v0, v1

    .line 192
    :goto_a
    return v0

    .line 127
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->serializeContext()V

    .line 129
    iput v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->currentHandle:I

    .line 131
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/Setting;->getSerializationDirectory()Ljava/lang/String;

    move-result-object v0

    .line 132
    new-instance v4, Ljava/io/File;

    iget v2, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->currentHandle:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_29

    move v0, v1

    .line 135
    goto :goto_a

    .line 137
    :cond_29
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    :try_start_2e
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    new-instance v3, Ljava/io/File;

    const-string v6, "sprites.xml"

    invoke-direct {v3, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 141
    :goto_3f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_42
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_42} :catch_8c
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_42} :catch_91

    move-result-object v2

    if-nez v2, :cond_88

    .line 149
    :goto_45
    new-instance v0, Ljava/io/File;

    const-string v2, "fixedStroke.png"

    invoke-direct {v0, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 151
    const/4 v2, 0x0

    .line 153
    :try_start_4d
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 154
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v0, v6

    new-array v0, v0, [B
    :try_end_59
    .catch Ljava/io/FileNotFoundException; {:try_start_4d .. :try_end_59} :catch_96
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_59} :catch_9e

    .line 155
    :try_start_59
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_5c
    .catch Ljava/io/FileNotFoundException; {:try_start_59 .. :try_end_5c} :catch_d2
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_d0

    .line 162
    :goto_5c
    new-instance v2, Lcom/sec/android/framework/draw/modes/AbstractModeContext$1;

    invoke-direct {v2, p0}, Lcom/sec/android/framework/draw/modes/AbstractModeContext$1;-><init>(Lcom/sec/android/framework/draw/modes/AbstractModeContext;)V

    invoke-virtual {v4, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v6

    .line 169
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    .line 170
    if-eqz v6, :cond_70

    .line 171
    array-length v8, v6

    move v3, v1

    :goto_6e
    if-lt v3, v8, :cond_a6

    .line 185
    :cond_70
    new-instance v2, Lcom/sec/android/framework/draw/XMLParser;

    invoke-direct {v2, p0}, Lcom/sec/android/framework/draw/XMLParser;-><init>(Lcom/sec/android/framework/draw/modes/AbstractModeContext;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v7}, Lcom/sec/android/framework/draw/XMLParser;->parse(Ljava/lang/String;[BLjava/util/Vector;)Z

    .line 188
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v2, v0

    :goto_81
    if-lt v1, v2, :cond_c8

    .line 190
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 192
    const/4 v0, 0x1

    goto :goto_a

    .line 142
    :cond_88
    :try_start_88
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8b
    .catch Ljava/io/FileNotFoundException; {:try_start_88 .. :try_end_8b} :catch_8c
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_91

    goto :goto_3f

    .line 143
    :catch_8c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_45

    .line 145
    :catch_91
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_45

    .line 156
    :catch_96
    move-exception v0

    move-object v12, v0

    move-object v0, v2

    move-object v2, v12

    :goto_9a
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_5c

    .line 158
    :catch_9e
    move-exception v0

    move-object v12, v0

    move-object v0, v2

    move-object v2, v12

    :goto_a2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5c

    .line 171
    :cond_a6
    aget-object v2, v6, v3

    .line 173
    :try_start_a8
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 174
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v2, v10

    new-array v2, v2, [B

    .line 175
    invoke-virtual {v9, v2}, Ljava/io/InputStream;->read([B)I

    .line 176
    invoke-virtual {v7, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_ba
    .catch Ljava/io/FileNotFoundException; {:try_start_a8 .. :try_end_ba} :catch_be
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ba} :catch_c3

    .line 171
    :goto_ba
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_6e

    .line 177
    :catch_be
    move-exception v2

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_ba

    .line 179
    :catch_c3
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_ba

    .line 188
    :cond_c8
    aget-object v3, v0, v1

    .line 189
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_81

    .line 158
    :catch_d0
    move-exception v2

    goto :goto_a2

    .line 156
    :catch_d2
    move-exception v2

    goto :goto_9a
.end method

.method public dispose()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 377
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    if-eqz v0, :cond_a

    .line 378
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/AbstractStage;->dispose()V

    .line 380
    :cond_a
    iput-object v1, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    .line 381
    iput-object v1, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->mode:Lcom/sec/android/framework/draw/modes/IModeState;

    .line 382
    iput-object v1, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->factory:Lcom/sec/android/framework/draw/sprites/ISpriteFactory;

    .line 384
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 385
    return-void
.end method

.method public getHandPressureParameter()[F
    .registers 2

    .prologue
    .line 504
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    if-nez v0, :cond_b

    .line 505
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_12

    .line 507
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/Setting;->getHandPressureParameter()[F

    move-result-object v0

    goto :goto_a

    .line 505
    :array_12
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getHandSpeedParameter()[F
    .registers 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    if-nez v0, :cond_b

    .line 466
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_12

    .line 468
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/Setting;->getHandSpeedParameter()[F

    move-result-object v0

    goto :goto_a

    .line 466
    :array_12
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getLayerID()I
    .registers 2

    .prologue
    .line 571
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->mode:Lcom/sec/android/framework/draw/modes/IModeState;

    invoke-interface {v0, p0}, Lcom/sec/android/framework/draw/modes/IModeState;->getLayerID(Lcom/sec/android/framework/draw/modes/AbstractModeContext;)I

    move-result v0

    return v0
.end method

.method public abstract getPanning()Lcom/sec/android/framework/draw/sprites/strokes/geometry/PointF;
.end method

.method public getTabletPressureParameter()[F
    .registers 2

    .prologue
    .line 516
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    if-nez v0, :cond_b

    .line 517
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_12

    .line 519
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/Setting;->getTabletPressureParameter()[F

    move-result-object v0

    goto :goto_a

    .line 517
    :array_12
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public getTabletSpeedParameter()[F
    .registers 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    if-nez v0, :cond_b

    .line 478
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_12

    .line 480
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/Setting;->getTabletSpeedParameter()[F

    move-result-object v0

    goto :goto_a

    .line 478
    :array_12
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public abstract getZoom()F
.end method

.method public initializeContext(Landroid/app/Activity;)Z
    .registers 5
    .parameter

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 58
    iget v2, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->currentHandle:I

    if-eq v2, v1, :cond_e

    iget v1, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->currentHandle:I

    if-eqz v1, :cond_e

    .line 59
    const/4 v0, 0x1

    .line 61
    :cond_e
    return v0
.end method

.method public invalidate()V
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->view:Landroid/view/View;

    if-nez v0, :cond_5

    .line 228
    :goto_4
    return-void

    .line 224
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V
    :try_end_a
    .catch Landroid/util/AndroidRuntimeException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 225
    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/util/AndroidRuntimeException;->printStackTrace()V

    goto :goto_4
.end method

.method public invalidate(Landroid/graphics/RectF;)V
    .registers 7
    .parameter

    .prologue
    .line 237
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->view:Landroid/view/View;

    if-nez v0, :cond_5

    .line 247
    :goto_4
    return-void

    .line 241
    :cond_5
    :try_start_5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 242
    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    .line 243
    iget-object v1, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->view:Landroid/view/View;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/view/View;->invalidate(IIII)V
    :try_end_1a
    .catch Landroid/util/AndroidRuntimeException; {:try_start_5 .. :try_end_1a} :catch_1b

    goto :goto_4

    .line 244
    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Landroid/util/AndroidRuntimeException;->printStackTrace()V

    goto :goto_4
.end method

.method public isRedoable()Z
    .registers 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    if-nez v0, :cond_6

    .line 256
    const/4 v0, 0x0

    .line 258
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/AbstractStage;->isRedoable()Z

    move-result v0

    goto :goto_5
.end method

.method public isUndoable()Z
    .registers 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    if-nez v0, :cond_6

    .line 268
    const/4 v0, 0x0

    .line 270
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/AbstractStage;->isUndoable()Z

    move-result v0

    goto :goto_5
.end method

.method public onActivate(Z)V
    .registers 3
    .parameter

    .prologue
    .line 286
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->mode:Lcom/sec/android/framework/draw/modes/IModeState;

    if-nez v0, :cond_5

    .line 290
    :goto_4
    return-void

    .line 289
    :cond_5
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->mode:Lcom/sec/android/framework/draw/modes/IModeState;

    invoke-interface {v0, p0, p1}, Lcom/sec/android/framework/draw/modes/IModeState;->onActivate(Lcom/sec/android/framework/draw/modes/AbstractModeContext;Z)V

    goto :goto_4
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter

    .prologue
    .line 307
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->mode:Lcom/sec/android/framework/draw/modes/IModeState;

    if-nez v0, :cond_5

    .line 318
    :goto_4
    return-void

    .line 310
    :cond_5
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->translateMatrix:Landroid/graphics/Matrix;

    sget-object v1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->identityMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 311
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 312
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->translateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 313
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->mode:Lcom/sec/android/framework/draw/modes/IModeState;

    invoke-interface {v0, p0, p1}, Lcom/sec/android/framework/draw/modes/IModeState;->onDraw(Lcom/sec/android/framework/draw/modes/AbstractModeContext;Landroid/graphics/Canvas;)V

    .line 314
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_4

    .line 316
    :cond_20
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->mode:Lcom/sec/android/framework/draw/modes/IModeState;

    invoke-interface {v0, p0, p1}, Lcom/sec/android/framework/draw/modes/IModeState;->onDraw(Lcom/sec/android/framework/draw/modes/AbstractModeContext;Landroid/graphics/Canvas;)V

    goto :goto_4
.end method

.method public onDraw(Landroid/graphics/Canvas;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 322
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->mode:Lcom/sec/android/framework/draw/modes/IModeState;

    if-nez v0, :cond_5

    .line 333
    :goto_4
    return-void

    .line 325
    :cond_5
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->translateMatrix:Landroid/graphics/Matrix;

    sget-object v1, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->identityMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 326
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 327
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->translateMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 328
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->mode:Lcom/sec/android/framework/draw/modes/IModeState;

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/android/framework/draw/modes/IModeState;->onDraw(Lcom/sec/android/framework/draw/modes/AbstractModeContext;Landroid/graphics/Canvas;I)V

    .line 329
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_4

    .line 331
    :cond_20
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->mode:Lcom/sec/android/framework/draw/modes/IModeState;

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/android/framework/draw/modes/IModeState;->onDraw(Lcom/sec/android/framework/draw/modes/AbstractModeContext;Landroid/graphics/Canvas;I)V

    goto :goto_4
.end method

.method public onFinishJob()V
    .registers 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->mode:Lcom/sec/android/framework/draw/modes/IModeState;

    if-nez v0, :cond_5

    .line 349
    :goto_4
    return-void

    .line 348
    :cond_5
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->mode:Lcom/sec/android/framework/draw/modes/IModeState;

    invoke-interface {v0, p0}, Lcom/sec/android/framework/draw/modes/IModeState;->onFinishJob(Lcom/sec/android/framework/draw/modes/AbstractModeContext;)V

    goto :goto_4
.end method

.method public onLayout(Landroid/graphics/Rect;)V
    .registers 5
    .parameter

    .prologue
    .line 294
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->mode:Lcom/sec/android/framework/draw/modes/IModeState;

    if-nez v0, :cond_5

    .line 303
    :goto_4
    return-void

    .line 297
    :cond_5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 298
    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 299
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v0, p1}, Lcom/sec/android/framework/draw/Setting;->setScreenRect(Landroid/graphics/Rect;)V

    .line 300
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v0, p1}, Lcom/sec/android/framework/draw/Setting;->setCanvasRect(Landroid/graphics/Rect;)V

    .line 302
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->mode:Lcom/sec/android/framework/draw/modes/IModeState;

    invoke-interface {v0, p0, p1}, Lcom/sec/android/framework/draw/modes/IModeState;->onLayout(Lcom/sec/android/framework/draw/modes/AbstractModeContext;Landroid/graphics/Rect;)V

    goto :goto_4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter

    .prologue
    .line 337
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->mode:Lcom/sec/android/framework/draw/modes/IModeState;

    if-nez v0, :cond_6

    .line 338
    const/4 v0, 0x0

    .line 340
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->mode:Lcom/sec/android/framework/draw/modes/IModeState;

    invoke-interface {v0, p0, p1}, Lcom/sec/android/framework/draw/modes/IModeState;->onTouchEvent(Lcom/sec/android/framework/draw/modes/AbstractModeContext;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_5
.end method

.method public redo()V
    .registers 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->mode:Lcom/sec/android/framework/draw/modes/IModeState;

    if-nez v0, :cond_5

    .line 360
    :goto_4
    return-void

    .line 358
    :cond_5
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->mode:Lcom/sec/android/framework/draw/modes/IModeState;

    invoke-interface {v0, p0}, Lcom/sec/android/framework/draw/modes/IModeState;->onFinishJob(Lcom/sec/android/framework/draw/modes/AbstractModeContext;)V

    .line 359
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/AbstractStage;->redo()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->invalidate(Landroid/graphics/RectF;)V

    goto :goto_4
.end method

.method public serializeContext()V
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 65
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/Setting;->getSerializationDirectory()Ljava/lang/String;

    move-result-object v0

    .line 66
    new-instance v2, Ljava/io/File;

    iget v3, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->currentHandle:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 70
    :try_start_15
    new-instance v0, Ljava/io/File;

    const-string v3, ".nomedia"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1f} :catch_75

    .line 75
    :goto_1f
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    const-class v3, Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v0, v3}, Lcom/sec/android/framework/draw/AbstractStage;->getSprites(Ljava/lang/Class;)Ljava/util/LinkedList;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2b
    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7a

    .line 84
    :try_start_31
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    new-instance v4, Ljava/io/File;

    const-string v5, "sprites.xml"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 85
    iget-object v3, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    invoke-virtual {v3}, Lcom/sec/android/framework/draw/AbstractStage;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_4e} :catch_8e

    .line 91
    :goto_4e
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/AbstractStage;->toImageSpriteArray()Ljava/util/Vector;

    move-result-object v3

    .line 92
    :goto_54
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt v1, v0, :cond_93

    .line 112
    :try_start_5a
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    const-string v3, "fixedStroke.png"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 113
    iget-object v1, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    iget-object v1, v1, Lcom/sec/android/framework/draw/AbstractStage;->fixedSprites:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 114
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_74
    .catch Ljava/io/FileNotFoundException; {:try_start_5a .. :try_end_74} :catch_cf
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_74} :catch_d4

    .line 120
    :goto_74
    return-void

    .line 71
    :catch_75
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1f

    .line 77
    :cond_7a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/AbstractSprite;

    .line 78
    invoke-virtual {v0}, Lcom/sec/android/framework/draw/sprites/AbstractSprite;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 79
    iget-object v4, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    check-cast v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite;

    invoke-virtual {v4, v0}, Lcom/sec/android/framework/draw/AbstractStage;->strokeToFixedStroke(Lcom/sec/android/framework/draw/sprites/StrokeSprite;)V

    goto :goto_2b

    .line 87
    :catch_8e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4e

    .line 93
    :cond_93
    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/framework/draw/sprites/c;

    .line 95
    if-eqz v0, :cond_c1

    .line 96
    :try_start_9b
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    const-string v6, "%d.png"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 101
    iget-object v0, v0, Lcom/sec/android/framework/draw/sprites/c;->a:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v0, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 102
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_c1
    .catch Ljava/io/FileNotFoundException; {:try_start_9b .. :try_end_c1} :catch_c5
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_c1} :catch_ca

    .line 92
    :cond_c1
    :goto_c1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_54

    .line 103
    :catch_c5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_c1

    .line 105
    :catch_ca
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c1

    .line 115
    :catch_cf
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_74

    .line 117
    :catch_d4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_74
.end method

.method public setInputMethod(Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;)V
    .registers 3
    .parameter

    .prologue
    .line 438
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    if-nez v0, :cond_5

    .line 442
    :goto_4
    return-void

    .line 441
    :cond_5
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v0, p1}, Lcom/sec/android/framework/draw/Setting;->setStrokeInput(Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;)V

    goto :goto_4
.end method

.method public setPanning(FF)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 407
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->mode:Lcom/sec/android/framework/draw/modes/IModeState;

    if-nez v0, :cond_5

    .line 413
    :goto_4
    return-void

    .line 410
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->changePanningPosition(FF)V

    .line 411
    invoke-virtual {p0}, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->buildTranslateMatrix()V

    .line 412
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->mode:Lcom/sec/android/framework/draw/modes/IModeState;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-interface {v0, p0, v1}, Lcom/sec/android/framework/draw/modes/IModeState;->onLayout(Lcom/sec/android/framework/draw/modes/AbstractModeContext;Landroid/graphics/Rect;)V

    goto :goto_4
.end method

.method public setPressureParameter([F[F)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 492
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    if-nez v0, :cond_5

    .line 496
    :goto_4
    return-void

    .line 495
    :cond_5
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/framework/draw/Setting;->setPressureParameter([F[F)V

    goto :goto_4
.end method

.method public setSpeedParameter([F[F)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 453
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    if-nez v0, :cond_5

    .line 457
    :goto_4
    return-void

    .line 456
    :cond_5
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->setting:Lcom/sec/android/framework/draw/Setting;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/framework/draw/Setting;->setSpeedParameter([F[F)V

    goto :goto_4
.end method

.method public setView(Landroid/view/View;)V
    .registers 2
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->view:Landroid/view/View;

    .line 282
    return-void
.end method

.method public setZoom(F)V
    .registers 4
    .parameter

    .prologue
    .line 422
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->mode:Lcom/sec/android/framework/draw/modes/IModeState;

    if-nez v0, :cond_5

    .line 428
    :goto_4
    return-void

    .line 425
    :cond_5
    invoke-virtual {p0, p1}, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->changeZoomFactor(F)V

    .line 426
    invoke-virtual {p0}, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->buildTranslateMatrix()V

    .line 427
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->mode:Lcom/sec/android/framework/draw/modes/IModeState;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-interface {v0, p0, v1}, Lcom/sec/android/framework/draw/modes/IModeState;->onLayout(Lcom/sec/android/framework/draw/modes/AbstractModeContext;Landroid/graphics/Rect;)V

    goto :goto_4
.end method

.method public undo()V
    .registers 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->mode:Lcom/sec/android/framework/draw/modes/IModeState;

    if-nez v0, :cond_5

    .line 371
    :goto_4
    return-void

    .line 369
    :cond_5
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->mode:Lcom/sec/android/framework/draw/modes/IModeState;

    invoke-interface {v0, p0}, Lcom/sec/android/framework/draw/modes/IModeState;->onFinishJob(Lcom/sec/android/framework/draw/modes/AbstractModeContext;)V

    .line 370
    iget-object v0, p0, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->stage:Lcom/sec/android/framework/draw/AbstractStage;

    invoke-virtual {v0}, Lcom/sec/android/framework/draw/AbstractStage;->undo()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/framework/draw/modes/AbstractModeContext;->invalidate(Landroid/graphics/RectF;)V

    goto :goto_4
.end method
