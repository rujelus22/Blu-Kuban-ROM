.class public Lcom/anddoes/launcher/PagedViewCellLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field e:I

.field f:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 510
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 511
    iput v1, p0, Lcom/anddoes/launcher/PagedViewCellLayout$LayoutParams;->c:I

    .line 512
    iput v1, p0, Lcom/anddoes/launcher/PagedViewCellLayout$LayoutParams;->d:I

    .line 513
    return-void
.end method

.method public constructor <init>(II)V
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 536
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 537
    iput p1, p0, Lcom/anddoes/launcher/PagedViewCellLayout$LayoutParams;->a:I

    .line 538
    iput p2, p0, Lcom/anddoes/launcher/PagedViewCellLayout$LayoutParams;->b:I

    .line 539
    iput v1, p0, Lcom/anddoes/launcher/PagedViewCellLayout$LayoutParams;->c:I

    .line 540
    iput v1, p0, Lcom/anddoes/launcher/PagedViewCellLayout$LayoutParams;->d:I

    .line 541
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 516
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 517
    iput v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout$LayoutParams;->c:I

    .line 518
    iput v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout$LayoutParams;->d:I

    .line 519
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 522
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 523
    iput v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout$LayoutParams;->c:I

    .line 524
    iput v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout$LayoutParams;->d:I

    .line 525
    return-void
.end method


# virtual methods
.method public final a(IIIIII)V
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 546
    iget v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout$LayoutParams;->c:I

    .line 547
    iget v1, p0, Lcom/anddoes/launcher/PagedViewCellLayout$LayoutParams;->d:I

    .line 548
    iget v2, p0, Lcom/anddoes/launcher/PagedViewCellLayout$LayoutParams;->a:I

    .line 549
    iget v3, p0, Lcom/anddoes/launcher/PagedViewCellLayout$LayoutParams;->b:I

    .line 551
    mul-int v4, v0, p1

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v0, p3

    add-int/2addr v0, v4

    .line 552
    iget v4, p0, Lcom/anddoes/launcher/PagedViewCellLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v0, v4

    iget v4, p0, Lcom/anddoes/launcher/PagedViewCellLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v4

    .line 551
    iput v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout$LayoutParams;->width:I

    .line 553
    mul-int v0, v1, p2

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, p4

    add-int/2addr v0, v1

    .line 554
    iget v1, p0, Lcom/anddoes/launcher/PagedViewCellLayout$LayoutParams;->topMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/anddoes/launcher/PagedViewCellLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v0, v1

    .line 553
    iput v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout$LayoutParams;->height:I

    .line 557
    add-int v0, p1, p3

    mul-int/2addr v0, v2

    add-int/2addr v0, p5

    iget v1, p0, Lcom/anddoes/launcher/PagedViewCellLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout$LayoutParams;->e:I

    .line 558
    add-int v0, p2, p4

    mul-int/2addr v0, v3

    add-int/2addr v0, p6

    iget v1, p0, Lcom/anddoes/launcher/PagedViewCellLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/anddoes/launcher/PagedViewCellLayout$LayoutParams;->f:I

    .line 563
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/anddoes/launcher/PagedViewCellLayout$LayoutParams;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/anddoes/launcher/PagedViewCellLayout$LayoutParams;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 575
    iget v1, p0, Lcom/anddoes/launcher/PagedViewCellLayout$LayoutParams;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/anddoes/launcher/PagedViewCellLayout$LayoutParams;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 574
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
