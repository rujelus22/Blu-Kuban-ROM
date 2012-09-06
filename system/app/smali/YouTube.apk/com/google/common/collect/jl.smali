.class final Lcom/google/common/collect/jl;
.super Lcom/google/common/collect/k;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/Comparable;

.field final synthetic b:Lcom/google/common/collect/RegularContiguousSet;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularContiguousSet;Ljava/lang/Comparable;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/common/collect/jl;->b:Lcom/google/common/collect/RegularContiguousSet;

    invoke-direct {p0, p2}, Lcom/google/common/collect/k;-><init>(Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/google/common/collect/jl;->b:Lcom/google/common/collect/RegularContiguousSet;

    invoke-virtual {v0}, Lcom/google/common/collect/RegularContiguousSet;->last()Ljava/lang/Comparable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/jl;->a:Ljava/lang/Comparable;

    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 69
    check-cast p1, Ljava/lang/Comparable;

    iget-object v0, p0, Lcom/google/common/collect/jl;->a:Ljava/lang/Comparable;

    #calls: Lcom/google/common/collect/RegularContiguousSet;->equalsOrThrow(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    invoke-static {p1, v0}, Lcom/google/common/collect/RegularContiguousSet;->access$000(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/google/common/collect/jl;->b:Lcom/google/common/collect/RegularContiguousSet;

    iget-object v0, v0, Lcom/google/common/collect/RegularContiguousSet;->domain:Lcom/google/common/collect/cr;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/cr;->next(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    goto :goto_b
.end method
