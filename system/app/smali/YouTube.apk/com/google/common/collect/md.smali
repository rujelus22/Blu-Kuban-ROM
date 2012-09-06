.class final Lcom/google/common/collect/md;
.super Lcom/google/common/collect/i;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/common/collect/TransformedImmutableList;


# direct methods
.method constructor <init>(Lcom/google/common/collect/TransformedImmutableList;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/common/collect/md;->a:Lcom/google/common/collect/TransformedImmutableList;

    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/i;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected final a(I)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/common/collect/md;->a:Lcom/google/common/collect/TransformedImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/TransformedImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
