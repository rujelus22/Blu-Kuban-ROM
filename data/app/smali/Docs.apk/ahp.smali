.class final Lahp;
.super LagX;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "LagX",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final a:I


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;LagU;I)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;TV;",
            "LagU",
            "<TK;TV;>;I)V"
        }
    .end annotation

    .prologue
    .line 1806
    invoke-direct {p0, p1, p2, p3}, LagX;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;LagU;)V

    .line 1807
    iput p4, p0, Lahp;->a:I

    .line 1808
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 1812
    iget v0, p0, Lahp;->a:I

    return v0
.end method

.method public a(Ljava/lang/ref/ReferenceQueue;LagU;)Lahi;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;",
            "LagU",
            "<TK;TV;>;)",
            "Lahi",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1816
    new-instance v0, Lahp;

    invoke-virtual {p0}, Lahp;->get()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lahp;->a:I

    invoke-direct {v0, p1, v1, p2, v2}, Lahp;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;LagU;I)V

    return-object v0
.end method
