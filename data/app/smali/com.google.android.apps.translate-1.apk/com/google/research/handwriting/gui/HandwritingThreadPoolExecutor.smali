.class public Lcom/google/research/handwriting/gui/HandwritingThreadPoolExecutor;
.super Ljava/lang/Object;
.source "HandwritingThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/research/handwriting/gui/HandwritingThreadPoolExecutor$HoneyCombAndBeyondExecutor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    .local p0, this:Lcom/google/research/handwriting/gui/HandwritingThreadPoolExecutor;,"Lcom/google/research/handwriting/gui/HandwritingThreadPoolExecutor<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method


# virtual methods
.method public varargs execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<TParams;TProgress;TResult;>;[TParams;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, this:Lcom/google/research/handwriting/gui/HandwritingThreadPoolExecutor;,"Lcom/google/research/handwriting/gui/HandwritingThreadPoolExecutor<TParams;TProgress;TResult;>;"
    .local p1, t:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<TParams;TProgress;TResult;>;"
    .local p2, params:[Ljava/lang/Object;,"[TParams;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_f

    .line 57
    new-instance v0, Lcom/google/research/handwriting/gui/HandwritingThreadPoolExecutor$HoneyCombAndBeyondExecutor;

    invoke-direct {v0, p0}, Lcom/google/research/handwriting/gui/HandwritingThreadPoolExecutor$HoneyCombAndBeyondExecutor;-><init>(Lcom/google/research/handwriting/gui/HandwritingThreadPoolExecutor;)V

    invoke-virtual {v0, p1, p2}, Lcom/google/research/handwriting/gui/HandwritingThreadPoolExecutor$HoneyCombAndBeyondExecutor;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 61
    :goto_e
    return-void

    .line 59
    :cond_f
    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_e
.end method
