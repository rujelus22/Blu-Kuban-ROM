.class Lcom/google/android/apps/unveil/protocol/QueryPipeline$PipelinedQueryListener$1;
.super Ljava/lang/Object;
.source "QueryPipeline.java"

# interfaces
.implements Lcom/google/android/apps/unveil/history/SearchHistoryProvider$DeleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/protocol/QueryPipeline$PipelinedQueryListener;->onQueryResponse(Lcom/google/android/apps/unveil/protocol/QueryResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/apps/unveil/protocol/QueryPipeline$PipelinedQueryListener;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/protocol/QueryPipeline$PipelinedQueryListener;)V
    .registers 2
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/QueryPipeline$PipelinedQueryListener$1;->this$1:Lcom/google/android/apps/unveil/protocol/QueryPipeline$PipelinedQueryListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .registers 4

    .prologue
    .line 114
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v0

    const-string v1, "Error while silently deleting query saved for later."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    return-void
.end method

.method public onResult()V
    .registers 4

    .prologue
    .line 119
    invoke-static {}, Lcom/google/android/apps/unveil/protocol/QueryPipeline;->access$000()Lcom/google/android/apps/unveil/env/UnveilLogger;

    move-result-object v0

    const-string v1, "Save for later duplicate query silently deleted."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    return-void
.end method
