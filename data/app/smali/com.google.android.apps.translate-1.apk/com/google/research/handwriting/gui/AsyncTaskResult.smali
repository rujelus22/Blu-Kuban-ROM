.class public Lcom/google/research/handwriting/gui/AsyncTaskResult;
.super Ljava/lang/Object;
.source "AsyncTaskResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final exception:Ljava/lang/Exception;

.field public final result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .registers 3
    .parameter "e"

    .prologue
    .line 23
    .local p0, this:Lcom/google/research/handwriting/gui/AsyncTaskResult;,"Lcom/google/research/handwriting/gui/AsyncTaskResult<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/research/handwriting/gui/AsyncTaskResult;->exception:Ljava/lang/Exception;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/research/handwriting/gui/AsyncTaskResult;->result:Ljava/lang/Object;

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, this:Lcom/google/research/handwriting/gui/AsyncTaskResult;,"Lcom/google/research/handwriting/gui/AsyncTaskResult<TT;>;"
    .local p1, s:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/research/handwriting/gui/AsyncTaskResult;->result:Ljava/lang/Object;

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/research/handwriting/gui/AsyncTaskResult;->exception:Ljava/lang/Exception;

    .line 21
    return-void
.end method
