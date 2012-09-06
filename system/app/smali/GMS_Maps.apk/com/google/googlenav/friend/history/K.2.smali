.class public abstract Lcom/google/googlenav/friend/history/K;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ljava/util/List;
    .registers 10
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v4, 0x2

    const/4 v7, 0x1

    .line 37
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 40
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v1, v2}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 44
    if-nez v1, :cond_15

    .line 71
    :cond_14
    :goto_14
    return-object v0

    .line 49
    :cond_15
    invoke-virtual {v1, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 50
    new-instance v2, Lcom/google/googlenav/friend/history/P;

    invoke-virtual {v1, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/google/googlenav/friend/history/P;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_27
    invoke-virtual {v1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 54
    new-instance v2, Lcom/google/googlenav/friend/history/o;

    invoke-virtual {v1, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v3

    invoke-virtual {p0, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/googlenav/friend/history/o;-><init>(JJ)V

    .line 60
    invoke-virtual {v2}, Lcom/google/googlenav/friend/history/o;->b()I

    move-result v3

    if-le v3, v7, :cond_43

    .line 61
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_43
    invoke-virtual {v1, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 66
    new-instance v2, Lcom/google/googlenav/friend/history/N;

    invoke-virtual {v1, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    invoke-direct {v2, v1}, Lcom/google/googlenav/friend/history/N;-><init>(I)V

    .line 68
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14
.end method


# virtual methods
.method abstract a()Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/googlenav/friend/history/K;->a:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 80
    invoke-virtual {p0}, Lcom/google/googlenav/friend/history/K;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/history/K;->a:Ljava/lang/String;

    .line 83
    :cond_a
    iget-object v0, p0, Lcom/google/googlenav/friend/history/K;->a:Ljava/lang/String;

    return-object v0
.end method
