.class public Lcom/android/wallpaper/galaxy/ScriptField_Particle;
.super Landroid/renderscript/Script$FieldBase;
.source "ScriptField_Particle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wallpaper/galaxy/ScriptField_Particle$Item;
    }
.end annotation


# instance fields
.field private mIOBuffer:Landroid/renderscript/FieldPacker;

.field private mItemArray:[Lcom/android/wallpaper/galaxy/ScriptField_Particle$Item;


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;I)V
    .registers 4
    .parameter "rs"
    .parameter "count"

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Landroid/renderscript/Script$FieldBase;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/android/wallpaper/galaxy/ScriptField_Particle;->mItemArray:[Lcom/android/wallpaper/galaxy/ScriptField_Particle$Item;

    .line 55
    iput-object v0, p0, Lcom/android/wallpaper/galaxy/ScriptField_Particle;->mIOBuffer:Landroid/renderscript/FieldPacker;

    .line 56
    invoke-static {p1}, Lcom/android/wallpaper/galaxy/ScriptField_Particle;->createElement(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wallpaper/galaxy/ScriptField_Particle;->mElement:Landroid/renderscript/Element;

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/android/wallpaper/galaxy/ScriptField_Particle;->init(Landroid/renderscript/RenderScript;I)V

    .line 58
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
    invoke-static {p0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "color"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 48
    invoke-static {p0}, Landroid/renderscript/Element;->F32_3(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "position"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 49
    invoke-static {p0}, Landroid/renderscript/Element;->U32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v1

    const-string v2, "#padding_1"

    invoke-virtual {v0, v1, v2}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    .line 50
    invoke-virtual {v0}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    move-result-object v1

    return-object v1
.end method
