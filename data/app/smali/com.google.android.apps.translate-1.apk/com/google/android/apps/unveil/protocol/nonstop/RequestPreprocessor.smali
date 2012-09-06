.class public interface abstract Lcom/google/android/apps/unveil/protocol/nonstop/RequestPreprocessor;
.super Ljava/lang/Object;
.source "RequestPreprocessor.java"


# virtual methods
.method public abstract addDebugText(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onPause()V
.end method

.method public abstract onReset()V
.end method

.method public abstract onStart()V
.end method

.method public abstract preprocess(Lcom/google/android/apps/unveil/protocol/ContinuousQueryBuilder;)V
.end method
