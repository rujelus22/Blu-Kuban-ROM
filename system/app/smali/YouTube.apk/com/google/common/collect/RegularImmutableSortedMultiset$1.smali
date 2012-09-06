.class Lcom/google/common/collect/RegularImmutableSortedMultiset$1;
.super Lcom/google/common/collect/TransformedImmutableList;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/RegularImmutableSortedMultiset;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableSortedMultiset;Lcom/google/common/collect/ImmutableList;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableSortedMultiset$1;->this$0:Lcom/google/common/collect/RegularImmutableSortedMultiset;

    invoke-direct {p0, p2}, Lcom/google/common/collect/TransformedImmutableList;-><init>(Lcom/google/common/collect/ImmutableList;)V

    return-void
.end method


# virtual methods
.method transform(Lcom/google/common/collect/jr;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 82
    invoke-virtual {p1}, Lcom/google/common/collect/jr;->getElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 79
    check-cast p1, Lcom/google/common/collect/jr;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/RegularImmutableSortedMultiset$1;->transform(Lcom/google/common/collect/jr;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
