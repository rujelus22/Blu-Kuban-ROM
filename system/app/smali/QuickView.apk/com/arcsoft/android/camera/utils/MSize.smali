.class public Lcom/arcsoft/android/camera/utils/MSize;
.super Ljava/lang/Object;
.source "MSize.java"


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3
    .parameter "cx"
    .parameter "cy"

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/arcsoft/android/camera/utils/MSize;->width:I

    .line 30
    iput p2, p0, Lcom/arcsoft/android/camera/utils/MSize;->height:I

    .line 31
    return-void
.end method
