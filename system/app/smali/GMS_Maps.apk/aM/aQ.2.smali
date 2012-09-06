.class public LaM/aQ;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/google/googlenav/ai;)I
    .registers 3
    .parameter

    .prologue
    .line 115
    invoke-static {p0}, LaM/aQ;->c(Lcom/google/googlenav/ai;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 116
    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    goto :goto_7
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/util/List;Ljava/util/List;)V
    .registers 13
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 34
    if-eqz p0, :cond_8

    if-eqz p1, :cond_8

    if-nez p2, :cond_9

    .line 57
    :cond_8
    return-void

    .line 38
    :cond_9
    invoke-virtual {p0, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    move v2, v1

    .line 39
    :goto_e
    if-ge v2, v3, :cond_8

    .line 40
    invoke-virtual {p0, v9, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 44
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 47
    invoke-static {v0}, LaM/aQ;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)[Lcom/google/googlenav/aw;

    move-result-object v5

    move v0, v1

    .line 48
    :goto_1d
    array-length v6, v5

    if-ge v0, v6, :cond_31

    .line 49
    new-instance v6, Lcom/google/googlenav/ui/bx;

    aget-object v7, v5, v0

    iget-object v7, v7, Lcom/google/googlenav/aw;->a:Ljava/lang/String;

    sget v8, Lcom/google/googlenav/ui/bn;->bx:I

    invoke-direct {v6, v7, v8}, Lcom/google/googlenav/ui/bx;-><init>(Ljava/lang/String;I)V

    .line 51
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 54
    :cond_31
    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_e
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)[Lcom/google/googlenav/aw;
    .registers 11
    .parameter

    .prologue
    const/16 v9, 0x11

    const/4 v8, 0x1

    .line 87
    invoke-virtual {p0, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 88
    new-array v3, v2, [Lcom/google/googlenav/aw;

    .line 89
    const/4 v0, 0x0

    move v1, v0

    :goto_b
    if-ge v1, v2, :cond_38

    .line 90
    invoke-virtual {p0, v9, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 93
    invoke-static {v4, v8}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v5

    .line 95
    const/4 v0, 0x2

    invoke-static {v4, v0}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    .line 97
    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 98
    invoke-static {v4, v8}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v4

    .line 100
    new-instance v6, Lcom/google/googlenav/aw;

    invoke-static {p0}, LaM/aQ;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v7

    if-nez v0, :cond_2f

    invoke-static {p0}, LaM/aQ;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;

    move-result-object v0

    :cond_2f
    invoke-direct {v6, v5, v7, v0, v4}, Lcom/google/googlenav/aw;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v3, v1

    .line 89
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    .line 105
    :cond_38
    return-object v3
.end method

.method public static b(Lcom/google/googlenav/ai;)I
    .registers 3
    .parameter

    .prologue
    .line 126
    invoke-static {p0}, LaM/aQ;->d(Lcom/google/googlenav/ai;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 127
    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    goto :goto_7
.end method

.method private static b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;
    .registers 9
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 63
    invoke-static {p0, v2}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 65
    invoke-static {v0, v2}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 67
    invoke-static {v0, v7}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v3

    .line 68
    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v4

    .line 70
    invoke-static {v3}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-static {v4}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    :cond_20
    move v0, v2

    .line 71
    :goto_21
    const-string v5, "%s%s%s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v1

    if-eqz v0, :cond_37

    const-string v0, ""

    :goto_2c
    aput-object v0, v6, v2

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_35
    move v0, v1

    .line 70
    goto :goto_21

    .line 71
    :cond_37
    const-string v0, " - "

    goto :goto_2c
.end method

.method public static c(Lcom/google/googlenav/ai;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 3
    .parameter

    .prologue
    .line 140
    const/16 v0, 0x1c

    sget-object v1, Lbm/O;->f:Lcom/google/googlenav/common/io/protocol/Extension;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ai;->a(ILcom/google/googlenav/common/io/protocol/Extension;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method private static c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 77
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\<.*?>"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Lcom/google/googlenav/ai;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 3
    .parameter

    .prologue
    .line 151
    const/16 v0, 0x1b

    sget-object v1, Lbm/aX;->c:Lcom/google/googlenav/common/io/protocol/Extension;

    invoke-virtual {p0, v0, v1}, Lcom/google/googlenav/ai;->a(ILcom/google/googlenav/common/io/protocol/Extension;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method
