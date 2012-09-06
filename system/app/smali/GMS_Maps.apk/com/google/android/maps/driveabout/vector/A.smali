.class public Lcom/google/android/maps/driveabout/vector/a;
.super Lcom/google/android/maps/driveabout/vector/aD;
.source "SourceFile"


# static fields
.field private static i:Lcom/google/android/maps/driveabout/vector/dY;

.field private static j:Lcom/google/android/maps/driveabout/vector/bI;

.field private static k:Lcom/google/android/maps/driveabout/vector/dY;

.field private static l:Lcom/google/android/maps/driveabout/vector/bI;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ln/Q;

.field private c:Ln/p;

.field private d:Ln/aa;

.field private e:I

.field private f:F

.field private g:I

.field private h:I

.field private m:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x64

    .line 237
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dY;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/dY;-><init>(I)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/a;->i:Lcom/google/android/maps/driveabout/vector/dY;

    .line 238
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bI;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(I)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/a;->j:Lcom/google/android/maps/driveabout/vector/bI;

    .line 239
    new-instance v0, Lcom/google/android/maps/driveabout/vector/dY;

    const/16 v1, 0x65

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/dY;-><init>(I)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/a;->k:Lcom/google/android/maps/driveabout/vector/dY;

    .line 240
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bI;

    const/16 v1, 0x66

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(I)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/a;->l:Lcom/google/android/maps/driveabout/vector/bI;

    .line 241
    sget-object v0, Lcom/google/android/maps/driveabout/vector/a;->i:Lcom/google/android/maps/driveabout/vector/dY;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/a;->j:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/eb;->a(Lcom/google/android/maps/driveabout/vector/ea;Lcom/google/android/maps/driveabout/vector/bJ;)V

    .line 242
    sget-object v0, Lcom/google/android/maps/driveabout/vector/a;->k:Lcom/google/android/maps/driveabout/vector/dY;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/a;->l:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/eb;->b(Lcom/google/android/maps/driveabout/vector/ea;Lcom/google/android/maps/driveabout/vector/bJ;)V

    .line 243
    return-void
.end method

.method public constructor <init>(Ln/Q;IIILn/p;Ljava/lang/String;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aD;-><init>()V

    .line 258
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/a;->b:Ln/Q;

    .line 259
    iput p2, p0, Lcom/google/android/maps/driveabout/vector/a;->e:I

    .line 260
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/a;->e()V

    .line 261
    iput p3, p0, Lcom/google/android/maps/driveabout/vector/a;->g:I

    .line 262
    iput p4, p0, Lcom/google/android/maps/driveabout/vector/a;->h:I

    .line 263
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/a;->m:F

    .line 264
    iput-object p5, p0, Lcom/google/android/maps/driveabout/vector/a;->c:Ln/p;

    .line 265
    iput-object p6, p0, Lcom/google/android/maps/driveabout/vector/a;->a:Ljava/lang/String;

    .line 266
    return-void
.end method

.method private static a(ILn/Q;)F
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 273
    if-eqz p1, :cond_4

    if-nez p0, :cond_6

    .line 274
    :cond_4
    const/4 v0, 0x0

    .line 276
    :goto_5
    return v0

    :cond_6
    int-to-float v0, p0

    invoke-virtual {p1}, Ln/Q;->e()D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    goto :goto_5
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/aU;F)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 371
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->x()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    .line 374
    invoke-interface {v0, p2, p2, p2}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 376
    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 379
    sget-object v1, Lcom/google/android/maps/driveabout/vector/a;->k:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/dY;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 380
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/a;->h:I

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/u;->a(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 381
    sget-object v1, Lcom/google/android/maps/driveabout/vector/a;->l:Lcom/google/android/maps/driveabout/vector/bI;

    const/4 v2, 0x6

    invoke-virtual {v1, p1, v2}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lcom/google/android/maps/driveabout/vector/aU;I)V

    .line 385
    sget-object v1, Lcom/google/android/maps/driveabout/vector/a;->i:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/dY;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 386
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/a;->g:I

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/u;->a(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 387
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/a;->m:F

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    .line 388
    sget-object v0, Lcom/google/android/maps/driveabout/vector/a;->j:Lcom/google/android/maps/driveabout/vector/bI;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lcom/google/android/maps/driveabout/vector/aU;I)V

    .line 389
    return-void
