.class public Lcom/google/android/maps/driveabout/vector/bO;
.super Lcom/google/android/maps/driveabout/vector/aE;


# instance fields
.field private final a:Landroid/content/res/Resources;

.field private b:Lcom/google/android/maps/driveabout/vector/cw;

.field private final c:Lcom/google/android/maps/driveabout/vector/g;

.field private d:Lt/L;

.field private e:F

.field private final f:I

.field private final g:I

.field private final h:I

.field private volatile i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aE;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bO;->i:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bO;->a:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bO;->a:Landroid/content/res/Resources;

    const v1, 0x7f090040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bO;->f:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bO;->a:Landroid/content/res/Resources;

    const v1, 0x7f090041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bO;->g:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bO;->a:Landroid/content/res/Resources;

    const v1, 0x7f090042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bO;->h:I

    new-instance v0, Lcom/google/android/maps/driveabout/vector/g;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/g;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bO;->c:Lcom/google/android/maps/driveabout/vector/g;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bO;->b:Lcom/google/android/maps/driveabout/vector/cw;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bO;->b:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cw;->f()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bO;->b:Lcom/google/android/maps/driveabout/vector/cw;

    :cond_c
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V
    .registers 10

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bO;->i:Z

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->b()I

    move-result v0

    if-gtz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bO;->d:Lt/L;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bO;->b:Lcom/google/android/maps/driveabout/vector/cw;

    if-nez v0, :cond_2b

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cw;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/vector/cw;-><init>(Lcom/google/android/maps/driveabout/vector/aT;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bO;->b:Lcom/google/android/maps/driveabout/vector/cw;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bO;->b:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v0, v5}, Lcom/google/android/maps/driveabout/vector/cw;->c(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bO;->b:Lcom/google/android/maps/driveabout/vector/cw;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bO;->a:Landroid/content/res/Resources;

    const v2, 0x7f020148

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/cw;->a(Landroid/content/res/Resources;I)V

    :cond_2b
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->o()V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aT;->x()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x2100

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    const/16 v1, 0x303

    invoke-interface {v0, v5, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cp;->b:Lcom/google/android/maps/driveabout/vector/cp;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/cp;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bO;->d:Lt/L;

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bO;->e:F

    invoke-static {v0, p2, v1, v2}, Lcom/google/android/maps/driveabout/vector/cN;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/t;Lt/L;F)V

    invoke-static {v0, p2}, Lcom/google/android/maps/driveabout/vector/cN;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/t;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bO;->c:Lcom/google/android/maps/driveabout/vector/g;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/g;->a(Lcom/google/android/maps/driveabout/vector/aT;)F

    move-result v1

    const/high16 v2, 0x3f80

    invoke-interface {v0, v1, v4, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bO;->b:Lcom/google/android/maps/driveabout/vector/cw;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/cw;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    sget-object v1, Lcom/google/android/maps/driveabout/vector/di;->e:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/di;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto :goto_6
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/t;)Z
    .registers 5

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->d()I

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bO;->f:I

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bO;->g:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bO;->f:I

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bO;->h:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/t;->d(FF)Lt/L;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bO;->d:Lt/L;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bO;->d:Lt/L;

    if-eqz v0, :cond_2b

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bO;->f:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bO;->d:Lt/L;

    invoke-virtual {p1, v2, v0}, Lcom/google/android/maps/driveabout/vector/t;->a(Lt/L;Z)F

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/maps/driveabout/vector/t;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bO;->e:F

    :cond_2b
    const/4 v0, 0x1

    return v0
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/bO;->i:Z

    return-void
.end method

.method public e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bO;->i:Z

    return v0
.end method

.method public s_()I
    .registers 2

    const v0, 0x900b0

    return v0
.end method
