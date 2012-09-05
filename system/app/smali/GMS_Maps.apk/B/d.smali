.class public LB/d;
.super LB/a;


# static fields
.field private static b:Lcom/google/android/maps/driveabout/vector/di;

.field private static c:Lcom/google/android/maps/driveabout/vector/bu;

.field private static d:Lcom/google/android/maps/driveabout/vector/bu;

.field private static e:Lcom/google/android/maps/driveabout/vector/bu;


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

.field private final n:Lcom/google/android/maps/driveabout/vector/cs;

.field private o:Lcom/google/android/maps/driveabout/vector/cw;

.field private p:Lcom/google/android/maps/driveabout/vector/cw;

.field private final q:Lcom/google/android/maps/driveabout/vector/cp;

.field private final r:Lcom/google/android/maps/driveabout/vector/cp;

.field private volatile s:Lcom/google/android/maps/driveabout/vector/d;

.field private t:F


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/maps/driveabout/vector/di;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/di;-><init>(I)V

    sput-object v0, LB/d;->b:Lcom/google/android/maps/driveabout/vector/di;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bu;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/bu;-><init>(I)V

    sput-object v0, LB/d;->c:Lcom/google/android/maps/driveabout/vector/bu;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bu;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/bu;-><init>(I)V

    sput-object v0, LB/d;->d:Lcom/google/android/maps/driveabout/vector/bu;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bu;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/bu;-><init>(I)V

    sput-object v0, LB/d;->e:Lcom/google/android/maps/driveabout/vector/bu;

    sget-object v0, LB/d;->b:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0, v3, v3, v3}, Lcom/google/android/maps/driveabout/vector/di;->a(FFF)V

    sget-object v0, LB/d;->b:Lcom/google/android/maps/driveabout/vector/di;

    const/high16 v1, 0x4170

    invoke-virtual {v0, v3, v1, v3}, Lcom/google/android/maps/driveabout/vector/di;->a(FFF)V

    sget-object v0, LB/d;->b:Lcom/google/android/maps/driveabout/vector/di;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1, v3, v3}, Lcom/google/android/maps/driveabout/vector/di;->a(FFF)V

    sget-object v0, LB/d;->b:Lcom/google/android/maps/driveabout/vector/di;

    const/high16 v1, 0x3f80

    const/high16 v2, 0x4170

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/di;->a(FFF)V

    sget-object v0, LB/d;->c:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v0, v5, v4}, Lcom/google/android/maps/driveabout/vector/bu;->a(SS)V

    sget-object v0, LB/d;->c:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v0, v4, v6}, Lcom/google/android/maps/driveabout/vector/bu;->a(SS)V

    sget-object v0, LB/d;->c:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/maps/driveabout/vector/bu;->a(SS)V

    sget-object v0, LB/d;->d:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v0, v4, v5}, Lcom/google/android/maps/driveabout/vector/bu;->a(SS)V

    sget-object v0, LB/d;->d:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v0, v5, v7}, Lcom/google/android/maps/driveabout/vector/bu;->a(SS)V

    sget-object v0, LB/d;->d:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v0, v7, v6}, Lcom/google/android/maps/driveabout/vector/bu;->a(SS)V

    sget-object v0, LB/d;->e:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/bu;->a(S)V

    sget-object v0, LB/d;->e:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v0, v5}, Lcom/google/android/maps/driveabout/vector/bu;->a(S)V

    sget-object v0, LB/d;->e:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v0, v6}, Lcom/google/android/maps/driveabout/vector/bu;->a(S)V

    sget-object v0, LB/d;->e:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v0, v7}, Lcom/google/android/maps/driveabout/vector/bu;->a(S)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 5

    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-direct {p0}, LB/a;-><init>()V

    iput-object v0, p0, LB/d;->h:Ljava/lang/String;

    iput-object v0, p0, LB/d;->i:Ljava/lang/String;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cs;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/cs;-><init>()V

    iput-object v0, p0, LB/d;->n:Lcom/google/android/maps/driveabout/vector/cs;

    const v0, 0x7f090048

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, LB/d;->f:F

    const v0, 0x7f090047

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, LB/d;->a:I

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cp;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cp;-><init>(I)V

    iput-object v0, p0, LB/d;->q:Lcom/google/android/maps/driveabout/vector/cp;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cp;

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cp;-><init>(I)V

    iput-object v0, p0, LB/d;->r:Lcom/google/android/maps/driveabout/vector/cp;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/k;

    const-wide/16 v1, 0x96

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/k;-><init>(J)V

    iput-object v0, p0, LB/d;->s:Lcom/google/android/maps/driveabout/vector/d;

    iget-object v0, p0, LB/d;->s:Lcom/google/android/maps/driveabout/vector/d;

    const/16 v1, 0xa

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/d;->c(II)V

    const v0, 0x7f090060

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, LB/d;->t:F

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/aT;IFFFFZ)V
    .registers 14

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->x()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-interface {v0, p3, p4, p5, p6}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    int-to-float v1, p2

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    int-to-float v1, p2

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glPointSize(F)V

    iget v1, p0, LB/d;->m:F

    invoke-interface {v0, v1, v2, v2}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    sget-object v1, LB/d;->c:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v1, p1, v5}, Lcom/google/android/maps/driveabout/vector/bu;->a(Lcom/google/android/maps/driveabout/vector/aT;I)V

    if-eqz p7, :cond_28

    sget-object v1, LB/d;->e:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v1, p1, v4}, Lcom/google/android/maps/driveabout/vector/bu;->a(Lcom/google/android/maps/driveabout/vector/aT;I)V

    :cond_28
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    iget v1, p0, LB/d;->l:F

    invoke-interface {v0, v1, v2, v2}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    const/high16 v1, -0x3e90

    invoke-interface {v0, v3, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    sget-object v1, LB/d;->d:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v1, p1, v5}, Lcom/google/android/maps/driveabout/vector/bu;->a(Lcom/google/android/maps/driveabout/vector/aT;I)V

    if-eqz p7, :cond_44

    sget-object v1, LB/d;->e:Lcom/google/android/maps/driveabout/vector/bu;

    invoke-virtual {v1, p1, v4}, Lcom/google/android/maps/driveabout/vector/bu;->a(Lcom/google/android/maps/driveabout/vector/aT;I)V

    :cond_44
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    return-void
.end method

