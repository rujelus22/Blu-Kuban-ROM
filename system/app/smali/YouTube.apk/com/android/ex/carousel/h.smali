.class public final Lcom/android/ex/carousel/h;
.super Landroid/renderscript/Script$FieldBase;
.source "SourceFile"


# instance fields
.field private a:[Lcom/android/ex/carousel/i;

.field private b:Landroid/renderscript/FieldPacker;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;I)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 72
    iput-object v0, p0, Lcom/android/ex/carousel/h;->a:[Lcom/android/ex/carousel/i;

    .line 73
    iput-object v0, p0, Lcom/android/ex/carousel/h;->b:Landroid/renderscript/FieldPacker;

    .line 74
    new-instance v0, Landroid/renderscript/Element$Builder;

    invoke-direct {v0, p1}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    invoke-static {p1}, Landroid/renderscript/Element;->ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "texture"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    invoke-static {p1}, Landroid/renderscript/Element;->ALLOCATION(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "detailTexture"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    invoke-static {p1}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "detailTextureOffset"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    invoke-static {p1}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "detailLineOffset"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    invoke-static {p1}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "detailTexturePosition"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;I)Landroid/renderscript/Element$Builder;

    invoke-static {p1}, Landroid/renderscript/Element;->MESH(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "geometry"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    invoke-static {p1}, Landroid/renderscript/Element;->MATRIX_4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "matrix"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    invoke-static {p1}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "textureState"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    invoke-static {p1}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "detailTextureState"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    invoke-static {p1}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "geometryState"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    invoke-static {p1}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "cardVisible"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    invoke-static {p1}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "detailVisible"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    invoke-static {p1}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "shouldPrefetch"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    invoke-static {p1}, Landroid/renderscript/Element;->U32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "#padding_1"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    invoke-static {p1}, Landroid/renderscript/Element;->I64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "textureTimeStamp"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    invoke-static {p1}, Landroid/renderscript/Element;->I64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "detailTextureTimeStamp"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    invoke-static {p1}, Landroid/renderscript/Element;->I64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "geometryTimeStamp"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    invoke-virtual {v0}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/carousel/h;->mElement:Landroid/renderscript/Element;

    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/android/ex/carousel/h;->init(Landroid/renderscript/RenderScript;I)V

    .line 76
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/android/ex/carousel/i;
    .registers 3
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/ex/carousel/h;->a:[Lcom/android/ex/carousel/i;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 122
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/android/ex/carousel/h;->a:[Lcom/android/ex/carousel/i;

    aget-object v0, v0, p1

    goto :goto_5
.end method

.method public final a(Lcom/android/ex/carousel/i;IZ)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/ex/carousel/h;->a:[Lcom/android/ex/carousel/i;

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/android/ex/carousel/h;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    new-array v0, v0, [Lcom/android/ex/carousel/i;

    iput-object v0, p0, Lcom/android/ex/carousel/h;->a:[Lcom/android/ex/carousel/i;

    .line 112
    :cond_10
    iget-object v0, p0, Lcom/android/ex/carousel/h;->a:[Lcom/android/ex/carousel/i;

    aput-object p1, v0, p2

    .line 113
    return-void
.end method

.method public final b(I)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 457
    iget-object v0, p0, Lcom/android/ex/carousel/h;->a:[Lcom/android/ex/carousel/i;

    if-eqz v0, :cond_18

    .line 458
    iget-object v0, p0, Lcom/android/ex/carousel/h;->a:[Lcom/android/ex/carousel/i;

    array-length v0, v0

    .line 459
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 460
    if-ne p1, v0, :cond_f

    .line 468
    :cond_e
    :goto_e
    return-void

    .line 461
    :cond_f
    new-array v0, p1, [Lcom/android/ex/carousel/i;

    .line 462
    iget-object v2, p0, Lcom/android/ex/carousel/h;->a:[Lcom/android/ex/carousel/i;

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 463
    iput-object v0, p0, Lcom/android/ex/carousel/h;->a:[Lcom/android/ex/carousel/i;

    .line 466
    :cond_18
    iget-object v0, p0, Lcom/android/ex/carousel/h;->mAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->resize(I)V

    .line 467
    iget-object v0, p0, Lcom/android/ex/carousel/h;->b:Landroid/renderscript/FieldPacker;

    if-eqz v0, :cond_e

    new-instance v0, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/h;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    mul-int/lit16 v1, v1, 0xa0

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/ex/carousel/h;->b:Landroid/renderscript/FieldPacker;

    goto :goto_e
.end method
