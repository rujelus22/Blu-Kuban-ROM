.class public Lcom/android/launcher2/DragLayer$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/DragLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public customPosition:Z

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 329
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 323
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/DragLayer$LayoutParams;->customPosition:Z

    .line 330
    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    .prologue
    .line 345
    iget v0, p0, Lcom/android/launcher2/DragLayer$LayoutParams;->height:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 337
    iget v0, p0, Lcom/android/launcher2/DragLayer$LayoutParams;->width:I

    return v0
.end method

.method public getX()I
    .registers 2

    .prologue
    .line 353
    iget v0, p0, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    return v0
.end method

.method public getY()I
    .registers 2

    .prologue
    .line 361
    iget v0, p0, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    return v0
.end method

.method public setHeight(I)V
    .registers 2
    .parameter "height"

    .prologue
    .line 341
    iput p1, p0, Lcom/android/launcher2/DragLayer$LayoutParams;->height:I

    .line 342
    return-void
.end method

.method public setWidth(I)V
    .registers 2
    .parameter "width"

    .prologue
    .line 333
    iput p1, p0, Lcom/android/launcher2/DragLayer$LayoutParams;->width:I

    .line 334
    return-void
.end method

.method public setX(I)V
    .registers 2
    .parameter "x"

    .prologue
    .line 349
    iput p1, p0, Lcom/android/launcher2/DragLayer$LayoutParams;->x:I

    .line 350
    return-void
.end method

.method public setY(I)V
    .registers 2
    .parameter "y"

    .prologue
    .line 357
    iput p1, p0, Lcom/android/launcher2/DragLayer$LayoutParams;->y:I

    .line 358
    return-void
.end method
