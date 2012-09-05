.class public Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;
.super Ljava/lang/Object;
.source "ScriptField_Vertex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wallpaper/grass/ScriptField_Vertex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# static fields
.field public static final sizeof:I = 0x14


# instance fields
.field color:Landroid/renderscript/Short4;

.field position:Landroid/renderscript/Float2;

.field texture0:Landroid/renderscript/Float2;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/renderscript/Short4;

    invoke-direct {v0}, Landroid/renderscript/Short4;-><init>()V

    iput-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;->color:Landroid/renderscript/Short4;

    .line 39
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    iput-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;->position:Landroid/renderscript/Float2;

    .line 40
    new-instance v0, Landroid/renderscript/Float2;

    invoke-direct {v0}, Landroid/renderscript/Float2;-><init>()V

    iput-object v0, p0, Lcom/android/wallpaper/grass/ScriptField_Vertex$Item;->texture0:Landroid/renderscript/Float2;

    .line 41
    return-void
.end method
