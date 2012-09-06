.class public Lcom/google/googlenav/friend/history/d;
.super Lac/b;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private b:Z

.field private final c:Lcom/google/googlenav/friend/history/b;

.field private final d:Lcom/google/googlenav/friend/history/b;

.field private final e:I

.field private final f:I

.field private final g:Z

.field private final h:Lcom/google/googlenav/friend/history/e;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/friend/history/b;Lcom/google/googlenav/friend/history/b;IIZLcom/google/googlenav/friend/history/e;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 111
    invoke-direct {p0}, Lac/b;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/google/googlenav/friend/history/d;->c:Lcom/google/googlenav/friend/history/b;

    .line 113
    iput-object p2, p0, Lcom/google/googlenav/friend/history/d;->d:Lcom/google/googlenav/friend/history/b;

    .line 114
    iput p3, p0, Lcom/google/googlenav/friend/history/d;->e:I

    .line 115
    iput p4, p0, Lcom/google/googlenav/friend/history/d;->f:I

    .line 116
    iput-boolean p5, p0, Lcom/google/googlenav/friend/history/d;->g:Z

    .line 117
    iput-object p6, p0, Lcom/google/googlenav/friend/history/d;->h:Lcom/google/googlenav/friend/history/e;

    .line 118
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 125
    const/16 v0, 0x82

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 138
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/bJ;->at:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 140
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lbq/aL;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 141
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/googlenav/friend/history/d;->e:I

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addInt(II)V

    .line 142
    const/4 v2, 0x4

    iget v3, p0, Lcom/google/googlenav/friend/history/d;->f:I

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addInt(II)V

    .line 143
    iget-object v2, p0, Lcom/google/googlenav/friend/history/d;->c:Lcom/google/googlenav/friend/history/b;

    invoke-virtual {v2}, Lcom/google/googlenav/friend/history/b;->b()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 144
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/googlenav/friend/history/d;->d:Lcom/google/googlenav/friend/history/b;

    invoke-virtual {v3}, Lcom/google/googlenav/friend/history/b;->b()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 145
    const/4 v2, 0x5

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    .line 147
    const/4 v2, 0x7

    iget-boolean v3, p0, Lcom/google/googlenav/friend/history/d;->g:Z

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addBool(IZ)V

    .line 148
    invoke-virtual {v0, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 150
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 151
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 158
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/bJ;->au:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/history/d;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 160
    iget-object v0, p0, Lcom/google/googlenav/friend/history/d;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v0, v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v0

    .line 164
    iget-object v1, p0, Lcom/google/googlenav/friend/history/d;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 165
    invoke-static {v1, v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v1

    .line 168
    packed-switch v0, :pswitch_data_2c

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/friend/history/d;->b:Z

    .line 178
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Las/f;->a(I)V

    .line 181
    :goto_28
    return v3

    .line 170
    :pswitch_29
    iput-boolean v3, p0, Lcom/google/googlenav/friend/history/d;->b:Z

    goto :goto_28

    .line 168
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_29
    .end packed-switch
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method protected synthetic k()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/google/googlenav/friend/history/d;->n()Lcom/google/googlenav/friend/history/f;

    move-result-object v0

    return-object v0
.end method

.method public l_()V
    .registers 3

    .prologue
    .line 186
    invoke-super {p0}, Lac/b;->l_()V

    .line 187
    iget-object v0, p0, Lcom/google/googlenav/friend/history/d;->h:Lcom/google/googlenav/friend/history/e;

    if-nez v0, :cond_8

    .line 195
    :goto_7
    return-void

    .line 190
    :cond_8
    iget-boolean v0, p0, Lcom/google/googlenav/friend/history/d;->b:Z

    if-eqz v0, :cond_14

    .line 191
    iget-object v0, p0, Lcom/google/googlenav/friend/history/d;->h:Lcom/google/googlenav/friend/history/e;

    iget-object v1, p0, Lcom/google/googlenav/friend/history/d;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-interface {v0, v1}, Lcom/google/googlenav/friend/history/e;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_7

    .line 193
    :cond_14
    iget-object v0, p0, Lcom/google/googlenav/friend/history/d;->h:Lcom/google/googlenav/friend/history/e;

    invoke-interface {v0}, Lcom/google/googlenav/friend/history/e;->a()V

    goto :goto_7
.end method

.method protected n()Lcom/google/googlenav/friend/history/f;
    .registers 4

    .prologue
    .line 199
    new-instance v0, Lcom/google/googlenav/friend/history/f;

    iget-boolean v1, p0, Lcom/google/googlenav/friend/history/d;->b:Z

    iget-object v2, p0, Lcom/google/googlenav/friend/history/d;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/friend/history/f;-><init>(ZLcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    return-object v0
.end method
