.class Lcom/android/contacts/util/ExpirableCache$GenerationalCachedValue;
.super Ljava/lang/Object;
.source "ExpirableCache.java"

# interfaces
.implements Lcom/android/contacts/util/ExpirableCache$CachedValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/util/ExpirableCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GenerationalCachedValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/contacts/util/ExpirableCache$CachedValue",
        "<TV;>;"
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final mCacheGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mGeneration:I

.field public final mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .registers 4
    .parameter
    .parameter "cacheGeneration"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")V"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, this:Lcom/android/contacts/util/ExpirableCache$GenerationalCachedValue;,"Lcom/android/contacts/util/ExpirableCache$GenerationalCachedValue<TV;>;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/android/contacts/util/ExpirableCache$GenerationalCachedValue;->mValue:Ljava/lang/Object;

    .line 126
    iput-object p2, p0, Lcom/android/contacts/util/ExpirableCache$GenerationalCachedValue;->mCacheGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 128
    iget-object v0, p0, Lcom/android/contacts/util/ExpirableCache$GenerationalCachedValue;->mCacheGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/util/ExpirableCache$GenerationalCachedValue;->mGeneration:I

    .line 129
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, this:Lcom/android/contacts/util/ExpirableCache$GenerationalCachedValue;,"Lcom/android/contacts/util/ExpirableCache$GenerationalCachedValue<TV;>;"
    iget-object v0, p0, Lcom/android/contacts/util/ExpirableCache$GenerationalCachedValue;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public isExpired()Z
    .registers 3

    .prologue
    .line 138
    .local p0, this:Lcom/android/contacts/util/ExpirableCache$GenerationalCachedValue;,"Lcom/android/contacts/util/ExpirableCache$GenerationalCachedValue<TV;>;"
    iget v0, p0, Lcom/android/contacts/util/ExpirableCache$GenerationalCachedValue;->mGeneration:I

    iget-object v1, p0, Lcom/android/contacts/util/ExpirableCache$GenerationalCachedValue;->mCacheGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
