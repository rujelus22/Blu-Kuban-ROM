.class Lcom/google/android/opengl/carousel/Plane;
.super Ljava/lang/Object;
.source "Plane.java"


# instance fields
.field mConstant:F

.field mNormal:Lcom/google/android/opengl/common/Float3;

.field mPoint:Lcom/google/android/opengl/common/Float3;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/google/android/opengl/common/Float3;

    invoke-direct {v0}, Lcom/google/android/opengl/common/Float3;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/Plane;->mPoint:Lcom/google/android/opengl/common/Float3;

    .line 11
    new-instance v0, Lcom/google/android/opengl/common/Float3;

    const/high16 v1, 0x3f80

    invoke-direct {v0, v2, v1, v2}, Lcom/google/android/opengl/common/Float3;-><init>(FFF)V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/Plane;->mNormal:Lcom/google/android/opengl/common/Float3;

    .line 15
    return-void
.end method
