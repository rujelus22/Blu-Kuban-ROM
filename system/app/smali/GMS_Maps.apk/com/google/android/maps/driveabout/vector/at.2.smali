.class public Lcom/google/android/maps/driveabout/vector/aT;
.super Lcom/google/android/maps/driveabout/vector/aD;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:[I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aD;-><init>()V

    .line 15
    sget v0, Lcom/google/android/maps/driveabout/vector/D;->g:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->b:[I

    .line 26
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:I

    .line 27
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/maps/driveabout/vector/D;I)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->b:[I

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/D;->a()I

    move-result v1

    aput p2, v0, v1

    .line 48
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 61
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->b:[I

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->a()Lcom/google/android/maps/driveabout/vector/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/D;->a()I

    move-result v1

    aget v0, v0, v1

    .line 62
    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/E;->b()I

    move-result v1

    if-gtz v1, :cond_15

    if-nez v0, :cond_16

    .line 79
    :cond_15
    :goto_15
    return-void

    .line 67
    :cond_16
    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    .line 68
    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 69
    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 70
    const/high16 v2, -0x4080

    invoke-interface {v1, v3, v3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 72
    const/16 v2, 0x302

    const/16 v3, 0x303

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 74
    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/vector/u;->a(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 76
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/aU;->h:Lcom/google/android/maps/driveabout/vector/dY;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/dY;->d(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 77
    const/4 v0, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-interface {v1, v0, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 78
    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto :goto_15
.end method

.method public b(I)V
    .registers 3
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->b:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([II)V

    .line 37
    return-void
.end method

.method public c(I)V
    .registers 2
    .parameter

    .prologue
    .line 56
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:I

    .line 57
    return-void
.end method

.method public u_()I
    .registers 2

    .prologue
    .line 52
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aT;->a:I

    return v0
.end method
