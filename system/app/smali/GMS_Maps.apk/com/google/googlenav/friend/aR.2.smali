.class public Lcom/google/googlenav/friend/aR;
.super Lac/b;
.source "SourceFile"


# instance fields
.field private final a:Z

.field private b:Z

.field private c:I

.field private d:Z

.field private e:I

.field private f:Lcom/google/googlenav/friend/aS;

.field private g:Lcom/google/googlenav/friend/aT;


# direct methods
.method public constructor <init>(ILcom/google/googlenav/friend/aS;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lac/b;-><init>()V

    .line 46
    new-instance v0, Lcom/google/googlenav/friend/aT;

    invoke-direct {v0}, Lcom/google/googlenav/friend/aT;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/friend/aR;->g:Lcom/google/googlenav/friend/aT;

    .line 54
    iput p1, p0, Lcom/google/googlenav/friend/aR;->e:I

    .line 55
    iput-object p2, p0, Lcom/google/googlenav/friend/aR;->f:Lcom/google/googlenav/friend/aS;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/friend/aR;->a:Z

    .line 57
    return-void
.end method

.method public constructor <init>(ZIILcom/google/googlenav/friend/aS;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Lac/b;-><init>()V

    .line 46
    new-instance v0, Lcom/google/googlenav/friend/aT;

    invoke-direct {v0}, Lcom/google/googlenav/friend/aT;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/friend/aR;->g:Lcom/google/googlenav/friend/aT;

    .line 69
    iput-boolean p1, p0, Lcom/google/googlenav/friend/aR;->b:Z

    .line 70
    iput p2, p0, Lcom/google/googlenav/friend/aR;->c:I

    .line 71
    iput p3, p0, Lcom/google/googlenav/friend/aR;->e:I

    .line 72
    iput-object p4, p0, Lcom/google/googlenav/friend/aR;->f:Lcom/google/googlenav/friend/aS;

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/friend/aR;->a:Z

    .line 74
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 78
    const/16 v0, 0x33

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 94
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/bJ;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 98
    iget v1, p0, Lcom/google/googlenav/friend/aR;->e:I

    invoke-virtual {v0, v3, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 101
    iget-boolean v1, p0, Lcom/google/googlenav/friend/aR;->a:Z

    if-eqz v1, :cond_1d

    .line 102
    iget-boolean v1, p0, Lcom/google/googlenav/friend/aR;->b:Z

    invoke-virtual {v0, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 103
    iget v1, p0, Lcom/google/googlenav/friend/aR;->c:I

    invoke-virtual {v0, v5, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 108
    :cond_1d
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/bJ;->f:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 110
    invoke-virtual {v1, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 114
    iget-boolean v0, p0, Lcom/google/googlenav/friend/aR;->d:Z

    if-eqz v0, :cond_2e

    .line 115
    invoke-virtual {v1, v4, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 118
    :cond_2e
    invoke-virtual {v1, v5, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 121
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 122
    return-void
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/google/googlenav/friend/aR;->d:Z

    .line 171
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 127
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/bJ;->g:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/google/googlenav/friend/aR;->g:Lcom/google/googlenav/friend/aT;

    invoke-static {v0, v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/googlenav/friend/aT;->a(Lcom/google/googlenav/friend/aT;I)I

    .line 133
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 135
    iget-object v1, p0, Lcom/google/googlenav/friend/aR;->g:Lcom/google/googlenav/friend/aT;

    invoke-static {v0, v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/googlenav/friend/aT;->b(Lcom/google/googlenav/friend/aT;I)I

    .line 138
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/friend/aR;->g:Lcom/google/googlenav/friend/aT;

    invoke-static {v1}, Lcom/google/googlenav/friend/aT;->a(Lcom/google/googlenav/friend/aT;)I

    move-result v1

    invoke-virtual {v0, v1}, Las/f;->a(I)V

    .line 139
    return v3
.end method

.method public synthetic k()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/googlenav/friend/aR;->n()Lcom/google/googlenav/friend/aT;

    move-result-object v0

    return-object v0
.end method

.method public l_()V
    .registers 3

    .prologue
    .line 144
    invoke-super {p0}, Lac/b;->l_()V

    .line 145
    iget-object v0, p0, Lcom/google/googlenav/friend/aR;->g:Lcom/google/googlenav/friend/aT;

    invoke-static {v0}, Lcom/google/googlenav/friend/aT;->b(Lcom/google/googlenav/friend/aT;)I

    move-result v0

    packed-switch v0, :pswitch_data_24

    .line 159
    :cond_c
    :goto_c
    return-void

    .line 148
    :pswitch_d
    iget-object v0, p0, Lcom/google/googlenav/friend/aR;->f:Lcom/google/googlenav/friend/aS;

    if-eqz v0, :cond_c

    .line 149
    iget-object v0, p0, Lcom/google/googlenav/friend/aR;->f:Lcom/google/googlenav/friend/aS;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/googlenav/friend/aS;->a(I)V

    goto :goto_c

    .line 154
    :pswitch_18
    iget-object v0, p0, Lcom/google/googlenav/friend/aR;->f:Lcom/google/googlenav/friend/aS;

    if-eqz v0, :cond_c

    .line 155
    iget-object v0, p0, Lcom/google/googlenav/friend/aR;->f:Lcom/google/googlenav/friend/aS;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/googlenav/friend/aS;->a(I)V

    goto :goto_c

    .line 145
    nop

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_d
        :pswitch_18
    .end packed-switch
.end method

.method public n()Lcom/google/googlenav/friend/aT;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/googlenav/friend/aR;->g:Lcom/google/googlenav/friend/aT;

    return-object v0
.end method

.method public z_()Z
    .registers 2

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method
