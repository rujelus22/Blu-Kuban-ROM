.class public Lcom/android/musicvis/ScriptField_Vertex$Item;
.super Ljava/lang/Object;
.source "ScriptField_Vertex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/musicvis/ScriptField_Vertex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field position:Landroid/renderscript/Float2;

.field texture0:Landroid/renderscript/Float2;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    iput-object v0, p0, Lcom/android/musicvis/ScriptField_Vertex$Item;->position:Landroid/renderscript/Float2;

    .line 38
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    iput-object v0, p0, Lcom/android/musicvis/ScriptField_Vertex$Item;->texture0:Landroid/renderscript/Float2;

    .line 39
    return-void
.end method
