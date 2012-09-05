.class public final Lcom/android/ex/carousel/j;
.super Landroid/renderscript/Script$FieldBase;
.source "SourceFile"


# instance fields
.field private a:[Lcom/android/ex/carousel/k;

.field private b:Landroid/renderscript/FieldPacker;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;I)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/android/ex/carousel/j;->a:[Lcom/android/ex/carousel/k;

    .line 36
    iput-object v0, p0, Lcom/android/ex/carousel/j;->b:Landroid/renderscript/FieldPacker;

    .line 37
    new-instance v0, Landroid/renderscript/Element$Builder;

    invoke-direct {v0, p1}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    invoke-static {p1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "fadeAmount"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    invoke-static {p1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "overallAlpha"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    invoke-virtual {v0}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/carousel/j;->mElement:Landroid/renderscript/Element;

    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/ex/carousel/j;->init(Landroid/renderscript/RenderScript;I)V

    .line 39
    return-void
.end method
