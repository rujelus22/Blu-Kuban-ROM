.class public final Lcom/android/ex/carousel/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/renderscript/Allocation;

.field b:Landroid/renderscript/Allocation;

.field c:Landroid/renderscript/Float2;

.field d:Landroid/renderscript/Float2;

.field e:[Landroid/renderscript/Float2;

.field f:Landroid/renderscript/Mesh;

.field g:Landroid/renderscript/Matrix4f;


# direct methods
.method constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    iput-object v0, p0, Lcom/android/ex/carousel/i;->c:Landroid/renderscript/Float2;

    .line 36
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    iput-object v0, p0, Lcom/android/ex/carousel/i;->d:Landroid/renderscript/Float2;

    .line 37
    new-array v0, v3, [Landroid/renderscript/Float2;

    iput-object v0, p0, Lcom/android/ex/carousel/i;->e:[Landroid/renderscript/Float2;

    .line 38
    const/4 v0, 0x0

    :goto_17
    if-ge v0, v3, :cond_25

    .line 39
    iget-object v1, p0, Lcom/android/ex/carousel/i;->e:[Landroid/renderscript/Float2;

    new-instance v2, Landroid/renderscript/Float2;

    invoke-direct {v2}, Landroid/renderscript/Float2;-><init>()V

    aput-object v2, v1, v0

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 42
    :cond_25
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/android/ex/carousel/i;->g:Landroid/renderscript/Matrix4f;

    .line 43
    return-void
.end method
