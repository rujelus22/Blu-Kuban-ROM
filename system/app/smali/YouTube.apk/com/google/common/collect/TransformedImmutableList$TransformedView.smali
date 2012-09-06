.class Lcom/google/common/collect/TransformedImmutableList$TransformedView;
.super Lcom/google/common/collect/TransformedImmutableList;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/TransformedImmutableList;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TransformedImmutableList;Lcom/google/common/collect/ImmutableList;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/google/common/collect/TransformedImmutableList$TransformedView;->this$0:Lcom/google/common/collect/TransformedImmutableList;

    .line 37
    invoke-direct {p0, p2}, Lcom/google/common/collect/TransformedImmutableList;-><init>(Lcom/google/common/collect/ImmutableList;)V

    .line 38
    return-void
.end method


# virtual methods
.method public bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/google/common/collect/TransformedImmutableList;->listIterator(I)Lcom/google/common/collect/mu;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1, p2}, Lcom/google/common/collect/TransformedImmutableList;->subList(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method transform(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/common/collect/TransformedImmutableList$TransformedView;->this$0:Lcom/google/common/collect/TransformedImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/TransformedImmutableList;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
