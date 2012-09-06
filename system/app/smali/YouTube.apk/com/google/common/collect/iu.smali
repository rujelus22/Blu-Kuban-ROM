.class final Lcom/google/common/collect/iu;
.super Lcom/google/common/collect/Ordering;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 953
    invoke-direct {p0}, Lcom/google/common/collect/Ordering;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 953
    check-cast p1, Lcom/google/common/collect/ir;

    check-cast p2, Lcom/google/common/collect/ir;

    invoke-interface {p2}, Lcom/google/common/collect/ir;->getCount()I

    move-result v0

    invoke-interface {p1}, Lcom/google/common/collect/ir;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->a(II)I

    move-result v0

    return v0
.end method
