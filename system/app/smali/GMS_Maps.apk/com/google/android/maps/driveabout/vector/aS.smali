.class public Lcom/google/android/maps/driveabout/vector/aS;
.super Lcom/google/android/maps/driveabout/vector/aE;


# instance fields
.field private a:I

.field private b:[I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/aE;-><init>()V

    sget v0, Lcom/google/android/maps/driveabout/vector/I;->g:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aS;->b:[I

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/aS;->a:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aS;->b:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/I;I)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aS;->b:[I

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/I;->a()I

    move-result v1

    aput p2, v0, v1

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V
    .registers 8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aS;->b:[I

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->a()Lcom/google/android/maps/driveabout/vector/I;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/I;->a()I

    move-result v1

    aget v0, v0, v1

    invoke-interface {p3}, Lcom/google/android/maps/driveabout/vector/J;->b()I

    move-result v1

    if-gtz v1, :cond_15

    if-nez v0, :cond_16

    :cond_15
    :goto_15
    return-void

    :cond_16
    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    const/high16 v2, -0x4080

    invoke-interface {v1, v3, v3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    const/16 v2, 0x302

    const/16 v3, 0x303

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    invoke-static {v1, v0}, Lcom/google/android/maps/driveabout/vector/C;->a(Ljavax/microedition/khronos/opengles/GL10;I)V

    sget-object v0, Lcom/google/android/maps/driveabout/vector/di;->d:Lcom/google/android/maps/driveabout/vector/di;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/di;->d(Lcom/google/android/maps/driveabout/vector/aT;)V

    const/4 v0, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-interface {v1, v0, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto :goto_15
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/aS;->a:I

    return-void
.end method

.method public s_()I
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aS;->a:I

    return v0
.end method
