.class final Lcom/google/android/common/base/CharMatcher$7;
.super Lcom/google/android/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/google/android/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public collapseFrom(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .registers 4
    .parameter "sequence"
    .parameter "replacement"

    .prologue
    .line 348
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public indexIn(Ljava/lang/CharSequence;)I
    .registers 3
    .parameter "sequence"

    .prologue
    .line 315
    invoke-static {p1}, Lcom/google/android/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const/4 v0, -0x1

    return v0
.end method

.method public matches(C)Z
    .registers 3
    .parameter "c"

    .prologue
    .line 311
    const/4 v0, 0x0

    return v0
.end method

.method public or(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/CharMatcher;
    .registers 3
    .parameter "other"

    .prologue
    .line 362
    invoke-static {p1}, Lcom/google/android/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/common/base/CharMatcher;

    return-object v0
.end method

.method public precomputed()Lcom/google/android/common/base/CharMatcher;
    .registers 1

    .prologue
    .line 370
    return-object p0
.end method

.method protected setBits(Lcom/google/android/common/base/CharMatcher$LookupTable;)V
    .registers 2
    .parameter "table"

    .prologue
    .line 368
    return-void
.end method