.method private c(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 11

    const/4 v8, 0x1

    const/high16 v7, 0x4000

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->x()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->o()V

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x1e01

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    sget-object v1, Lcom/google/android/maps/driveabout/vector/di;->b:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/di;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v1, p0, LB/d;->q:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/cp;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    invoke-interface {v0, v7, v5, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    iget-object v1, p0, LB/d;->k:[F

    aget v1, v1, v4

    iget-object v2, p0, LB/d;->k:[F

    aget v2, v2, v8

    invoke-interface {v0, v1, v2, v6}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    iget-object v1, p0, LB/d;->o:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/cw;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {v0, v1, v4, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    sget-object v1, Lcom/google/android/maps/driveabout/vector/di;->b:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/di;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v1, p0, LB/d;->r:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/cp;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    const/high16 v1, 0x3fc0

    iget v2, p0, LB/d;->f:F

    mul-float/2addr v1, v2

    neg-float v1, v1

    invoke-interface {v0, v7, v1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    iget-object v1, p0, LB/d;->j:[F

    aget v1, v1, v4

    iget-object v2, p0, LB/d;->j:[F

    aget v2, v2, v8

    invoke-interface {v0, v1, v2, v6}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    iget-object v1, p0, LB/d;->p:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/cw;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {v0, v1, v4, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->p()V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    return-void
.end method

.method private l()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, LB/d;->o:Lcom/google/android/maps/driveabout/vector/cw;

    if-eqz v0, :cond_c

    iget-object v0, p0, LB/d;->o:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cw;->f()V

    iput-object v1, p0, LB/d;->o:Lcom/google/android/maps/driveabout/vector/cw;

    :cond_c
    iget-object v0, p0, LB/d;->p:Lcom/google/android/maps/driveabout/vector/cw;

    if-eqz v0, :cond_17

    iget-object v0, p0, LB/d;->p:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cw;->f()V

    iput-object v1, p0, LB/d;->p:Lcom/google/android/maps/driveabout/vector/cw;

    :cond_17
    return-void
.end method

.method private m()V
    .registers 12

    iget v0, p0, LB/d;->a:I

    int-to-double v0, v0

    iget-wide v2, p0, LB/d;->g:D

    div-double v3, v0, v2

    const-wide v0, 0x400a3f28fd4f4b98L

    mul-double v5, v3, v0

    const-string v0, ""

    const-string v1, ""

    sget-object v2, Lar/s;->a:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    :goto_17
    if-ltz v2, :cond_49

    sget-object v7, Lar/s;->a:[I

    aget v7, v7, v2

    int-to-double v7, v7

    sub-double v7, v3, v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-ltz v7, :cond_cc

    sget-object v0, Lar/s;->a:[I

    aget v2, v0, v2

    const/16 v0, 0x3e8

    if-ge v2, v0, :cond_b4

    const/16 v0, 0xec

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-static {v0, v3}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_42
    int-to-double v2, v2

    iget-wide v7, p0, LB/d;->g:D

    mul-double/2addr v2, v7

    double-to-float v2, v2

    iput v2, p0, LB/d;->l:F

    :cond_49
    sget-object v2, Lar/s;->b:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    :goto_4e
    if-ltz v2, :cond_87

    sget-object v3, Lar/s;->b:[I

    aget v3, v3, v2

    int-to-double v3, v3

    sub-double v3, v5, v3

    const-wide/16 v7, 0x0

    cmpl-double v3, v3, v7

    if-ltz v3, :cond_e7

    sget-object v1, Lar/s;->b:[I

    aget v2, v1, v2

    const/16 v1, 0x14a0

    if-ge v2, v1, :cond_d0

    const/16 v1, 0xea

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_79
    iget-wide v3, p0, LB/d;->g:D

    const-wide v5, 0x400a3f28fd4f4b98L

    div-double/2addr v3, v5

    int-to-double v5, v2

    mul-double v2, v3, v5

    double-to-float v2, v2

    iput v2, p0, LB/d;->m:F

    :cond_87
    iget-object v2, p0, LB/d;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9d

    iput-object v1, p0, LB/d;->i:Ljava/lang/String;

    iget-object v1, p0, LB/d;->o:Lcom/google/android/maps/driveabout/vector/cw;

    if-eqz v1, :cond_9d

    iget-object v1, p0, LB/d;->o:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cw;->f()V

    const/4 v1, 0x0

    iput-object v1, p0, LB/d;->o:Lcom/google/android/maps/driveabout/vector/cw;

    :cond_9d
    iget-object v1, p0, LB/d;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b3

    iput-object v0, p0, LB/d;->h:Ljava/lang/String;

    iget-object v0, p0, LB/d;->p:Lcom/google/android/maps/driveabout/vector/cw;

    if-eqz v0, :cond_b3

    iget-object v0, p0, LB/d;->p:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cw;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, LB/d;->p:Lcom/google/android/maps/driveabout/vector/cw;

    :cond_b3
    return-void

    :cond_b4
    const/16 v0, 0xeb

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    div-int/lit16 v7, v2, 0x3e8

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-static {v0, v3}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_42

    :cond_cc
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_17

    :cond_d0
    const/16 v1, 0xed

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    div-int/lit16 v5, v2, 0x14a0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_79

    :cond_e7
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_4e
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 3

    invoke-direct {p0}, LB/d;->l()V

    iget-object v0, p0, LB/d;->n:Lcom/google/android/maps/driveabout/vector/cs;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cs;->a()V

    return-void
.end method

.method a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;)V
    .registers 11

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->x()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    iget-object v1, p0, LB/d;->s:Lcom/google/android/maps/driveabout/vector/d;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/d;->a(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v1, p0, LB/d;->s:Lcom/google/android/maps/driveabout/vector/d;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/d;->a()F

    move-result v1

    iget-object v2, p0, LB/d;->s:Lcom/google/android/maps/driveabout/vector/d;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/d;->b()F

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    invoke-direct {p0, p1}, LB/d;->c(Lcom/google/android/maps/driveabout/vector/aT;)V

    sget-object v0, LB/d;->b:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/di;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    const/4 v2, 0x5

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const v6, 0x3e4ccccd

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, LB/d;->a(Lcom/google/android/maps/driveabout/vector/aT;IFFFFZ)V

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, LB/d;->a(Lcom/google/android/maps/driveabout/vector/aT;IFFFFZ)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V
    .registers 15

    const/4 v10, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/high16 v5, -0x100

    const/4 v9, 0x0

    invoke-virtual {p0}, LB/d;->j()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-wide v0, p0, LB/d;->g:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_15

    :cond_14
    :goto_14
    return-void

    :cond_15
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->x()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v8

    iget-object v0, p0, LB/d;->o:Lcom/google/android/maps/driveabout/vector/cw;

    if-nez v0, :cond_5f

    iget-object v0, p0, LB/d;->n:Lcom/google/android/maps/driveabout/vector/cs;

    iget-object v2, p0, LB/d;->i:Ljava/lang/String;

    sget-object v3, Lcom/google/android/maps/driveabout/vector/cs;->a:Lcom/google/android/maps/driveabout/vector/cu;

    iget v4, p0, LB/d;->f:F

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/maps/driveabout/vector/cs;->a(Lcom/google/android/maps/driveabout/vector/aT;Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cu;FIII)Lcom/google/android/maps/driveabout/vector/cw;

    move-result-object v0

    iput-object v0, p0, LB/d;->o:Lcom/google/android/maps/driveabout/vector/cw;

    iget-object v0, p0, LB/d;->n:Lcom/google/android/maps/driveabout/vector/cs;

    iget-object v1, p0, LB/d;->i:Ljava/lang/String;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/cs;->a:Lcom/google/android/maps/driveabout/vector/cu;

    iget v3, p0, LB/d;->f:F

    invoke-virtual {v0, v1, v2, v3, v10}, Lcom/google/android/maps/driveabout/vector/cs;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cu;FZ)[F

    move-result-object v0

    iput-object v0, p0, LB/d;->k:[F

    iget-object v0, p0, LB/d;->q:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cp;->a(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, LB/d;->o:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cw;->b()F

    move-result v0

    iget-object v1, p0, LB/d;->o:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cw;->c()F

    move-result v1

    iget-object v2, p0, LB/d;->q:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v2, v9, v9}, Lcom/google/android/maps/driveabout/vector/cp;->a(FF)V

    iget-object v2, p0, LB/d;->q:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v2, v9, v1}, Lcom/google/android/maps/driveabout/vector/cp;->a(FF)V

    iget-object v2, p0, LB/d;->q:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v2, v0, v9}, Lcom/google/android/maps/driveabout/vector/cp;->a(FF)V

    iget-object v2, p0, LB/d;->q:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/maps/driveabout/vector/cp;->a(FF)V

    :cond_5f
    iget-object v0, p0, LB/d;->p:Lcom/google/android/maps/driveabout/vector/cw;

    if-nez v0, :cond_a5

    iget-object v0, p0, LB/d;->n:Lcom/google/android/maps/driveabout/vector/cs;

    iget-object v2, p0, LB/d;->h:Ljava/lang/String;

    sget-object v3, Lcom/google/android/maps/driveabout/vector/cs;->a:Lcom/google/android/maps/driveabout/vector/cu;

    iget v4, p0, LB/d;->f:F

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/maps/driveabout/vector/cs;->a(Lcom/google/android/maps/driveabout/vector/aT;Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cu;FIII)Lcom/google/android/maps/driveabout/vector/cw;

    move-result-object v0

    iput-object v0, p0, LB/d;->p:Lcom/google/android/maps/driveabout/vector/cw;

    iget-object v0, p0, LB/d;->n:Lcom/google/android/maps/driveabout/vector/cs;

    iget-object v1, p0, LB/d;->h:Ljava/lang/String;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/cs;->a:Lcom/google/android/maps/driveabout/vector/cu;

    iget v3, p0, LB/d;->f:F

    invoke-virtual {v0, v1, v2, v3, v10}, Lcom/google/android/maps/driveabout/vector/cs;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cu;FZ)[F

    move-result-object v0

    iput-object v0, p0, LB/d;->j:[F

    iget-object v0, p0, LB/d;->r:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cp;->a(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, LB/d;->p:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cw;->b()F

    move-result v0

    iget-object v1, p0, LB/d;->p:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cw;->c()F

    move-result v1

    iget-object v2, p0, LB/d;->r:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v2, v9, v9}, Lcom/google/android/maps/driveabout/vector/cp;->a(FF)V

    iget-object v2, p0, LB/d;->r:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v2, v9, v1}, Lcom/google/android/maps/driveabout/vector/cp;->a(FF)V

    iget-object v2, p0, LB/d;->r:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v2, v0, v9}, Lcom/google/android/maps/driveabout/vector/cp;->a(FF)V

    iget-object v2, p0, LB/d;->r:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/maps/driveabout/vector/cp;->a(FF)V

    :cond_a5
    invoke-interface {v8}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-virtual {p0, p1, p2}, LB/d;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;)V

    invoke-interface {v8}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto/16 :goto_14
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 6

    invoke-virtual {p0}, LB/d;->j()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->b()Lt/L;

    move-result-object v0

    invoke-virtual {v0}, Lt/L;->e()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->r()F

    move-result v2

    float-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, LB/d;->g:D

    invoke-direct {p0}, LB/d;->m()V

    :cond_19
    invoke-super {p0, p1}, LB/a;->a_(Lcom/google/android/maps/driveabout/vector/t;)Z

    move-result v0

    return v0
.end method

.method public i()V
    .registers 4

    const/16 v0, 0x1e

    invoke-virtual {p0}, LB/d;->h()LB/b;

    move-result-object v1

    invoke-virtual {v1}, LB/b;->e()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ak()Z

    move-result v1

    if-nez v1, :cond_27

    const/16 v0, 0x64

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ar()Z

    move-result v1

    if-eqz v1, :cond_27

    int-to-float v0, v0

    iget v1, p0, LB/d;->t:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    :cond_27
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->aq()Z

    move-result v1

    if-eqz v1, :cond_33

    add-int/lit8 v0, v0, 0x60

    :cond_33
    iget-object v1, p0, LB/d;->s:Lcom/google/android/maps/driveabout/vector/d;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Lcom/google/android/maps/driveabout/vector/d;->a(II)V

    return-void
.end method

.method public j()Z
    .registers 2

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->J()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method
