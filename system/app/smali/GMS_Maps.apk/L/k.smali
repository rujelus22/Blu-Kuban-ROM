.class public Ll/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/cx;


# instance fields
.field private final a:Ljava/util/Map;

.field private b:Ljava/util/Set;

.field private final c:F

.field private d:J

.field private e:I

.field private f:F

.field private g:Z


# direct methods
.method private constructor <init>(F)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Ll/k;->a:Ljava/util/Map;

    .line 148
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ll/k;->d:J

    .line 154
    iput v2, p0, Ll/k;->e:I

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Ll/k;->f:F

    .line 165
    iput-boolean v2, p0, Ll/k;->g:Z

    .line 181
    iput p1, p0, Ll/k;->c:F

    .line 182
    return-void
.end method

.method constructor <init>(Ln/x;)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Ll/k;->a:Ljava/util/Map;

    .line 148
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ll/k;->d:J

    .line 154
    iput v2, p0, Ll/k;->e:I

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Ll/k;->f:F

    .line 165
    iput-boolean v2, p0, Ll/k;->g:Z

    .line 173
    invoke-virtual {p1}, Ln/x;->e()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Ll/k;->c:F

    .line 174
    invoke-virtual {p0, p1}, Ll/k;->a(Ln/x;)Z

    .line 175
    return-void
.end method

.method private static a(F)F
    .registers 4
    .parameter

    .prologue
    .line 424
    mul-float v0, p0, p0

    const/high16 v1, 0x4040

    const/high16 v2, 0x4000

    mul-float/2addr v2, p0

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method private static a(FFF)F
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 401
    cmpg-float v0, p0, p1

    if-gez v0, :cond_5

    :goto_4
    return p1

    :cond_5
    cmpl-float v0, p0, p2

    if-lez v0, :cond_b

    move p1, p2

    goto :goto_4

    :cond_b
    move p1, p0

    goto :goto_4
.end method

.method private static a(FFFFF)F
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 409
    cmpg-float v0, p0, p1

    if-gtz v0, :cond_5

    .line 416
    :goto_4
    return p3

    .line 412
    :cond_5
    cmpl-float v0, p0, p2

    if-ltz v0, :cond_b

    move p3, p4

    .line 413
    goto :goto_4

    .line 415
    :cond_b
    sub-float v0, p0, p1

    sub-float v1, p2, p1

    div-float/2addr v0, v1

    .line 416
    sub-float v1, p4, p3

    mul-float/2addr v0, v1

    add-float/2addr p3, v0

    goto :goto_4
.end method

.method static a(FFIFF)F
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v5, 0x42c8

    const/high16 v4, 0x41a0

    const/high16 v3, 0x4190

    const/4 v1, 0x0

    .line 277
    cmpl-float v0, p4, v1

    if-lez v0, :cond_22

    .line 278
    const/high16 v0, 0x4040

    invoke-static {p1, v3, v4, v0, v1}, Ll/k;->a(FFFFF)F

    move-result v0

    .line 288
    :goto_11
    const/high16 v2, 0x4120

    invoke-static {p0, v1, v2, v1, v0}, Ll/k;->a(FFFFF)F

    move-result v0

    .line 289
    invoke-static {p3}, Ll/k;->a(F)F

    move-result v1

    .line 291
    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_31

    .line 292
    mul-float/2addr v1, v5

    add-float/2addr v0, v1

    .line 297
    :cond_21
    :goto_21
    return v0

    .line 280
    :cond_22
    cmpg-float v0, p4, v1

    if-gez v0, :cond_2f

    .line 281
    const/high16 v0, -0x3fc0

    const/high16 v2, -0x4080

    invoke-static {p1, v3, v4, v0, v2}, Ll/k;->a(FFFFF)F

    move-result v0

    goto :goto_11

    :cond_2f
    move v0, v1

    .line 284
    goto :goto_11

    .line 293
    :cond_31
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_21

    .line 294
    const/high16 v2, 0x3f80

    sub-float v1, v2, v1

    mul-float/2addr v1, v5

    add-float/2addr v0, v1

    goto :goto_21
.end method

