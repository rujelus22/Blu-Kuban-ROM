.class final Lcom/google/android/common/base/CharMatcher$10;
.super Lcom/google/android/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/common/base/CharMatcher;->anyOf(Ljava/lang/CharSequence;)Lcom/google/android/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$match1:C

.field final synthetic val$match2:C


# direct methods
.method constructor <init>(CC)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 444
    iput-char p1, p0, Lcom/google/android/common/base/CharMatcher$10;->val$match1:C

    iput-char p2, p0, Lcom/google/android/common/base/CharMatcher$10;->val$match2:C

    invoke-direct {p0}, Lcom/google/android/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 444
    check-cast p1, Ljava/lang/Character;

    .end local p1
    invoke-super {p0, p1}, Lcom/google/android/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public matches(C)Z
    .registers 3
    .parameter "c"

    .prologue
    .line 446
    iget-char v0, p0, Lcom/google/android/common/base/CharMatcher$10;->val$match1:C

    if-eq p1, v0, :cond_8

    iget-char v0, p0, Lcom/google/android/common/base/CharMatcher$10;->val$match2:C

    if-ne p1, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public precomputed()Lcom/google/android/common/base/CharMatcher;
    .registers 1

    .prologue
    .line 453
    return-object p0
.end method

.method protected setBits(Lcom/google/android/common/base/CharMatcher$LookupTable;)V
    .registers 3
    .parameter "table"

    .prologue
    .line 449
    iget-char v0, p0, Lcom/google/android/common/base/CharMatcher$10;->val$match1:C

    invoke-virtual {p1, v0}, Lcom/google/android/common/base/CharMatcher$LookupTable;->set(C)V

    .line 450
    iget-char v0, p0, Lcom/google/android/common/base/CharMatcher$10;->val$match2:C

    invoke-virtual {p1, v0}, Lcom/google/android/common/base/CharMatcher$LookupTable;->set(C)V

    .line 451
    return-void
.end method
