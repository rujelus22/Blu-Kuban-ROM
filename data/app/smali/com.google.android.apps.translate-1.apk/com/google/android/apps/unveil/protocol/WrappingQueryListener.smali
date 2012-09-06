.class public Lcom/google/android/apps/unveil/protocol/WrappingQueryListener;
.super Lcom/google/android/apps/unveil/protocol/QueryListener;
.source "WrappingQueryListener.java"


# instance fields
.field private final inner:Lcom/google/android/apps/unveil/protocol/QueryListener;

.field private final outer:Lcom/google/android/apps/unveil/protocol/QueryListener;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/unveil/protocol/QueryListener;Lcom/google/android/apps/unveil/protocol/QueryListener;)V
    .registers 3
    .parameter "outer"
    .parameter "inner"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/android/apps/unveil/protocol/QueryListener;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/WrappingQueryListener;->outer:Lcom/google/android/apps/unveil/protocol/QueryListener;

    .line 18
    iput-object p2, p0, Lcom/google/android/apps/unveil/protocol/WrappingQueryListener;->inner:Lcom/google/android/apps/unveil/protocol/QueryListener;

    .line 19
    return-void
.end method


# virtual methods
.method public onAuthenticationError()V
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/WrappingQueryListener;->outer:Lcom/google/android/apps/unveil/protocol/QueryListener;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/protocol/QueryListener;->onAuthenticationError()V

    .line 24
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/WrappingQueryListener;->inner:Lcom/google/android/apps/unveil/protocol/QueryListener;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/protocol/QueryListener;->onAuthenticationError()V

    .line 25
    return-void
.end method

.method public onHeavyProcessingEnd()V
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/WrappingQueryListener;->outer:Lcom/google/android/apps/unveil/protocol/QueryListener;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/protocol/QueryListener;->onHeavyProcessingEnd()V

    .line 30
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/WrappingQueryListener;->inner:Lcom/google/android/apps/unveil/protocol/QueryListener;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/protocol/QueryListener;->onHeavyProcessingEnd()V

    .line 31
    return-void
.end method

.method public onHeavyProcessingStart()V
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/WrappingQueryListener;->outer:Lcom/google/android/apps/unveil/protocol/QueryListener;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/protocol/QueryListener;->onHeavyProcessingStart()V

    .line 36
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/WrappingQueryListener;->inner:Lcom/google/android/apps/unveil/protocol/QueryListener;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/protocol/QueryListener;->onHeavyProcessingStart()V

    .line 37
    return-void
.end method

.method public onNetworkError(I)V
    .registers 3
    .parameter "statusCode"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/WrappingQueryListener;->outer:Lcom/google/android/apps/unveil/protocol/QueryListener;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/protocol/QueryListener;->onNetworkError(I)V

    .line 42
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/WrappingQueryListener;->inner:Lcom/google/android/apps/unveil/protocol/QueryListener;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/protocol/QueryListener;->onNetworkError(I)V

    .line 43
    return-void
.end method

.method public onQueryResponse(Lcom/google/android/apps/unveil/protocol/QueryResponse;)V
    .registers 3
    .parameter "queryResponse"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/WrappingQueryListener;->outer:Lcom/google/android/apps/unveil/protocol/QueryListener;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/protocol/QueryListener;->onQueryResponse(Lcom/google/android/apps/unveil/protocol/QueryResponse;)V

    .line 48
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/WrappingQueryListener;->inner:Lcom/google/android/apps/unveil/protocol/QueryListener;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/protocol/QueryListener;->onQueryResponse(Lcom/google/android/apps/unveil/protocol/QueryResponse;)V

    .line 49
    return-void
.end method
