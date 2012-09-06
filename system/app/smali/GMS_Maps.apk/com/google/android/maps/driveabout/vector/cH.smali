.class public Lcom/google/android/maps/driveabout/vector/ch;
.super Lcom/google/android/maps/driveabout/vector/aD;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/res/Resources;

.field private b:Lcom/google/android/maps/driveabout/vector/cV;

.field private final c:Lu/k;

.field private d:Ln/Q;

.field private e:F

.field private final f:I

.field private final g:I

.field private final h:I

.field private volatile i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aD;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ch;->i:Z

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ch;->a:Landroid/content/res/Resources;

    .line 38
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ch;->a:Landroid/content/res/Resources;

    const v1, 0x7f0b0041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ch;->f:I

    .line 39
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ch;->a:Landroid/content/res/Resources;

    const v1, 0x7f0b0042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ch;->g:I

    .line 40
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ch;->a:Landroid/content/res/Resources;

    const v1, 0x7f0b0043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ch;->h:I

    .line 41
    new-instance v0, Lu/k;

    invoke-direct {v0}, Lu/k;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ch;->c:Lu/k;

    .line 42
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 73
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ch;->i:Z

    if-nez v0, :cond_7

    .line 108
    :cond_6
    :goto_6
    return-void

    .line 77
    :cond_7
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->b()I

    move-result v0

    if-gtz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ch;->d:Ln/Q;

    if-eqz v0, :cond_6

    .line 82
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ch;->b:Lcom/google/android/maps/driveabout/vector/cV;

    if-nez v0, :cond_2b

    .line 83
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cV;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/vector/cV;-><init>(Lcom/google/android/maps/driveabout/vector/aU;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ch;->b:Lcom/google/android/maps/driveabout/vector/cV;

    .line 84
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ch;->b:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0, v5}, Lcom/google/android/maps/driveabout/vector/cV;->c(Z)V

    .line 85
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ch;->b:Lcom/google/android/maps/driveabout/vector/cV;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ch;->a:Landroid/content/res/Resources;

    const v2, 0x7f02016b

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/cV;->a(Landroid/content/res/Resources;I)V

    .line 89
    :cond_2b
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->o()V

    .line 90
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->x()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    .line 91
    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x2100

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 93
    const/16 v1, 0x303

    invoke-interface {v0, v5, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 94
    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aU;->d:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/cM;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 97
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 98
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ch;->d:Ln/Q;

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/ch;->e:F

    invoke-static {p1, p2, v1, v2}, Lcom/google/android/maps/driveabout/vector/dz;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Ln/Q;F)V

    .line 99
    invoke-static {v0, p2}, Lcom/google/android/maps/driveabout/vector/dz;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/k;)V

    .line 100
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ch;->c:Lu/k;

    invoke-virtual {v1, p1}, Lu/k;->a(Lcom/google/android/maps/driveabout/vector/aU;)F

    move-result v1

    const/high16 v2, 0x3f80

    invoke-interface {v0, v1, v4, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 103
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ch;->b:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/cV;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 104
    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aU;->i:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/dY;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 105
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 107
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto :goto_6
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->e()I

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/ch;->f:I

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/ch;->g:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/ch;->f:I

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/ch;->h:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/k;->d(FF)Ln/Q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ch;->d:Ln/Q;

    .line 55
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ch;->d:Ln/Q;

    if-eqz v0, :cond_2b

    .line 56
    const/4 v0, 0x0

    .line 57
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/ch;->f:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ch;->d:Ln/Q;

    invoke-virtual {p1, v2, v0}, Lcom/google/android/maps/driveabout/vector/k;->a(Ln/Q;Z)F

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/maps/driveabout/vector/k;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ch;->e:F

    .line 60
    :cond_2b
    const/4 v0, 0x1

    return v0
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 3
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ch;->b:Lcom/google/android/maps/driveabout/vector/cV;

    if-eqz v0, :cond_c

    .line 66
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ch;->b:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->g()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ch;->b:Lcom/google/android/maps/driveabout/vector/cV;

    .line 69
    :cond_c
    return-void
.end method

.method public b(Z)V
    .registers 2
    .parameter

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/ch;->i:Z

    .line 112
    return-void
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ch;->i:Z

    return v0
.end method

.method public u_()I
    .registers 2

    .prologue
    .line 46
    const v0, 0x900b0

    return v0
.end method
