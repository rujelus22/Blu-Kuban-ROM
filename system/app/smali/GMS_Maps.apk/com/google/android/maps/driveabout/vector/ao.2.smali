.class public Lcom/google/android/maps/driveabout/vector/aO;
.super Lcom/google/android/maps/driveabout/vector/Z;
.source "SourceFile"


# static fields
.field private static final h:Ljava/util/Map;


# instance fields
.field private volatile b:Lcom/google/android/maps/driveabout/vector/cV;

.field private c:Lcom/google/android/maps/driveabout/vector/cM;

.field private d:[B

.field private e:Lu/e;

.field private f:Z

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/maps/driveabout/vector/aO;->h:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>([BLjava/util/Set;Ln/am;Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/vector/Z;-><init>(Ljava/util/Set;)V

    .line 83
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/aO;->d:[B

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aO;->f:Z

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/aO;->g:J

    .line 99
    return-void
.end method

.method public static a(Ln/am;[Ljava/lang/String;Ln/aI;Lcom/google/android/maps/driveabout/vector/aU;)Lcom/google/android/maps/driveabout/vector/aO;
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 67
    invoke-interface {p2}, Ln/aI;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/Z;

    .line 68
    invoke-virtual {v0}, Ln/Z;->l()[I

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v4, :cond_22

    aget v5, v3, v1

    .line 69
    if-ltz v5, :cond_1f

    array-length v6, p1

    if-ge v5, v6, :cond_1f

    .line 70
    aget-object v5, p1, v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 73
    :cond_22
    new-instance v1, Lcom/google/android/maps/driveabout/vector/aO;

    invoke-virtual {v0}, Ln/Z;->b()[B

    move-result-object v0

    invoke-direct {v1, v0, v2, p0, p3}, Lcom/google/android/maps/driveabout/vector/aO;-><init>([BLjava/util/Set;Ln/am;Lcom/google/android/maps/driveabout/vector/aU;)V

    return-object v1
.end method

.method public static a([BLn/am;Lcom/google/android/maps/driveabout/vector/aU;)Lcom/google/android/maps/driveabout/vector/aO;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    new-instance v0, Lcom/google/android/maps/driveabout/vector/aO;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/google/android/maps/driveabout/vector/aO;-><init>([BLjava/util/Set;Ln/am;Lcom/google/android/maps/driveabout/vector/aU;)V

    return-object v0
.end method

.method private static a(F)Lcom/google/android/maps/driveabout/vector/cM;
    .registers 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 171
    sget-object v0, Lcom/google/android/maps/driveabout/vector/aO;->h:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 172
    sget-object v0, Lcom/google/android/maps/driveabout/vector/aO;->h:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cM;

    .line 182
    :goto_19
    return-object v0

    .line 174
    :cond_1a
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cM;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cM;-><init>(I)V

    .line 176
    const/high16 v1, 0x4780

    mul-float/2addr v1, p0

    float-to-int v1, v1

    .line 177
    invoke-virtual {v0, v2, v2}, Lcom/google/android/maps/driveabout/vector/cM;->a(II)V

    .line 178
    invoke-virtual {v0, v2, v1}, Lcom/google/android/maps/driveabout/vector/cM;->a(II)V

    .line 179
    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/cM;->a(II)V

    .line 180
    invoke-virtual {v0, v1, v1}, Lcom/google/android/maps/driveabout/vector/cM;->a(II)V

    .line 181
    sget-object v1, Lcom/google/android/maps/driveabout/vector/aO;->h:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/D;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    .line 148
    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 149
    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x2100

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 150
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/aU;->o()V

    .line 156
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aU;->f:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/vector/dY;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 157
    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/cV;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x1

    const/4 v3, 0x0

    .line 222
    iget-object v2, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    .line 225
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aO;->c:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cM;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 228
    invoke-virtual {p3, v2}, Lcom/google/android/maps/driveabout/vector/cV;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 232
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aO;->e:Lu/e;

    if-eqz v0, :cond_27

    .line 233
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aO;->e:Lu/e;

    invoke-virtual {v0, p1}, Lu/e;->a(Lcom/google/android/maps/driveabout/vector/aU;)I

    move-result v0

    .line 234
    if-ne v0, v1, :cond_1e

    .line 235
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/aO;->e:Lu/e;

    .line 236
    iput-boolean v3, p0, Lcom/google/android/maps/driveabout/vector/aO;->f:Z

    .line 241
    :cond_1e
    :goto_1e
    invoke-interface {v2, v0, v0, v0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 243
    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-interface {v2, v0, v3, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 244
    return-void

    :cond_27
    move v0, v1

    .line 239
    goto :goto_1e
.end method


# virtual methods
.method public a()I
    .registers 3

    .prologue
    .line 262
    const/4 v0, 0x0

    .line 263
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aO;->b:Lcom/google/android/maps/driveabout/vector/cV;

    .line 264
    if-eqz v1, :cond_a

    .line 265
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cV;->i()I

    move-result v1

    add-int/2addr v0, v1

    .line 267
    :cond_a
    return v0
.end method

.method public a(J)V
    .registers 3
    .parameter

    .prologue
    .line 257
    iput-wide p1, p0, Lcom/google/android/maps/driveabout/vector/aO;->g:J

    .line 258
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 3
    .parameter

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/aO;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 142
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aO;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 143
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v2, 0x4e20

    .line 196
    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/aO;->b:Lcom/google/android/maps/driveabout/vector/cV;

    .line 197
    if-nez v6, :cond_50

    .line 198
    const/4 v0, 0x0

    .line 199
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/aO;->f:Z

    if-nez v1, :cond_33

    .line 200
    invoke-virtual {p1, v2}, Lcom/google/android/maps/driveabout/vector/aU;->b(I)V

    .line 201
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/aO;->c(Lcom/google/android/maps/driveabout/vector/aU;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    .line 206
    :goto_13
    if-eqz v1, :cond_50

    .line 207
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cV;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/vector/cV;-><init>(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 208
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/vector/cV;->c(Z)V

    .line 209
    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cV;->b(Landroid/graphics/Bitmap;)V

    .line 210
    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aO;->b:Lcom/google/android/maps/driveabout/vector/cV;

    .line 211
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->b()F

    move-result v2

    invoke-static {v2}, Lcom/google/android/maps/driveabout/vector/aO;->a(F)Lcom/google/android/maps/driveabout/vector/cM;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/aO;->c:Lcom/google/android/maps/driveabout/vector/cM;

    .line 212
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 215
    :goto_30
    if-nez v0, :cond_4c

    .line 219
    :goto_32
    return-void

    .line 202
    :cond_33
    invoke-virtual {p1, v2}, Lcom/google/android/maps/driveabout/vector/aU;->a(I)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 203
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/aO;->c(Lcom/google/android/maps/driveabout/vector/aU;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 204
    new-instance v0, Lu/e;

    iget-wide v1, p0, Lcom/google/android/maps/driveabout/vector/aO;->g:J

    const-wide/16 v3, 0xfa

    sget-object v5, Lu/g;->a:Lu/g;

    invoke-direct/range {v0 .. v5}, Lu/e;-><init>(JJLu/g;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aO;->e:Lu/e;

    move-object v1, v7

    goto :goto_13

    .line 218
    :cond_4c
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/maps/driveabout/vector/aO;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/cV;)V

    goto :goto_32

    :cond_50
    move-object v0, v6

    goto :goto_30

    :cond_52
    move-object v1, v0

    goto :goto_13
.end method

.method public b()I
    .registers 3

    .prologue
    .line 272
    const/16 v0, 0x60

    .line 273
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aO;->d:[B

    if-eqz v1, :cond_c

    .line 274
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aO;->d:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    .line 276
    :cond_c
    return v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 3
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aO;->b:Lcom/google/android/maps/driveabout/vector/cV;

    if-eqz v0, :cond_f

    .line 132
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aO;->b:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->g()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aO;->b:Lcom/google/android/maps/driveabout/vector/cV;

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aO;->f:Z

    .line 137
    :cond_f
    return-void
.end method

.method c(Lcom/google/android/maps/driveabout/vector/aU;)Landroid/graphics/Bitmap;
    .registers 5
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 107
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 108
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 109
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 110
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 113
    :try_start_e
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->k()Lcom/google/android/maps/driveabout/vector/cp;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aO;->d:[B

    invoke-virtual {v1, v2, v0}, Lcom/google/android/maps/driveabout/vector/cp;->a([BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_17
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_17} :catch_19

    move-result-object v0

    .line 118
    :goto_18
    return-object v0

    .line 114
    :catch_19
    move-exception v0

    .line 115
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aO;->f:Z

    return v0
.end method

.method public e()V
    .registers 2

    .prologue
    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aO;->f:Z

    .line 254
    return-void
.end method
