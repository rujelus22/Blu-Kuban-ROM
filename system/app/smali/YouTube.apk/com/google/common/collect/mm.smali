.class final Lcom/google/common/collect/mm;
.super Lcom/google/common/collect/mp;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/TreeMultiset;

.field private final c:I


# direct methods
.method private constructor <init>(Lcom/google/common/collect/TreeMultiset;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 481
    iput-object p1, p0, Lcom/google/common/collect/mm;->a:Lcom/google/common/collect/TreeMultiset;

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/mp;-><init>(Lcom/google/common/collect/TreeMultiset;B)V

    .line 482
    if-lez p2, :cond_9

    const/4 v0, 0x1

    :cond_9
    invoke-static {v0}, Lcom/google/common/base/ag;->a(Z)V

    .line 483
    iput p2, p0, Lcom/google/common/collect/mm;->c:I

    .line 484
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/TreeMultiset;IB)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 478
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/mm;-><init>(Lcom/google/common/collect/TreeMultiset;I)V

    return-void
.end method


# virtual methods
.method final a(I)I
    .registers 4
    .parameter

    .prologue
    .line 488
    iget v0, p0, Lcom/google/common/collect/mm;->c:I

    const v1, 0x7fffffff

    sub-int/2addr v1, p1

    if-gt v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_9
    const-string v1, "Cannot add this many elements"

    invoke-static {v0, v1}, Lcom/google/common/base/ag;->a(ZLjava/lang/Object;)V

    .line 489
    iget v0, p0, Lcom/google/common/collect/mm;->c:I

    add-int/2addr v0, p1

    return v0

    .line 488
    :cond_12
    const/4 v0, 0x0

    goto :goto_9
.end method
