.class public LB/c;
.super LB/a;


# instance fields
.field private final a:Landroid/content/res/Resources;

.field private final b:Lcom/google/android/maps/driveabout/vector/cs;

.field private final c:F

.field private d:[F

.field private e:Lcom/google/android/maps/driveabout/vector/cw;

.field private final f:Lcom/google/android/maps/driveabout/vector/cp;

.field private volatile g:Ljava/lang/String;

.field private volatile h:I

.field private volatile i:I

.field private j:Lcom/google/android/maps/driveabout/vector/I;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, LB/a;-><init>()V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cs;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/cs;-><init>()V

    iput-object v0, p0, LB/c;->b:Lcom/google/android/maps/driveabout/vector/cs;

    iput-object v1, p0, LB/c;->e:Lcom/google/android/maps/driveabout/vector/cw;

    iput-object v1, p0, LB/c;->g:Ljava/lang/String;

    const/16 v0, 0x32

    iput v0, p0, LB/c;->h:I

    const/4 v0, 0x4

    iput v0, p0, LB/c;->i:I

    sget-object v0, Lcom/google/android/maps/driveabout/vector/I;->f:Lcom/google/android/maps/driveabout/vector/I;

    iput-object v0, p0, LB/c;->j:Lcom/google/android/maps/driveabout/vector/I;

    iput-object p1, p0, LB/c;->a:Landroid/content/res/Resources;

    const v0, 0x7f090049

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, LB/c;->c:F

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cp;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cp;-><init>(I)V

    iput-object v0, p0, LB/c;->f:Lcom/google/android/maps/driveabout/vector/cp;

    return-void
.end method

.method private static a(Ljava/util/HashSet;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_9

    const-string v0, ""

    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    if-nez v0, :cond_2c

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v1

    goto :goto_13

    :cond_2c
    const/4 v1, 0x0

    goto :goto_21

    :cond_2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/I;)V
    .registers 12

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/high16 v5, -0x100

    sget-object v0, Lcom/google/android/maps/driveabout/vector/I;->b:Lcom/google/android/maps/driveabout/vector/I;

    if-ne p2, v0, :cond_4d

    const/4 v5, -0x1

    :cond_9
    :goto_9
    iget-object v0, p0, LB/c;->b:Lcom/google/android/maps/driveabout/vector/cs;

    iget-object v2, p0, LB/c;->g:Ljava/lang/String;

    sget-object v3, Lcom/google/android/maps/driveabout/vector/cs;->a:Lcom/google/android/maps/driveabout/vector/cu;

    iget v4, p0, LB/c;->c:F

    move-object v1, p1

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/maps/driveabout/vector/cs;->a(Lcom/google/android/maps/driveabout/vector/aT;Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cu;FIII)Lcom/google/android/maps/driveabout/vector/cw;

    move-result-object v0

    iput-object v0, p0, LB/c;->e:Lcom/google/android/maps/driveabout/vector/cw;

    iget-object v0, p0, LB/c;->b:Lcom/google/android/maps/driveabout/vector/cs;

    iget-object v1, p0, LB/c;->g:Ljava/lang/String;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/cs;->a:Lcom/google/android/maps/driveabout/vector/cu;

    iget v3, p0, LB/c;->c:F

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/google/android/maps/driveabout/vector/cs;->a(Ljava/lang/String;Lcom/google/android/maps/driveabout/vector/cu;FZ)[F

    move-result-object v0

    iput-object v0, p0, LB/c;->d:[F

    iget-object v0, p0, LB/c;->f:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cp;->a(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, LB/c;->e:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cw;->b()F

    move-result v0

    iget-object v1, p0, LB/c;->e:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cw;->c()F

    move-result v1

    iget-object v2, p0, LB/c;->f:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v2, v8, v8}, Lcom/google/android/maps/driveabout/vector/cp;->a(FF)V

    iget-object v2, p0, LB/c;->f:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v2, v8, v1}, Lcom/google/android/maps/driveabout/vector/cp;->a(FF)V

    iget-object v2, p0, LB/c;->f:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v2, v0, v8}, Lcom/google/android/maps/driveabout/vector/cp;->a(FF)V

    iget-object v2, p0, LB/c;->f:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/maps/driveabout/vector/cp;->a(FF)V

    return-void

    :cond_4d
    sget-object v0, Lcom/google/android/maps/driveabout/vector/I;->c:Lcom/google/android/maps/driveabout/vector/I;

    if-ne p2, v0, :cond_9

    const v5, -0x3f3f40

    goto :goto_9
.end method

.method private j()V
    .registers 2

    iget-object v0, p0, LB/c;->e:Lcom/google/android/maps/driveabout/vector/cw;

    if-eqz v0, :cond_c

    iget-object v0, p0, LB/c;->e:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cw;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, LB/c;->e:Lcom/google/android/maps/driveabout/vector/cw;

    :cond_c
    return-void
.end method


# virtual methods
.method public a(II)V
    .registers 3

    iput p1, p0, LB/c;->h:I

    iput p2, p0, LB/c;->i:I

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 3

    invoke-direct {p0}, LB/c;->j()V

    iget-object v0, p0, LB/c;->b:Lcom/google/android/maps/driveabout/vector/cs;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cs;->a()V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V
    .registers 9

    const/4 v4, 0x0

    iget-object v0, p0, LB/c;->g:Ljava/lang/String;

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->x()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->a()Lcom/google/android/maps/driveabout/vector/I;

    move-result-object v1

    iget-object v2, p0, LB/c;->j:Lcom/google/android/maps/driveabout/vector/I;

    if-eq v1, v2, :cond_1b

    invoke-direct {p0}, LB/c;->j()V

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->a()Lcom/google/android/maps/driveabout/vector/I;

    move-result-object v1

    iput-object v1, p0, LB/c;->j:Lcom/google/android/maps/driveabout/vector/I;

    :cond_1b
    iget-object v1, p0, LB/c;->e:Lcom/google/android/maps/driveabout/vector/cw;

    if-nez v1, :cond_26

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->a()Lcom/google/android/maps/driveabout/vector/I;

    move-result-object v1

    invoke-direct {p0, p1, v1}, LB/c;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/I;)V

    :cond_26
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/t;->d()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, LB/c;->d:[F

    aget v2, v2, v4

    sub-float/2addr v1, v2

    iget v2, p0, LB/c;->h:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, LB/c;->i:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    iget-object v1, p0, LB/c;->d:[F

    aget v1, v1, v4

    iget-object v2, p0, LB/c;->d:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    const/high16 v3, 0x3f80

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->o()V

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x1e01

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    iget-object v1, p0, LB/c;->f:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/cp;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    sget-object v1, Lcom/google/android/maps/driveabout/vector/di;->b:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/di;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v1, p0, LB/c;->e:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/cw;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {v0, v1, v4, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->p()V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto :goto_5
.end method

.method public a(Ljava/util/HashSet;Ljava/util/HashSet;ILcom/google/android/maps/driveabout/vector/I;)V
    .registers 15

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v0, -0x1

    if-eq p3, v0, :cond_4c

    :goto_7
    invoke-static {p1}, LB/c;->a(Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, LB/c;->a(Ljava/util/HashSet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_55

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_55

    iget-object v2, p0, LB/c;->a:Landroid/content/res/Resources;

    const v3, 0x7f0b0102

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v1, v4, v8

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v9

    const/4 v1, 0x4

    aput-object v0, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_3e
    iget-object v1, p0, LB/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    iput-object v0, p0, LB/c;->g:Ljava/lang/String;

    invoke-direct {p0}, LB/c;->j()V

    :cond_4b
    return-void

    :cond_4c
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result p3

    goto :goto_7

    :cond_55
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_73

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_73

    iget-object v0, p0, LB/c;->a:Landroid/content/res/Resources;

    const v1, 0x7f0b0101

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3e

    :cond_73
    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_93

    iget-object v1, p0, LB/c;->a:Landroid/content/res/Resources;

    const v2, 0x7f0b0104

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object v0, v3, v8

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3e

    :cond_93
    iget-object v0, p0, LB/c;->a:Landroid/content/res/Resources;

    const v2, 0x7f0b0103

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object v1, v3, v8

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3e
.end method
