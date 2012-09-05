.class final Lcom/google/common/collect/ck;
.super Lcom/google/common/collect/AbstractIterator;
.source "SourceFile"


# instance fields
.field a:I

.field final synthetic b:Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;)V
    .registers 3
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/google/common/collect/ck;->b:Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;

    invoke-direct {p0}, Lcom/google/common/collect/AbstractIterator;-><init>()V

    .line 379
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/ck;->a:I

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/Object;
    .registers 5

    .prologue
    .line 381
    iget v0, p0, Lcom/google/common/collect/ck;->a:I

    iget-object v1, p0, Lcom/google/common/collect/ck;->b:Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;

    iget-object v1, v1, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;->source:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1c

    iget-object v0, p0, Lcom/google/common/collect/ck;->b:Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;

    iget-object v1, p0, Lcom/google/common/collect/ck;->b:Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;

    iget-object v1, v1, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;->source:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/ck;->a:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/common/collect/ck;->a:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_1b
    return-object v0

    :cond_1c
    invoke-virtual {p0}, Lcom/google/common/collect/ck;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1b
.end method
