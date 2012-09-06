.class Lcom/google/android/apps/unveil/protocol/QueryPipeline$PipelinedQueryListener;
.super Lcom/google/android/apps/unveil/protocol/QueryListener;
.source "QueryPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/protocol/QueryPipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PipelinedQueryListener"
.end annotation


# instance fields
.field private final isPosterity:Z

.field private final listener:Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;

.field private queryCanceled:Z

.field final synthetic this$0:Lcom/google/android/apps/unveil/protocol/QueryPipeline;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/unveil/protocol/QueryPipeline;Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;Z)V
    .registers 4
    .parameter
    .parameter "outerListener"
    .parameter "isPosterity"

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$PipelinedQueryListener;->this$0:Lcom/google/android/apps/unveil/protocol/QueryPipeline;

    invoke-direct {p0}, Lcom/google/android/apps/unveil/protocol/QueryListener;-><init>()V

    .line 95
    iput-object p2, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$PipelinedQueryListener;->listener:Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;

    .line 96
    iput-boolean p3, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$PipelinedQueryListener;->isPosterity:Z

    .line 97
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$PipelinedQueryListener;->queryCanceled:Z

    .line 101
    return-void
.end method

.method public onAuthenticationError()V
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$PipelinedQueryListener;->listener:Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$PipelinedQueryListener;->queryCanceled:Z

    if-nez v0, :cond_d

    .line 146
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$PipelinedQueryListener;->listener:Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;->onAuthenticationError()V

    .line 148
    :cond_d
    return-void
.end method

.method public onHeavyProcessingEnd()V
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$PipelinedQueryListener;->listener:Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$PipelinedQueryListener;->queryCanceled:Z

    if-nez v0, :cond_d

    .line 153
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$PipelinedQueryListener;->listener:Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;->onHeavyProcessingEnd()V

    .line 155
    :cond_d
    return-void
.end method

.method public onHeavyProcessingStart()V
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$PipelinedQueryListener;->listener:Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$PipelinedQueryListener;->queryCanceled:Z

    if-nez v0, :cond_d

    .line 160
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$PipelinedQueryListener;->listener:Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;->onHeavyProcessingStart()V

    .line 162
    :cond_d
    return-void
.end method

.method public onNetworkError(I)V
    .registers 7
    .parameter "statusCode"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$PipelinedQueryListener;->listener:Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$PipelinedQueryListener;->queryCanceled:Z

    if-nez v0, :cond_d

    .line 138
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$PipelinedQueryListener;->listener:Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;->onNetworkError(I)V

    .line 140
    :cond_d
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v0

    const-string v1, "sendRequest network error: %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    return-void
.end method

.method public onQueryResponse(Lcom/google/android/apps/unveil/protocol/QueryResponse;)V
    .registers 7
    .parameter "queryResponse"

    .prologue
    const/4 v4, 0x0

    .line 105
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v1

    const-string v2, "sendImageRequest.onQueryResponse %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    iget-boolean v1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$PipelinedQueryListener;->queryCanceled:Z

    if-eqz v1, :cond_32

    .line 107
    if-eqz p1, :cond_31

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/protocol/QueryResponse;->getMomentId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 110
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$PipelinedQueryListener;->this$0:Lcom/google/android/apps/unveil/protocol/QueryPipeline;

    #getter for: Lcom/google/android/apps/unveil/protocol/QueryPipeline;->application:Lcom/google/android/apps/unveil/UnveilContext;
    invoke-static {v1}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->access$100(Lcom/google/android/apps/unveil/protocol/QueryPipeline;)Lcom/google/android/apps/unveil/UnveilContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/apps/unveil/UnveilContext;->getSearchHistoryProvider()Lcom/google/android/apps/unveil/history/SearchHistoryProvider;

    move-result-object v0

    .line 111
    .local v0, engine:Lcom/google/android/apps/unveil/history/SearchHistoryProvider;
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/protocol/QueryResponse;->getMomentId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/apps/unveil/protocol/QueryPipeline$PipelinedQueryListener$1;

    invoke-direct {v2, p0}, Lcom/google/android/apps/unveil/protocol/QueryPipeline$PipelinedQueryListener$1;-><init>(Lcom/google/android/apps/unveil/protocol/QueryPipeline$PipelinedQueryListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/history/SearchHistoryProvider;->delete(Ljava/lang/String;Lcom/google/android/apps/unveil/history/SearchHistoryProvider$DeleteListener;)V

    .line 133
    .end local v0           #engine:Lcom/google/android/apps/unveil/history/SearchHistoryProvider;
    :cond_31
    :goto_31
    return-void

    .line 124
    :cond_32
    iget-boolean v1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$PipelinedQueryListener;->isPosterity:Z

    if-eqz v1, :cond_4b

    .line 125
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v1

    const-string v2, "Posterity response."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$PipelinedQueryListener;->this$0:Lcom/google/android/apps/unveil/protocol/QueryPipeline;

    #getter for: Lcom/google/android/apps/unveil/protocol/QueryPipeline;->posterityRequestsHandler:Lcom/google/android/apps/unveil/protocol/QueryPipeline$PosterityRequestsHandler;
    invoke-static {v1}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->access$200(Lcom/google/android/apps/unveil/protocol/QueryPipeline;)Lcom/google/android/apps/unveil/protocol/QueryPipeline$PosterityRequestsHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/apps/unveil/protocol/QueryPipeline$PosterityRequestsHandler;->onPosterityResponse(Lcom/google/android/apps/unveil/protocol/QueryResponse;)V

    goto :goto_31

    .line 128
    :cond_4b
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$PipelinedQueryListener;->listener:Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;

    if-eqz v1, :cond_31

    .line 129
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v1

    const-string v2, "Calling listener.onResult"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$PipelinedQueryListener;->listener:Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;

    invoke-virtual {v1, p1}, Lcom/google/android/apps/unveil/protocol/QueryPipeline$EventListener;->onQueryResponse(Lcom/google/android/apps/unveil/protocol/QueryResponse;)V

    goto :goto_31
.end method
