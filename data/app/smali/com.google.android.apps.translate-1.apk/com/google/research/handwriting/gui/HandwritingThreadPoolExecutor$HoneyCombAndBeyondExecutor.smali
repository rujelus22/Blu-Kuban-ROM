.class public Lcom/google/research/handwriting/gui/HandwritingThreadPoolExecutor$HoneyCombAndBeyondExecutor;
.super Ljava/lang/Object;
.source "HandwritingThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/research/handwriting/gui/HandwritingThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HoneyCombAndBeyondExecutor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Pars:",
        "Ljava/lang/Object;",
        "Prog:",
        "Ljava/lang/Object;",
        "Res:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/research/handwriting/gui/HandwritingThreadPoolExecutor;


# direct methods
.method public constructor <init>(Lcom/google/research/handwriting/gui/HandwritingThreadPoolExecutor;)V
    .registers 2
    .parameter

    .prologue
    .line 49
    .local p0, this:Lcom/google/research/handwriting/gui/HandwritingThreadPoolExecutor$HoneyCombAndBeyondExecutor;,"Lcom/google/research/handwriting/gui/HandwritingThreadPoolExecutor<TParams;TProgress;TResult;>.HoneyCombAndBeyondExecutor<TPars;TProg;TRes;>;"
    iput-object p1, p0, Lcom/google/research/handwriting/gui/HandwritingThreadPoolExecutor$HoneyCombAndBeyondExecutor;->this$0:Lcom/google/research/handwriting/gui/HandwritingThreadPoolExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<TPars;TProg;TRes;>;[TPars;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, this:Lcom/google/research/handwriting/gui/HandwritingThreadPoolExecutor$HoneyCombAndBeyondExecutor;,"Lcom/google/research/handwriting/gui/HandwritingThreadPoolExecutor<TParams;TProgress;TResult;>.HoneyCombAndBeyondExecutor<TPars;TProg;TRes;>;"
    .local p1, t:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<TPars;TProg;TRes;>;"
    .local p2, params:[Ljava/lang/Object;,"[TPars;"
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p1, v0, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 52
    return-void
.end method
