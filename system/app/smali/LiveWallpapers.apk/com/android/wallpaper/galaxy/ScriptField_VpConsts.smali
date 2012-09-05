.class public Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;
.super Landroid/renderscript/Script$FieldBase;
.source "ScriptField_VpConsts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;
    }
.end annotation


# instance fields
.field private mIOBuffer:Landroid/renderscript/FieldPacker;

.field private mItemArray:[Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;I)V
    .registers 4
    .parameter "rs"
    .parameter "count"

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mItemArray:[Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;

    .line 54
    iput-object v0, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 55
    invoke-static {p1}, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mElement:Landroid/renderscript/Element;

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->init(Landroid/renderscript/RenderScript;I)V

    .line 57
    return-void
.end method

.method private copyToArray(Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;I)V
    .registers 5
    .parameter "i"
    .parameter "index"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v0, :cond_15

    new-instance v0, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    mul-int/lit16 v1, v1, 0x80

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 73
    :cond_15
    iget-object v0, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit16 v1, p2, 0x80

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 74
    iget-object v0, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-direct {p0, p1, v0}, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->copyToArrayLocal(Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;Landroid/renderscript/FieldPacker;)V

    .line 75
    return-void
.end method

.method private copyToArrayLocal(Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;Landroid/renderscript/FieldPacker;)V
    .registers 4
    .parameter "i"
    .parameter "fp"

    .prologue
    .line 67
    iget-object v0, p1, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;->Proj:Landroid/renderscript/Matrix4f;

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

    .line 68
    iget-object v0, p1, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;->MVP:Landroid/renderscript/Matrix4f;

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addMatrix(Landroid/renderscript/Matrix4f;)V

    .line 69
    return-void
.end method

.method public static createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 4
    .parameter "rs"

    .prologue
    .line 46
    new-instance v0, Landroid/renderscript/Element$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 47
    .local v0, eb:Landroid/renderscript/Element$Builder;
    invoke-static {p0}, Landroid/renderscript/Element;->MATRIX_4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "Proj"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 48
    invoke-static {p0}, Landroid/renderscript/Element;->MATRIX_4X4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "MVP"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 49
    invoke-virtual {v0}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public declared-synchronized set(Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;IZ)V
    .registers 6
    .parameter "i"
    .parameter "index"
    .parameter "copyNow"

    .prologue
    .line 78
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mItemArray:[Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;

    if-nez v1, :cond_11

    invoke-virtual {p0}, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;

    iput-object v1, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mItemArray:[Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;

    .line 79
    :cond_11
    iget-object v1, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mItemArray:[Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;

    aput-object p1, v1, p2

    .line 80
    if-eqz p3, :cond_29

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->copyToArray(Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;I)V

    .line 82
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 83
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-direct {p0, p1, v0}, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->copyToArrayLocal(Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;Landroid/renderscript/FieldPacker;)V

    .line 84
    iget-object v1, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;->mAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 87
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_29
    monitor-exit p0

    return-void

    .line 78
    :catchall_2b
    move-exception v1

    monitor-exit p0

    throw v1
.end method
