.class public abstract Lcom/google/android/apps/unveil/env/cache/AbstractCache;
.super Ljava/lang/Object;
.source "AbstractCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        "Value:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    .local p0, this:Lcom/google/android/apps/unveil/env/cache/AbstractCache;,"Lcom/google/android/apps/unveil/env/cache/AbstractCache<TKey;TValue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;)TValue;"
        }
    .end annotation
.end method

.method public abstract put(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKey;TValue;)V"
        }
    .end annotation
.end method
