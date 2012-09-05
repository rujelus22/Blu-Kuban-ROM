.class final Lcom/google/android/common/base/CharMatcher$9;
.super Lcom/google/android/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/common/base/CharMatcher;->isNot(C)Lcom/google/android/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$match:C


# direct methods
.method constructor <init>(C)V
    .registers 2
    .parameter

    .prologue
    .line 414
    iput-char p1, p0, Lcom/google/android/common/base/CharMatcher$9;->val$match:C

    invoke-direct {p0}, Lcom/google/android/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 414
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
    .line 416
    iget-char v0, p0, Lcom/google/android/common/base/CharMatcher$9;->val$match:C

    if-eq p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public negate()Lcom/google/android/common/base/CharMatcher;
    .registers 2

    .prologue
    .line 426
    iget-char v0, p0, Lcom/google/android/common/base/CharMatcher$9;->val$match:C

    invoke-static {v0}, Lcom/google/android/common/base/CharMatcher$9;->is(C)Lcom/google/android/common/base/CharMatcher;

    move-result-object v0

    return-object v0
.end method

.method public or(Lcom/google/android/common/base/CharMatcher;)Lcom/google/android/common/base/CharMatcher;
    .registers 3
    .parameter "other"

    .prologue
    .line 423
    iget-char v0, p0, Lcom/google/android/common/base/CharMatcher$9;->val$match:C

    invoke-virtual {p1, v0}, Lcom/google/android/common/base/CharMatcher;->matches(C)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object p0, Lcom/google/android/common/base/CharMatcher$9;->ANY:Lcom/google/android/common/base/CharMatcher;

    .end local p0
    :cond_a
    return-object p0
.end method
