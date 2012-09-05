.class public final Lcom/google/android/opengl/common/Float2;
.super Ljava/lang/Object;
.source "Float2.java"


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public constructor <init>(FF)V
    .registers 3
    .parameter "initX"
    .parameter "initY"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/google/android/opengl/common/Float2;->x:F

    .line 14
    iput p2, p0, Lcom/google/android/opengl/common/Float2;->y:F

    .line 15
    return-void
.end method


# virtual methods
.method public set(FF)V
    .registers 3
    .parameter "newX"
    .parameter "newY"

    .prologue
    .line 18
    iput p1, p0, Lcom/google/android/opengl/common/Float2;->x:F

    .line 19
    iput p2, p0, Lcom/google/android/opengl/common/Float2;->y:F

    .line 20
    return-void
.end method
