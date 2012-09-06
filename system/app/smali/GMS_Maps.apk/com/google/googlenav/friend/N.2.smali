.class public Lcom/google/googlenav/friend/N;
.super Lac/a;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z

.field private final c:Lcom/google/googlenav/friend/O;

.field private d:Ljava/util/List;


# direct methods
.method public constructor <init>(ZZLcom/google/googlenav/friend/O;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/friend/N;->a:Z

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/friend/N;->b:Z

    .line 64
    iput-boolean p1, p0, Lcom/google/googlenav/friend/N;->a:Z

    .line 65
    iput-boolean p2, p0, Lcom/google/googlenav/friend/N;->b:Z

    .line 66
    iput-object p3, p0, Lcom/google/googlenav/friend/N;->c:Lcom/google/googlenav/friend/O;

    .line 67
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 85
    const/16 v0, 0x64

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 91
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/bJ;->ac:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 92
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lbq/G;->K:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 93
    iget-boolean v2, p0, Lcom/google/googlenav/friend/N;->a:Z

    invoke-virtual {v1, v4, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 94
    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/google/googlenav/friend/N;->b:Z

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 95
    invoke-virtual {v0, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 98
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 99
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 13
    .parameter

    .prologue
    .line 104
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/bJ;->ad:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 107
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-static {v3, v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v0

    .line 111
    const/4 v1, 0x2

    invoke-virtual {v3, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 113
    const/4 v2, 0x1

    const/4 v4, -0x1

    invoke-static {v1, v2, v4}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v1

    .line 116
    packed-switch v0, :pswitch_data_ba

    .line 124
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Las/f;->a(I)V

    .line 125
    const/4 v0, 0x1

    .line 163
    :goto_22
    return v0

    .line 128
    :pswitch_23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/friend/N;->d:Ljava/util/List;

    .line 133
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v4

    .line 134
    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v5

    .line 135
    const/4 v0, 0x0

    move v2, v0

    :goto_35
    if-ge v2, v5, :cond_79

    .line 136
    const/4 v0, 0x3

    invoke-virtual {v3, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v6

    .line 137
    invoke-static {v6}, Lcom/google/googlenav/friend/aF;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/friend/aF;

    move-result-object v7

    .line 138
    iget-object v0, p0, Lcom/google/googlenav/friend/N;->d:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    const/4 v0, 0x5

    invoke-virtual {v6, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v8

    .line 142
    const/4 v0, 0x0

    move v1, v0

    :goto_4c
    if-ge v1, v8, :cond_75

    .line 143
    const/4 v0, 0x5

    invoke-virtual {v6, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(II)J

    move-result-wide v9

    .line 144
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 145
    if-nez v0, :cond_6a

    .line 146
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 147
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v4, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_6a
    invoke-virtual {v7}, Lcom/google/googlenav/friend/aF;->b()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4c

    .line 135
    :cond_75
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_35

    .line 153
    :cond_79
    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 154
    const/4 v0, 0x0

    move v1, v0

    :goto_80
    if-ge v1, v2, :cond_b6

    .line 155
    const/4 v0, 0x4

    invoke-virtual {v3, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v5

    .line 158
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 159
    sget-object v6, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v6}, Lcom/google/common/collect/cV;->a(Ljava/util/Comparator;)Lcom/google/common/collect/cV;

    move-result-object v6

    invoke-static {v0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 160
    const-string v6, ", "

    invoke-static {v6}, Lcom/google/common/base/G;->a(Ljava/lang/String;)Lcom/google/common/base/G;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/common/base/G;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 161
    iget-object v6, p0, Lcom/google/googlenav/friend/N;->d:Ljava/util/List;

    invoke-static {v5, v0}, Lcom/google/googlenav/friend/aF;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/lang/String;)Lcom/google/googlenav/friend/aF;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_80

    .line 163
    :cond_b6
    const/4 v0, 0x1

    goto/16 :goto_22

    .line 116
    nop

    :pswitch_data_ba
    .packed-switch 0x0
        :pswitch_23
    .end packed-switch
.end method

.method public l_()V
    .registers 3

    .prologue
    .line 175
    invoke-super {p0}, Lac/a;->l_()V

    .line 176
    iget-object v0, p0, Lcom/google/googlenav/friend/N;->c:Lcom/google/googlenav/friend/O;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/googlenav/friend/N;->d:Ljava/util/List;

    if-eqz v0, :cond_13

    .line 177
    iget-object v0, p0, Lcom/google/googlenav/friend/N;->c:Lcom/google/googlenav/friend/O;

    iget-object v1, p0, Lcom/google/googlenav/friend/N;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/google/googlenav/friend/O;->a(Ljava/util/List;)V

    .line 181
    :goto_12
    return-void

    .line 179
    :cond_13
    iget-object v0, p0, Lcom/google/googlenav/friend/N;->c:Lcom/google/googlenav/friend/O;

    invoke-interface {v0}, Lcom/google/googlenav/friend/O;->a()V

    goto :goto_12
.end method

.method public m_()V
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/googlenav/friend/N;->c:Lcom/google/googlenav/friend/O;

    if-eqz v0, :cond_9

    .line 169
    iget-object v0, p0, Lcom/google/googlenav/friend/N;->c:Lcom/google/googlenav/friend/O;

    invoke-interface {v0}, Lcom/google/googlenav/friend/O;->a()V

    .line 171
    :cond_9
    return-void
.end method
