.class public Lcom/google/android/apps/unveil/env/gl/BoundingBox;
.super Landroid/graphics/RectF;
.source "BoundingBox.java"


# static fields
.field public static final DEFAULT_OUTLINE_WIDTH_PX:F = 3.0f


# instance fields
.field private final PVM:Lcom/google/android/apps/unveil/env/gl/PVMMatrix;

.field private cF:Lcom/google/android/apps/unveil/env/gl/Utils$Color;

.field private cL:Lcom/google/android/apps/unveil/env/gl/Utils$Color;

.field private final context:Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;

.field private isActive:Z

.field private final lineWidth:F

.field private program:Lcom/google/android/apps/unveil/env/gl/ShaderProgram;

.field private final quad:Lcom/google/android/apps/unveil/env/gl/Polygon;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;Lcom/google/android/apps/unveil/env/gl/ShaderProgram;F)V
    .registers 7
    .parameter "context"
    .parameter "program"
    .parameter "outlineWidth"

    .prologue
    const/high16 v2, 0x4000

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->isActive:Z

    .line 55
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->context:Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;

    .line 56
    iput-object p2, p0, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->program:Lcom/google/android/apps/unveil/env/gl/ShaderProgram;

    .line 57
    iput p3, p0, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->lineWidth:F

    .line 58
    new-instance v0, Lcom/google/android/apps/unveil/env/gl/PVMMatrix;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/gl/PVMMatrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->PVM:Lcom/google/android/apps/unveil/env/gl/PVMMatrix;

    .line 59
    invoke-static {v1, v1, v2, v2}, Lcom/google/android/apps/unveil/env/gl/Polygon;->generateRect(FFFF)Lcom/google/android/apps/unveil/env/gl/Polygon;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->quad:Lcom/google/android/apps/unveil/env/gl/Polygon;

    .line 60
    return-void
.end method


