.class public Lo/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lo/b;->a:I

    .line 23
    iput p2, p0, Lo/b;->b:I

    .line 24
    return-void
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lo/b;
    .registers 4
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 34
    if-eqz p0, :cond_9

    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 35
    :cond_9
    const/4 v0, 0x0

    .line 37
    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Lo/b;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lo/b;-><init>(II)V

    goto :goto_a
.end method

.method public static a([Lcom/google/googlenav/common/io/protocol/ProtoBuf;)[Lo/b;
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 51
    if-nez p0, :cond_6

    .line 52
    new-array v0, v0, [Lo/b;

    .line 65
    :goto_5
    return-object v0

    .line 55
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    :goto_b
    array-length v2, p0

    if-ge v0, v2, :cond_20

    .line 58
    aget-object v2, p0, v0

    if-eqz v2, :cond_1d

    .line 59
    aget-object v2, p0, v0

    invoke-static {v2}, Lo/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lo/b;

    move-result-object v2

    .line 60
    if-eqz v2, :cond_1d

    .line 61
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 65
    :cond_20
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lo/b;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/b;

    goto :goto_5
.end method


# virtual methods
.method public a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4

    .prologue
    .line 79
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/aY;->q:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 80
    const/4 v1, 0x1

    iget v2, p0, Lo/b;->a:I

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 81
    const/4 v1, 0x2

    iget v2, p0, Lo/b;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 82
    return-object v0
.end method

.method public a(I)Lo/b;
    .registers 4
    .parameter

    .prologue
    .line 72
    new-instance v0, Lo/b;

    iget v1, p0, Lo/b;->a:I

    invoke-direct {v0, v1, p1}, Lo/b;-><init>(II)V

    return-object v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 86
    iget v0, p0, Lo/b;->a:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 90
    iget v0, p0, Lo/b;->b:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 95
    if-ne p1, p0, :cond_5

    .line 102
    :cond_4
    :goto_4
    return v0

    .line 98
    :cond_5
    instance-of v2, p1, Lo/b;

    if-eqz v2, :cond_19

    .line 99
    check-cast p1, Lo/b;

    .line 100
    iget v2, p1, Lo/b;->a:I

    iget v3, p0, Lo/b;->a:I

    if-ne v2, v3, :cond_17

    iget v2, p1, Lo/b;->b:I

    iget v3, p0, Lo/b;->b:I

    if-eq v2, v3, :cond_4

    :cond_17
    move v0, v1

    goto :goto_4

    :cond_19
    move v0, v1

    .line 102
    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 107
    iget v0, p0, Lo/b;->a:I

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lo/b;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Option "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lo/b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
