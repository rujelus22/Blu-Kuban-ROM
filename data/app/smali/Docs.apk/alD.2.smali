.class public final LalD;
.super Ljava/lang/Object;
.source "UnsignedInts.java"


# direct methods
.method static a(I)I
    .registers 2
    .parameter

    .prologue
    .line 51
    const/high16 v0, -0x8000

    xor-int/2addr v0, p0

    return v0
.end method

.method public static a(II)I
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-static {p0}, LalD;->a(I)I

    move-result v0

    invoke-static {p1}, LalD;->a(I)I

    move-result v1

    invoke-static {v0, v1}, LalA;->a(II)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;I)I
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 213
    invoke-static {p0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    invoke-static {p0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    .line 215
    const-wide v2, 0xffffffffL

    and-long/2addr v2, v0

    cmp-long v2, v2, v0

    if-eqz v2, :cond_3a

    .line 216
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in base "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not in the range of an unsigned integer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_3a
    long-to-int v0, v0

    return v0
.end method

.method public static a(I)J
    .registers 5
    .parameter

    .prologue
    .line 71
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static a(II)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 239
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    .line 240
    invoke-static {v0, v1, p1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
