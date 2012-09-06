.class public interface abstract Lcom/google/googlenav/common/util/Observable;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addObserver(Lcom/google/googlenav/common/util/Observer;)V
.end method

.method public abstract getObservers()[Lcom/google/googlenav/common/util/Observer;
.end method

.method public abstract notifyObservers(Ljava/lang/Object;)V
.end method

.method public abstract removeAllObservers()V
.end method

.method public abstract removeObserver(Lcom/google/googlenav/common/util/Observer;)Z
.end method
