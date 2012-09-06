.class final Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;
.super Ljava/lang/Object;
.source "ColumnGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/plus/views/ColumnGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LayoutRecord"
.end annotation


# instance fields
.field public column:I

.field public id:J

.field private mMargins:[I

.field public size:I

.field public span:I


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    .line 2352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2354
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->id:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/plus/views/ColumnGridView$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 2352
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;-><init>()V

    return-void
.end method

.method private final ensureMargins()V
    .registers 2

    .prologue
    .line 2360
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->mMargins:[I

    if-nez v0, :cond_c

    .line 2363
    iget v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->span:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->mMargins:[I

    .line 2365
    :cond_c
    return-void
.end method


# virtual methods
.method public final getMarginAfter(I)I
    .registers 4
    .parameter "col"

    .prologue
    .line 2375
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->mMargins:[I

    if-nez v0, :cond_6

    .line 2376
    const/4 v0, 0x0

    .line 2378
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->mMargins:[I

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    goto :goto_5
.end method

.method public final getMarginBefore(I)I
    .registers 4
    .parameter "col"

    .prologue
    .line 2368
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->mMargins:[I

    if-nez v0, :cond_6

    .line 2369
    const/4 v0, 0x0

    .line 2371
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->mMargins:[I

    mul-int/lit8 v1, p1, 0x2

    aget v0, v0, v1

    goto :goto_5
.end method

.method public final setMarginAfter(II)V
    .registers 5
    .parameter "col"
    .parameter "margin"

    .prologue
    .line 2390
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->mMargins:[I

    if-nez v0, :cond_7

    if-nez p2, :cond_7

    .line 2395
    :goto_6
    return-void

    .line 2393
    :cond_7
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->ensureMargins()V

    .line 2394
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->mMargins:[I

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aput p2, v0, v1

    goto :goto_6
.end method

.method public final setMarginBefore(II)V
    .registers 5
    .parameter "col"
    .parameter "margin"

    .prologue
    .line 2382
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->mMargins:[I

    if-nez v0, :cond_7

    if-nez p2, :cond_7

    .line 2387
    :goto_6
    return-void

    .line 2385
    :cond_7
    invoke-direct {p0}, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->ensureMargins()V

    .line 2386
    iget-object v0, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->mMargins:[I

    mul-int/lit8 v1, p1, 0x2

    aput p2, v0, v1

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 2399
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LayoutRecord{c="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->column:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sz="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->size:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->span:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2401
    .local v1, result:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->mMargins:[I

    if-eqz v2, :cond_9d

    .line 2402
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " margins[before, after]("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2403
    const/4 v0, 0x0

    .local v0, i:I
    :goto_51
    iget-object v2, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->mMargins:[I

    array-length v2, v2

    if-ge v0, v2, :cond_8a

    .line 2404
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->mMargins:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/plus/views/ColumnGridView$LayoutRecord;->mMargins:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2403
    add-int/lit8 v0, v0, 0x2

    goto :goto_51

    .line 2406
    :cond_8a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2408
    .end local v0           #i:I
    :cond_9d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
