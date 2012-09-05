.class public final Lcom/android/ex/carousel/l;
.super Landroid/renderscript/Script$FieldBase;
.source "SourceFile"


# instance fields
.field private a:[Lcom/android/ex/carousel/m;

.field private b:Landroid/renderscript/FieldPacker;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/android/ex/carousel/l;->a:[Lcom/android/ex/carousel/m;

    .line 34
    iput-object v0, p0, Lcom/android/ex/carousel/l;->b:Landroid/renderscript/FieldPacker;

    .line 35
    new-instance v0, Landroid/renderscript/Element$Builder;

    invoke-direct {v0, p1}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    invoke-static {p1}, Landroid/renderscript/Element;->PROGRAM_STORE(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "programStore"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    invoke-virtual {v0}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/carousel/l;->mElement:Landroid/renderscript/Element;

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/android/ex/carousel/l;->init(Landroid/renderscript/RenderScript;I)V

    .line 37
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/android/ex/carousel/m;
    .registers 3
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/ex/carousel/l;->a:[Lcom/android/ex/carousel/m;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .line 64
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/android/ex/carousel/l;->a:[Lcom/android/ex/carousel/m;

    aget-object v0, v0, p1

    goto :goto_5
.end method

.method public final a(Lcom/android/ex/carousel/m;IZ)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/ex/carousel/l;->a:[Lcom/android/ex/carousel/m;

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/android/ex/carousel/l;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    new-array v0, v0, [Lcom/android/ex/carousel/m;

    iput-object v0, p0, Lcom/android/ex/carousel/l;->a:[Lcom/android/ex/carousel/m;

    .line 54
    :cond_10
    iget-object v0, p0, Lcom/android/ex/carousel/l;->a:[Lcom/android/ex/carousel/m;

    aput-object p1, v0, p2

    .line 55
    return-void
.end method
