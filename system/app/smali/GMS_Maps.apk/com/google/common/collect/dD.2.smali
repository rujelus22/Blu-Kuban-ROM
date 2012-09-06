.class Lcom/google/common/collect/dD;
.super Lcom/google/common/collect/dB;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/dB;


# direct methods
.method constructor <init>(Lcom/google/common/collect/dB;Lcom/google/common/collect/ImmutableList;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/common/collect/dD;->a:Lcom/google/common/collect/dB;

    .line 37
    invoke-direct {p0, p2}, Lcom/google/common/collect/dB;-><init>(Lcom/google/common/collect/ImmutableList;)V

    .line 38
    return-void
.end method


# virtual methods
.method b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/common/collect/dD;->a:Lcom/google/common/collect/dB;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/dB;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/google/common/collect/dB;->a(I)Lcom/google/common/collect/dF;

    move-result-object v0

    return-object v0
.end method

.method public synthetic subList(II)Ljava/util/List;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/dB;->a(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
