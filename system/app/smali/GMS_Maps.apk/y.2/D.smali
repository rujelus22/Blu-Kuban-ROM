.class public Ly/d;
.super Ly/a;
.source "SourceFile"


# static fields
.field private static b:Lcom/google/android/maps/driveabout/vector/dY;

.field private static c:Lcom/google/android/maps/driveabout/vector/bI;

.field private static d:Lcom/google/android/maps/driveabout/vector/bI;

.field private static e:Lcom/google/android/maps/driveabout/vector/bI;


# instance fields
.field private a:I

.field private f:F

.field private g:D

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:[F

.field private k:[F

.field private l:F

.field private m:F

.field private final n:Lcom/google/android/maps/driveabout/vector/cR;

.field private o:Lcom/google/android/maps/driveabout/vector/cV;

.field private p:Lcom/google/android/maps/driveabout/vector/cV;

.field private final q:Lcom/google/android/maps/driveabout/vector/cM;

.field private final r:Lcom/google/android/maps/driveabout/vector/cM;

.field private volatile s:Lu/r;

.field private t:F


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 92
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dY;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/dY;-><init>(I)V

    sput-object v0, Ly/d;->b:Lcom/google/android/maps/driveabout/vector/dY;

    .line 93
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bI;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(I)V

    sput-object v0, Ly/d;->c:Lcom/google/android/maps/driveabout/vector/bI;

    .line 94
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bI;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(I)V

    sput-object v0, Ly/d;->d:Lcom/google/android/maps/driveabout/vector/bI;

    .line 95
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bI;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(I)V

    sput-object v0, Ly/d;->e:Lcom/google/android/maps/driveabout/vector/bI;

    .line 97
    sget-object v0, Ly/d;->b:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0, v3, v3, v3}, Lcom/google/android/maps/driveabout/vector/dY;->a(FFF)V

    .line 98
    sget-object v0, Ly/d;->b:Lcom/google/android/maps/driveabout/vector/dY;

    const/high16 v1, 0x4170

    invoke-virtual {v0, v3, v1, v3}, Lcom/google/android/maps/driveabout/vector/dY;->a(FFF)V

    .line 99
    sget-object v0, Ly/d;->b:Lcom/google/android/maps/driveabout/vector/dY;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1, v3, v3}, Lcom/google/android/maps/driveabout/vector/dY;->a(FFF)V

    .line 100
    sget-object v0, Ly/d;->b:Lcom/google/android/maps/driveabout/vector/dY;

    const/high16 v1, 0x3f80

    const/high16 v2, 0x4170

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/dY;->a(FFF)V

    .line 102
    sget-object v0, Ly/d;->c:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, v5, v4}, Lcom/google/android/maps/driveabout/vector/bI;->a(SS)V

    .line 103
    sget-object v0, Ly/d;->c:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, v4, v6}, Lcom/google/android/maps/driveabout/vector/bI;->a(SS)V

    .line 104
    sget-object v0, Ly/d;->c:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/maps/driveabout/vector/bI;->a(SS)V

    .line 106
    sget-object v0, Ly/d;->d:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, v4, v5}, Lcom/google/android/maps/driveabout/vector/bI;->a(SS)V

    .line 107
    sget-object v0, Ly/d;->d:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, v5, v7}, Lcom/google/android/maps/driveabout/vector/bI;->a(SS)V

    .line 108
    sget-object v0, Ly/d;->d:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, v7, v6}, Lcom/google/android/maps/driveabout/vector/bI;->a(SS)V

    .line 110
    sget-object v0, Ly/d;->e:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/bI;->a(S)V

    .line 111
    sget-object v0, Ly/d;->e:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, v5}, Lcom/google/android/maps/driveabout/vector/bI;->a(S)V

    .line 112
    sget-object v0, Ly/d;->e:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, v6}, Lcom/google/android/maps/driveabout/vector/bI;->a(S)V

    .line 113
    sget-object v0, Ly/d;->e:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, v7}, Lcom/google/android/maps/driveabout/vector/bI;->a(S)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 116
    invoke-direct {p0}, Ly/a;-><init>()V

    .line 68
    iput-object v0, p0, Ly/d;->h:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Ly/d;->i:Ljava/lang/String;

    .line 77
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cR;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/cR;-><init>()V

    iput-object v0, p0, Ly/d;->n:Lcom/google/android/maps/driveabout/vector/cR;

    .line 117
    const v0, 0x7f0b0049

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Ly/d;->f:F

    .line 118
    const v0, 0x7f0b0048

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Ly/d;->a:I

    .line 120
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cM;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cM;-><init>(I)V

    iput-object v0, p0, Ly/d;->q:Lcom/google/android/maps/driveabout/vector/cM;

    .line 121
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cM;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cM;-><init>(I)V

    iput-object v0, p0, Ly/d;->r:Lcom/google/android/maps/driveabout/vector/cM;

    .line 122
    new-instance v0, Lu/r;

    const-wide/16 v1, 0x96

    invoke-direct {v0, v1, v2}, Lu/r;-><init>(J)V

    iput-object v0, p0, Ly/d;->s:Lu/r;

    .line 123
    iget-object v0, p0, Ly/d;->s:Lu/r;

    const/16 v1, 0xa

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Lu/r;->b(II)V

    .line 125
    const v0, 0x7f0b007f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Ly/d;->t:F

    .line 127
    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/aU;IFFFFZ)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    .line 237
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->x()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    .line 239
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 242
    invoke-interface {v0, p3, p4, p5, p6}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 243
    int-to-float v1, p2

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    .line 244
    int-to-float v1, p2

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glPointSize(F)V

    .line 247
    iget v1, p0, Ly/d;->m:F

    invoke-interface {v0, v1, v2, v2}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 249
    sget-object v1, Ly/d;->c:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v1, p1, v5}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lcom/google/android/maps/driveabout/vector/aU;I)V

    .line 250
    if-eqz p7, :cond_28

    .line 251
    sget-object v1, Ly/d;->e:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v1, p1, v4}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lcom/google/android/maps/driveabout/vector/aU;I)V

    .line 255
    :cond_28
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 256
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 259
    iget v1, p0, Ly/d;->l:F

    invoke-interface {v0, v1, v2, v2}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 262
    const/high16 v1, -0x3e90

    invoke-interface {v0, v3, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 264
    sget-object v1, Ly/d;->d:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v1, p1, v5}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lcom/google/android/maps/driveabout/vector/aU;I)V

    .line 265
    if-eqz p7, :cond_44

    .line 267
    sget-object v1, Ly/d;->e:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v1, p1, v4}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lcom/google/android/maps/driveabout/vector/aU;I)V

    .line 270
    :cond_44
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 271
    return-void
