.class public Ly/e;
.super Ly/a;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/res/Resources;

.field private b:Lcom/google/android/maps/driveabout/vector/cV;

.field private c:Lcom/google/android/maps/driveabout/vector/cM;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ly/a;-><init>()V

    .line 36
    iput-object v1, p0, Ly/e;->b:Lcom/google/android/maps/driveabout/vector/cV;

    .line 37
    iput-object v1, p0, Ly/e;->c:Lcom/google/android/maps/driveabout/vector/cM;

    .line 45
    iput v0, p0, Ly/e;->d:I

    .line 46
    iput v0, p0, Ly/e;->e:I

    .line 52
    iput-object p1, p0, Ly/e;->a:Landroid/content/res/Resources;

    .line 56
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/high16 v5, 0x4780

    const/4 v4, 0x0

    .line 104
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->H()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 153
    :goto_10
    return-void

    .line 109
    :cond_11
    iget-object v0, p0, Ly/e;->b:Lcom/google/android/maps/driveabout/vector/cV;

    if-nez v0, :cond_6a

    .line 110
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cV;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/vector/cV;-><init>(Lcom/google/android/maps/driveabout/vector/aU;)V

    iput-object v0, p0, Ly/e;->b:Lcom/google/android/maps/driveabout/vector/cV;

    .line 111
    iget-object v0, p0, Ly/e;->b:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0, v6}, Lcom/google/android/maps/driveabout/vector/cV;->c(Z)V

    .line 112
    iget-object v0, p0, Ly/e;->b:Lcom/google/android/maps/driveabout/vector/cV;

    iget-object v1, p0, Ly/e;->a:Landroid/content/res/Resources;

    const v2, 0x7f0201e2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/cV;->a(Landroid/content/res/Resources;I)V

    .line 116
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cN;

    const/16 v1, 0x8

    new-array v1, v1, [I

    aput v4, v1, v4

    aput v4, v1, v6

    const/4 v2, 0x2

    aput v4, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Ly/e;->b:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/cV;->c()F

    move-result v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    aput v3, v1, v2

    iget-object v2, p0, Ly/e;->b:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/cV;->b()F

    move-result v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    aput v2, v1, v7

    aput v4, v1, v8

    const/4 v2, 0x6

    iget-object v3, p0, Ly/e;->b:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/cV;->b()F

    move-result v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    aput v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Ly/e;->b:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/cV;->c()F

    move-result v3

    mul-float/2addr v3, v5

    float-to-int v3, v3

    aput v3, v1, v2

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cN;-><init>([I)V

    iput-object v0, p0, Ly/e;->c:Lcom/google/android/maps/driveabout/vector/cM;

    .line 126
    :cond_6a
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->x()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    .line 127
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->y()V

    .line 128
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 131
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 135
    iget v1, p0, Ly/e;->d:I

    int-to-float v1, v1

    iget v2, p0, Ly/e;->e:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 138
    iget-object v1, p0, Ly/e;->b:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cV;->d()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Ly/e;->b:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/cV;->e()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f80

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 140
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->o()V

    .line 141
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->q()V

    .line 142
    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x1e01

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 143
    const/16 v1, 0x303

    invoke-interface {v0, v6, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 144
    iget-object v1, p0, Ly/e;->c:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/cM;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 147
    iget-object v1, p0, Ly/e;->b:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/cV;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 149
    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aU;->f:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/dY;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 150
    invoke-interface {v0, v8, v4, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 151
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 152
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->z()V

    goto/16 :goto_10
.end method

.method public a_(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 172
    iget-object v0, p0, Ly/e;->b:Lcom/google/android/maps/driveabout/vector/cV;

    if-eqz v0, :cond_c

    .line 173
    iget-object v0, p0, Ly/e;->b:Lcom/google/android/maps/driveabout/vector/cV;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cV;->g()V

    .line 174
    iput-object v1, p0, Ly/e;->b:Lcom/google/android/maps/driveabout/vector/cV;

    .line 177
    :cond_c
    iget-object v0, p0, Ly/e;->c:Lcom/google/android/maps/driveabout/vector/cM;

    if-eqz v0, :cond_17

    .line 178
    iget-object v0, p0, Ly/e;->c:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cM;->c(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 179
    iput-object v1, p0, Ly/e;->c:Lcom/google/android/maps/driveabout/vector/cM;

    .line 187
    :cond_17
    return-void
.end method

.method public i()V
    .registers 2

    .prologue
    .line 158
    const/4 v0, 0x0

    iput v0, p0, Ly/e;->e:I

    .line 160
    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/K;->at()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 162
    const/16 v0, 0x60

    iput v0, p0, Ly/e;->e:I

    .line 168
    :cond_11
    return-void
.end method