.method static a(IF)I
    .registers 6
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x3f80

    .line 433
    invoke-static {p1}, Ll/k;->a(F)F

    move-result v0

    .line 434
    and-int/lit8 v2, p0, 0x4

    if-eqz v2, :cond_1b

    .line 442
    :goto_a
    and-int/lit8 v2, p0, 0x10

    if-eqz v2, :cond_24

    .line 443
    const/4 v2, 0x0

    const v3, 0x3f19999a

    invoke-static {v0, v2, v1, v3, v1}, Ll/k;->a(FFFFF)F

    move-result v0

    .line 444
    invoke-static {v1, v0, v0, v0}, Lcom/google/android/maps/driveabout/vector/u;->a(FFFF)I

    move-result v0

    .line 447
    :goto_1a
    return v0

    .line 436
    :cond_1b
    and-int/lit8 v2, p0, 0x8

    if-eqz v2, :cond_22

    .line 437
    sub-float v0, v1, v0

    goto :goto_a

    :cond_22
    move v0, v1

    .line 439
    goto :goto_a

    .line 447
    :cond_24
    invoke-static {v0, v0, v0, v0}, Lcom/google/android/maps/driveabout/vector/u;->a(FFFF)I

    move-result v0

    goto :goto_1a
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/k;Ln/Q;)F
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 268
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->k()F

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->l()F

    move-result v1

    iget v2, p0, Ll/k;->e:I

    iget v3, p0, Ll/k;->f:F

    iget v4, p0, Ll/k;->c:F

    invoke-static {v0, v1, v2, v3, v4}, Ll/k;->a(FFIFF)F

    move-result v0

    invoke-virtual {p2}, Ln/Q;->e()D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/cx;)I
    .registers 4
    .parameter

    .prologue
    .line 460
    const/4 v0, 0x0

    .line 461
    instance-of v1, p1, Ll/k;

    if-eqz v1, :cond_13

    .line 462
    invoke-virtual {p0}, Ll/k;->b()F

    move-result v0

    check-cast p1, Ll/k;

    invoke-virtual {p1}, Ll/k;->b()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    .line 464
    :cond_13
    return v0
.end method

.method public a()Ljava/util/Set;
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Ll/k;->b:Ljava/util/Set;

    if-nez v0, :cond_10

    .line 213
    iget-object v0, p0, Ll/k;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Ll/k;->b:Ljava/util/Set;

    .line 215
    :cond_10
    iget-object v0, p0, Ll/k;->b:Ljava/util/Set;

    return-object v0
.end method

.method a(Ln/p;)Ll/k;
    .registers 6
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Ll/k;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 236
    :goto_8
    return-object p0

    .line 229
    :cond_9
    new-instance v1, Ll/k;

    iget-object v0, p0, Ll/k;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/x;

    invoke-virtual {v0}, Ln/x;->e()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {v1, v0}, Ll/k;-><init>(F)V

    .line 230
    iget-object v0, p0, Ll/k;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_25
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln/x;

    .line 231
    invoke-virtual {v0}, Ln/x;->b()Ln/p;

    move-result-object v3

    invoke-virtual {v3, p1}, Ln/p;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 234
    invoke-virtual {v1, v0}, Ll/k;->a(Ln/x;)Z

    goto :goto_25

    :cond_3f
    move-object p0, v1

    .line 236
    goto :goto_8
.end method

.method public a(I)V
    .registers 4
    .parameter

    .prologue
    .line 346
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Ll/k;->a(IJ)V

    .line 347
    return-void
.end method