.end method

.method private e()V
    .registers 3

    .prologue
    .line 444
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/a;->e:I

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/a;->b:Ln/Q;

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/a;->a(ILn/Q;)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/a;->f:F

    .line 445
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/a;->b:Ln/Q;

    if-eqz v0, :cond_1d

    .line 446
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/a;->b:Ln/Q;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/a;->f:F

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ln/aa;->a(Ln/Q;I)Ln/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/a;->d:Ln/aa;

    .line 449
    :cond_1d
    return-void
.end method


# virtual methods
.method public a(F)V
    .registers 2
    .parameter

    .prologue
    .line 435
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/a;->m:F

    .line 436
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 342
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->b()I

    move-result v0

    if-gtz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/a;->b:Ln/Q;

    if-eqz v0, :cond_21

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/a;->f:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_21

    .line 346
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->v()Ln/aK;

    move-result-object v0

    invoke-virtual {v0}, Ln/aK;->a()Ln/aL;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/a;->d:Ln/aa;

    invoke-virtual {v0, v1}, Ln/aL;->b(Ln/ab;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 368
    :cond_21
    :goto_21
    return-void

    .line 350
    :cond_22
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->x()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    .line 351
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 353
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/a;->c:Ln/p;

    if-eqz v1, :cond_45

    .line 354
    invoke-static {}, Ll/q;->a()Ll/q;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/a;->c:Ln/p;

    invoke-virtual {v1, v2}, Ll/q;->e(Ln/p;)Ll/k;

    move-result-object v1

    .line 356
    if-eqz v1, :cond_45

    .line 357
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/a;->b:Ln/Q;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/a;->b:Ln/Q;

    invoke-virtual {v1, p2, v3}, Ll/k;->a(Lcom/google/android/maps/driveabout/vector/k;Ln/Q;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Ln/Q;->b(I)V

    .line 362
    :cond_45
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/k;->s()F

    move-result v1

    .line 363
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/a;->b:Ln/Q;

    invoke-static {p1, p2, v2, v1}, Lcom/google/android/maps/driveabout/vector/dz;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Ln/Q;F)V

    .line 365
    iget v2, p0, Lcom/google/android/maps/driveabout/vector/a;->f:F

    div-float v1, v2, v1

    invoke-direct {p0, p1, v1}, Lcom/google/android/maps/driveabout/vector/a;->a(Lcom/google/android/maps/driveabout/vector/aU;F)V

    .line 367
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto :goto_21
.end method

.method public a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 452
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/a;->a:Ljava/lang/String;

    .line 453
    return-void
.end method

.method public a(Ln/Q;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/a;->b:Ln/Q;

    if-ne p1, v0, :cond_8

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/a;->e:I

    if-eq v0, p2, :cond_f

    .line 396
    :cond_8
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/a;->b:Ln/Q;

    .line 397
    iput p2, p0, Lcom/google/android/maps/driveabout/vector/a;->e:I

    .line 398
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/a;->e()V

    .line 405
    :cond_f
    return-void
.end method

.method public a(Ln/p;)V
    .registers 2
    .parameter

    .prologue
    .line 408
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/a;->c:Ln/p;

    .line 409
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)Z
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 293
    const/4 v0, 0x1

    return v0
.end method

.method public a_(I)V
    .registers 2
    .parameter

    .prologue
    .line 417
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/a;->g:I

    .line 418
    return-void
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 2
    .parameter

    .prologue
    .line 298
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/a;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 299
    return-void
.end method

.method public b(I)V
    .registers 2
    .parameter

    .prologue
    .line 426
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/a;->h:I

    .line 427
    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 2
    .parameter

    .prologue
    .line 338
    return-void
.end method

.method public u_()I
    .registers 2

    .prologue
    .line 283
    const/4 v0, 0x0

    return v0
.end method
