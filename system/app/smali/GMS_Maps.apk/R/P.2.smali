.class Lr/P;
.super Lac/a;
.source "SourceFile"


# instance fields
.field private final a:Ln/p;

.field private final b:Ljava/util/List;

.field private c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private d:Z


# direct methods
.method public constructor <init>(Ln/p;)V
    .registers 3
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 59
    iput-object p1, p0, Lr/P;->a:Ln/p;

    .line 60
    invoke-static {}, Lcom/google/common/collect/cx;->b()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lr/P;->b:Ljava/util/List;

    .line 61
    return-void
.end method

.method private k()I
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 121
    iget-object v1, p0, Lr/P;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-nez v1, :cond_6

    .line 132
    :goto_5
    return v0

    .line 125
    :cond_6
    iget-object v1, p0, Lr/P;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    .line 126
    packed-switch v1, :pswitch_data_14

    :pswitch_f
    goto :goto_5

    .line 128
    :pswitch_10
    const/4 v0, 0x0

    goto :goto_5

    .line 130
    :pswitch_12
    const/4 v0, 0x2

    goto :goto_5

    .line 126
    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 65
    const/16 v0, 0x76

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 5
    .parameter

    .prologue
    .line 70
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/dx;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 71
    const/4 v1, 0x1

    iget-object v2, p0, Lr/P;->a:Ln/p;

    invoke-virtual {v2}, Ln/p;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 73
    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->a(Ljava/io/DataOutput;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 74
    return-void
.end method

.method public a(Ln/w;)V
    .registers 6
    .parameter

    .prologue
    .line 161
    invoke-direct {p0}, Lr/P;->k()I

    move-result v0

    .line 165
    if-nez p1, :cond_23

    if-nez v0, :cond_23

    .line 167
    const/4 v0, 0x1

    move v1, v0

    .line 170
    :goto_a
    iget-object v0, p0, Lr/P;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/O;

    .line 171
    iget-object v3, p0, Lr/P;->a:Ln/p;

    invoke-interface {v0, v3, v1, p1}, Lr/O;->a(Ln/p;ILn/w;)V

    goto :goto_10

    .line 173
    :cond_22
    return-void

    :cond_23
    move v1, v0

    goto :goto_a
.end method

.method public a(Lr/O;)V
    .registers 3
    .parameter

    .prologue
    .line 97
    if-eqz p1, :cond_7

    .line 98
    iget-object v0, p0, Lr/P;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_7
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 3
    .parameter

    .prologue
    .line 78
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/dx;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    iput-object v0, p0, Lr/P;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public b()Ln/p;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lr/P;->a:Ln/p;

    return-object v0
.end method

.method public c()V
    .registers 2

    .prologue
    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lr/P;->d:Z

    .line 107
    return-void
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 113
    iget-boolean v0, p0, Lr/P;->d:Z

    return v0
.end method

.method public f()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 3

    .prologue
    .line 141
    iget-object v0, p0, Lr/P;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-nez v0, :cond_6

    .line 142
    const/4 v0, 0x0

    .line 145
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lr/P;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    goto :goto_5
.end method

.method public p_()Z
    .registers 3

    .prologue
    .line 152
    invoke-direct {p0}, Lr/P;->k()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
