.class public Landroid/webkit/PointerDevice$PointerState;
.super Ljava/lang/Object;
.source "PointerDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/PointerDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PointerState"
.end annotation


# instance fields
.field public id:I

.field public pressed:Z

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 139
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFrom(Landroid/webkit/PointerDevice$PointerState;)V
    .registers 3
    .parameter "other"

    .prologue
    .line 145
    iget v0, p1, Landroid/webkit/PointerDevice$PointerState;->x:I

    iput v0, p0, Landroid/webkit/PointerDevice$PointerState;->x:I

    .line 146
    iget v0, p1, Landroid/webkit/PointerDevice$PointerState;->y:I

    iput v0, p0, Landroid/webkit/PointerDevice$PointerState;->y:I

    .line 147
    iget v0, p1, Landroid/webkit/PointerDevice$PointerState;->id:I

    iput v0, p0, Landroid/webkit/PointerDevice$PointerState;->id:I

    .line 148
    iget-boolean v0, p1, Landroid/webkit/PointerDevice$PointerState;->pressed:Z

    iput-boolean v0, p0, Landroid/webkit/PointerDevice$PointerState;->pressed:Z

    .line 149
    return-void
.end method

.method public equals(Landroid/webkit/PointerDevice$PointerState;)Z
    .registers 4
    .parameter "other"

    .prologue
    .line 152
    iget v0, p0, Landroid/webkit/PointerDevice$PointerState;->x:I

    iget v1, p1, Landroid/webkit/PointerDevice$PointerState;->x:I

    if-ne v0, v1, :cond_1a

    iget v0, p0, Landroid/webkit/PointerDevice$PointerState;->y:I

    iget v1, p1, Landroid/webkit/PointerDevice$PointerState;->y:I

    if-ne v0, v1, :cond_1a

    iget v0, p0, Landroid/webkit/PointerDevice$PointerState;->id:I

    iget v1, p1, Landroid/webkit/PointerDevice$PointerState;->id:I

    if-ne v0, v1, :cond_1a

    iget-boolean v0, p0, Landroid/webkit/PointerDevice$PointerState;->pressed:Z

    iget-boolean v1, p1, Landroid/webkit/PointerDevice$PointerState;->pressed:Z

    if-ne v0, v1, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method