.method a(IJ)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 351
    iput p1, p0, Ll/k;->e:I

    .line 352
    iput-wide p2, p0, Ll/k;->d:J

    .line 353
    const/4 v0, 0x0

    iput v0, p0, Ll/k;->f:F

    .line 354
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 333
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->x()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    .line 334
    iget-boolean v1, p0, Ll/k;->g:Z

    if-eqz v1, :cond_b

    .line 335
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->w()V

    .line 337
    :cond_b
    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/u;->a(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 338
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 339
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;Ln/Q;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x1e00

    const/4 v4, 0x0

    .line 307
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->x()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v1

    .line 308
    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 309
    invoke-virtual {p0, p2, p4}, Ll/k;->a(Lcom/google/android/maps/driveabout/vector/k;Ln/Q;)F

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->q()F

    move-result v2

    mul-float/2addr v0, v2

    .line 310
    invoke-interface {v1, v4, v4, v0}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 311
    iget v2, p0, Ll/k;->e:I

    iget v3, p0, Ll/k;->f:F

    invoke-static {v2, v3}, Ll/k;->a(IF)I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/maps/driveabout/vector/u;->a(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 313
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->c()Lcom/google/android/maps/driveabout/vector/cv;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/cv;->b()Lcom/google/android/maps/driveabout/vector/cw;

    move-result-object v2

    .line 317
    sget-object v3, Lcom/google/android/maps/driveabout/vector/cw;->f:Lcom/google/android/maps/driveabout/vector/cw;

    if-eq v2, v3, :cond_39

    sget-object v3, Lcom/google/android/maps/driveabout/vector/cw;->g:Lcom/google/android/maps/driveabout/vector/cw;

    if-eq v2, v3, :cond_39

    sget-object v3, Lcom/google/android/maps/driveabout/vector/cw;->h:Lcom/google/android/maps/driveabout/vector/cw;

    if-ne v2, v3, :cond_50

    cmpg-float v0, v0, v4

    if-gez v0, :cond_50

    :cond_39
    const/4 v0, 0x1

    :goto_3a
    iput-boolean v0, p0, Ll/k;->g:Z

    .line 320
    iget-boolean v0, p0, Ll/k;->g:Z

    if-eqz v0, :cond_4f

    .line 321
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->v()V

    .line 322
    invoke-interface {v1, v5, v5, v5}, Ljavax/microedition/khronos/opengles/GL10;->glStencilOp(III)V

    .line 323
    const/16 v0, 0x202

    const/16 v2, 0xff

    const/16 v3, 0x80

    invoke-interface {v1, v0, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glStencilFunc(III)V

    .line 325
    :cond_4f
    return-void

    .line 317
    :cond_50
    const/4 v0, 0x0

    goto :goto_3a
.end method

.method a(J)Z
    .registers 6
    .parameter

    .prologue
    .line 384
    iget-wide v0, p0, Ll/k;->d:J

    sub-long v0, p1, v0

    long-to-float v0, v0

    const/high16 v1, 0x43fa

    div-float/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-static {v0, v1, v2}, Ll/k;->a(FFF)F

    move-result v0

    iput v0, p0, Ll/k;->f:F

    .line 386
    invoke-virtual {p0}, Ll/k;->c()Z

    move-result v0

    return v0
.end method

.method public a(Ln/x;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 198
    invoke-virtual {p1}, Ln/x;->e()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Ll/k;->c:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_16

    move v0, v1

    :goto_e
    invoke-static {v0}, Lcom/google/common/base/P;->a(Z)V

    .line 199
    iget-object v0, p0, Ll/k;->b:Ljava/util/Set;

    if-eqz v0, :cond_18

    .line 206
    :cond_15
    :goto_15
    return v2

    :cond_16
    move v0, v2

    .line 198
    goto :goto_e

    .line 202
    :cond_18
    invoke-virtual {p1}, Ln/x;->e()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Ll/k;->c:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_15

    .line 203
    iget-object v0, p0, Ll/k;->a:Ljava/util/Map;

    invoke-virtual {p1}, Ln/x;->b()Ln/p;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v1

    .line 204
    goto :goto_15
.end method

.method public b()F
    .registers 2

    .prologue
    .line 244
    iget v0, p0, Ll/k;->c:F

    return v0
.end method

.method public c()Z
    .registers 3

    .prologue
    .line 251
    iget v0, p0, Ll/k;->e:I

    if-eqz v0, :cond_e

    iget v0, p0, Ll/k;->f:F

    const/high16 v1, 0x3f80

    cmpg-float v0, v0, v1

    if-gez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 41
    check-cast p1, Lcom/google/android/maps/driveabout/vector/cx;

    invoke-virtual {p0, p1}, Ll/k;->a(Lcom/google/android/maps/driveabout/vector/cx;)I

    move-result v0

    return v0
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 258
    invoke-virtual {p0}, Ll/k;->c()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Ll/k;->e:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public e()V
    .registers 2

    .prologue
    .line 360
    const/4 v0, 0x0

    iput v0, p0, Ll/k;->e:I

    .line 361
    const/4 v0, 0x0

    iput v0, p0, Ll/k;->f:F

    .line 362
    return-void
.end method

.method public f()Z
    .registers 3

    .prologue
    .line 379
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/common/a;->c()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ll/k;->a(J)Z

    move-result v0

    return v0
.end method

.method public g()Ljava/util/Set;
    .registers 2

    .prologue
    .line 390
    iget-object v0, p0, Ll/k;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 469
    invoke-static {p0}, Lcom/google/common/base/K;->a(Ljava/lang/Object;)Lcom/google/common/base/M;

    move-result-object v0

    const-string v1, "height"

    iget v2, p0, Ll/k;->c:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/M;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/M;

    move-result-object v0

    const-string v1, "animationStartTimeMs"

    iget-wide v2, p0, Ll/k;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/M;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/M;

    move-result-object v0

    const-string v1, "animationPosition"

    iget v2, p0, Ll/k;->f:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/M;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/M;

    move-result-object v0

    const-string v1, "animationType"

    iget v2, p0, Ll/k;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/M;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/M;

    move-result-object v0

    const-string v1, "featureIds"

    iget-object v2, p0, Ll/k;->b:Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/M;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/M;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
