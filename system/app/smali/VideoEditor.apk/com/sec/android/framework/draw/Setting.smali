.class public Lcom/sec/android/framework/draw/Setting;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static a:F

.field protected static b:I

.field protected static c:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

.field protected static d:Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

.field protected static e:Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;

.field protected static f:I

.field protected static g:I

.field private static h:I

.field private static i:I

.field private static j:[F

.field private static k:[F

.field private static l:[F

.field private static m:[F

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:I

.field private static q:I

.field private static r:I


# instance fields
.field private A:Landroid/graphics/PointF;

.field private B:Landroid/graphics/PointF;

.field private C:F

.field private D:Z

.field private E:Z

.field private F:[F

.field private G:[F

.field private H:[F

.field private I:[F

.field private J:Ljava/lang/String;

.field private K:I

.field private L:I

.field private M:I

.field private N:Ljava/lang/String;

.field private s:Landroid/graphics/Rect;

.field private t:Landroid/graphics/Rect;

.field private u:Lcom/sec/android/framework/draw/View;

.field private v:F

.field private w:I

.field private x:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

.field private y:Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

.field private z:Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 20
    const/high16 v0, 0x40a0

    sput v0, Lcom/sec/android/framework/draw/Setting;->a:F

    .line 21
    const/high16 v0, -0x100

    sput v0, Lcom/sec/android/framework/draw/Setting;->b:I

    .line 22
    sget-object v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;->Solid:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    sput-object v0, Lcom/sec/android/framework/draw/Setting;->c:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    .line 23
    sget-object v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;->SpeedAndPressure:Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

    sput-object v0, Lcom/sec/android/framework/draw/Setting;->d:Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

    .line 24
    sget-object v0, Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;->Hand:Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;

    sput-object v0, Lcom/sec/android/framework/draw/Setting;->e:Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;

    .line 25
    sput v1, Lcom/sec/android/framework/draw/Setting;->f:I

    .line 26
    sput v1, Lcom/sec/android/framework/draw/Setting;->g:I

    .line 27
    sput v1, Lcom/sec/android/framework/draw/Setting;->h:I

    .line 28
    sput v1, Lcom/sec/android/framework/draw/Setting;->i:I

    .line 29
    new-array v0, v2, [F

    fill-array-data v0, :array_50

    sput-object v0, Lcom/sec/android/framework/draw/Setting;->j:[F

    .line 30
    new-array v0, v2, [F

    fill-array-data v0, :array_5c

    sput-object v0, Lcom/sec/android/framework/draw/Setting;->k:[F

    .line 31
    new-array v0, v2, [F

    fill-array-data v0, :array_68

    sput-object v0, Lcom/sec/android/framework/draw/Setting;->l:[F

    .line 32
    new-array v0, v2, [F

    fill-array-data v0, :array_74

    sput-object v0, Lcom/sec/android/framework/draw/Setting;->m:[F

    .line 33
    const-string v0, "/mnt/sdcard/android/data/com.sec.android.framework.draw/cache"

    sput-object v0, Lcom/sec/android/framework/draw/Setting;->n:Ljava/lang/String;

    .line 34
    const-string v0, "/mnt/sdcard/android/data/com.sec.android.framework.draw/serial"

    sput-object v0, Lcom/sec/android/framework/draw/Setting;->o:Ljava/lang/String;

    .line 35
    const/16 v0, 0x46

    sput v0, Lcom/sec/android/framework/draw/Setting;->p:I

    .line 36
    const/16 v0, 0x1e

    sput v0, Lcom/sec/android/framework/draw/Setting;->q:I

    .line 37
    const/16 v0, 0x3e8

    sput v0, Lcom/sec/android/framework/draw/Setting;->r:I

    .line 19
    return-void

    .line 29
    nop

    :array_50
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xb0t 0x41t
        0x0t 0x0t 0xaat 0x42t
    .end array-data

    .line 30
    :array_5c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x66t 0x66t 0x86t 0x40t
        0x0t 0x0t 0x18t 0x41t
        0x0t 0x0t 0xct 0x42t
    .end array-data

    .line 31
    :array_68
    .array-data 0x4
        0xat 0xd7t 0x23t 0x3dt
        0xat 0xd7t 0x23t 0x3et
        0x14t 0xaet 0x47t 0x3et
        0x0t 0x0t 0xa0t 0x3ft
    .end array-data

    .line 32
    :array_74
    .array-data 0x4
        0xat 0xd7t 0x23t 0x3dt
        0x33t 0x33t 0xb3t 0x3et
        0x66t 0x66t 0x26t 0x3ft
        0xcdt 0xcct 0x4ct 0x3ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget v0, Lcom/sec/android/framework/draw/Setting;->a:F

    iput v0, p0, Lcom/sec/android/framework/draw/Setting;->v:F

    .line 68
    sget v0, Lcom/sec/android/framework/draw/Setting;->b:I

    iput v0, p0, Lcom/sec/android/framework/draw/Setting;->w:I

    .line 69
    sget-object v0, Lcom/sec/android/framework/draw/Setting;->c:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    iput-object v0, p0, Lcom/sec/android/framework/draw/Setting;->x:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    .line 70
    sget-object v0, Lcom/sec/android/framework/draw/Setting;->d:Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

    iput-object v0, p0, Lcom/sec/android/framework/draw/Setting;->y:Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

    .line 71
    sget-object v0, Lcom/sec/android/framework/draw/Setting;->e:Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;

    iput-object v0, p0, Lcom/sec/android/framework/draw/Setting;->z:Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;

    .line 73
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/framework/draw/Setting;->A:Landroid/graphics/PointF;

    .line 74
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/framework/draw/Setting;->C:F

    .line 75
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/framework/draw/Setting;->B:Landroid/graphics/PointF;

    .line 76
    iput-boolean v3, p0, Lcom/sec/android/framework/draw/Setting;->D:Z

    .line 78
    sget-object v0, Lcom/sec/android/framework/draw/Setting;->j:[F

    iput-object v0, p0, Lcom/sec/android/framework/draw/Setting;->F:[F

    .line 79
    sget-object v0, Lcom/sec/android/framework/draw/Setting;->k:[F

    iput-object v0, p0, Lcom/sec/android/framework/draw/Setting;->G:[F

    .line 80
    sget-object v0, Lcom/sec/android/framework/draw/Setting;->l:[F

    iput-object v0, p0, Lcom/sec/android/framework/draw/Setting;->H:[F

    .line 81
    sget-object v0, Lcom/sec/android/framework/draw/Setting;->m:[F

    iput-object v0, p0, Lcom/sec/android/framework/draw/Setting;->I:[F

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    sget v1, Lcom/sec/android/framework/draw/Setting;->f:I

    sget v2, Lcom/sec/android/framework/draw/Setting;->g:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/sec/android/framework/draw/Setting;->setCanvasRect(Landroid/graphics/Rect;)V

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    sget v1, Lcom/sec/android/framework/draw/Setting;->h:I

    sget v2, Lcom/sec/android/framework/draw/Setting;->i:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/sec/android/framework/draw/Setting;->setScreenRect(Landroid/graphics/Rect;)V

    .line 86
    sget-object v0, Lcom/sec/android/framework/draw/Setting;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/framework/draw/Setting;->J:Ljava/lang/String;

    .line 87
    sget v0, Lcom/sec/android/framework/draw/Setting;->p:I

    iput v0, p0, Lcom/sec/android/framework/draw/Setting;->K:I

    .line 88
    sget v0, Lcom/sec/android/framework/draw/Setting;->q:I

    iput v0, p0, Lcom/sec/android/framework/draw/Setting;->L:I

    .line 90
    sget-object v0, Lcom/sec/android/framework/draw/Setting;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/framework/draw/Setting;->N:Ljava/lang/String;

    .line 92
    sget v0, Lcom/sec/android/framework/draw/Setting;->r:I

    iput v0, p0, Lcom/sec/android/framework/draw/Setting;->M:I

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/framework/draw/Setting;->E:Z

    .line 94
    return-void
.end method


# virtual methods
.method public getCacheDirectory()Ljava/lang/String;
    .registers 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/sec/android/framework/draw/Setting;->J:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheTime()I
    .registers 2

    .prologue
    .line 435
    iget v0, p0, Lcom/sec/android/framework/draw/Setting;->K:I

    return v0
.end method

.method public getCanvasHeight()I
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sec/android/framework/draw/Setting;->s:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getCanvasRect()Landroid/graphics/Rect;
    .registers 3

    .prologue
    .line 112
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/framework/draw/Setting;->s:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getCanvasWidth()I
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/sec/android/framework/draw/Setting;->s:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getCorrectionPoint()Landroid/graphics/PointF;
    .registers 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/sec/android/framework/draw/Setting;->B:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getHandPressureParameter()[F
    .registers 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/sec/android/framework/draw/Setting;->H:[F

    return-object v0
.end method

.method public getHandSpeedParameter()[F
    .registers 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/sec/android/framework/draw/Setting;->F:[F

    return-object v0
.end method

.method public getHistorySize()I
    .registers 2

    .prologue
    .line 443
    iget v0, p0, Lcom/sec/android/framework/draw/Setting;->L:I

    return v0
.end method

.method public getScreenHeight()I
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/sec/android/framework/draw/Setting;->t:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getScreenRect()Landroid/graphics/Rect;
    .registers 3

    .prologue
    .line 149
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sec/android/framework/draw/Setting;->t:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getScreenWidth()I
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sec/android/framework/draw/Setting;->t:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getSerializationDirectory()Ljava/lang/String;
    .registers 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/sec/android/framework/draw/Setting;->N:Ljava/lang/String;

    return-object v0
.end method

.method public getStrokeColor()I
    .registers 2

    .prologue
    .line 205
    iget v0, p0, Lcom/sec/android/framework/draw/Setting;->w:I

    return v0
.end method

.method public getStrokeInput()Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;
    .registers 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/sec/android/framework/draw/Setting;->z:Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;

    return-object v0
.end method

.method public getStrokeParameter()Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/sec/android/framework/draw/Setting;->y:Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

    return-object v0
.end method

.method public getStrokeType()Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sec/android/framework/draw/Setting;->x:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    return-object v0
.end method

.method public getStrokeVectorLimitation()I
    .registers 2

    .prologue
    .line 451
    iget v0, p0, Lcom/sec/android/framework/draw/Setting;->M:I

    return v0
.end method

.method public getStrokeWidth()F
    .registers 2

    .prologue
    .line 186
    iget v0, p0, Lcom/sec/android/framework/draw/Setting;->v:F

    return v0
.end method

.method public getTabletPressureParameter()[F
    .registers 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/sec/android/framework/draw/Setting;->I:[F

    return-object v0
.end method

.method public getTabletSpeedParameter()[F
    .registers 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/sec/android/framework/draw/Setting;->G:[F

    return-object v0
.end method

.method public getUpdateCanvas()Lcom/sec/android/framework/draw/View;
    .registers 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/sec/android/framework/draw/Setting;->u:Lcom/sec/android/framework/draw/View;

    return-object v0
.end method

.method public isDebugMode()Z
    .registers 2

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/sec/android/framework/draw/Setting;->D:Z

    return v0
.end method

.method public isEraserDrawn()Z
    .registers 2

    .prologue
    .line 459
    iget-boolean v0, p0, Lcom/sec/android/framework/draw/Setting;->E:Z

    return v0
.end method

.method public setCacheDirectory(Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 403
    iput-object p1, p0, Lcom/sec/android/framework/draw/Setting;->J:Ljava/lang/String;

    .line 406
    :try_start_2
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/.nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1d} :catch_1e

    .line 410
    :goto_1d
    return-void

    .line 408
    :catch_1e
    move-exception v0

    const-string v0, "DIOTEK/DRAW"

    const-string v1, "setCacheDirectory : (%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method public setCacheTime(I)V
    .registers 2
    .parameter

    .prologue
    .line 431
    iput p1, p0, Lcom/sec/android/framework/draw/Setting;->K:I

    .line 432
    return-void
.end method

.method public setCanvasRect(Landroid/graphics/Rect;)V
    .registers 3
    .parameter

    .prologue
    .line 103
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/sec/android/framework/draw/Setting;->s:Landroid/graphics/Rect;

    .line 104
    return-void
.end method

.method public setCorrectionPoint(FF)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 390
    iget-object v0, p0, Lcom/sec/android/framework/draw/Setting;->B:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 391
    return-void
.end method

.method public setDebugMode(Z)V
    .registers 2
    .parameter

    .prologue
    .line 276
    iput-boolean p1, p0, Lcom/sec/android/framework/draw/Setting;->D:Z

    .line 277
    return-void
.end method

.method public setEraserDrawn(Z)V
    .registers 2
    .parameter

    .prologue
    .line 455
    iput-boolean p1, p0, Lcom/sec/android/framework/draw/Setting;->E:Z

    .line 456
    return-void
.end method

.method public setHandPressureParameter([F)V
    .registers 2
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/sec/android/framework/draw/Setting;->H:[F

    .line 338
    return-void
.end method

.method public setHandSpeedParameter([F)V
    .registers 2
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/sec/android/framework/draw/Setting;->F:[F

    .line 287
    return-void
.end method

.method public setHistorySize(I)V
    .registers 2
    .parameter

    .prologue
    .line 439
    iput p1, p0, Lcom/sec/android/framework/draw/Setting;->L:I

    .line 440
    return-void
.end method

.method public setPressureParameter([F[F)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 377
    invoke-virtual {p0, p1}, Lcom/sec/android/framework/draw/Setting;->setHandPressureParameter([F)V

    .line 378
    invoke-virtual {p0, p2}, Lcom/sec/android/framework/draw/Setting;->setTabletPressureParameter([F)V

    .line 379
    return-void
.end method

.method public setScreenRect(Landroid/graphics/Rect;)V
    .registers 3
    .parameter

    .prologue
    .line 140
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/sec/android/framework/draw/Setting;->t:Landroid/graphics/Rect;

    .line 141
    return-void
.end method

.method public setSerializationDirectory(Ljava/lang/String;)V
    .registers 7
    .parameter

    .prologue
    .line 413
    iput-object p1, p0, Lcom/sec/android/framework/draw/Setting;->N:Ljava/lang/String;

    .line 416
    :try_start_2
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/.nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1d} :catch_1e

    .line 420
    :goto_1d
    return-void

    .line 418
    :catch_1e
    move-exception v0

    const-string v0, "DIOTEK/DRAW"

    const-string v1, "setSerializationDirectory : (%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/framework/draw/Setting;->N:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d
.end method

.method public setSpeedParameter([F[F)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 326
    invoke-virtual {p0, p1}, Lcom/sec/android/framework/draw/Setting;->setHandSpeedParameter([F)V

    .line 327
    invoke-virtual {p0, p2}, Lcom/sec/android/framework/draw/Setting;->setTabletSpeedParameter([F)V

    .line 328
    return-void
.end method

.method public setStrokeColor(I)V
    .registers 2
    .parameter

    .prologue
    .line 196
    iput p1, p0, Lcom/sec/android/framework/draw/Setting;->w:I

    .line 197
    return-void
.end method

.method public setStrokeInput(Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;)V
    .registers 2
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/sec/android/framework/draw/Setting;->z:Lcom/sec/android/framework/draw/sprites/StrokeSprite$InputMethod;

    .line 260
    return-void
.end method

.method public setStrokeParameter(Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;)V
    .registers 2
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/sec/android/framework/draw/Setting;->y:Lcom/sec/android/framework/draw/sprites/StrokeSprite$ThicknessParameter;

    .line 239
    return-void
.end method

.method public setStrokeType(Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;)V
    .registers 2
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/sec/android/framework/draw/Setting;->x:Lcom/sec/android/framework/draw/sprites/StrokeSprite$Type;

    .line 217
    return-void
.end method

.method public setStrokeVectorLimitation(I)V
    .registers 2
    .parameter

    .prologue
    .line 447
    iput p1, p0, Lcom/sec/android/framework/draw/Setting;->M:I

    .line 448
    return-void
.end method

.method public setStrokeWidth(F)V
    .registers 2
    .parameter

    .prologue
    .line 177
    iput p1, p0, Lcom/sec/android/framework/draw/Setting;->v:F

    .line 178
    return-void
.end method

.method public setTabletPressureParameter([F)V
    .registers 2
    .parameter

    .prologue
    .line 356
    iput-object p1, p0, Lcom/sec/android/framework/draw/Setting;->I:[F

    .line 357
    return-void
.end method

.method public setTabletSpeedParameter([F)V
    .registers 2
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/sec/android/framework/draw/Setting;->G:[F

    .line 306
    return-void
.end method

.method public setUpdateCanvas(Lcom/sec/android/framework/draw/View;)V
    .registers 2
    .parameter

    .prologue
    .line 463
    iput-object p1, p0, Lcom/sec/android/framework/draw/Setting;->u:Lcom/sec/android/framework/draw/View;

    .line 464
    return-void
.end method
