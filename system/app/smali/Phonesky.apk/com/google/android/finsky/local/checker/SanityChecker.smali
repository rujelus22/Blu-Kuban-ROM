.class public Lcom/google/android/finsky/local/checker/SanityChecker;
.super Ljava/lang/Object;
.source "SanityChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/local/checker/SanityChecker$SanityCheckRule;
    }
.end annotation


# instance fields
.field private final mAssetStore:Lcom/google/android/finsky/local/AssetStore;

.field private final mRules:[Lcom/google/android/finsky/local/checker/SanityChecker$SanityCheckRule;


# direct methods
.method public varargs constructor <init>(Lcom/google/android/finsky/local/AssetStore;[Lcom/google/android/finsky/local/checker/SanityChecker$SanityCheckRule;)V
    .registers 3
    .parameter "store"
    .parameter "rules"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/google/android/finsky/local/checker/SanityChecker;->mAssetStore:Lcom/google/android/finsky/local/AssetStore;

    .line 21
    iput-object p2, p0, Lcom/google/android/finsky/local/checker/SanityChecker;->mRules:[Lcom/google/android/finsky/local/checker/SanityChecker$SanityCheckRule;

    .line 22
    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 31
    .local v5, startTime:J
    const/4 v1, 0x0

    .line 32
    .local v1, corrected:I
    iget-object v0, p0, Lcom/google/android/finsky/local/checker/SanityChecker;->mRules:[Lcom/google/android/finsky/local/checker/SanityChecker$SanityCheckRule;

    .local v0, arr$:[Lcom/google/android/finsky/local/checker/SanityChecker$SanityCheckRule;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_9
    if-ge v2, v3, :cond_17

    aget-object v4, v0, v2

    .line 33
    .local v4, rule:Lcom/google/android/finsky/local/checker/SanityChecker$SanityCheckRule;
    iget-object v7, p0, Lcom/google/android/finsky/local/checker/SanityChecker;->mAssetStore:Lcom/google/android/finsky/local/AssetStore;

    invoke-interface {v4, v7}, Lcom/google/android/finsky/local/checker/SanityChecker$SanityCheckRule;->run(Lcom/google/android/finsky/local/AssetStore;)I

    move-result v7

    add-int/2addr v1, v7

    .line 32
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 35
    .end local v4           #rule:Lcom/google/android/finsky/local/checker/SanityChecker$SanityCheckRule;
    :cond_17
    const-string v7, "# LocalAssets corrected : %d\nSanity check took : %d ms"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    return-void
.end method
