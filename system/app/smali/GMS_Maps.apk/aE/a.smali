.class public LaE/a;
.super Lac/a;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private b:I

.field private final c:LaE/b;


# direct methods
.method public constructor <init>(Ljava/util/List;LaE/b;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 53
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 29
    iput v3, p0, LaE/a;->b:I

    .line 54
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/eN;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, LaE/a;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 55
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 56
    iget-object v2, p0, LaE/a;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v2, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addBytes(I[B)V

    goto :goto_13

    .line 58
    :cond_25
    iput-object p2, p0, LaE/a;->c:LaE/b;

    .line 59
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 63
    const/16 v0, 0x86

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 3
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, LaE/a;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 69
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 73
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/eN;->e:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 75
    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 80
    :goto_d
    return v2

    .line 79
    :cond_e
    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iput v0, p0, LaE/a;->b:I

    goto :goto_d
.end method

.method public j_()Z
    .registers 2

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public l_()V
    .registers 3

    .prologue
    .line 90
    iget-object v0, p0, LaE/a;->c:LaE/b;

    if-eqz v0, :cond_b

    .line 91
    iget-object v0, p0, LaE/a;->c:LaE/b;

    iget v1, p0, LaE/a;->b:I

    invoke-interface {v0, v1}, LaE/b;->a(I)V

    .line 93
    :cond_b
    return-void
.end method

.method public m_()V
    .registers 3

    .prologue
    .line 97
    iget-object v0, p0, LaE/a;->c:LaE/b;

    if-eqz v0, :cond_a

    .line 98
    iget-object v0, p0, LaE/a;->c:LaE/b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, LaE/b;->a(I)V

    .line 100
    :cond_a
    return-void
.end method
