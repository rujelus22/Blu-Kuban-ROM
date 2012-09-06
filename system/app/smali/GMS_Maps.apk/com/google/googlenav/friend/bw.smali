.class public Lcom/google/googlenav/friend/bw;
.super Lcom/google/googlenav/friend/n;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/googlenav/bj;)V
    .registers 2
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/google/googlenav/friend/n;-><init>(Lcom/google/googlenav/friend/bk;)V

    .line 22
    return-void
.end method


# virtual methods
.method public c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z
    .registers 6
    .parameter

    .prologue
    const/16 v3, 0xb

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 26
    invoke-virtual {p1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-nez v2, :cond_b

    .line 32
    :goto_a
    return v1

    .line 29
    :cond_b
    invoke-virtual {p1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 32
    invoke-virtual {v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual {v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    :goto_1b
    move v1, v0

    goto :goto_a

    :cond_1d
    move v0, v1

    goto :goto_1b
.end method