# virtual methods
.method public render()V
    .registers 7

    .prologue
    const/high16 v4, 0x4000

    .line 79
    iget-boolean v1, p0, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->isActive:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->program:Lcom/google/android/apps/unveil/env/gl/ShaderProgram;

    if-nez v1, :cond_b

    .line 106
    :cond_a
    :goto_a
    return-void

    .line 83
    :cond_b
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->program:Lcom/google/android/apps/unveil/env/gl/ShaderProgram;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->use()V

    .line 85
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->context:Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;

    invoke-virtual {v1, p0}, Lcom/google/android/apps/unveil/env/gl/PassthroughRenderer;->pxToGLCoords(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    .line 88
    .local v0, screenCoords:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->PVM:Lcom/google/android/apps/unveil/env/gl/PVMMatrix;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v4

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/gl/PVMMatrix;->setScale(FF)V

    .line 89
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->PVM:Lcom/google/android/apps/unveil/env/gl/PVMMatrix;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/gl/PVMMatrix;->setTranslate(FF)V

    .line 91
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->PVM:Lcom/google/android/apps/unveil/env/gl/PVMMatrix;

    iget-object v2, p0, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->program:Lcom/google/android/apps/unveil/env/gl/ShaderProgram;

    sget-object v3, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;->PVMATRIX:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->getUniform(Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/env/gl/PVMMatrix;->bind(I)V

    .line 92
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->quad:Lcom/google/android/apps/unveil/env/gl/Polygon;

    iget-object v2, p0, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->program:Lcom/google/android/apps/unveil/env/gl/ShaderProgram;

    sget-object v3, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;->VERTEX:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->getAttribute(Lcom/google/android/apps/unveil/env/gl/ShaderProgram$ATTRIBUTE_SLOT;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/env/gl/Polygon;->bind(I)V

    .line 95
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->cF:Lcom/google/android/apps/unveil/env/gl/Utils$Color;

    if-eqz v1, :cond_72

    .line 96
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->program:Lcom/google/android/apps/unveil/env/gl/ShaderProgram;

    sget-object v2, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;->COLOR:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->getUniform(Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->cF:Lcom/google/android/apps/unveil/env/gl/Utils$Color;

    iget v2, v2, Lcom/google/android/apps/unveil/env/gl/Utils$Color;->r:F

    iget-object v3, p0, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->cF:Lcom/google/android/apps/unveil/env/gl/Utils$Color;

    iget v3, v3, Lcom/google/android/apps/unveil/env/gl/Utils$Color;->g:F

    iget-object v4, p0, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->cF:Lcom/google/android/apps/unveil/env/gl/Utils$Color;

    iget v4, v4, Lcom/google/android/apps/unveil/env/gl/Utils$Color;->b:F

    iget-object v5, p0, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->cF:Lcom/google/android/apps/unveil/env/gl/Utils$Color;

    iget v5, v5, Lcom/google/android/apps/unveil/env/gl/Utils$Color;->a:F

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 97
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->quad:Lcom/google/android/apps/unveil/env/gl/Polygon;

    sget-object v2, Lcom/google/android/apps/unveil/env/gl/Polygon$DrawMode;->SOLID:Lcom/google/android/apps/unveil/env/gl/Polygon$DrawMode;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/env/gl/Polygon;->draw(Lcom/google/android/apps/unveil/env/gl/Polygon$DrawMode;)V

    .line 101
    :cond_72
    iget v1, p0, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->lineWidth:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_a

    iget-object v1, p0, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->cL:Lcom/google/android/apps/unveil/env/gl/Utils$Color;

    if-eqz v1, :cond_a

    .line 102
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->program:Lcom/google/android/apps/unveil/env/gl/ShaderProgram;

    sget-object v2, Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;->COLOR:Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/env/gl/ShaderProgram;->getUniform(Lcom/google/android/apps/unveil/env/gl/ShaderProgram$UNIFORM_SLOT;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->cL:Lcom/google/android/apps/unveil/env/gl/Utils$Color;

    iget v2, v2, Lcom/google/android/apps/unveil/env/gl/Utils$Color;->r:F

    iget-object v3, p0, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->cL:Lcom/google/android/apps/unveil/env/gl/Utils$Color;

    iget v3, v3, Lcom/google/android/apps/unveil/env/gl/Utils$Color;->g:F

    iget-object v4, p0, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->cL:Lcom/google/android/apps/unveil/env/gl/Utils$Color;

    iget v4, v4, Lcom/google/android/apps/unveil/env/gl/Utils$Color;->b:F

    iget-object v5, p0, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->cL:Lcom/google/android/apps/unveil/env/gl/Utils$Color;

    iget v5, v5, Lcom/google/android/apps/unveil/env/gl/Utils$Color;->a:F

    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 103
    iget v1, p0, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->lineWidth:F

    invoke-static {v1}, Landroid/opengl/GLES20;->glLineWidth(F)V

    .line 104
    iget-object v1, p0, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->quad:Lcom/google/android/apps/unveil/env/gl/Polygon;

    sget-object v2, Lcom/google/android/apps/unveil/env/gl/Polygon$DrawMode;->OUTLINE:Lcom/google/android/apps/unveil/env/gl/Polygon$DrawMode;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/unveil/env/gl/Polygon;->draw(Lcom/google/android/apps/unveil/env/gl/Polygon$DrawMode;)V

    goto/16 :goto_a
.end method

.method public setActive(Z)V
    .registers 2
    .parameter "isActive"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->isActive:Z

    .line 64
    return-void
.end method

.method public setFillColor(Lcom/google/android/apps/unveil/env/gl/Utils$Color;)V
    .registers 2
    .parameter "fillColor"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->cF:Lcom/google/android/apps/unveil/env/gl/Utils$Color;

    .line 72
    return-void
.end method

.method public setLineColor(Lcom/google/android/apps/unveil/env/gl/Utils$Color;)V
    .registers 2
    .parameter "lineColor"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->cL:Lcom/google/android/apps/unveil/env/gl/Utils$Color;

    .line 68
    return-void
.end method

.method public setProgram(Lcom/google/android/apps/unveil/env/gl/ShaderProgram;)V
    .registers 2
    .parameter "program"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/gl/BoundingBox;->program:Lcom/google/android/apps/unveil/env/gl/ShaderProgram;

    .line 76
    return-void
.end method
