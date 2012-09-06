.class Lcom/google/android/apps/unveil/history/SearchHistoryProvider$1;
.super Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;
.source "SearchHistoryProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/apps/unveil/history/SearchHistoryProvider;->query(Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/unveil/history/SearchHistoryProvider;

.field final synthetic val$token:Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;


# direct methods
.method constructor <init>(Lcom/google/android/apps/unveil/history/SearchHistoryProvider;Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$1;->this$0:Lcom/google/android/apps/unveil/history/SearchHistoryProvider;

    iput-object p2, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$1;->val$token:Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;

    invoke-direct {p0}, Lcom/google/android/apps/unveil/history/SearchHistoryEngine$EventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .registers 4

    .prologue
    .line 68
    iget-object v1, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$1;->val$token:Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;

    monitor-enter v1

    .line 69
    :try_start_3
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$1;->val$token:Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;

    const/4 v2, 0x0

    #setter for: Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->hasRequestedMore:Z
    invoke-static {v0, v2}, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->access$002(Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;Z)Z

    .line 70
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$1;->val$token:Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;

    #getter for: Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->recycled:Z
    invoke-static {v0}, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->access$100(Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 71
    monitor-exit v1

    .line 75
    :goto_12
    return-void

    .line 73
    :cond_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_1c

    .line 74
    iget-object v0, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$1;->val$token:Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;

    iget-object v0, v0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->listener:Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryListener;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryListener;->onError()V

    goto :goto_12

    .line 73
    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public onSearchResponse([Lcom/google/android/apps/unveil/history/SearchHistoryItem;ILjava/lang/String;)V
    .registers 12
    .parameter "newItems"
    .parameter "totalResultCount"
    .parameter "responseContinuationToken"

    .prologue
    .line 81
    iget-object v6, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$1;->val$token:Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;

    monitor-enter v6

    .line 82
    :try_start_3
    iget-object v5, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$1;->val$token:Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;

    #getter for: Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->recycled:Z
    invoke-static {v5}, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->access$100(Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 83
    monitor-exit v6

    .line 99
    :goto_c
    return-void

    .line 85
    :cond_d
    iget-object v5, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$1;->val$token:Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;

    iget-object v5, v5, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->results:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 87
    .local v1, from:I
    iget-object v5, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$1;->val$token:Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;

    const/4 v7, 0x0

    #setter for: Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->hasRequestedMore:Z
    invoke-static {v5, v7}, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->access$002(Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;Z)Z

    .line 88
    iget-object v5, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$1;->val$token:Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;

    iput-object p3, v5, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->nextContinuationToken:Ljava/lang/String;

    .line 89
    move-object v0, p1

    .local v0, arr$:[Lcom/google/android/apps/unveil/history/SearchHistoryItem;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_22
    if-ge v2, v3, :cond_30

    aget-object v4, v0, v2

    .line 90
    .local v4, newItem:Lcom/google/android/apps/unveil/history/SearchHistoryItem;
    iget-object v5, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$1;->val$token:Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;

    iget-object v5, v5, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->results:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 92
    .end local v4           #newItem:Lcom/google/android/apps/unveil/history/SearchHistoryItem;
    :cond_30
    array-length v5, p1

    if-nez v5, :cond_4b

    .line 93
    iget-object v5, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$1;->val$token:Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;

    iget-object v7, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$1;->val$token:Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;

    iget-object v7, v7, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->results:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    #setter for: Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->approximateTotalCount:I
    invoke-static {v5, v7}, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->access$202(Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;I)I

    .line 97
    :goto_40
    monitor-exit v6
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_51

    .line 98
    iget-object v5, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$1;->val$token:Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;

    iget-object v5, v5, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->listener:Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryListener;

    iget-object v6, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$1;->val$token:Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;

    invoke-interface {v5, v6, v1}, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryListener;->onResults(Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;I)V

    goto :goto_c

    .line 95
    :cond_4b
    :try_start_4b
    iget-object v5, p0, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$1;->val$token:Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;

    #setter for: Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->approximateTotalCount:I
    invoke-static {v5, p2}, Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;->access$202(Lcom/google/android/apps/unveil/history/SearchHistoryProvider$QueryToken;I)I

    goto :goto_40

    .line 97
    .end local v0           #arr$:[Lcom/google/android/apps/unveil/history/SearchHistoryItem;
    .end local v1           #from:I
    .end local v2           #i$:I
    .end local v3           #len$:I
    :catchall_51
    move-exception v5

    monitor-exit v6
    :try_end_53
    .catchall {:try_start_4b .. :try_end_53} :catchall_51

    throw v5
.end method
