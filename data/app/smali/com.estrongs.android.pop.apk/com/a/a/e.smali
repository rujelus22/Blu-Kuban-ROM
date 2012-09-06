.class public Lcom/a/a/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(J)Ljava/lang/String;
    .registers 7

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    long-to-int v0, p0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0xffffffffL

    cmp-long v0, p0, v3

    if-lez v0, :cond_27

    const/16 v0, 0x20

    shr-long v3, p0, v0

    long-to-int v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    :goto_23
    const/16 v3, 0x8

    if-lt v0, v3, :cond_2f

    :cond_27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2f
    const/16 v3, 0x30

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_23
.end method

.method public static a([B)[B
    .registers 4

    const/4 v2, 0x0

    if-nez p0, :cond_5

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :cond_5
    array-length v1, p0

    new-array v0, v1, [B

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4
.end method
