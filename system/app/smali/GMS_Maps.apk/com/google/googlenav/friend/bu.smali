.class public Lcom/google/googlenav/friend/bu;
.super Lac/a;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Lcom/google/googlenav/friend/bv;

.field private c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/google/googlenav/friend/bv;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/google/googlenav/friend/bu;->a:Ljava/util/List;

    .line 58
    iput-object p2, p0, Lcom/google/googlenav/friend/bu;->b:Lcom/google/googlenav/friend/bv;

    .line 59
    return-void
.end method


# virtual methods
.method public Z()V
    .registers 2

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/google/googlenav/friend/bu;->A_()Z

    move-result v0

    if-nez v0, :cond_b

    .line 85
    iget-object v0, p0, Lcom/google/googlenav/friend/bu;->b:Lcom/google/googlenav/friend/bv;

    invoke-interface {v0}, Lcom/google/googlenav/friend/bv;->a()V

    .line 87
    :cond_b
    invoke-super {p0}, Lac/a;->Z()V

    .line 88
    return-void
.end method

.method public a()I
    .registers 2

    .prologue
    .line 63
    const/16 v0, 0x47

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 68
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/eB;->h:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 69
    iget-object v0, p0, Lcom/google/googlenav/friend/bu;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 70
    invoke-virtual {v1, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addInt(II)V

    goto :goto_e

    .line 72
    :cond_22
    const/4 v0, 0x2

    invoke-virtual {v1, v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 73
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 74
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 3
    .parameter

    .prologue
    .line 78
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/eB;->i:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/bu;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public i_()Z
    .registers 2

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method public l_()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 100
    iget-object v0, p0, Lcom/google/googlenav/friend/bu;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v0, v3, v2}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v0

    .line 103
    packed-switch v0, :pswitch_data_30

    .line 117
    :goto_b
    iget-object v0, p0, Lcom/google/googlenav/friend/bu;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 118
    invoke-static {v0, v3, v2}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v0

    .line 120
    iget-object v1, p0, Lcom/google/googlenav/friend/bu;->b:Lcom/google/googlenav/friend/bv;

    invoke-interface {v1, v0}, Lcom/google/googlenav/friend/bv;->a(I)V

    .line 121
    return-void

    .line 105
    :pswitch_1c
    iget-object v0, p0, Lcom/google/googlenav/friend/bu;->b:Lcom/google/googlenav/friend/bv;

    iget-object v1, p0, Lcom/google/googlenav/friend/bu;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-interface {v0, v1}, Lcom/google/googlenav/friend/bv;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_b

    .line 109
    :pswitch_24
    iget-object v0, p0, Lcom/google/googlenav/friend/bu;->b:Lcom/google/googlenav/friend/bv;

    invoke-interface {v0}, Lcom/google/googlenav/friend/bv;->b()V

    goto :goto_b

    .line 113
    :pswitch_2a
    iget-object v0, p0, Lcom/google/googlenav/friend/bu;->b:Lcom/google/googlenav/friend/bv;

    invoke-interface {v0}, Lcom/google/googlenav/friend/bv;->c()V

    goto :goto_b

    .line 103
    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_2a
        :pswitch_24
    .end packed-switch
.end method
