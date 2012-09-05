.class final Lcom/google/common/collect/dy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/em;


# instance fields
.field final a:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .registers 2
    .parameter

    .prologue
    .line 820
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 821
    iput-object p1, p0, Lcom/google/common/collect/dy;->a:Ljava/lang/Throwable;

    .line 822
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/common/collect/ee;)Lcom/google/common/collect/em;
    .registers 2
    .parameter

    .prologue
    .line 828
    return-object p0
.end method

.method public final get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 824
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n_()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 831
    new-instance v0, Lcom/google/common/collect/AsynchronousComputationException;

    iget-object v1, p0, Lcom/google/common/collect/dy;->a:Ljava/lang/Throwable;

    invoke-direct {v0, v1}, Lcom/google/common/collect/AsynchronousComputationException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
