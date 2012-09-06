.class final Lcom/google/common/collect/du;
.super Lcom/google/common/collect/i;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 469
    iput-object p1, p0, Lcom/google/common/collect/du;->a:Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;

    invoke-direct {p0, p2}, Lcom/google/common/collect/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final a(I)Ljava/lang/Object;
    .registers 4
    .parameter

    .prologue
    .line 471
    iget-object v0, p0, Lcom/google/common/collect/du;->a:Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;

    iget-object v1, p0, Lcom/google/common/collect/du;->a:Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;

    iget-object v1, v1, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;->source:[Ljava/lang/Object;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableSet$TransformedImmutableSet;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
