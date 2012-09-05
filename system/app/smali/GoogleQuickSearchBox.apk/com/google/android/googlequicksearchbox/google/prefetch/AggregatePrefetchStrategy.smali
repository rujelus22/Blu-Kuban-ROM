.class public Lcom/google/android/googlequicksearchbox/google/prefetch/AggregatePrefetchStrategy;
.super Ljava/lang/Object;
.source "AggregatePrefetchStrategy.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetchStrategy;


# instance fields
.field private mStrategies:[Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetchStrategy;


# direct methods
.method public varargs constructor <init>([Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetchStrategy;)V
    .registers 2
    .parameter "strategies"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/AggregatePrefetchStrategy;->mStrategies:[Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetchStrategy;

    .line 30
    return-void
.end method


# virtual methods
.method public shouldPrefetchNow()Z
    .registers 6

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/prefetch/AggregatePrefetchStrategy;->mStrategies:[Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetchStrategy;

    .local v0, arr$:[Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetchStrategy;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_4
    if-ge v1, v2, :cond_13

    aget-object v3, v0, v1

    .line 35
    .local v3, s:Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetchStrategy;
    invoke-interface {v3}, Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetchStrategy;->shouldPrefetchNow()Z

    move-result v4

    if-nez v4, :cond_10

    .line 36
    const/4 v4, 0x0

    .line 39
    .end local v3           #s:Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetchStrategy;
    :goto_f
    return v4

    .line 34
    .restart local v3       #s:Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetchStrategy;
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 39
    .end local v3           #s:Lcom/google/android/googlequicksearchbox/google/prefetch/PrefetchStrategy;
    :cond_13
    const/4 v4, 0x1

    goto :goto_f
.end method
