.class final Lcom/google/common/base/CharMatcher$12;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/base/CharMatcher;->inRange(CC)Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$endInclusive:C

.field final synthetic val$startInclusive:C


# direct methods
.method constructor <init>(CC)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 479
    iput-char p1, p0, Lcom/google/common/base/CharMatcher$12;->val$startInclusive:C

    iput-char p2, p0, Lcom/google/common/base/CharMatcher$12;->val$endInclusive:C

    invoke-direct {p0}, Lcom/google/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(C)Z
    .registers 3
    .parameter "c"

    .prologue
    .line 481
    iget-char v0, p0, Lcom/google/common/base/CharMatcher$12;->val$startInclusive:C

    if-gt v0, p1, :cond_a

    iget-char v0, p0, Lcom/google/common/base/CharMatcher$12;->val$endInclusive:C

    if-gt p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
