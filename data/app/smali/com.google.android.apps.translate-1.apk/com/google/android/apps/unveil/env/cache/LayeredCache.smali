.class public Lcom/google/android/apps/unveil/env/cache/LayeredCache;
.super Lcom/google/android/apps/unveil/env/cache/AbstractCache;
.source "LayeredCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        "Value:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/apps/unveil/env/cache/AbstractCache",
        "<TKey;TValue;>;"
    }
.end annotation


# instance fields
.field private final bottomLayer:Lcom/google/android/apps/unveil/env/cache/AbstractCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/unveil/env/cache/AbstractCache",
            "<TKey;TValue;>;"
        }
    .end annotation
.end field

.field private final topLayer:Lcom/google/android/apps/unveil/env/cache/AbstractCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/unveil/env/cache/AbstractCache",
            "<TKey;TValue;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/apps/unveil/env/cache/AbstractCache;Lcom/google/android/apps/unveil/env/cache/AbstractCache;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/unveil/env/cache/AbstractCache",
            "<TKey;TValue;>;",
            "Lcom/google/android/apps/unveil/env/cache/AbstractCache",
            "<TKey;TValue;>;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p0, this:Lcom/google/android/apps/unveil/env/cache/LayeredCache;,"Lcom/google/android/apps/unveil/env/cache/LayeredCache<TKey;TValue;>;"
    .local p1, topLayer:Lcom/google/android/apps/unveil/env/cache/AbstractCache;,"Lcom/google/android/apps/unveil/env/cache/AbstractCache<TKey;TValue;>;"
    .local p2, bottomLayer:Lcom/google/android/apps/unveil/env/cache/AbstractCache;,"Lcom/google/android/apps/unveil/env/cache/AbstractCache<TKey;TValue;>;"
    invoke-direct {p0}, Lcom/google/android/apps/unveil/env/cache/AbstractCache;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/android/apps/unveil/env/cache/LayeredCache;->topLayer:Lcom/google/android/apps/unveil/env/cache/AbstractCache;

    .line 20
    iput-object p2, p0, Lcom/google/android/apps/unveil/env/cache/LayeredCache;->bottomLayer:Lcom/google/android/apps/unveil/env/cache/AbstractCache;

    .line 21
    return-void
.end method

.method public static layer(Lcom/google/android/apps/unveil/env/cache/AbstractCache;Lcom/google/android/apps/unveil/env/cache/AbstractCache;)Lcom/google/android/apps/unveil/env/cache/AbstractCache;
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Key:",
            "Ljava/lang/Object;",
            "Value:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/apps/unveil/env/cache/AbstractCache",
            "<TKey;TValue;>;",
            "Lcom/google/android/apps/unveil/env/cache/AbstractCache",
            "<TKey;TValue;>;)",
            "Lcom/google/android/apps/unveil/env/cache/AbstractCache",
            "<TKey;TValue;>;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, topLayer:Lcom/google/android/apps/unveil/env/cache/AbstractCache;,"Lcom/google/android/apps/unveil/env/cache/AbstractCache<TKey;TValue;>;"
    .local p1, bottomLayer:Lcom/google/android/apps/unveil/env/cache/AbstractCache;,"Lcom/google/android/apps/unveil/env/cache/AbstractCache<TKey;TValue;>;"
    new-instance v0, Lcom/google/android/apps/unveil/env/cache/LayeredCache;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/unveil/env/cache/LayeredCache;-><init>(Lcom/google/android/apps/unveil/env/cache/AbstractCache;Lcom/google/android/apps/unveil/env/cache/AbstractCache;)V

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;)TValue;"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, this:Lcom/google/android/apps/unveil/env/cache/LayeredCache;,"Lcom/google/android/apps/unveil/env/cache/LayeredCache<TKey;TValue;>;"
    .local p1, key:Ljava/lang/Object;,"TKey;"
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/cache/LayeredCache;->topLayer:Lcom/google/android/apps/unveil/env/cache/AbstractCache;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/unveil/env/cache/AbstractCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 26
    .local v1, topValue:Ljava/lang/Object;,"TValue;"
    if-nez v1, :cond_16

    .line 27
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/cache/LayeredCache;->bottomLayer:Lcom/google/android/apps/unveil/env/cache/AbstractCache;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/unveil/env/cache/AbstractCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 28
    .local v0, bottomValue:Ljava/lang/Object;,"TValue;"
    if-eqz v0, :cond_15

    .line 29
    iget-object v2, p0, Lcom/google/android/apps/unveil/env/cache/LayeredCache;->topLayer:Lcom/google/android/apps/unveil/env/cache/AbstractCache;

    invoke-virtual {v2, p1, v0}, Lcom/google/android/apps/unveil/env/cache/AbstractCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    .end local v0           #bottomValue:Ljava/lang/Object;,"TValue;"
    :cond_15
    :goto_15
    return-object v0

    :cond_16
    move-object v0, v1

    goto :goto_15
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;TValue;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p0, this:Lcom/google/android/apps/unveil/env/cache/LayeredCache;,"Lcom/google/android/apps/unveil/env/cache/LayeredCache<TKey;TValue;>;"
    .local p1, key:Ljava/lang/Object;,"TKey;"
    .local p2, value:Ljava/lang/Object;,"TValue;"
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/cache/LayeredCache;->topLayer:Lcom/google/android/apps/unveil/env/cache/AbstractCache;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/unveil/env/cache/AbstractCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lcom/google/android/apps/unveil/env/cache/LayeredCache;->bottomLayer:Lcom/google/android/apps/unveil/env/cache/AbstractCache;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/unveil/env/cache/AbstractCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    return-void
.end method
