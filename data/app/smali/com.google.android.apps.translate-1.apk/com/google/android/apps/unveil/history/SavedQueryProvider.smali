.class public abstract Lcom/google/android/apps/unveil/history/SavedQueryProvider;
.super Lcom/google/android/apps/unveil/env/AbstractProvider;
.source "SavedQueryProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/history/SavedQueryProvider$1;,
        Lcom/google/android/apps/unveil/history/SavedQueryProvider$EmptyCursor;,
        Lcom/google/android/apps/unveil/history/SavedQueryProvider$SavedQueryCursor;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/AbstractProvider;-><init>()V

    .line 55
    return-void
.end method

.method protected static newEmptyCursor()Lcom/google/android/apps/unveil/history/SavedQueryProvider$SavedQueryCursor;
    .registers 2

    .prologue
    .line 81
    new-instance v0, Lcom/google/android/apps/unveil/history/SavedQueryProvider$EmptyCursor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/apps/unveil/history/SavedQueryProvider$EmptyCursor;-><init>(Lcom/google/android/apps/unveil/history/SavedQueryProvider$1;)V

    return-object v0
.end method


# virtual methods
.method public abstract delete(J)V
.end method

.method public abstract get(J)Lcom/google/android/apps/unveil/history/SavedQuery;
.end method

.method public abstract getQueries()Lcom/google/android/apps/unveil/history/SavedQueryProvider$SavedQueryCursor;
.end method

.method public abstract getQueryCount()I
.end method

.method public abstract onQueryExecuted(J)V
.end method

.method public abstract save(Lcom/google/android/apps/unveil/protocol/QueryBuilder;)Ljava/lang/Long;
.end method
