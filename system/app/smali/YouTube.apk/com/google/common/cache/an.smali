.class final Lcom/google/common/cache/an;
.super Lcom/google/common/cache/z;
.source "SourceFile"


# instance fields
.field final b:I


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/x;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1806
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/cache/z;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/x;)V

    .line 1807
    iput p4, p0, Lcom/google/common/cache/an;->b:I

    .line 1808
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 1812
    iget v0, p0, Lcom/google/common/cache/an;->b:I

    return v0
.end method

.method public final a(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/cache/x;)Lcom/google/common/cache/ag;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1816
    new-instance v0, Lcom/google/common/cache/an;

    invoke-virtual {p0}, Lcom/google/common/cache/an;->get()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/google/common/cache/an;->b:I

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/google/common/cache/an;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/x;I)V

    return-object v0
.end method
