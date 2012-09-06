.class public abstract Lcom/google/android/apps/unveil/protocol/QueryListener;
.super Ljava/lang/Object;
.source "QueryListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onAuthenticationError()V
.end method

.method public onHeavyProcessingEnd()V
    .registers 1

    .prologue
    .line 40
    return-void
.end method

.method public onHeavyProcessingStart()V
    .registers 1

    .prologue
    .line 36
    return-void
.end method

.method public abstract onNetworkError(I)V
.end method

.method public abstract onQueryResponse(Lcom/google/android/apps/unveil/protocol/QueryResponse;)V
.end method

.method public onSending(I)V
    .registers 2
    .parameter "byteSize"

    .prologue
    .line 21
    return-void
.end method
