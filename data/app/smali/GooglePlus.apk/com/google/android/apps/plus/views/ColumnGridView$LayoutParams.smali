.class public Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "ColumnGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/ColumnGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field column:I

.field id:J

.field public isBoxStart:Z

.field public majorSpan:I

.field public minorSpan:I

.field orientation:I

.field position:I

.field viewType:I


# direct methods
.method public constructor <init>(II)V
    .registers 7
    .parameter "orientation"
    .parameter "size"

    .prologue
    const/4 v3, -0x3

    const/4 v0, -0x1

    const/4 v2, 0x1

    .line 2501
    if-ne p1, v2, :cond_20

    if-ne p2, v3, :cond_1e

    move v1, v0

    :goto_8
    if-ne p1, v2, :cond_22

    move p2, v0

    .end local p2
    :cond_b
    :goto_b
    invoke-direct {p0, v1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2471
    iput v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->majorSpan:I

    .line 2474
    iput v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->minorSpan:I

    .line 2486
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->id:J

    .line 2495
    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->isBoxStart:Z

    .line 2498
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->orientation:I

    .line 2506
    iput p1, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->orientation:I

    .line 2507
    return-void

    .restart local p2
    :cond_1e
    move v1, p2

    .line 2501
    goto :goto_8

    :cond_20
    move v1, v0

    goto :goto_8

    :cond_22
    if-ne p2, v3, :cond_b

    move p2, v0

    goto :goto_b
.end method

.method public constructor <init>(IIII)V
    .registers 5
    .parameter "orientation"
    .parameter "size"
    .parameter "minorSpan"
    .parameter "majorSpan"

    .prologue
    .line 2510
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;-><init>(II)V

    .line 2512
    iput p3, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->minorSpan:I

    .line 2513
    iput p4, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->majorSpan:I

    .line 2514
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .parameter "c"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 2517
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2471
    iput v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->majorSpan:I

    .line 2474
    iput v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->minorSpan:I

    .line 2486
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->id:J

    .line 2495
    iput-boolean v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->isBoxStart:Z

    .line 2498
    iput v5, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->orientation:I

    .line 2519
    sget-object v1, Lcom/google/android/apps/plus/R$styleable;->ColumnGridView_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2520
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->minorSpan:I

    .line 2521
    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->majorSpan:I

    .line 2522
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->orientation:I

    .line 2524
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2526
    iget v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->orientation:I

    if-ne v1, v3, :cond_59

    .line 2527
    iget v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->height:I

    if-eq v1, v4, :cond_58

    .line 2528
    const-string v1, "ColumnGridView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inflation setting LayoutParams height to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - must be MATCH_PARENT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2530
    iput v4, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->height:I

    .line 2539
    :cond_58
    :goto_58
    return-void

    .line 2533
    :cond_59
    iget v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->width:I

    if-eq v1, v4, :cond_58

    .line 2534
    const-string v1, "ColumnGridView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inflation setting LayoutParams width to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - must be MATCH_PARENT"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2536
    iput v4, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->width:I

    goto :goto_58
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .parameter "other"

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 2542
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2471
    iput v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->majorSpan:I

    .line 2474
    iput v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->minorSpan:I

    .line 2486
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->id:J

    .line 2495
    iput-boolean v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->isBoxStart:Z

    .line 2498
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->orientation:I

    .line 2544
    iget v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->orientation:I

    if-ne v0, v2, :cond_3d

    .line 2545
    iget v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->height:I

    if-eq v0, v3, :cond_3c

    .line 2546
    const-string v0, "ColumnGridView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructing LayoutParams with height "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - must be MATCH_PARENT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2548
    iput v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->height:I

    .line 2557
    :cond_3c
    :goto_3c
    return-void

    .line 2551
    :cond_3d
    iget v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->width:I

    if-eq v0, v3, :cond_3c

    .line 2552
    const-string v0, "ColumnGridView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructing LayoutParams with width "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - must be MATCH_PARENT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2554
    iput v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->width:I

    goto :goto_3c
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColumnGridView.LayoutParams: id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " major="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->majorSpan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->minorSpan:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->viewType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " col="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->column:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " boxstart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->isBoxStart:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " orient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutParams;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
