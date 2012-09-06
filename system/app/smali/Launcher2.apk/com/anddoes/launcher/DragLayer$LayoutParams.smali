.class public Lcom/anddoes/launcher/DragLayer$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:Z


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 327
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 321
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anddoes/launcher/DragLayer$LayoutParams;->c:Z

    .line 328
    return-void
.end method


# virtual methods
.method public getHeight()I
    .registers 2

    .prologue
    .line 343
    iget v0, p0, Lcom/anddoes/launcher/DragLayer$LayoutParams;->height:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 335
    iget v0, p0, Lcom/anddoes/launcher/DragLayer$LayoutParams;->width:I

    return v0
.end method

.method public getX()I
    .registers 2

    .prologue
    .line 351
    iget v0, p0, Lcom/anddoes/launcher/DragLayer$LayoutParams;->a:I

    return v0
.end method

.method public getY()I
    .registers 2

    .prologue
    .line 359
    iget v0, p0, Lcom/anddoes/launcher/DragLayer$LayoutParams;->b:I

    return v0
.end method

.method public setHeight(I)V
    .registers 2
    .parameter

    .prologue
    .line 339
    iput p1, p0, Lcom/anddoes/launcher/DragLayer$LayoutParams;->height:I

    .line 340
    return-void
.end method

.method public setWidth(I)V
    .registers 2
    .parameter

    .prologue
    .line 331
    iput p1, p0, Lcom/anddoes/launcher/DragLayer$LayoutParams;->width:I

    .line 332
    return-void
.end method

.method public setX(I)V
    .registers 2
    .parameter

    .prologue
    .line 347
    iput p1, p0, Lcom/anddoes/launcher/DragLayer$LayoutParams;->a:I

    .line 348
    return-void
.end method

.method public setY(I)V
    .registers 2
    .parameter

    .prologue
    .line 355
    iput p1, p0, Lcom/anddoes/launcher/DragLayer$LayoutParams;->b:I

    .line 356
    return-void
.end method
