.class public Lax/G;
.super Lax/s;
.source "SourceFile"


# direct methods
.method constructor <init>(Lax/N;Lax/F;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 27
    new-instance v5, Lax/H;

    invoke-direct {v5}, Lax/H;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lax/s;-><init>(Lax/N;Lax/F;IZLax/O;)V

    .line 35
    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2
    .parameter

    .prologue
    .line 22
    invoke-static {p0}, Lax/G;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method private static c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2
    .parameter

    .prologue
    .line 97
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 98
    return-object v0
.end method


# virtual methods
.method protected a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lax/A;
    .registers 4
    .parameter

    .prologue
    .line 39
    new-instance v0, Lax/A;

    invoke-static {p1}, Lax/G;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-direct {v0, v1}, Lax/A;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    return-object v0
.end method

.method protected a(Lax/A;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-virtual {p1}, Lax/A;->t()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 59
    const/4 v1, 0x1

    invoke-virtual {p2, v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 60
    return-void
.end method

.method protected a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x7

    .line 64
    invoke-static {p1}, Lax/G;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 65
    invoke-static {p2}, Lax/G;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 69
    invoke-virtual {v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 70
    invoke-virtual {v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    invoke-virtual {v1, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 72
    :cond_1a
    invoke-virtual {v2, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 73
    invoke-virtual {v2, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 75
    :cond_27
    invoke-virtual {v2, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 76
    invoke-virtual {v2, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 78
    :cond_34
    invoke-virtual {v2, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 79
    invoke-virtual {v2, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {v1, v7, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 83
    :cond_41
    invoke-virtual {v2, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 84
    invoke-virtual {v1, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    .line 85
    :goto_4b
    if-lez v0, :cond_53

    .line 86
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->remove(II)V

    goto :goto_4b

    .line 88
    :cond_53
    invoke-virtual {v2, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    .line 89
    const/4 v0, 0x0

    :goto_58
    if-ge v0, v3, :cond_64

    .line 90
    invoke-virtual {v2, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .line 93
    :cond_64
    return-void
.end method