.end method

.method private c(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 11
    .parameter

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x4000

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 203
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->x()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    .line 204
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 207
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->o()V

    .line 209
    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x1e01

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 211
    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aU;->f:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/dY;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 212
    iget-object v1, p0, Ly/d;->q:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/cM;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 213
    invoke-interface {v0, v7, v5, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 214
    iget-object v1, p0, Ly/d;->k:[F

    aget v1, v1, v4

    iget-object v2, p0, Ly/d;->k:[F

    aget v2, v2, v8

    invoke-interface {v0, v1, v2, v6}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 215
    iget-object v1, p0, Ly/d;->o:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/cV;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 216
    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {v0, v1, v4, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 219
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 220
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 223
    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aU;->f:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/dY;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 224
    iget-object v1, p0, Ly/d;->r:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/cM;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 225
    const/high16 v1, 0x3fc0

    iget v2, p0, Ly/d;->f:F

    mul-float/2addr v1, v2

    neg-float v1, v1

    invoke-interface {v0, v7, v1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 226
    iget-object v1, p0, Ly/d;->j:[F

    aget v1, v1, v4

    iget-object v2, p0, Ly/d;->j:[F

    aget v2, v2, v8

    invoke-interface {v0, v1, v2, v6}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 227
    iget-object v1, p0, Ly/d;->p:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/cV;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 228
    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {v0, v1, v4, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 230
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->p()V

    .line 231
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 232
    return-void
.end method

.method private j()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 274
    iget-object v0, p0, Ly/d;->o:Lcom/google/android/maps/driveabout/vector/cV;

    if-eqz v0, :cond_c

    .line 275
    iget-object v0, p0, Ly/d;->o:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->g()V

    .line 276
    iput-object v1, p0, Ly/d;->o:Lcom/google/android/maps/driveabout/vector/cV;

    .line 278
    :cond_c
    iget-object v0, p0, Ly/d;->p:Lcom/google/android/maps/driveabout/vector/cV;

    if-eqz v0, :cond_17

    .line 279
    iget-object v0, p0, Ly/d;->p:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->g()V

    .line 280
    iput-object v1, p0, Ly/d;->p:Lcom/google/android/maps/driveabout/vector/cV;

    .line 282
    :cond_17
    return-void
.end method

.method private k()V
    .registers 12

    .prologue
    .line 306
    iget v0, p0, Ly/d;->a:I

    int-to-double v0, v0

    iget-wide v2, p0, Ly/d;->g:D

    div-double v3, v0, v2

    .line 307
    const-wide v0, 0x400a3f28fd4f4b98L

    mul-double v5, v3, v0

    .line 310
    const-string v0, ""

    .line 311
    const-string v1, ""

    .line 313
    sget-object v2, Lcom/google/googlenav/common/util/u;->a:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    :goto_17
    if-ltz v2, :cond_49

    .line 314
    sget-object v7, Lcom/google/googlenav/common/util/u;->a:[I

    aget v7, v7, v2

    int-to-double v7, v7

    sub-double v7, v3, v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-ltz v7, :cond_cc

    .line 315
    sget-object v0, Lcom/google/googlenav/common/util/u;->a:[I

    aget v2, v0, v2

    .line 316
    const/16 v0, 0x3e8

    if-ge v2, v0, :cond_b4

    .line 317
    const/16 v0, 0xff

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-static {v0, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    :goto_42
    int-to-double v2, v2

    iget-wide v7, p0, Ly/d;->g:D

    mul-double/2addr v2, v7

    double-to-float v2, v2

    iput v2, p0, Ly/d;->l:F

    .line 332
    :cond_49
    sget-object v2, Lcom/google/googlenav/common/util/u;->b:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    :goto_4e
    if-ltz v2, :cond_87

    .line 333
    sget-object v3, Lcom/google/googlenav/common/util/u;->b:[I

    aget v3, v3, v2

    int-to-double v3, v3

    sub-double v3, v5, v3

    const-wide/16 v7, 0x0

    cmpl-double v3, v3, v7

    if-ltz v3, :cond_e7

    .line 334
    sget-object v1, Lcom/google/googlenav/common/util/u;->b:[I

    aget v2, v1, v2

    .line 335
    const/16 v1, 0x14a0

    if-ge v2, v1, :cond_d0

    .line 336
    const/16 v1, 0xfd

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 344
    :goto_79
    iget-wide v3, p0, Ly/d;->g:D

    const-wide v5, 0x400a3f28fd4f4b98L

    div-double/2addr v3, v5

    int-to-double v5, v2

    mul-double v2, v3, v5

    double-to-float v2, v2

    iput v2, p0, Ly/d;->m:F

    .line 350
    :cond_87
    iget-object v2, p0, Ly/d;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9d

    .line 351
    iput-object v1, p0, Ly/d;->i:Ljava/lang/String;

    .line 352
    iget-object v1, p0, Ly/d;->o:Lcom/google/android/maps/driveabout/vector/cV;

    if-eqz v1, :cond_9d

    .line 353
    iget-object v1, p0, Ly/d;->o:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cV;->g()V

    .line 354
    const/4 v1, 0x0

    iput-object v1, p0, Ly/d;->o:Lcom/google/android/maps/driveabout/vector/cV;

    .line 358
    :cond_9d
    iget-object v1, p0, Ly/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b3

    .line 359
    iput-object v0, p0, Ly/d;->h:Ljava/lang/String;

    .line 360
    iget-object v0, p0, Ly/d;->p:Lcom/google/android/maps/driveabout/vector/cV;

    if-eqz v0, :cond_b3

    .line 361
    iget-object v0, p0, Ly/d;->p:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->g()V

    .line 362
    const/4 v0, 0x0

    iput-object v0, p0, Ly/d;->p:Lcom/google/android/maps/driveabout/vector/cV;

    .line 365
    :cond_b3
    return-void

    .line 321
    :cond_b4
    const/16 v0, 0xfe

    invoke-static {v0}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    div-int/lit16 v7, v2, 0x3e8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-static {v0, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_42

    .line 313
    :cond_cc
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_17

    .line 340
    :cond_d0
    const/16 v1, 0x100

    invoke-static {v1}, Lcom/google/googlenav/X;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    div-int/lit16 v5, v2, 0x14a0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Laa/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_79

    .line 332
    :cond_e7
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_4e
.end method


# virtual methods
.method a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    .line 183
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->x()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    .line 185
    iget-object v1, p0, Ly/d;->s:Lu/r;

    invoke-virtual {v1, p1}, Lu/r;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 186
    iget-object v1, p0, Ly/d;->s:Lu/r;

    invoke-virtual {v1}, Lu/r;->a()F

    move-result v1

    iget-object v2, p0, Ly/d;->s:Lu/r;

    invoke-virtual {v2}, Lu/r;->b()F

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 189
    invoke-direct {p0, p1}, Ly/d;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 192
    sget-object v0, Ly/d;->b:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dY;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 195
    const/4 v2, 0x5

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const v6, 0x3e4ccccd

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Ly/d;->a(Lcom/google/android/maps/driveabout/vector/aU;IFFFFZ)V

    .line 198
    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Ly/d;->a(Lcom/google/android/maps/driveabout/vector/aU;IFFFFZ)V

    .line 199
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 16
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/high16 v6, -0x100

    const/4 v10, 0x0

    .line 132
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->H()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-wide v0, p0, Ly/d;->g:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_19

    .line 180
    :cond_18
    :goto_18
    return-void

    .line 136
    :cond_19
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->x()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v9

    .line 141
    iget-object v0, p0, Ly/d;->o:Lcom/google/android/maps/driveabout/vector/cV;

    if-nez v0, :cond_68

    .line 142
    iget-object v0, p0, Ly/d;->n:Lcom/google/android/maps/driveabout/vector/cR;

    iget-object v2, p0, Ly/d;->i:Ljava/lang/String;

    sget-object v3, Lcom/google/android/maps/driveabout/vector/cR;->b:Lcom/google/android/maps/driveabout/vector/cT;

    sget-object v4, Lcom/google/android/maps/driveabout/vector/cR;->a:Ln/ak;

    iget v5, p0, Ly/d;->f:F

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/cR;->a(Lcom/google/android/maps/driveabout/vector/aU;Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cT;Ln/ak;FIII)Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v0

    iput-object v0, p0, Ly/d;->o:Lcom/google/android/maps/driveabout/vector/cV;

    .line 146
    iget-object v0, p0, Ly/d;->n:Lcom/google/android/maps/driveabout/vector/cR;

    iget-object v1, p0, Ly/d;->i:Ljava/lang/String;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/cR;->b:Lcom/google/android/maps/driveabout/vector/cT;

    sget-object v3, Lcom/google/android/maps/driveabout/vector/cR;->a:Ln/ak;

    iget v4, p0, Ly/d;->f:F

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/cR;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cT;Ln/ak;FZ)[F

    move-result-object v0

    iput-object v0, p0, Ly/d;->k:[F

    .line 149
    iget-object v0, p0, Ly/d;->q:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cM;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 150
    iget-object v0, p0, Ly/d;->o:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->b()F

    move-result v0

    .line 151
    iget-object v1, p0, Ly/d;->o:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cV;->c()F

    move-result v1

    .line 153
    iget-object v2, p0, Ly/d;->q:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v2, v10, v10}, Lcom/google/android/maps/driveabout/vector/cM;->a(FF)V

    .line 154
    iget-object v2, p0, Ly/d;->q:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v2, v10, v1}, Lcom/google/android/maps/driveabout/vector/cM;->a(FF)V

    .line 155
    iget-object v2, p0, Ly/d;->q:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v2, v0, v10}, Lcom/google/android/maps/driveabout/vector/cM;->a(FF)V

    .line 156
    iget-object v2, p0, Ly/d;->q:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/maps/driveabout/vector/cM;->a(FF)V

    .line 159
    :cond_68
    iget-object v0, p0, Ly/d;->p:Lcom/google/android/maps/driveabout/vector/cV;

    if-nez v0, :cond_b3

    .line 160
    iget-object v0, p0, Ly/d;->n:Lcom/google/android/maps/driveabout/vector/cR;

    iget-object v2, p0, Ly/d;->h:Ljava/lang/String;

    sget-object v3, Lcom/google/android/maps/driveabout/vector/cR;->b:Lcom/google/android/maps/driveabout/vector/cT;

    sget-object v4, Lcom/google/android/maps/driveabout/vector/cR;->a:Ln/ak;

    iget v5, p0, Ly/d;->f:F

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/maps/driveabout/vector/cR;->a(Lcom/google/android/maps/driveabout/vector/aU;Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cT;Ln/ak;FIII)Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v0

    iput-object v0, p0, Ly/d;->p:Lcom/google/android/maps/driveabout/vector/cV;

    .line 164
    iget-object v0, p0, Ly/d;->n:Lcom/google/android/maps/driveabout/vector/cR;

    iget-object v1, p0, Ly/d;->h:Ljava/lang/String;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/cR;->b:Lcom/google/android/maps/driveabout/vector/cT;

    sget-object v3, Lcom/google/android/maps/driveabout/vector/cR;->a:Ln/ak;

    iget v4, p0, Ly/d;->f:F

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/cR;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cT;Ln/ak;FZ)[F

    move-result-object v0

    iput-object v0, p0, Ly/d;->j:[F

    .line 167
    iget-object v0, p0, Ly/d;->r:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cM;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 168
    iget-object v0, p0, Ly/d;->p:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->b()F

    move-result v0

    .line 169
    iget-object v1, p0, Ly/d;->p:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cV;->c()F

    move-result v1

    .line 171
    iget-object v2, p0, Ly/d;->r:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v2, v10, v10}, Lcom/google/android/maps/driveabout/vector/cM;->a(FF)V

    .line 172
    iget-object v2, p0, Ly/d;->r:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v2, v10, v1}, Lcom/google/android/maps/driveabout/vector/cM;->a(FF)V

    .line 173
    iget-object v2, p0, Ly/d;->r:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v2, v0, v10}, Lcom/google/android/maps/driveabout/vector/cM;->a(FF)V

    .line 174
    iget-object v2, p0, Ly/d;->r:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/maps/driveabout/vector/cM;->a(FF)V

    .line 177
    :cond_b3
    invoke-interface {v9}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 178
    invoke-virtual {p0, p1, p2}, Ly/d;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;)V

    .line 179
    invoke-interface {v9}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto/16 :goto_18
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 290
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->H()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 292
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->b()Ln/Q;

    move-result-object v0

    invoke-virtual {v0}, Ln/Q;->e()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->s()F

    move-result v2

    float-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Ly/d;->g:D

    .line 294
    invoke-direct {p0}, Ly/d;->k()V

    .line 296
    :cond_1d
    invoke-super {p0, p1, p2}, Ly/a;->a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)Z

    move-result v0

    return v0
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 3
    .parameter

    .prologue
    .line 301
    invoke-direct {p0}, Ly/d;->j()V

    .line 302
    iget-object v0, p0, Ly/d;->n:Lcom/google/android/maps/driveabout/vector/cR;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cR;->a()V

    .line 303
    return-void
.end method

.method public i()V
    .registers 4

    .prologue
    .line 370
    const/16 v0, 0x1e

    .line 372
    invoke-virtual {p0}, Ly/d;->h()Ly/b;

    move-result-object v1

    invoke-virtual {v1}, Ly/b;->e()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->an()Z

    move-result v1

    if-nez v1, :cond_27

    .line 375
    const/16 v0, 0x64

    .line 377
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->au()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 378
    int-to-float v0, v0

    iget v1, p0, Ly/d;->t:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 382
    :cond_27
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->at()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 384
    add-int/lit8 v0, v0, 0x60

    .line 390
    :cond_33
    iget-object v1, p0, Ly/d;->s:Lu/r;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lu/r;->a(II)V

    .line 391
    return-void
.end method
