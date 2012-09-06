.class public Lcom/google/googlenav/cy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lcom/google/common/collect/ImmutableList;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field private final e:Ljava/util/Map;


# direct methods
.method public constructor <init>(ILjava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput p1, p0, Lcom/google/googlenav/cy;->a:I

    .line 131
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/cy;->b:Lcom/google/common/collect/ImmutableList;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/cy;->e:Ljava/util/Map;

    .line 133
    iput-object p3, p0, Lcom/google/googlenav/cy;->c:Ljava/lang/String;

    .line 134
    iput-object p4, p0, Lcom/google/googlenav/cy;->d:Ljava/lang/String;

    .line 137
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/cz;

    .line 138
    iget-object v2, p0, Lcom/google/googlenav/cy;->e:Ljava/util/Map;

    iget-object v3, v0, Lcom/google/googlenav/cz;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    .line 140
    :cond_2e
    return-void
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/cy;
    .registers 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 189
    invoke-static {p0, v0, v0}, Lcom/google/googlenav/cy;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/cy;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Ljava/lang/String;Ljava/lang/String;)Lcom/google/googlenav/cy;
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    .line 165
    const/4 v0, 0x1

    invoke-static {p0, v0, v5}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v1

    .line 169
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 172
    invoke-virtual {p0, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    .line 174
    const/4 v0, 0x0

    :goto_10
    if-ge v0, v3, :cond_20

    .line 175
    invoke-virtual {p0, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 178
    invoke-static {v4}, Lcom/google/googlenav/cz;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/cz;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 181
    :cond_20
    new-instance v0, Lcom/google/googlenav/cy;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/google/googlenav/cy;-><init>(ILjava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/googlenav/cz;
    .registers 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/googlenav/cy;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-lez v0, :cond_12

    .line 148
    iget-object v0, p0, Lcom/google/googlenav/cy;->b:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/cz;

    .line 150
    :goto_11
    return-object v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public b()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 5

    .prologue
    .line 194
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lbm/bt;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 195
    const/4 v0, 0x1

    iget v2, p0, Lcom/google/googlenav/cy;->a:I

    invoke-virtual {v1, v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 196
    iget-object v0, p0, Lcom/google/googlenav/cy;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/cz;

    .line 197
    const/4 v3, 0x2

    invoke-virtual {v0}, Lcom/google/googlenav/cz;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_13

    .line 199
    :cond_28
    return-object v1
.end method

.method public c()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 203
    iget v1, p0, Lcom/google/googlenav/cy;->a:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/googlenav/cy;->b:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
