.class public Lcom/google/android/apps/unveil/history/SearchHistoryProvider;
.super Lcom/google/android/apps/unveil/env/AbstractProvider;
.source "SearchHistoryProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/history/SearchHistoryProvider$AbuseListener;,
        Lcom/google/android/apps/unveil/history/SearchHistoryProvider$TagListener;,
        Lcom/google/android/apps/unveil/history/SearchHistoryProvider$DeleteListener;,
        Lcom/google/android/apps/unveil/history/SearchHistoryProvider$UpdateListener;,
        Lcom/google/android/apps/unveil/history/SearchHistoryProvider$LookupListener;,
        Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryListener;,
        Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private final engine:Lcom/google/android/apps/unveil/history/SearchHistoryEngine;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/unveil/history/SearchHistoryEngine;)V
    .registers 2
    .parameter "engine"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/AbstractProvider;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider;->engine:Lcom/google/android/apps/unveil/history/SearchHistoryEngine;

    .line 26
    return-void
.end method

.method static synthetic access$300()Lcom/google/android/apps/unveil/env/UnveilLogger;
    .registers 1

    .prologue
    .line 19
    sget-object v0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-object v0
.end method

.method public static makeQuery(Lcom/google/android/apps/unveil/history/SearchHistoryQuery$QuerySpec;Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryListener;)Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;
    .registers 3
    .parameter "querySpec"
    .parameter "listener"

    .prologue
    .line 34
    new-instance v0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;-><init>(Lcom/google/android/apps/unveil/history/SearchHistoryQuery$QuerySpec;Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryListener;)V

    return-object v0
.end method

