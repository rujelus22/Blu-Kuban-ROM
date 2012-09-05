.class public Lcom/android/ex/carousel/ScriptField_ProgramStore_s;
.super Landroid/renderscript/Script$FieldBase;
.source "ScriptField_ProgramStore_s.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;
    }
.end annotation


# instance fields
.field private mIOBuffer:Landroid/renderscript/FieldPacker;

.field private mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;I)V
    .registers 4
    .parameter "rs"
    .parameter "count"

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    .line 34
    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 35
    invoke-static {p1}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mElement:Landroid/renderscript/Element;

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->init(Landroid/renderscript/RenderScript;I)V

    .line 37
    return-void
.end method

.method private copyToArray(Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;I)V
    .registers 5
    .parameter "i"
    .parameter "index"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    if-nez v0, :cond_15

    new-instance v0, Landroid/renderscript/FieldPacker;

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    iput-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 52
    :cond_15
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    mul-int/lit8 v1, p2, 0x4

    invoke-virtual {v0, v1}, Landroid/renderscript/FieldPacker;->reset(I)V

    .line 53
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mIOBuffer:Landroid/renderscript/FieldPacker;

    invoke-direct {p0, p1, v0}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->copyToArrayLocal(Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;Landroid/renderscript/FieldPacker;)V

    .line 54
    return-void
.end method

.method private copyToArrayLocal(Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;Landroid/renderscript/FieldPacker;)V
    .registers 4
    .parameter "i"
    .parameter "fp"

    .prologue
    .line 47
    iget-object v0, p1, Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;->programStore:Landroid/renderscript/ProgramStore;

    invoke-virtual {p2, v0}, Landroid/renderscript/FieldPacker;->addObj(Landroid/renderscript/BaseObj;)V

    .line 48
    return-void
.end method

.method public static createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;
    .registers 4
    .parameter "rs"

    .prologue
    .line 27
    new-instance v0, Landroid/renderscript/Element$Builder;

    invoke-direct {v0, p0}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    .line 28
    .local v0, eb:Landroid/renderscript/Element$Builder;
    invoke-static {p0}, Landroid/renderscript/Element;->PROGRAM_STORE(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "programStore"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 29
    invoke-virtual {v0}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public declared-synchronized get(I)Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;
    .registers 3
    .parameter "index"

    .prologue
    .line 69
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 70
    :goto_6
    monitor-exit p0

    return-object v0

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    aget-object v0, v0, p1
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_d

    goto :goto_6

    .line 69
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set(Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;IZ)V
    .registers 6
    .parameter "i"
    .parameter "index"
    .parameter "copyNow"

    .prologue
    .line 57
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    if-nez v1, :cond_11

    invoke-virtual {p0}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    new-array v1, v1, [Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    iput-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    .line 58
    :cond_11
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mItemArray:[Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;

    aput-object p1, v1, p2

    .line 59
    if-eqz p3, :cond_28

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->copyToArray(Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;I)V

    .line 61
    new-instance v0, Landroid/renderscript/FieldPacker;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/renderscript/FieldPacker;-><init>(I)V

    .line 62
    .local v0, fp:Landroid/renderscript/FieldPacker;
    invoke-direct {p0, p1, v0}, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->copyToArrayLocal(Lcom/android/ex/carousel/ScriptField_ProgramStore_s$Item;Landroid/renderscript/FieldPacker;)V

    .line 63
    iget-object v1, p0, Lcom/android/ex/carousel/ScriptField_ProgramStore_s;->mAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v1, p2, v0}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 66
    .end local v0           #fp:Landroid/renderscript/FieldPacker;
    :cond_28
    monitor-exit p0

    return-void

    .line 57
    :catchall_2a
    move-exception v1

    monitor-exit p0

    throw v1
.end method
