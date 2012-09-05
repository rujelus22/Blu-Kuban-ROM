.class public Lcom/cooliris/media/MatrixStack;
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
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/cooliris/media/MatrixStack;->commonInit(I)V

    .line 30
    return-void
.end method

.method private commonInit(I)V
    .registers 3
    .parameter "maxDepth"

    .prologue
    .line 37
    mul-int/lit8 v0, p1, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cooliris/media/MatrixStack;->mMatrix:[F

    .line 38
    const/16 v0, 0x20

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/cooliris/media/MatrixStack;->mTemp:[F

    .line 39
    invoke-virtual {p0}, Lcom/cooliris/media/MatrixStack;->glLoadIdentity()V

    .line 40
    return-void
.end method


# virtual methods
.method public apply([F[F)V
    .registers 9
    .parameter "mCoordsIn"
    .parameter "mCoordsOut"

    .prologue
    const/4 v1, 0x0

    .line 43
    iget-object v2, p0, Lcom/cooliris/media/MatrixStack;->mMatrix:[F

    iget v3, p0, Lcom/cooliris/media/MatrixStack;->mTop:I

    move-object v0, p2

    move-object v4, p1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 44
    return-void
.end method

.method public glLoadIdentity()V
    .registers 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cooliris/media/MatrixStack;->mMatrix:[F

    iget v1, p0, Lcom/cooliris/media/MatrixStack;->mTop:I

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 57
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

    .line 124
    iget-object v0, p0, Lcom/cooliris/media/MatrixStack;->mTemp:[F

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 125
    iget-object v0, p0, Lcom/cooliris/media/MatrixStack;->mMatrix:[F

    iget v2, p0, Lcom/cooliris/media/MatrixStack;->mTop:I

    iget-object v3, p0, Lcom/cooliris/media/MatrixStack;->mTemp:[F

    invoke-static {v0, v2, v3, v7, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    iget-object v2, p0, Lcom/cooliris/media/MatrixStack;->mMatrix:[F

    iget v3, p0, Lcom/cooliris/media/MatrixStack;->mTop:I

    iget-object v4, p0, Lcom/cooliris/media/MatrixStack;->mTemp:[F

    iget-object v6, p0, Lcom/cooliris/media/MatrixStack;->mTemp:[F

    move v5, v7

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 127
    return-void
.end method

.method public glScalef(FFF)V
    .registers 6
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/cooliris/media/MatrixStack;->mMatrix:[F

    iget v1, p0, Lcom/cooliris/media/MatrixStack;->mTop:I

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 135
    return-void
.end method

.method public glTranslatef(FFF)V
    .registers 6
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/cooliris/media/MatrixStack;->mMatrix:[F

    iget v1, p0, Lcom/cooliris/media/MatrixStack;->mTop:I

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 143
    return-void
.end method
