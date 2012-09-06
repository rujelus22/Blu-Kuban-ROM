.class public Lcom/google/android/maps/driveabout/vector/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/aV;


# instance fields
.field private final a:Ln/am;

.field private final b:Ln/aa;

.field private final c:Lcom/google/android/maps/driveabout/vector/cM;


# direct methods
.method public constructor <init>(Ln/am;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cM;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/cM;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aa;->c:Lcom/google/android/maps/driveabout/vector/cM;

    .line 33
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/aa;->a:Ln/am;

    .line 34
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aa;->a:Ln/am;

    invoke-virtual {v0}, Ln/am;->h()Ln/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aa;->b:Ln/aa;

    .line 37
    const/high16 v0, 0x1

    mul-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x20

    .line 39
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aa;->c:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v1, v2, v2}, Lcom/google/android/maps/driveabout/vector/cM;->a(II)V

    .line 40
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aa;->c:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/maps/driveabout/vector/cM;->a(II)V

    .line 41
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aa;->c:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/maps/driveabout/vector/cM;->a(II)V

    .line 42
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aa;->c:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v1, v0, v0}, Lcom/google/android/maps/driveabout/vector/cM;->a(II)V

    .line 46
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/D;)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public a(J)V
    .registers 3
    .parameter

    .prologue
    .line 169
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 2
    .parameter

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/aa;->b(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 112
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    .line 83
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 84
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aa;->b:Ln/aa;

    invoke-virtual {v1}, Ln/aa;->d()Ln/Q;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aa;->b:Ln/aa;

    invoke-virtual {v2}, Ln/aa;->g()I

    move-result v2

    int-to-float v2, v2

    invoke-static {p1, p2, v1, v2}, Lcom/google/android/maps/driveabout/vector/dz;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Ln/Q;F)V

    .line 85
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aa;->c:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/cM;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 86
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 87
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 88
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/ad;)V
    .registers 2
    .parameter

    .prologue
    .line 136
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bY;)V
    .registers 2
    .parameter

    .prologue
    .line 103
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/k;ILjava/util/Collection;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 173
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 146
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/k;Ljava/util/Collection;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 177
    return-void
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 141
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/ct;)Z
    .registers 3
    .parameter

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/google/googlenav/common/a;)Z
    .registers 3
    .parameter

    .prologue
    .line 150
    const/4 v0, 0x0

    return v0
.end method

.method public b()Ln/am;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aa;->a:Ln/am;

    return-object v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 2
    .parameter

    .prologue
    .line 107
    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 62
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->b()I

    move-result v0

    if-le v0, v2, :cond_8

    .line 72
    :goto_7
    return-void

    .line 65
    :cond_8
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    .line 66
    const/16 v1, 0x303

    invoke-interface {v0, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 67
    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x1e01

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 68
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/aU;->o()V

    .line 70
    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aU;->f:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/dY;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 71
    const/16 v1, 0x14

    invoke-static {p1, v1}, Lcom/google/android/maps/driveabout/vector/cX;->a(Lcom/google/android/maps/driveabout/vector/aU;I)Lcom/google/android/maps/driveabout/vector/cV;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/cV;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_7
.end method

.method public b(Lcom/google/googlenav/common/a;)Z
    .registers 3
    .parameter

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public c()Lcom/google/android/maps/driveabout/vector/dg;
    .registers 2

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()I
    .registers 2

    .prologue
    .line 126
    const/4 v0, -0x1

    return v0
.end method

.method public e()Lcom/google/android/maps/driveabout/vector/ad;
    .registers 2

    .prologue
    .line 131
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 160
    const/4 v0, 0x0

    return v0
.end method

.method public g()V
    .registers 1

    .prologue
    .line 165
    return-void
.end method

.method public h()I
    .registers 2

    .prologue
    .line 181
    const/4 v0, -0x1

    return v0
.end method

.method public i()I
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aa;->c:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cM;->b()I

    move-result v0

    return v0
.end method

.method public j()I
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aa;->c:Lcom/google/android/maps/driveabout/vector/cM;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cM;->c()I

    move-result v0

    return v0
.end method
