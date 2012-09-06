.class public final Lcom/google/common/base/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(C)C
    .registers 2
    .parameter

    .prologue
    .line 446
    const/16 v0, 0x61

    if-lt p0, v0, :cond_f

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_f

    const/4 v0, 0x1

    :goto_9
    if-eqz v0, :cond_e

    and-int/lit8 v0, p0, 0x5f

    int-to-char p0, v0

    :cond_e
    return p0

    :cond_f
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 411
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 412
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move v3, v2

    .line 413
    :goto_b
    if-ge v3, v4, :cond_28

    .line 414
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x41

    if-lt v0, v1, :cond_26

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_26

    const/4 v1, 0x1

    :goto_1a
    if-eqz v1, :cond_1f

    xor-int/lit8 v0, v0, 0x20

    int-to-char v0, v0

    :cond_1f
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 413
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_b

    :cond_26
    move v1, v2

    .line 414
    goto :goto_1a

    .line 416
    :cond_28
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 433
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 434
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 435
    const/4 v0, 0x0

    :goto_a
    if-ge v0, v1, :cond_1a

    .line 436
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/common/base/b;->a(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 435
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 438
    :cond_1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
