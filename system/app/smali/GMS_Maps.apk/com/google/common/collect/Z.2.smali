.class final Lcom/google/common/collect/Z;
.super Ljava/util/AbstractQueue;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 805
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/common/collect/au;
    .registers 2

    .prologue
    .line 813
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Lcom/google/common/collect/au;)Z
    .registers 3
    .parameter

    .prologue
    .line 808
    const/4 v0, 0x1

    return v0
.end method

.method public b()Lcom/google/common/collect/au;
    .registers 2

    .prologue
    .line 818
    const/4 v0, 0x0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 828
    invoke-static {}, Lcom/google/common/collect/bZ;->a()Lcom/google/common/collect/dE;

    move-result-object v0

    return-object v0
.end method

.method public synthetic offer(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 805
    check-cast p1, Lcom/google/common/collect/au;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Z;->a(Lcom/google/common/collect/au;)Z

    move-result v0

    return v0
.end method

.method public synthetic peek()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 805
    invoke-virtual {p0}, Lcom/google/common/collect/Z;->a()Lcom/google/common/collect/au;

    move-result-object v0

    return-object v0
.end method

.method public synthetic poll()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 805
    invoke-virtual {p0}, Lcom/google/common/collect/Z;->b()Lcom/google/common/collect/au;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 823
    const/4 v0, 0x0

    return v0
.end method
