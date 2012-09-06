.class public Lcom/google/android/apps/unveil/env/gl/PVMMatrix;
.super Ljava/lang/Object;
.source "PVMMatrix.java"


# static fields
.field private static final ROWS:I = 0x4


# instance fields
.field private final buffer:[F


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_e

    iput-object v0, p0, Lcom/google/android/apps/unveil/env/gl/PVMMatrix;->buffer:[F

    return-void

    nop

    :array_e
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private set(IIF)V
    .registers 6
    .parameter "i"
    .parameter "j"
    .parameter "v"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/gl/PVMMatrix;->buffer:[F

    mul-int/lit8 v1, p1, 0x4

    add-int/2addr v1, p2

    aput p3, v0, v1

    .line 31
    return-void
.end method


# virtual methods
.method public bind(I)V
    .registers 5
    .parameter "location"

    .prologue
    const/4 v2, 0x0

    .line 48
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/apps/unveil/env/gl/PVMMatrix;->buffer:[F

    invoke-static {p1, v0, v2, v1, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 49
    return-void
.end method

.method public setScale(FF)V
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, v0, v0, p1}, Lcom/google/android/apps/unveil/env/gl/PVMMatrix;->set(IIF)V

    .line 35
    invoke-direct {p0, v1, v1, p2}, Lcom/google/android/apps/unveil/env/gl/PVMMatrix;->set(IIF)V

    .line 36
    return-void
.end method

.method public setTranslate(FF)V
    .registers 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x3

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, p1}, Lcom/google/android/apps/unveil/env/gl/PVMMatrix;->set(IIF)V

    .line 40
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0, p2}, Lcom/google/android/apps/unveil/env/gl/PVMMatrix;->set(IIF)V

    .line 41
    return-void
.end method
