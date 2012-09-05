.class public Lcom/google/android/opengl/glview/MatrixStack;
.super Ljava/lang/Object;
.source "MatrixStack.java"


# instance fields
.field private mMatrix:[F

.field private mTemp:[F

.field private mTop:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/google/android/opengl/glview/MatrixStack;->commonInit(I)V

    .line 31
    return-void
.end method

.method private commonInit(I)V
    .registers 3
    .parameter "maxDepth"

    .prologue
    .line 38
    mul-int/lit8 v0, p1, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/opengl/glview/MatrixStack;->mMatrix:[F

    .line 39
    const/16 v0, 0x20

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/opengl/glview/MatrixStack;->mTemp:[F

    .line 40
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/MatrixStack;->glLoadIdentity()V

    .line 41
    return-void
.end method


# virtual methods
.method public getMatrix([FI)V
    .registers 6
    .parameter "dest"
    .parameter "offset"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/opengl/glview/MatrixStack;->mMatrix:[F

    iget v1, p0, Lcom/google/android/opengl/glview/MatrixStack;->mTop:I

    const/16 v2, 0x10

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    return-void
.end method

.method public glLoadIdentity()V
    .registers 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/opengl/glview/MatrixStack;->mMatrix:[F

    iget v1, p0, Lcom/google/android/opengl/glview/MatrixStack;->mTop:I

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 55
    return-void
.end method

.method public glPopMatrix()V
    .registers 2

    .prologue
    .line 86
    iget v0, p0, Lcom/google/android/opengl/glview/MatrixStack;->mTop:I

    add-int/lit8 v0, v0, -0x10

    iput v0, p0, Lcom/google/android/opengl/glview/MatrixStack;->mTop:I

    .line 87
    return-void
.end method

.method public glPushMatrix()V
    .registers 6

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/opengl/glview/MatrixStack;->mMatrix:[F

    iget v1, p0, Lcom/google/android/opengl/glview/MatrixStack;->mTop:I

    iget-object v2, p0, Lcom/google/android/opengl/glview/MatrixStack;->mMatrix:[F

    iget v3, p0, Lcom/google/android/opengl/glview/MatrixStack;->mTop:I

    add-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    iget v0, p0, Lcom/google/android/opengl/glview/MatrixStack;->mTop:I

    add-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/opengl/glview/MatrixStack;->mTop:I

    .line 98
    return-void
.end method

.method public glRotatef(FFFF)V
    .registers 13
    .parameter "angle"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    const/4 v1, 0x0

    const/16 v7, 0x10

    .line 101
    iget-object v0, p0, Lcom/google/android/opengl/glview/MatrixStack;->mTemp:[F

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 102
    iget-object v0, p0, Lcom/google/android/opengl/glview/MatrixStack;->mMatrix:[F

    iget v2, p0, Lcom/google/android/opengl/glview/MatrixStack;->mTop:I

    iget-object v3, p0, Lcom/google/android/opengl/glview/MatrixStack;->mTemp:[F

    invoke-static {v0, v2, v3, v7, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    iget-object v2, p0, Lcom/google/android/opengl/glview/MatrixStack;->mMatrix:[F

    iget v3, p0, Lcom/google/android/opengl/glview/MatrixStack;->mTop:I

    iget-object v4, p0, Lcom/google/android/opengl/glview/MatrixStack;->mTemp:[F

    iget-object v6, p0, Lcom/google/android/opengl/glview/MatrixStack;->mTemp:[F

    move v5, v7

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 104
    return-void
.end method

.method public glTranslatef(FFF)V
    .registers 6
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/opengl/glview/MatrixStack;->mMatrix:[F

    iget v1, p0, Lcom/google/android/opengl/glview/MatrixStack;->mTop:I

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 112
    return-void
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/opengl/glview/MatrixStack;->mTop:I

    .line 45
    invoke-virtual {p0}, Lcom/google/android/opengl/glview/MatrixStack;->glLoadIdentity()V

    .line 46
    return-void
.end method
