.class public Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;
.super Ljava/lang/Object;
.source "ScriptField_VpConsts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wallpaper/galaxy/ScriptField_VpConsts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# static fields
.field public static final sizeof:I = 0x80


# instance fields
.field MVP:Landroid/renderscript/Matrix4f;

.field Proj:Landroid/renderscript/Matrix4f;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;->Proj:Landroid/renderscript/Matrix4f;

    .line 38
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/android/wallpaper/galaxy/ScriptField_VpConsts$Item;->MVP:Landroid/renderscript/Matrix4f;

    .line 39
    return-void
.end method
