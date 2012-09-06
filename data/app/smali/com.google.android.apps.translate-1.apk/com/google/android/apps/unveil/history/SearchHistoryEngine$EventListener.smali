.class public abstract Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;
.super Ljava/lang/Object;
.source "SearchHistoryEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/unveil/history/SearchHistoryEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EventListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAbuseResponse()V
    .registers 2

    .prologue
    .line 99
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onDeleteResponse()V
    .registers 2

    .prologue
    .line 90
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract onError()V
.end method

.method public onLookupResponse(Lcom/google/android/apps/unveil/history/SearchHistoryItem;)V
    .registers 3
    .parameter "item"

    .prologue
    .line 72
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onSearchResponse([Lcom/google/android/apps/unveil/history/SearchHistoryItem;ILjava/lang/String;)V
    .registers 5
    .parameter "items"
    .parameter "totalResultCount"
    .parameter "continuationToken"

    .prologue
    .line 62
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onUpdateResponse(Lcom/google/android/apps/unveil/history/SearchHistoryItem;)V
    .registers 3
    .parameter "updatedItem"

    .prologue
    .line 82
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onUserSubmissionResponse()V
    .registers 2

    .prologue
    .line 108
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
