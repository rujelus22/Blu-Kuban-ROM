.class public Lae/b;
.super Lac/a;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Lae/c;

.field private c:I

.field private d:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Lae/c;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 76
    iput-object p1, p0, Lae/b;->a:Ljava/util/List;

    .line 77
    iput-object p2, p0, Lae/b;->b:Lae/c;

    .line 78
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 82
    const/16 v0, 0x81

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 6
    .parameter

    .prologue
    .line 87
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/bD;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 88
    iget-object v0, p0, Lae/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/B;

    .line 89
    const/4 v3, 0x1

    invoke-virtual {v0}, Lat/B;->g()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_d

    .line 91
    :cond_22
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 92
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 12
    .parameter

    .prologue
    const/4 v9, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 96
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/bD;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v2, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 98
    invoke-virtual {v3, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    iput v2, p0, Lae/b;->c:I

    .line 99
    iget v2, p0, Lae/b;->c:I

    if-eqz v2, :cond_14

    .line 111
    :cond_13
    :goto_13
    return v0

    .line 102
    :cond_14
    invoke-virtual {v3, v9}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v4

    .line 103
    iget-object v2, p0, Lae/b;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v4, v2, :cond_13

    .line 106
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lae/b;->d:Ljava/util/List;

    move v2, v0

    .line 107
    :goto_28
    if-ge v2, v4, :cond_44

    .line 108
    iget-object v5, p0, Lae/b;->d:Ljava/util/List;

    new-instance v6, Lae/a;

    iget-object v0, p0, Lae/b;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lat/B;

    invoke-virtual {v3, v9, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getDouble(II)D

    move-result-wide v7

    invoke-direct {v6, v0, v7, v8}, Lae/a;-><init>(Lat/B;D)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_28

    :cond_44
    move v0, v1

    .line 111
    goto :goto_13
.end method

.method public j_()Z
    .registers 2

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public l_()V
    .registers 3

    .prologue
    .line 123
    iget v0, p0, Lae/b;->c:I

    if-nez v0, :cond_8

    iget-object v0, p0, Lae/b;->d:Ljava/util/List;

    if-nez v0, :cond_e

    .line 124
    :cond_8
    iget-object v0, p0, Lae/b;->b:Lae/c;

    invoke-interface {v0}, Lae/c;->a()V

    .line 128
    :goto_d
    return-void

    .line 126
    :cond_e
    iget-object v0, p0, Lae/b;->b:Lae/c;

    iget-object v1, p0, Lae/b;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Lae/c;->a(Ljava/util/List;)V

    goto :goto_d
.end method

.method public m_()V
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lae/b;->b:Lae/c;

    invoke-interface {v0}, Lae/c;->a()V

    .line 118
    return-void
.end method
