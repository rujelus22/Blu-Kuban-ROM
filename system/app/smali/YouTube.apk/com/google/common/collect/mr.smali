.class final Lcom/google/common/collect/mr;
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

    .line 496
    iput-object p1, p0, Lcom/google/common/collect/mr;->a:Lcom/google/common/collect/TreeMultiset;

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/mp;-><init>(Lcom/google/common/collect/TreeMultiset;B)V

    .line 497
    if-lez p2, :cond_9

    const/4 v0, 0x1

    :cond_9
    invoke-static {v0}, Lcom/google/common/base/ag;->a(Z)V

    .line 498
    iput p2, p0, Lcom/google/common/collect/mr;->c:I

    .line 499
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/TreeMultiset;IB)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 493
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/mr;-><init>(Lcom/google/common/collect/TreeMultiset;I)V

    return-void
.end method


# virtual methods
.method final a(I)I
    .registers 4
    .parameter

    .prologue
    .line 503
    const/4 v0, 0x0

    iget v1, p0, Lcom/google/common/collect/mr;->c:I

    sub-int v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method
