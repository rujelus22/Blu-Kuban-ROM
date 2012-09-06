.class public Landroid/support/place/rpc/RpcRetrier;
.super Ljava/lang/Object;
.source "RpcRetrier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/place/rpc/RpcRetrier$Task;
    }
.end annotation


# instance fields
.field private mErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;

.field private mHandler:Landroid/os/Handler;

.field private mMaxRetries:I

.field private mName:Ljava/lang/String;

.field private mRetryDelayMs:I

.field private mRunnable:Ljava/lang/Runnable;

.field private mTries:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/support/place/rpc/RpcRetrier$Task;Landroid/os/Handler;II)V
    .registers 7
    .parameter "name"
    .parameter "task"
    .parameter "handler"
    .parameter "maxRetries"
    .parameter "retryDelayMs"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/support/place/rpc/RpcRetrier$2;

    invoke-direct {v0, p0}, Landroid/support/place/rpc/RpcRetrier$2;-><init>(Landroid/support/place/rpc/RpcRetrier;)V

    iput-object v0, p0, Landroid/support/place/rpc/RpcRetrier;->mErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;

    .line 26
    iput-object p1, p0, Landroid/support/place/rpc/RpcRetrier;->mName:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Landroid/support/place/rpc/RpcRetrier;->mHandler:Landroid/os/Handler;

    .line 28
    iput p4, p0, Landroid/support/place/rpc/RpcRetrier;->mMaxRetries:I

    .line 29
    iput p5, p0, Landroid/support/place/rpc/RpcRetrier;->mRetryDelayMs:I

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/place/rpc/RpcRetrier;->mTries:I

    .line 32
    new-instance v0, Landroid/support/place/rpc/RpcRetrier$1;

    invoke-direct {v0, p0, p2}, Landroid/support/place/rpc/RpcRetrier$1;-><init>(Landroid/support/place/rpc/RpcRetrier;Landroid/support/place/rpc/RpcRetrier$Task;)V

    iput-object v0, p0, Landroid/support/place/rpc/RpcRetrier;->mRunnable:Ljava/lang/Runnable;

    .line 38
    return-void
.end method

.method static synthetic access$000(Landroid/support/place/rpc/RpcRetrier;)Landroid/support/place/rpc/RpcErrorHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 10
    iget-object v0, p0, Landroid/support/place/rpc/RpcRetrier;->mErrorHandler:Landroid/support/place/rpc/RpcErrorHandler;

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/place/rpc/RpcRetrier;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 10
    iget-object v0, p0, Landroid/support/place/rpc/RpcRetrier;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$204(Landroid/support/place/rpc/RpcRetrier;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 10
    iget v0, p0, Landroid/support/place/rpc/RpcRetrier;->mTries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/place/rpc/RpcRetrier;->mTries:I

    return v0
.end method

.method static synthetic access$300(Landroid/support/place/rpc/RpcRetrier;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 10
    iget v0, p0, Landroid/support/place/rpc/RpcRetrier;->mMaxRetries:I

    return v0
.end method

.method static synthetic access$400(Landroid/support/place/rpc/RpcRetrier;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 10
    iget-object v0, p0, Landroid/support/place/rpc/RpcRetrier;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/place/rpc/RpcRetrier;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 10
    iget v0, p0, Landroid/support/place/rpc/RpcRetrier;->mRetryDelayMs:I

    return v0
.end method

.method static synthetic access$600(Landroid/support/place/rpc/RpcRetrier;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 10
    iget-object v0, p0, Landroid/support/place/rpc/RpcRetrier;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/place/rpc/RpcRetrier;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/place/rpc/RpcRetrier;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 58
    return-void
.end method

.method public start()V
    .registers 3

    .prologue
    .line 41
    iget-object v0, p0, Landroid/support/place/rpc/RpcRetrier;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/place/rpc/RpcRetrier;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    return-void
.end method
