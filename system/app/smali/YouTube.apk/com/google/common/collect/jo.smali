.class final Lcom/google/common/collect/jo;
.super Lcom/google/common/collect/i;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/RegularImmutableMap$Values;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableMap$Values;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/google/common/collect/jo;->a:Lcom/google/common/collect/RegularImmutableMap$Values;

    invoke-direct {p0, p2}, Lcom/google/common/collect/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final a(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/common/collect/jo;->a:Lcom/google/common/collect/RegularImmutableMap$Values;

    iget-object v0, v0, Lcom/google/common/collect/RegularImmutableMap$Values;->map:Lcom/google/common/collect/RegularImmutableMap;

    #getter for: Lcom/google/common/collect/RegularImmutableMap;->entries:[Lcom/google/common/collect/jn;
    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableMap;->access$000(Lcom/google/common/collect/RegularImmutableMap;)[Lcom/google/common/collect/jn;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-interface {v0}, Lcom/google/common/collect/jn;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
