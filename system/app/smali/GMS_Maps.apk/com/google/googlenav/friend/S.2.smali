.class public Lcom/google/googlenav/friend/S;
.super Lac/a;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/friend/T;

.field private final b:I

.field private c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/friend/T;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/googlenav/friend/S;->a:Lcom/google/googlenav/friend/T;

    .line 41
    iput p2, p0, Lcom/google/googlenav/friend/S;->b:I

    .line 42
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 54
    const/16 v0, 0x6f

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 59
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/bJ;->al:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 63
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lbq/G;->G:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 65
    invoke-virtual {v0, v3, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 68
    iget v2, p0, Lcom/google/googlenav/friend/S;->b:I

    invoke-virtual {v1, v3, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 71
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 72
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 76
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/bJ;->am:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 79
    invoke-static {v0, v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v1

    .line 83
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 85
    invoke-static {v2, v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v2

    .line 88
    packed-switch v1, :pswitch_data_28

    .line 98
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v1

    invoke-virtual {v1, v2}, Las/f;->a(I)V

    .line 101
    :pswitch_1f
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/S;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 102
    return v3

    .line 88
    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_1f
    .end packed-switch
.end method

.method public l_()V
    .registers 3

    .prologue
    .line 107
    invoke-super {p0}, Lac/a;->l_()V

    .line 108
    iget-object v0, p0, Lcom/google/googlenav/friend/S;->a:Lcom/google/googlenav/friend/T;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/googlenav/friend/S;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_12

    .line 109
    iget-object v0, p0, Lcom/google/googlenav/friend/S;->a:Lcom/google/googlenav/friend/T;

    iget-object v1, p0, Lcom/google/googlenav/friend/S;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-interface {v0, v1}, Lcom/google/googlenav/friend/T;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 111
    :cond_12
    return-void
.end method
