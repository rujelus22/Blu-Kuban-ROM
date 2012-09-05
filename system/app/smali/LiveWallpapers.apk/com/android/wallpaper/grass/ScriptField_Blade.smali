.class public Lcom/android/wallpaper/grass/ScriptField_Blade;
.super Landroid/renderscript/Script$FieldBase;
.source "ScriptField_Blade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wallpaper/grass/ScriptField_Blade$Item;
    }
.end annotation


# instance fields
.field private mIOBuffer:Landroid/renderscript/FieldPacker;

.field private mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;I)V
    .registers 4
    .parameter "rs"
    .parameter "count"

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 73
    iput-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    .line 74
    iput-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 75
    invoke-static {p1}, Lcom/android/wallpaper/grass/ScriptField_Blade;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mElement:Landroid/renderscript/Element;

    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/android/wallpaper/grass/ScriptField_Blade;->init(Landroid/renderscript/RenderScript;I)V

    .line 77
    return-void
.end method

.method private copyToArray(Lcom/android/wallpaper/grass/ScriptField_Blade$Item;I)V
    .registers 5
    .parameter "i"
    .parameter "index"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v0, :cond_15

    new-instance v0, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/wallpaper/grass/ScriptField_Blade;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    mul-int/lit8 v1, v1, 0x34

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 104
    :cond_15
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v1, p2, 0x34

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 105
    iget-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-direct {p0, p1, v0}, Lcom/android/wallpaper/grass/ScriptField_Blade;->copyToArrayLocal(Lcom/android/wallpaper/grass/ScriptField_Blade$Item;Landroid/renderscript/FieldPacker;)V

    .line 106
    return-void
.end method

.method private copyToArrayLocal(Lcom/android/wallpaper/grass/ScriptField_Blade$Item;Landroid/renderscript/FieldPacker;)V
    .registers 4
    .parameter "i"
    .parameter "fp"

    .prologue
    .line 87
    iget v0, p1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->angle:F

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 88
    iget v0, p1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->size:I

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addI32(I)V

    .line 89
    iget v0, p1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->xPos:F

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 90
    iget v0, p1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->yPos:F

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 91
    iget v0, p1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->offset:F

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 92
    iget v0, p1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->scale:F

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 93
    iget v0, p1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->lengthX:F

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 94
    iget v0, p1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->lengthY:F

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 95
    iget v0, p1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->hardness:F

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 96
    iget v0, p1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->h:F

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 97
    iget v0, p1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->s:F

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 98
    iget v0, p1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->b:F

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 99
    iget v0, p1, Lcom/android/wallpaper/grass/ScriptField_Blade$Item;->turbulencex:F

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addF32(F)V

    .line 100
    return-void
.end method

.method public static createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 4
    .parameter "rs"

    .prologue
    .line 55
    new-instance v0, Landroid/renderscript/Element$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 56
    .local v0, eb:Landroid/renderscript/Element$Builder;
    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "angle"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 57
    invoke-static {p0}, Landroid/renderscript/Element;->I32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "size"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 58
    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "xPos"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 59
    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "yPos"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 60
    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "offset"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 61
    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "scale"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 62
    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "lengthX"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 63
    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "lengthY"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 64
    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "hardness"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 65
    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "h"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 66
    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "s"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 67
    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "b"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 68
    invoke-static {p0}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "turbulencex"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 69
    invoke-virtual {v0}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public declared-synchronized copyAll()V
    .registers 5

    .prologue
    .line 386
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, ct:I
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    array-length v1, v1

    if-ge v0, v1, :cond_11

    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, v0}, Lcom/android/wallpaper/grass/ScriptField_Blade;->copyToArray(Lcom/android/wallpaper/grass/ScriptField_Blade$Item;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 387
    :cond_11
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mAllocation:Landroid/renderscript/Allocation;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-virtual {v1, v2, v3}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V
    :try_end_19
    .catchall {:try_start_2 .. :try_end_19} :catchall_1b

    .line 388
    monitor-exit p0

    return-void

    .line 386
    :catchall_1b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized set(Lcom/android/wallpaper/grass/ScriptField_Blade$Item;IZ)V
    .registers 6
    .parameter "i"
    .parameter "index"
    .parameter "copyNow"

    .prologue
    .line 109
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    if-nez v1, :cond_11

    invoke-virtual {p0}, Lcom/android/wallpaper/grass/ScriptField_Blade;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    iput-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    .line 110
    :cond_11
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mItemArray:[Lcom/android/wallpaper/grass/ScriptField_Blade$Item;

    aput-object p1, v1, p2

    .line 111
    if-eqz p3, :cond_29

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/wallpaper/grass/ScriptField_Blade;->copyToArray(Lcom/android/wallpaper/grass/ScriptField_Blade$Item;I)V

    .line 113
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x34

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 114
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-direct {p0, p1, v0}, Lcom/android/wallpaper/grass/ScriptField_Blade;->copyToArrayLocal(Lcom/android/wallpaper/grass/ScriptField_Blade$Item;Landroid/renderscript/FieldPacker;)V

    .line 115
    iget-object v1, p0, Lcom/android/wallpaper/grass/ScriptField_Blade;->mAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 118
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_29
    monitor-exit p0

    return-void

    .line 109
    :catchall_2b
    move-exception v1

    monitor-exit p0

    throw v1
.end method
