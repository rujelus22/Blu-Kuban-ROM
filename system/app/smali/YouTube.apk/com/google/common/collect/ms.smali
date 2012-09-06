.class final Lcom/google/common/collect/ms;
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

    .line 510
    iput-object p1, p0, Lcom/google/common/collect/ms;->a:Lcom/google/common/collect/TreeMultiset;

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/mp;-><init>(Lcom/google/common/collect/TreeMultiset;B)V

    .line 511
    if-ltz p2, :cond_9

    const/4 v0, 0x1

    :cond_9
    invoke-static {v0}, Lcom/google/common/base/ag;->a(Z)V

    .line 512
    iput p2, p0, Lcom/google/common/collect/ms;->c:I

    .line 513
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/TreeMultiset;IB)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 507
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/ms;-><init>(Lcom/google/common/collect/TreeMultiset;I)V

    return-void
.end method


# virtual methods
.method final a(I)I
    .registers 3
    .parameter

    .prologue
    .line 517
    iget v0, p0, Lcom/google/common/collect/ms;->c:I

    return v0
.end method
