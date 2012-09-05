.class public interface abstract Lcom/vlingo/client/core/mru/MRUStore;
.super Ljava/lang/Object;
.source "MRUStore.java"


# virtual methods
.method public abstract init([Ljava/lang/String;[Ljava/lang/String;I)V
.end method

.method public abstract loadMRUTables()[Lcom/vlingo/client/core/mru/MRUTable;
.end method

.method public abstract removeEntry(Ljava/lang/String;I)V
.end method

.method public abstract rescaleAllCounts(Ljava/lang/String;F)Z
.end method

.method public abstract setEntryCount(Ljava/lang/String;ILjava/lang/String;F)V
.end method
