.class public Lcom/google/googlenav/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(IILcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    if-nez p2, :cond_5

    .line 27
    const-string v0, ""

    .line 29
    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p2, p0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    if-le v0, p1, :cond_10

    invoke-virtual {p2, p0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_10
    const-string v0, ""

    goto :goto_4
.end method

.method public static a(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 37
    const-string v0, ", "

    invoke-static {p0, p1, v0}, Lcom/google/googlenav/d;->a(ILcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/google/googlenav/d;->a(IILcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    .line 46
    const/4 v1, 0x1

    invoke-static {p0, v1, p1}, Lcom/google/googlenav/d;->a(IILcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {v0, v1, p2}, Lcom/google/googlenav/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 56
    const-string v0, ", "

    invoke-static {p0, p1, v0}, Lcom/google/googlenav/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    invoke-static {p0}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 67
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :cond_e
    invoke-static {p1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_23

    invoke-static {p2}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 71
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    :cond_23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    :cond_26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
