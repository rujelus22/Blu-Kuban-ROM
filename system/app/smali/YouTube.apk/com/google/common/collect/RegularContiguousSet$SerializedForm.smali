.class final Lcom/google/common/collect/RegularContiguousSet$SerializedForm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field final domain:Lcom/google/common/collect/cr;

.field final range:Lcom/google/common/collect/Range;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/Range;Lcom/google/common/collect/cr;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/google/common/collect/RegularContiguousSet$SerializedForm;->range:Lcom/google/common/collect/Range;

    .line 178
    iput-object p2, p0, Lcom/google/common/collect/RegularContiguousSet$SerializedForm;->domain:Lcom/google/common/collect/cr;

    .line 179
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/Range;Lcom/google/common/collect/cr;Lcom/google/common/collect/jl;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/RegularContiguousSet$SerializedForm;-><init>(Lcom/google/common/collect/Range;Lcom/google/common/collect/cr;)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 182
    new-instance v0, Lcom/google/common/collect/RegularContiguousSet;

    iget-object v1, p0, Lcom/google/common/collect/RegularContiguousSet$SerializedForm;->range:Lcom/google/common/collect/Range;

    iget-object v2, p0, Lcom/google/common/collect/RegularContiguousSet$SerializedForm;->domain:Lcom/google/common/collect/cr;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/RegularContiguousSet;-><init>(Lcom/google/common/collect/Range;Lcom/google/common/collect/cr;)V

    return-object v0
.end method
