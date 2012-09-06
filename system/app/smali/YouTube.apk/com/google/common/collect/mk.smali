.class final Lcom/google/common/collect/mk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/bk;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/common/collect/bw;)J
    .registers 4
    .parameter

    .prologue
    .line 431
    check-cast p1, Lcom/google/common/collect/TreeMultiset$Node;

    #calls: Lcom/google/common/collect/TreeMultiset;->sizeOrZero(Lcom/google/common/collect/TreeMultiset$Node;)J
    invoke-static {p1}, Lcom/google/common/collect/TreeMultiset;->access$700(Lcom/google/common/collect/TreeMultiset$Node;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic b(Lcom/google/common/collect/bw;)I
    .registers 3
    .parameter

    .prologue
    .line 431
    check-cast p1, Lcom/google/common/collect/TreeMultiset$Node;

    invoke-virtual {p1}, Lcom/google/common/collect/TreeMultiset$Node;->elemCount()I

    move-result v0

    return v0
.end method
