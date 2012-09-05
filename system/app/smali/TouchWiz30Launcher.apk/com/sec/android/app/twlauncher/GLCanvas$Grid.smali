.class Lcom/sec/android/app/twlauncher/GLCanvas$Grid;
.super Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;
.source "GLCanvas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/GLCanvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Grid"
.end annotation


# direct methods
.method constructor <init>(II)V
    .registers 10
    .parameter "xres"
    .parameter "yres"

    .prologue
    .line 1293
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/GLCanvas$Geometry;-><init>()V

    .line 1294
    mul-int v4, p1, p2

    mul-int/lit8 v4, v4, 0x2

    new-array v1, v4, [F

    .line 1295
    .local v1, v:[F
    const/4 v3, 0x0

    .local v3, y:I
    :goto_a
    if-ge v3, p2, :cond_2f

    .line 1296
    const/4 v2, 0x0

    .local v2, x:I
    :goto_d
    if-ge v2, p1, :cond_2c

    .line 1297
    mul-int v4, v3, p1

    add-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0x2

    int-to-float v5, v2

    add-int/lit8 v6, p1, -0x1

    int-to-float v6, v6

    div-float/2addr v5, v6

    aput v5, v1, v4

    .line 1298
    mul-int v4, v3, p1

    add-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    int-to-float v5, v3

    add-int/lit8 v6, p2, -0x1

    int-to-float v6, v6

    div-float/2addr v5, v6

    aput v5, v1, v4

    .line 1296
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1295
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 1302
    .end local v2           #x:I
    :cond_2f
    add-int/lit8 v4, p1, -0x1

    add-int/lit8 v5, p2, -0x1

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x2

    mul-int/lit8 v4, v4, 0x3

    new-array v0, v4, [S

    .line 1303
    .local v0, indexes:[S
    const/4 v3, 0x0

    :goto_3b
    add-int/lit8 v4, p2, -0x1

    if-ge v3, v4, :cond_b3

    .line 1304
    const/4 v2, 0x0

    .restart local v2       #x:I
    :goto_40
    add-int/lit8 v4, p1, -0x1

    if-ge v2, v4, :cond_b0

    .line 1305
    add-int/lit8 v4, p1, -0x1

    mul-int/2addr v4, v3

    add-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x0

    mul-int v5, v3, p1

    add-int/2addr v5, v2

    int-to-short v5, v5

    aput-short v5, v0, v4

    .line 1306
    add-int/lit8 v4, p1, -0x1

    mul-int/2addr v4, v3

    add-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    mul-int v5, v3, p1

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, 0x1

    int-to-short v5, v5

    aput-short v5, v0, v4

    .line 1307
    add-int/lit8 v4, p1, -0x1

    mul-int/2addr v4, v3

    add-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v5, v3, 0x1

    mul-int/2addr v5, p1

    add-int/2addr v5, v2

    int-to-short v5, v5

    aput-short v5, v0, v4

    .line 1309
    add-int/lit8 v4, p1, -0x1

    mul-int/2addr v4, v3

    add-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x3

    mul-int v5, v3, p1

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, 0x1

    int-to-short v5, v5

    aput-short v5, v0, v4

    .line 1310
    add-int/lit8 v4, p1, -0x1

    mul-int/2addr v4, v3

    add-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v3, 0x1

    mul-int/2addr v5, p1

    add-int/2addr v5, v2

    add-int/lit8 v5, v5, 0x1

    int-to-short v5, v5

    aput-short v5, v0, v4

    .line 1311
    add-int/lit8 v4, p1, -0x1

    mul-int/2addr v4, v3

    add-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0x3

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x5

    add-int/lit8 v5, v3, 0x1

    mul-int/2addr v5, p1

    add-int/2addr v5, v2

    int-to-short v5, v5

    aput-short v5, v0, v4

    .line 1304
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 1303
    :cond_b0
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 1315
    .end local v2           #x:I
    :cond_b3
    const/4 v4, 0x2

    invoke-virtual {p0, v1, v0, v4}, Lcom/sec/android/app/twlauncher/GLCanvas$Grid;->put([F[SI)V

    .line 1316
    return-void
.end method
