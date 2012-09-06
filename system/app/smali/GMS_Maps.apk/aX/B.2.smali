.class public Lax/B;
.super Lax/s;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lax/N;Lax/F;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 27
    const/16 v3, 0x8

    const/4 v4, 0x0

    new-instance v5, Lax/C;

    invoke-direct {v5}, Lax/C;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lax/s;-><init>(Lax/N;Lax/F;IZLax/O;)V

    .line 36
    return-void
.end method

.method public static b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2
    .parameter

    .prologue
    .line 56
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lax/A;
    .registers 4
    .parameter

    .prologue
    .line 76
    new-instance v0, Lax/a;

    invoke-static {p1}, Lax/B;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-direct {v0, v1}, Lax/a;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    return-object v0
.end method

.method public a(I)Lax/a;
    .registers 5
    .parameter

    .prologue
    .line 45
    invoke-virtual {p0}, Lax/B;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/A;

    .line 46
    check-cast v0, Lax/a;

    .line 47
    invoke-virtual {v0}, Lax/a;->b()I

    move-result v2

    if-ne v2, p1, :cond_8

    .line 51
    :goto_1c
    return-object v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method protected a(Lax/A;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-virtual {p1}, Lax/A;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 82
    const/4 v1, 0x6

    invoke-virtual {p2, v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 83
    return-void
.end method

.method protected a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 88
    return-void
.end method

.method public a(Lax/A;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x2

    .line 92
    check-cast p1, Lax/a;

    .line 94
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/hc;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 95
    invoke-virtual {p0, p1, v0}, Lax/B;->a(Lax/A;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lax/a;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lax/a;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 97
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/hc;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 98
    invoke-virtual {v1, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 100
    iget-object v0, p0, Lax/B;->b:Lax/N;

    iget v2, p0, Lax/B;->a:I

    invoke-interface {v0, v2, v1}, Lax/N;->b(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v0

    return v0
.end method

.method public b()Ljava/util/List;
    .registers 4

    .prologue
    .line 61
    invoke-virtual {p0}, Lax/B;->a()Ljava/util/List;

    move-result-object v0

    .line 62
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/cx;->c(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 63
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lax/A;

    .line 64
    invoke-virtual {v0}, Lax/A;->g()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 66
    :cond_24
    return-object v1
.end method
