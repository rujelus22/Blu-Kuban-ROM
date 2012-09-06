.class Lcom/android/email/provider/ContentCache$CounterMap;
.super Ljava/lang/Object;
.source "ContentCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/provider/ContentCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CounterMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 125
    .local p0, this:Lcom/android/email/provider/ContentCache$CounterMap;,"Lcom/android/email/provider/ContentCache$CounterMap<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/provider/ContentCache$CounterMap;->mMap:Ljava/util/HashMap;

    .line 127
    return-void
.end method

.method constructor <init>(I)V
    .registers 3
    .parameter "maxSize"

    .prologue
    .line 121
    .local p0, this:Lcom/android/email/provider/ContentCache$CounterMap;,"Lcom/android/email/provider/ContentCache$CounterMap<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/email/provider/ContentCache$CounterMap;->mMap:Ljava/util/HashMap;

    .line 123
    return-void
.end method


# virtual methods
.method declared-synchronized add(Ljava/lang/Object;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, this:Lcom/android/email/provider/ContentCache$CounterMap;,"Lcom/android/email/provider/ContentCache$CounterMap<TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/email/provider/ContentCache$CounterMap;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 147
    .local v0, refCount:Ljava/lang/Integer;
    if-nez v0, :cond_17

    .line 148
    iget-object v1, p0, Lcom/android/email/provider/ContentCache$CounterMap;->mMap:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_27

    .line 152
    :goto_15
    monitor-exit p0

    return-void

    .line 150
    :cond_17
    :try_start_17
    iget-object v1, p0, Lcom/android/email/provider/ContentCache$CounterMap;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_27

    goto :goto_15

    .line 146
    .end local v0           #refCount:Ljava/lang/Integer;
    :catchall_27
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, this:Lcom/android/email/provider/ContentCache$CounterMap;,"Lcom/android/email/provider/ContentCache$CounterMap<TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/email/provider/ContentCache$CounterMap;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getCount(Ljava/lang/Object;)I
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, this:Lcom/android/email/provider/ContentCache$CounterMap;,"Lcom/android/email/provider/ContentCache$CounterMap<TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/email/provider/ContentCache$CounterMap;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_13

    .line 160
    .local v0, refCount:Ljava/lang/Integer;
    if-nez v0, :cond_e

    const/4 v1, 0x0

    :goto_c
    monitor-exit p0

    return v1

    :cond_e
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_13

    move-result v1

    goto :goto_c

    .line 159
    .end local v0           #refCount:Ljava/lang/Integer;
    :catchall_13
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized size()I
    .registers 2

    .prologue
    .line 164
    .local p0, this:Lcom/android/email/provider/ContentCache$CounterMap;,"Lcom/android/email/provider/ContentCache$CounterMap<TT;>;"
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/email/provider/ContentCache$CounterMap;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized subtract(Ljava/lang/Object;)I
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, this:Lcom/android/email/provider/ContentCache$CounterMap;,"Lcom/android/email/provider/ContentCache$CounterMap<TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/android/email/provider/ContentCache$CounterMap;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 132
    .local v1, refCount:Ljava/lang/Integer;
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1a

    .line 133
    :cond_11
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_17

    .line 130
    .end local v1           #refCount:Ljava/lang/Integer;
    :catchall_17
    move-exception v2

    monitor-exit p0

    throw v2

    .line 135
    .restart local v1       #refCount:Ljava/lang/Integer;
    :cond_1a
    :try_start_1a
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_32

    .line 136
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 137
    .local v0, newCount:I
    iget-object v2, p0, Lcom/android/email/provider/ContentCache$CounterMap;->mMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catchall {:try_start_1a .. :try_end_30} :catchall_17

    .line 142
    :goto_30
    monitor-exit p0

    return v0

    .line 139
    .end local v0           #newCount:I
    :cond_32
    const/4 v0, 0x0

    .line 140
    .restart local v0       #newCount:I
    :try_start_33
    iget-object v2, p0, Lcom/android/email/provider/ContentCache$CounterMap;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catchall {:try_start_33 .. :try_end_38} :catchall_17

    goto :goto_30
.end method
