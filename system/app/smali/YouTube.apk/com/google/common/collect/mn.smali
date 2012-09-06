.class final Lcom/google/common/collect/mn;
.super Lcom/google/common/collect/mp;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/TreeMultiset;

.field private final c:I

.field private final d:I


# direct methods
.method private constructor <init>(Lcom/google/common/collect/TreeMultiset;II)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 525
    iput-object p1, p0, Lcom/google/common/collect/mn;->a:Lcom/google/common/collect/TreeMultiset;

    invoke-direct {p0, p1, v1}, Lcom/google/common/collect/mp;-><init>(Lcom/google/common/collect/TreeMultiset;B)V

    .line 526
    if-ltz p3, :cond_15

    move v2, v0

    :goto_a
    if-ltz p2, :cond_17

    :goto_c
    and-int/2addr v0, v2

    invoke-static {v0}, Lcom/google/common/base/ag;->a(Z)V

    .line 527
    iput p2, p0, Lcom/google/common/collect/mn;->c:I

    .line 528
    iput p3, p0, Lcom/google/common/collect/mn;->d:I

    .line 529
    return-void

    :cond_15
    move v2, v1

    .line 526
    goto :goto_a

    :cond_17
    move v0, v1

    goto :goto_c
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/TreeMultiset;IIB)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 521
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/mn;-><init>(Lcom/google/common/collect/TreeMultiset;II)V

    return-void
.end method


# virtual methods
.method final a(I)I
    .registers 3
    .parameter

    .prologue
    .line 533
    iget v0, p0, Lcom/google/common/collect/mn;->c:I

    if-ne p1, v0, :cond_6

    iget p1, p0, Lcom/google/common/collect/mn;->d:I

    :cond_6
    return p1
.end method