.method private update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/unveil/history/SearchHistoryProvider$UpdateListener;)V
    .registers 7
    .parameter "momentId"
    .parameter "key"
    .parameter "value"
    .parameter "listener"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider;->engine:Lcom/google/android/apps/unveil/history/SearchHistoryEngine;

    new-instance v1, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$6;

    invoke-direct {v1, p0, p4}, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$6;-><init>(Lcom/google/android/apps/unveil/history/SearchHistoryProvider;Lcom/google/android/apps/unveil/history/SearchHistoryProvider$UpdateListener;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;)V

    .line 199
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;Lcom/google/android/apps/unveil/history/SearchHistoryProvider$DeleteListener;)V
    .registers 5
    .parameter "momentId"
    .parameter "listener"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider;->engine:Lcom/google/android/apps/unveil/history/SearchHistoryEngine;

    new-instance v1, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$7;

    invoke-direct {v1, p0, p2}, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$7;-><init>(Lcom/google/android/apps/unveil/history/SearchHistoryProvider;Lcom/google/android/apps/unveil/history/SearchHistoryProvider$DeleteListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->delete(Ljava/lang/String;Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;)V

    .line 215
    return-void
.end method

.method public getEngine()Lcom/google/android/apps/unveil/history/SearchHistoryEngine;
    .registers 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider;->engine:Lcom/google/android/apps/unveil/history/SearchHistoryEngine;

    return-object v0
.end method

.method public lookup(Ljava/lang/String;Lcom/google/android/apps/unveil/history/SearchHistoryProvider$LookupListener;)V
    .registers 5
    .parameter "momentId"
    .parameter "listener"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider;->engine:Lcom/google/android/apps/unveil/history/SearchHistoryEngine;

    new-instance v1, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$2;

    invoke-direct {v1, p0, p2}, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$2;-><init>(Lcom/google/android/apps/unveil/history/SearchHistoryProvider;Lcom/google/android/apps/unveil/history/SearchHistoryProvider$LookupListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->lookup(Ljava/lang/String;Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;)V

    .line 118
    return-void
.end method

.method public query(Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;)V
    .registers 8
    .parameter "token"

    .prologue
    .line 44
    monitor-enter p1

    .line 45
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->hasMore()Z

    move-result v1

    if-nez v1, :cond_9

    .line 46
    monitor-exit p1

    .line 102
    :goto_8
    return-void

    .line 49
    :cond_9
    iget-object v1, p1, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->results:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 50
    .local v0, count:I
    #getter for: Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->hasRequestedMore:Z
    invoke-static {p1}, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->access$000(Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 51
    sget-object v1, Lcom/google/android/apps/unveil/history/SearchHistoryProvider;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Ignore duplicated retrieve request for search history item @%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    monitor-exit p1

    goto :goto_8

    .line 101
    .end local v0           #count:I
    :catchall_28
    move-exception v1

    monitor-exit p1
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_28

    throw v1

    .line 61
    .restart local v0       #count:I
    :cond_2b
    const/4 v1, 0x1

    :try_start_2c
    #setter for: Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->hasRequestedMore:Z
    invoke-static {p1, v1}, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->access$002(Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;Z)Z

    .line 62
    iget-object v1, p1, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->nextContinuationToken:Ljava/lang/String;

    iput-object v1, p1, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->lastContinuationToken:Ljava/lang/String;

    .line 63
    const-string v1, ""

    iput-object v1, p1, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->nextContinuationToken:Ljava/lang/String;

    .line 64
    iget-object v1, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider;->engine:Lcom/google/android/apps/unveil/history/SearchHistoryEngine;

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->getQuerySpec()Lcom/google/android/apps/unveil/history/SearchHistoryQuery$QuerySpec;

    move-result-object v2

    iget-object v3, p1, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->lastContinuationToken:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->getBatchSize()I

    move-result v4

    new-instance v5, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$1;

    invoke-direct {v5, p0, p1}, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$1;-><init>(Lcom/google/android/apps/unveil/history/SearchHistoryProvider;Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->search(Lcom/google/android/apps/unveil/history/SearchHistoryQuery$QuerySpec;Ljava/lang/String;ILcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;)V

    .line 101
    monitor-exit p1
    :try_end_4c
    .catchall {:try_start_2c .. :try_end_4c} :catchall_28

    goto :goto_8
.end method

.method public reportAbuse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/apps/unveil/history/SearchHistoryProvider$AbuseListener;)V
    .registers 12
    .parameter "abuseUrl"
    .parameter "category"
    .parameter "comment"
    .parameter "authenticated"
    .parameter "listener"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider;->engine:Lcom/google/android/apps/unveil/history/SearchHistoryEngine;

    new-instance v5, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$5;

    invoke-direct {v5, p0, p5}, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$5;-><init>(Lcom/google/android/apps/unveil/history/SearchHistoryProvider;Lcom/google/android/apps/unveil/history/SearchHistoryProvider$AbuseListener;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->reportAbuse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;)V

    .line 178
    return-void
.end method

.method public setUserSubmission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Lcom/google/android/apps/unveil/history/SearchHistoryProvider$TagListener;)V
    .registers 14
    .parameter "momentId"
    .parameter "title"
    .parameter "description"
    .parameter "type"
    .parameter "region"
    .parameter "listener"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider;->engine:Lcom/google/android/apps/unveil/history/SearchHistoryEngine;

    new-instance v6, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$3;

    invoke-direct {v6, p0, p6}, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$3;-><init>(Lcom/google/android/apps/unveil/history/SearchHistoryProvider;Lcom/google/android/apps/unveil/history/SearchHistoryProvider$TagListener;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->setUserSubmission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;)V

    .line 146
    return-void
.end method

.method public share(Ljava/lang/String;Lcom/google/android/apps/unveil/history/SearchHistoryProvider$UpdateListener;)V
    .registers 5
    .parameter "momentId"
    .parameter "listener"

    .prologue
    .line 128
    const-string v0, "isShared"

    const-string v1, "true"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/android/apps/unveil/history/SearchHistoryProvider;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/unveil/history/SearchHistoryProvider$UpdateListener;)V

    .line 129
    return-void
.end method

.method public updateNote(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/unveil/history/SearchHistoryProvider$UpdateListener;)V
    .registers 5
    .parameter "momentId"
    .parameter "note"
    .parameter "listener"

    .prologue
    .line 124
    const-string v0, "note"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/apps/unveil/history/SearchHistoryProvider;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/unveil/history/SearchHistoryProvider$UpdateListener;)V

    .line 125
    return-void
.end method

.method public withdrawUserSubmission(Ljava/lang/String;Lcom/google/android/apps/unveil/history/SearchHistoryProvider$TagListener;)V
    .registers 5
    .parameter "momentId"
    .parameter "listener"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider;->engine:Lcom/google/android/apps/unveil/history/SearchHistoryEngine;

    new-instance v1, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$4;

    invoke-direct {v1, p0, p2}, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$4;-><init>(Lcom/google/android/apps/unveil/history/SearchHistoryProvider;Lcom/google/android/apps/unveil/history/SearchHistoryProvider$TagListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine;->withdrawUserSubmission(Ljava/lang/String;Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;)V

    .line 161
    return-void
.end method
