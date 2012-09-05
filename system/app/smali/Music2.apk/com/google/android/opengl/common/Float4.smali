.class public final Lcom/google/android/opengl/common/Float4;
.super Ljava/lang/Object;
.source "Float4.java"


# instance fields
.field public w:F

.field public x:F

.field public y:F

.field public z:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public constructor <init>(FFFF)V
    .registers 5
    .parameter "initX"
    .parameter "initY"
    .parameter "initZ"
    .parameter "initW"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/google/android/opengl/common/Float4;->x:F

    .line 14
    iput p2, p0, Lcom/google/android/opengl/common/Float4;->y:F

    .line 15
    iput p3, p0, Lcom/google/android/opengl/common/Float4;->z:F

    .line 16
    iput p4, p0, Lcom/google/android/opengl/common/Float4;->w:F

    .line 17
    return-void
.end method


# virtual methods
.method public times(F)V
    .registers 3
    .parameter "t"

    .prologue
    .line 20
    iget v0, p0, Lcom/google/android/opengl/common/Float4;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/opengl/common/Float4;->x:F

    .line 21
    iget v0, p0, Lcom/google/android/opengl/common/Float4;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/opengl/common/Float4;->y:F

    .line 22
    iget v0, p0, Lcom/google/android/opengl/common/Float4;->z:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/google/android/opengl/common/Float4;->z:F

    .line 23
    return-void
.end method
