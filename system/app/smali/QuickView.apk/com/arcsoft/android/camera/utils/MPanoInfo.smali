.class public Lcom/arcsoft/android/camera/utils/MPanoInfo;
.super Ljava/lang/Object;
.source "MPanoInfo.java"


# instance fields
.field public anchor:Landroid/graphics/Point;

.field public direction:I

.field public offset:Landroid/graphics/Point;

.field public selected:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/arcsoft/android/camera/utils/MPanoInfo;->anchor:Landroid/graphics/Point;

    .line 34
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/arcsoft/android/camera/utils/MPanoInfo;->offset:Landroid/graphics/Point;

    .line 35
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .registers 8
    .parameter "anchorX"
    .parameter "anchorY"
    .parameter "offsetX"
    .parameter "offsetY"
    .parameter "direct"
    .parameter "sel"

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/arcsoft/android/camera/utils/MPanoInfo;->anchor:Landroid/graphics/Point;

    .line 46
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p3, p4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/arcsoft/android/camera/utils/MPanoInfo;->offset:Landroid/graphics/Point;

    .line 47
    iput p5, p0, Lcom/arcsoft/android/camera/utils/MPanoInfo;->direction:I

    .line 48
    iput p6, p0, Lcom/arcsoft/android/camera/utils/MPanoInfo;->selected:I

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Point;Landroid/graphics/Point;II)V
    .registers 8
    .parameter "ptAnchor"
    .parameter "ptOffset"
    .parameter "direct"
    .parameter "sel"

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/arcsoft/android/camera/utils/MPanoInfo;->anchor:Landroid/graphics/Point;

    .line 39
    new-instance v0, Landroid/graphics/Point;

    iget v1, p2, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/arcsoft/android/camera/utils/MPanoInfo;->offset:Landroid/graphics/Point;

    .line 40
    iput p3, p0, Lcom/arcsoft/android/camera/utils/MPanoInfo;->direction:I

    .line 41
    iput p4, p0, Lcom/arcsoft/android/camera/utils/MPanoInfo;->selected:I

    .line 42
    return-void
.end method
