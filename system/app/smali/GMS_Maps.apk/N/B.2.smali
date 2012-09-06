.class public final Ln/B;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ln/p;

.field private final b:I


# direct methods
.method public constructor <init>(Ln/p;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Ln/B;->a:Ln/p;

    .line 45
    iput p2, p0, Ln/B;->b:I

    .line 46
    return-void
.end method

.method public static a(Ljava/util/Collection;)Ljava/util/List;
    .registers 4
    .parameter

    .prologue
    .line 137
    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_d

    .line 138
    :cond_8
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 153
    :goto_c
    return-object v0

    .line 141
    :cond_d
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/cx;->b(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 142
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 143
    if-eqz v0, :cond_19

    .line 147
    invoke-static {v0}, Ln/B;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ln/B;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_19

    .line 149
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_31
    move-object v0, v1

    .line 153
    goto :goto_c
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Ln/B;
    .registers 5
    .parameter

    .prologue
    const/4 v3, 0x3

    .line 115
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ln/p;->b(Ljava/lang/String;)Ln/p;

    move-result-object v2

    .line 116
    const/high16 v0, -0x8000

    .line 118
    invoke-virtual {p0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 119
    invoke-virtual {p0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    move v1, v0

    .line 122
    :goto_17
    if-eqz v2, :cond_1f

    .line 123
    new-instance v0, Ln/B;

    invoke-direct {v0, v2, v1}, Ln/B;-><init>(Ln/p;I)V

    .line 126
    :goto_1e
    return-object v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e

    :cond_21
    move v1, v0

    goto :goto_17
.end method


# virtual methods
.method public a()Ln/p;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Ln/B;->a:Ln/p;

    return-object v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Ln/B;->b:I

    return v0
.end method

.method public c()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4

    .prologue
    .line 98
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/ei;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 100
    const/4 v1, 0x1

    iget-object v2, p0, Ln/B;->a:Ln/p;

    invoke-virtual {v2}, Ln/p;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 101
    iget v1, p0, Ln/B;->b:I

    const/high16 v2, -0x8000

    if-eq v1, v2, :cond_1d

    .line 102
    const/4 v1, 0x3

    iget v2, p0, Ln/B;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 105
    :cond_1d
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 68
    if-ne p0, p1, :cond_4

    .line 69
    const/4 v0, 0x1

    .line 80
    :goto_3
    return v0

    .line 72
    :cond_4
    instance-of v0, p1, Ln/B;

    if-eqz v0, :cond_13

    .line 73
    iget-object v0, p0, Ln/B;->a:Ln/p;

    check-cast p1, Ln/B;

    iget-object v1, p1, Ln/B;->a:Ln/p;

    invoke-virtual {v0, v1}, Ln/p;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 76
    :cond_13
    instance-of v0, p1, Ln/p;

    if-eqz v0, :cond_1e

    .line 77
    iget-object v0, p0, Ln/B;->a:Ln/p;

    invoke-virtual {v0, p1}, Ln/p;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    .line 80
    :cond_1e
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Ln/B;->a:Ln/p;

    invoke-virtual {v0}, Ln/p;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ln/B;->a:Ln/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLevelNumberE3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ln/B;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
