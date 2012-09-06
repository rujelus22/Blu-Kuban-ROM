.class public final Lcom/google/common/base/Preconditions;
.super Ljava/lang/Object;
.source "Preconditions.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static badElementIndex(IILjava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "index"
    .parameter "size"
    .parameter "desc"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 433
    if-gez p0, :cond_16

    .line 434
    const-string v0, "%s (%s) must not be negative"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 438
    :goto_15
    return-object v0

    .line 435
    :cond_16
    if-gez p1, :cond_31

    .line 436
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "negative size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :cond_31
    const-string v0, "%s (%s) must be less than size (%s)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15
.end method

.method private static badPositionIndex(IILjava/lang/String;)Ljava/lang/String;
    .registers 8
    .parameter "index"
    .parameter "size"
    .parameter "desc"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 483
    if-gez p0, :cond_16

    .line 484
    const-string v0, "%s (%s) must not be negative"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 488
    :goto_15
    return-object v0

    .line 485
    :cond_16
    if-gez p1, :cond_31

    .line 486
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "negative size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 488
    :cond_31
    const-string v0, "%s (%s) must not be greater than size (%s)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15
.end method

.method private static badPositionIndexes(III)Ljava/lang/String;
    .registers 7
    .parameter "start"
    .parameter "end"
    .parameter "size"

    .prologue
    .line 515
    if-ltz p0, :cond_4

    if-le p0, p2, :cond_b

    .line 516
    :cond_4
    const-string v0, "start index"

    invoke-static {p0, p2, v0}, Lcom/google/common/base/Preconditions;->badPositionIndex(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 522
    :goto_a
    return-object v0

    .line 518
    :cond_b
    if-ltz p1, :cond_f

    if-le p1, p2, :cond_16

    .line 519
    :cond_f
    const-string v0, "end index"

    invoke-static {p1, p2, v0}, Lcom/google/common/base/Preconditions;->badPositionIndex(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 522
    :cond_16
    const-string v0, "end index (%s) must not be less than start index (%s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static checkArgument(Z)V
    .registers 2
    .parameter "expression"

    .prologue
    .line 77
    if-nez p0, :cond_8

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 80
    :cond_8
    return-void
.end method

.method public static checkArgument(ZLjava/lang/Object;)V
    .registers 4
    .parameter "expression"
    .end parameter
    .parameter "errorMessage"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 93
    if-nez p0, :cond_c

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_c
    return-void
.end method

.method public static varargs checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .parameter "expression"
    .end parameter
    .parameter "errorMessageTemplate"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "errorMessageArgs"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 120
    if-nez p0, :cond_c

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_c
    return-void
.end method

.method public static checkContentsNotNull(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .registers 2
    .parameter
    .annotation build Lcom/google/common/annotations/GoogleInternal;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Iterable",
            "<*>;>(TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 264
    .local p0, iterable:Ljava/lang/Iterable;,"TT;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->containsOrIsNull(Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 265
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 267
    :cond_c
    return-object p0
.end method

.method public static checkContentsNotNull(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Iterable;
    .registers 4
    .parameter
    .end parameter
    .parameter "errorMessage"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation build Lcom/google/common/annotations/GoogleInternal;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Iterable",
            "<*>;>(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 294
    .local p0, iterable:Ljava/lang/Iterable;,"TT;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->containsOrIsNull(Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 295
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_10
    return-object p0
.end method

.method public static varargs checkContentsNotNull(Ljava/lang/Iterable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Iterable;
    .registers 5
    .parameter
    .end parameter
    .parameter "errorMessageTemplate"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "errorMessageArgs"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation build Lcom/google/common/annotations/GoogleInternal;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Iterable",
            "<*>;>(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 332
    .local p0, iterable:Ljava/lang/Iterable;,"TT;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->containsOrIsNull(Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 333
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-static {p1, p2}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_10
    return-object p0
.end method

.method public static checkElementIndex(II)I
    .registers 3
    .parameter "index"
    .parameter "size"

    .prologue
    .line 406
    const-string v0, "index"

    invoke-static {p0, p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static checkElementIndex(IILjava/lang/String;)I
    .registers 5
    .parameter "index"
    .end parameter
    .parameter "size"
    .end parameter
    .parameter "desc"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 426
    if-ltz p0, :cond_4

    if-lt p0, p1, :cond_e

    .line 427
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p0, p1, p2}, Lcom/google/common/base/Preconditions;->badElementIndex(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_e
    return p0
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, reference:Ljava/lang/Object;,"TT;"
    if-nez p0, :cond_8

    .line 193
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 195
    :cond_8
    return-object p0
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .end parameter
    .parameter "errorMessage"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, reference:Ljava/lang/Object;,"TT;"
    if-nez p0, :cond_c

    .line 210
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_c
    return-object p0
.end method

.method public static varargs checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter
    .end parameter
    .parameter "errorMessageTemplate"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "errorMessageArgs"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 235
    .local p0, reference:Ljava/lang/Object;,"TT;"
    if-nez p0, :cond_c

    .line 237
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-static {p1, p2}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_c
    return-object p0
.end method

.method public static checkPositionIndex(II)I
    .registers 3
    .parameter "index"
    .parameter "size"

    .prologue
    .line 456
    const-string v0, "index"

    invoke-static {p0, p1, v0}, Lcom/google/common/base/Preconditions;->checkPositionIndex(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static checkPositionIndex(IILjava/lang/String;)I
    .registers 5
    .parameter "index"
    .end parameter
    .parameter "size"
    .end parameter
    .parameter "desc"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 476
    if-ltz p0, :cond_4

    if-le p0, p1, :cond_e

    .line 477
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p0, p1, p2}, Lcom/google/common/base/Preconditions;->badPositionIndex(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :cond_e
    return p0
.end method

.method public static checkPositionIndexes(III)V
    .registers 5
    .parameter "start"
    .parameter "end"
    .parameter "size"

    .prologue
    .line 509
    if-ltz p0, :cond_6

    if-lt p1, p0, :cond_6

    if-le p1, p2, :cond_10

    .line 510
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p0, p1, p2}, Lcom/google/common/base/Preconditions;->badPositionIndexes(III)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 512
    :cond_10
    return-void
.end method

.method public static checkState(Z)V
    .registers 2
    .parameter "expression"

    .prologue
    .line 134
    if-nez p0, :cond_8

    .line 135
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 137
    :cond_8
    return-void
.end method

.method public static checkState(ZLjava/lang/Object;)V
    .registers 4
    .parameter "expression"
    .end parameter
    .parameter "errorMessage"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 150
    if-nez p0, :cond_c

    .line 151
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_c
    return-void
.end method

.method public static varargs checkState(ZLjava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .parameter "expression"
    .end parameter
    .parameter "errorMessageTemplate"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "errorMessageArgs"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 177
    if-nez p0, :cond_c

    .line 178
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p1, p2}, Lcom/google/common/base/Preconditions;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_c
    return-void
.end method

.method private static containsOrIsNull(Ljava/lang/Iterable;)Z
    .registers 8
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation build Lcom/google/common/annotations/GoogleInternal;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, iterable:Ljava/lang/Iterable;,"Ljava/lang/Iterable<*>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 341
    if-nez p0, :cond_5

    .line 359
    :goto_4
    return v4

    .line 345
    :cond_5
    instance-of v6, p0, Ljava/util/Collection;

    if-eqz v6, :cond_15

    move-object v0, p0

    .line 346
    check-cast v0, Ljava/util/Collection;

    .line 348
    .local v0, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    const/4 v4, 0x0

    :try_start_d
    invoke-interface {v0, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_10} :catch_12

    move-result v4

    goto :goto_4

    .line 349
    :catch_12
    move-exception v1

    .local v1, e:Ljava/lang/NullPointerException;
    move v4, v5

    .line 351
    goto :goto_4

    .line 354
    .end local v0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    .end local v1           #e:Ljava/lang/NullPointerException;
    :cond_15
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 355
    .local v2, element:Ljava/lang/Object;
    if-nez v2, :cond_19

    goto :goto_4

    .end local v2           #element:Ljava/lang/Object;
    :cond_26
    move v4, v5

    .line 359
    goto :goto_4
.end method

.method static varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 9
    .parameter "template"
    .end parameter
    .parameter "args"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 540
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    array-length v6, p1

    mul-int/lit8 v6, v6, 0x10

    add-int/2addr v5, v6

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 545
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 546
    .local v4, templateStart:I
    const/4 v1, 0x0

    .line 547
    .local v1, i:I
    :goto_13
    array-length v5, p1

    if-ge v1, v5, :cond_1f

    .line 548
    const-string v5, "%s"

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 549
    .local v3, placeholderStart:I
    const/4 v5, -0x1

    if-ne v3, v5, :cond_47

    .line 556
    .end local v3           #placeholderStart:I
    :cond_1f
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    array-length v5, p1

    if-ge v1, v5, :cond_5e

    .line 560
    const-string v5, " ["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    aget-object v5, p1, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v1, v2

    .line 562
    .end local v2           #i:I
    .restart local v1       #i:I
    :goto_36
    array-length v5, p1

    if-ge v1, v5, :cond_59

    .line 563
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    aget-object v5, p1, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_36

    .line 552
    .restart local v3       #placeholderStart:I
    :cond_47
    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    aget-object v5, p1, v1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 554
    add-int/lit8 v4, v3, 0x2

    move v1, v2

    .line 555
    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_13

    .line 566
    .end local v3           #placeholderStart:I
    :cond_59
    const/16 v5, 0x5d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 569
    :cond_5e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
