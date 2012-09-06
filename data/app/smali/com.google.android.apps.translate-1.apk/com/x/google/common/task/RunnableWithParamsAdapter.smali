.class public Lcom/x/google/common/task/RunnableWithParamsAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final methodCallId:I

.field private final params:[Ljava/lang/Object;

.field private final runnableParams:Lcom/x/google/common/task/RunnableWithParams;


# direct methods
.method public constructor <init>(I[Ljava/lang/Object;Lcom/x/google/common/task/RunnableWithParams;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/x/google/common/task/RunnableWithParamsAdapter;->methodCallId:I

    iput-object p2, p0, Lcom/x/google/common/task/RunnableWithParamsAdapter;->params:[Ljava/lang/Object;

    iput-object p3, p0, Lcom/x/google/common/task/RunnableWithParamsAdapter;->runnableParams:Lcom/x/google/common/task/RunnableWithParams;

    return-void
.end method


# virtual methods
.method public getMethodCallId()I
    .registers 2

    iget v0, p0, Lcom/x/google/common/task/RunnableWithParamsAdapter;->methodCallId:I

    return v0
.end method

.method public getParams()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/x/google/common/task/RunnableWithParamsAdapter;->params:[Ljava/lang/Object;

    return-object v0
.end method

.method public getRunnableWithParams()Lcom/x/google/common/task/RunnableWithParams;
    .registers 2

    iget-object v0, p0, Lcom/x/google/common/task/RunnableWithParamsAdapter;->runnableParams:Lcom/x/google/common/task/RunnableWithParams;

    return-object v0
.end method

.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/x/google/common/task/RunnableWithParamsAdapter;->runnableParams:Lcom/x/google/common/task/RunnableWithParams;

    iget v1, p0, Lcom/x/google/common/task/RunnableWithParamsAdapter;->methodCallId:I

    iget-object v2, p0, Lcom/x/google/common/task/RunnableWithParamsAdapter;->params:[Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/x/google/common/task/RunnableWithParams;->run(I[Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
