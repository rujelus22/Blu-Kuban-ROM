.class public Lcom/sec/android/seccamera/SecCamera$Face;
.super Ljava/lang/Object;
.source "SecCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/seccamera/SecCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Face"
.end annotation


# instance fields
.field public id:I

.field public leftEye:Landroid/graphics/Point;

.field public mouth:Landroid/graphics/Point;

.field public rect:Landroid/graphics/Rect;

.field public rightEye:Landroid/graphics/Point;

.field public score:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1684
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1721
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/seccamera/SecCamera$Face;->id:I

    .line 1730
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera$Face;->leftEye:Landroid/graphics/Point;

    .line 1739
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera$Face;->rightEye:Landroid/graphics/Point;

    .line 1748
    iput-object v1, p0, Lcom/sec/android/seccamera/SecCamera$Face;->mouth:Landroid/graphics/Point;

    .line 1685
    return-void
.end method
