.class public Lcom/google/googlenav/friend/P;
.super Lac/b;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/googlenav/common/f;

.field private b:Lcom/google/googlenav/friend/R;

.field private c:Lcom/google/googlenav/friend/Q;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/f;Lcom/google/googlenav/friend/Q;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lac/b;-><init>()V

    .line 34
    new-instance v0, Lcom/google/googlenav/friend/R;

    invoke-direct {v0}, Lcom/google/googlenav/friend/R;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/friend/P;->b:Lcom/google/googlenav/friend/R;

    .line 45
    invoke-static {p1}, Lcom/google/common/base/P;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/common/f;

    iput-object v0, p0, Lcom/google/googlenav/friend/P;->a:Lcom/google/googlenav/common/f;

    .line 46
    iput-object p2, p0, Lcom/google/googlenav/friend/P;->c:Lcom/google/googlenav/friend/Q;

    .line 47
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 51
    const/16 v0, 0x57

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 7
    .parameter

    .prologue
    .line 56
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/bJ;->M:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 57
    const/4 v0, 0x0

    :goto_8
    iget-object v2, p0, Lcom/google/googlenav/friend/P;->a:Lcom/google/googlenav/common/f;

    invoke-virtual {v2}, Lcom/google/googlenav/common/f;->b()I

    move-result v2

    if-ge v0, v2, :cond_1d

    .line 58
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/googlenav/friend/P;->a:Lcom/google/googlenav/common/f;

    invoke-virtual {v3, v0}, Lcom/google/googlenav/common/f;->a(I)J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addLong(IJ)V

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 60
    :cond_1d
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 61
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v0, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    .line 66
    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/bJ;->N:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v1, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 68
    invoke-static {v1, v5, v4}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v2

    .line 72
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    .line 74
    invoke-static {v3, v5, v4}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v3

    .line 77
    packed-switch v2, :pswitch_data_4e

    .line 96
    iget-object v1, p0, Lcom/google/googlenav/friend/P;->b:Lcom/google/googlenav/friend/R;

    iput-boolean v0, v1, Lcom/google/googlenav/friend/R;->a:Z

    .line 98
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    invoke-virtual {v0, v3}, Las/f;->a(I)V

    .line 101
    :goto_25
    return v5

    .line 79
    :pswitch_26
    invoke-virtual {v1, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v2

    .line 81
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 82
    :goto_2f
    if-ge v0, v2, :cond_3b

    .line 83
    invoke-virtual {v1, v6, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    .line 85
    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 88
    :cond_3b
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 89
    invoke-virtual {v3, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 90
    iget-object v1, p0, Lcom/google/googlenav/friend/P;->b:Lcom/google/googlenav/friend/R;

    iput-boolean v5, v1, Lcom/google/googlenav/friend/R;->a:Z

    .line 91
    iget-object v1, p0, Lcom/google/googlenav/friend/P;->b:Lcom/google/googlenav/friend/R;

    iput-object v0, v1, Lcom/google/googlenav/friend/R;->b:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    goto :goto_25

    .line 77
    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_26
    .end packed-switch
.end method

.method protected synthetic k()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/googlenav/friend/P;->n()Lcom/google/googlenav/friend/R;

    move-result-object v0

    return-object v0
.end method

.method public l_()V
    .registers 3

    .prologue
    .line 106
    invoke-super {p0}, Lac/b;->l_()V

    .line 107
    iget-object v0, p0, Lcom/google/googlenav/friend/P;->c:Lcom/google/googlenav/friend/Q;

    if-eqz v0, :cond_16

    .line 108
    iget-object v0, p0, Lcom/google/googlenav/friend/P;->b:Lcom/google/googlenav/friend/R;

    iget-boolean v0, v0, Lcom/google/googlenav/friend/R;->a:Z

    if-eqz v0, :cond_17

    .line 109
    iget-object v0, p0, Lcom/google/googlenav/friend/P;->c:Lcom/google/googlenav/friend/Q;

    iget-object v1, p0, Lcom/google/googlenav/friend/P;->b:Lcom/google/googlenav/friend/R;

    iget-object v1, v1, Lcom/google/googlenav/friend/R;->b:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-interface {v0, v1}, Lcom/google/googlenav/friend/Q;->a([Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 114
    :cond_16
    :goto_16
    return-void

    .line 111
    :cond_17
    iget-object v0, p0, Lcom/google/googlenav/friend/P;->c:Lcom/google/googlenav/friend/Q;

    invoke-interface {v0}, Lcom/google/googlenav/friend/Q;->a()V

    goto :goto_16
.end method

.method protected n()Lcom/google/googlenav/friend/R;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/googlenav/friend/P;->b:Lcom/google/googlenav/friend/R;

    return-object v0
.end method
