.class final Lcom/google/common/cache/ap;
.super Lcom/google/common/cache/al;
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
    .line 1782
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/cache/al;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/x;)V

    .line 1783
    iput p4, p0, Lcom/google/common/cache/ap;->b:I

    .line 1784
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 1788
    iget v0, p0, Lcom/google/common/cache/ap;->b:I

    return v0
.end method

.method public final a(Ljava/lang/ref/ReferenceQueue;Lcom/google/common/cache/x;)Lcom/google/common/cache/ag;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1794
    new-instance v0, Lcom/google/common/cache/ap;

    invoke-virtual {p0}, Lcom/google/common/cache/ap;->get()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lcom/google/common/cache/ap;->b:I

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/google/common/cache/ap;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/cache/x;I)V

    return-object v0
.end method
