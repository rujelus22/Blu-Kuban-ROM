.class public Lcom/google/googlenav/friend/U;
.super Lac/b;
.source "SourceFile"


# instance fields
.field protected a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field protected b:Z

.field private c:Ljava/util/List;

.field private final d:Z

.field private e:Lcom/google/googlenav/friend/aq;


# direct methods
.method public constructor <init>(ILcom/google/googlenav/friend/as;Lcom/google/googlenav/android/Y;Z)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    new-instance v1, Lcom/google/googlenav/friend/aq;

    invoke-direct {v1, p3, p2}, Lcom/google/googlenav/friend/aq;-><init>(Lcom/google/googlenav/android/Y;Lcom/google/googlenav/friend/as;)V

    invoke-direct {p0, v0, v1, p4}, Lcom/google/googlenav/friend/U;-><init>(Ljava/util/List;Lcom/google/googlenav/friend/aq;Z)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/google/googlenav/friend/aq;Z)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Lac/b;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/googlenav/friend/U;->c:Ljava/util/List;

    .line 49
    iput-object p2, p0, Lcom/google/googlenav/friend/U;->e:Lcom/google/googlenav/friend/aq;

    .line 50
    iput-boolean p3, p0, Lcom/google/googlenav/friend/U;->d:Z

    .line 51
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 55
    const/16 v0, 0x47

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 6
    .parameter

    .prologue
    .line 70
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/eB;->h:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 72
    iget-object v0, p0, Lcom/google/googlenav/friend/U;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 73
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addInt(II)V

    goto :goto_d

    .line 75
    :cond_22
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 76
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 81
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/eB;->i:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/U;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 83
    iget-object v0, p0, Lcom/google/googlenav/friend/U;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v0, v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v0

    .line 87
    iget-object v1, p0, Lcom/google/googlenav/friend/U;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 89
    invoke-static {v1, v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v1

    .line 92
    packed-switch v0, :pswitch_data_2c

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/friend/U;->b:Z

    .line 101
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Las/f;->a(I)V

    .line 104
    :goto_28
    return v3

    .line 94
    :pswitch_29
    iput-boolean v3, p0, Lcom/google/googlenav/friend/U;->b:Z

    goto :goto_28

    .line 92
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_29
    .end packed-switch
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/google/googlenav/friend/U;->d:Z

    return v0
.end method

.method protected synthetic k()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/google/googlenav/friend/U;->n()Lcom/google/googlenav/friend/V;

    move-result-object v0

    return-object v0
.end method

.method public l_()V
    .registers 3

    .prologue
    .line 109
    invoke-super {p0}, Lac/b;->l_()V

    .line 110
    iget-boolean v0, p0, Lcom/google/googlenav/friend/U;->b:Z

    if-eqz v0, :cond_12

    .line 112
    iget-object v0, p0, Lcom/google/googlenav/friend/U;->e:Lcom/google/googlenav/friend/aq;

    if-eqz v0, :cond_12

    .line 113
    iget-object v0, p0, Lcom/google/googlenav/friend/U;->e:Lcom/google/googlenav/friend/aq;

    iget-object v1, p0, Lcom/google/googlenav/friend/U;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/friend/aq;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 116
    :cond_12
    return-void
.end method

.method protected n()Lcom/google/googlenav/friend/V;
    .registers 4

    .prologue
    .line 120
    new-instance v0, Lcom/google/googlenav/friend/V;

    iget-boolean v1, p0, Lcom/google/googlenav/friend/U;->b:Z

    iget-object v2, p0, Lcom/google/googlenav/friend/U;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {v0, v1, v2}, Lcom/google/googlenav/friend/V;-><init>(ZLcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    return-object v0
.end method

.method public z_()Z
    .registers 2

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method
