.class public Lcom/google/android/opengl/carousel/Cylinder;
.super Ljava/lang/Object;
.source "Cylinder.java"


# instance fields
.field mCenter:Lcom/google/android/opengl/common/Float3;

.field mRadius:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/google/android/opengl/common/Float3;

    invoke-direct {v0}, Lcom/google/android/opengl/common/Float3;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/Cylinder;->mCenter:Lcom/google/android/opengl/common/Float3;

    .line 11
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/android/opengl/carousel/Cylinder;->mRadius:F

    .line 14
    return-void
.end method

.method public constructor <init>(F)V
    .registers 3
    .parameter "r"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lcom/google/android/opengl/common/Float3;

    invoke-direct {v0}, Lcom/google/android/opengl/common/Float3;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/Cylinder;->mCenter:Lcom/google/android/opengl/common/Float3;

    .line 11
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/android/opengl/carousel/Cylinder;->mRadius:F

    .line 17
    iput p1, p0, Lcom/google/android/opengl/carousel/Cylinder;->mRadius:F

    .line 18
    return-void
.end method
