.class public LaE/c;
.super Lac/a;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private b:I

.field private final c:Ljava/util/List;

.field private final d:Ljava/util/List;

.field private final e:LaE/d;


# direct methods
.method private constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;LaE/d;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput v0, p0, LaE/c;->b:I

    .line 34
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LaE/c;->c:Ljava/util/List;

    .line 35
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LaE/c;->d:Ljava/util/List;

    .line 62
    iput-object p1, p0, LaE/c;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 63
    iput-object p2, p0, LaE/c;->e:LaE/d;

    .line 64
    return-void
.end method

.method public static a(Lax/A;LaE/d;)LaE/c;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 71
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/eN;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 72
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/eN;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 74
    invoke-virtual {p0}, Lax/A;->s()J

    move-result-wide v2

    invoke-virtual {v1, v4, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 75
    invoke-virtual {v0, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 76
    new-instance v1, LaE/c;

    invoke-direct {v1, v0, p1}, LaE/c;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;LaE/d;)V

    return-object v1
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 81
    const/16 v0, 0x85

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 3
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, LaE/c;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 87
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 11
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 91
    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/eN;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v1, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 94
    invoke-virtual {v2, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-nez v1, :cond_11

    .line 113
    :cond_10
    return v6

    .line 98
    :cond_11
    invoke-virtual {v2, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    iput v1, p0, LaE/c;->b:I

    .line 99
    iget v1, p0, LaE/c;->b:I

    if-nez v1, :cond_10

    .line 103
    invoke-virtual {v2, v7}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    move v1, v0

    .line 105
    :goto_20
    if-ge v1, v3, :cond_2e

    .line 106
    iget-object v4, p0, LaE/c;->c:Ljava/util/List;

    invoke-virtual {v2, v7, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBytes(II)[B

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 109
    :cond_2e
    invoke-virtual {v2, v8}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 110
    :goto_32
    if-ge v0, v1, :cond_10

    .line 111
    iget-object v3, p0, LaE/c;->d:Ljava/util/List;

    invoke-virtual {v2, v8, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_32
.end method

.method public j_()Z
    .registers 2

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public l_()V
    .registers 4

    .prologue
    .line 123
    iget-object v0, p0, LaE/c;->e:LaE/d;

    if-eqz v0, :cond_11

    .line 124
    iget v0, p0, LaE/c;->b:I

    if-nez v0, :cond_12

    .line 125
    iget-object v0, p0, LaE/c;->e:LaE/d;

    iget-object v1, p0, LaE/c;->c:Ljava/util/List;

    iget-object v2, p0, LaE/c;->d:Ljava/util/List;

    invoke-interface {v0, v1, v2}, LaE/d;->a(Ljava/util/List;Ljava/util/List;)V

    .line 130
    :cond_11
    :goto_11
    return-void

    .line 127
    :cond_12
    iget-object v0, p0, LaE/c;->e:LaE/d;

    iget v1, p0, LaE/c;->b:I

    invoke-interface {v0, v1}, LaE/d;->a(I)V

    goto :goto_11
.end method

.method public m_()V
    .registers 3

    .prologue
    .line 134
    iget-object v0, p0, LaE/c;->e:LaE/d;

    if-eqz v0, :cond_a

    .line 135
    iget-object v0, p0, LaE/c;->e:LaE/d;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, LaE/d;->a(I)V

    .line 137
    :cond_a
    return-void
.end method
