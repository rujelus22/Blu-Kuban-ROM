.class final Lcom/google/common/base/CharMatcher$16;
.super Lcom/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final table:[C


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "x0"

    .prologue
    .line 1236
    invoke-direct {p0, p1}, Lcom/google/common/base/CharMatcher;-><init>(Ljava/lang/String;)V

    .line 1262
    const/16 v0, 0x4f

    new-array v0, v0, [C

    fill-array-data v0, :array_e

    iput-object v0, p0, Lcom/google/common/base/CharMatcher$16;->table:[C

    return-void

    nop

    :array_e
    .array-data 0x2
        0x1t 0x0t
        0x0t 0x0t
        0xa0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x9t 0x0t
        0xat 0x0t
        0xbt 0x0t
        0xct 0x0t
        0xdt 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x28t 0x20t
        0x29t 0x20t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x2ft 0x20t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x20t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x30t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x85t 0x0t
        0x0t 0x20t
        0x1t 0x20t
        0x2t 0x20t
        0x3t 0x20t
        0x4t 0x20t
        0x5t 0x20t
        0x6t 0x20t
        0x7t 0x20t
        0x8t 0x20t
        0x9t 0x20t
        0xat 0x20t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x5ft 0x20t
        0x80t 0x16t
        0x0t 0x0t
        0x0t 0x0t
        0xet 0x18t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 1236
    check-cast p1, Ljava/lang/Character;

    .end local p1
    invoke-super {p0, p1}, Lcom/google/common/base/CharMatcher;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public matches(C)Z
    .registers 4
    .parameter "c"

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/google/common/base/CharMatcher$16;->table:[C

    rem-int/lit8 v1, p1, 0x4f

    aget-char v0, v0, v1

    if-ne v0, p1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public precomputed()Lcom/google/common/base/CharMatcher;
    .registers 1

    .prologue
    .line 1272
    return-object p0
.end method
