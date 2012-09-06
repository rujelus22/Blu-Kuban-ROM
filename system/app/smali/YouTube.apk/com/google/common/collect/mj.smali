.class final Lcom/google/common/collect/mj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/bk;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/common/collect/bw;)J
    .registers 4
    .parameter

    .prologue
    .line 413
    check-cast p1, Lcom/google/common/collect/TreeMultiset$Node;

    #calls: Lcom/google/common/collect/TreeMultiset;->distinctOrZero(Lcom/google/common/collect/TreeMultiset$Node;)I
    invoke-static {p1}, Lcom/google/common/collect/TreeMultiset;->access$800(Lcom/google/common/collect/TreeMultiset$Node;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final bridge synthetic b(Lcom/google/common/collect/bw;)I
    .registers 3
    .parameter

    .prologue
    .line 413
    const/4 v0, 0x1

    return v0
.end method
