.class public final Lcom/google/common/base/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(C)C
    .registers 2
    .parameter

    .prologue
    .line 423
    invoke-static {p0}, Lcom/google/common/base/a;->b(C)Z

    move-result v0

    if-eqz v0, :cond_9

    xor-int/lit8 v0, p0, 0x20

    int-to-char p0, v0

    :cond_9
    return p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 410
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 411
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 412
    const/4 v0, 0x0

    :goto_a
    if-ge v0, v1, :cond_1a

    .line 413
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/google/common/base/a;->a(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 415
    :cond_1a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(C)Z
    .registers 2
    .parameter

    .prologue
    .line 463
    const/16 v0, 0x41

    if-lt p0, v0, :cond_a

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
