.class public Lcom/google/googlenav/friend/aU;
.super Lac/a;
.source "SourceFile"


# instance fields
.field private final a:Z

.field private final b:I

.field private final c:Lcom/google/googlenav/friend/aV;

.field private d:Ljava/lang/String;

.field private e:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private f:I


# direct methods
.method public constructor <init>(ZILcom/google/googlenav/friend/aV;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 54
    iput-boolean p1, p0, Lcom/google/googlenav/friend/aU;->a:Z

    .line 55
    iput p2, p0, Lcom/google/googlenav/friend/aU;->b:I

    .line 56
    iput-object p3, p0, Lcom/google/googlenav/friend/aU;->c:Lcom/google/googlenav/friend/aV;

    .line 57
    return-void
.end method

.method private b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter

    .prologue
    .line 100
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/eB;->f:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 101
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/googlenav/friend/aU;->a:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 102
    iget-object v1, p0, Lcom/google/googlenav/friend/aU;->e:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v1, :cond_17

    .line 103
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlenav/friend/aU;->e:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 106
    :cond_17
    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 107
    return-void
.end method

.method private c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter

    .prologue
    .line 114
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/eB;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 115
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/googlenav/friend/aU;->a:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 118
    iget-object v1, p0, Lcom/google/googlenav/friend/aU;->d:Ljava/lang/String;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/google/googlenav/friend/aU;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1f

    .line 119
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlenav/friend/aU;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 122
    :cond_1f
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 123
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 77
    const/16 v0, 0x53

    return v0
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 2
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/googlenav/friend/aU;->e:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 73
    return-void
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 5
    .parameter

    .prologue
    .line 83
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/eB;->j:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 85
    iget v1, p0, Lcom/google/googlenav/friend/aU;->b:I

    if-nez v1, :cond_14

    .line 86
    invoke-direct {p0, v0}, Lcom/google/googlenav/friend/aU;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 92
    :cond_e
    :goto_e
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 93
    return-void

    .line 87
    :cond_14
    iget v1, p0, Lcom/google/googlenav/friend/aU;->b:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_e

    .line 88
    invoke-direct {p0, v0}, Lcom/google/googlenav/friend/aU;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_e
.end method

.method public a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/googlenav/friend/aU;->d:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 128
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/eB;->k:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 130
    invoke-static {v0, v2, v3}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/friend/aU;->f:I

    .line 134
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 135
    invoke-static {v0, v2, v3}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v0

    .line 138
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Las/f;->a(I)V

    .line 139
    return v2
.end method

.method public l_()V
    .registers 3

    .prologue
    .line 144
    iget v0, p0, Lcom/google/googlenav/friend/aU;->f:I

    packed-switch v0, :pswitch_data_28

    .line 164
    :cond_5
    :goto_5
    return-void

    .line 147
    :pswitch_6
    iget-object v0, p0, Lcom/google/googlenav/friend/aU;->c:Lcom/google/googlenav/friend/aV;

    if-eqz v0, :cond_5

    .line 148
    iget-object v0, p0, Lcom/google/googlenav/friend/aU;->c:Lcom/google/googlenav/friend/aV;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/googlenav/friend/aV;->a(I)V

    goto :goto_5

    .line 153
    :pswitch_11
    iget-object v0, p0, Lcom/google/googlenav/friend/aU;->c:Lcom/google/googlenav/friend/aV;

    if-eqz v0, :cond_5

    .line 154
    iget-object v0, p0, Lcom/google/googlenav/friend/aU;->c:Lcom/google/googlenav/friend/aV;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/google/googlenav/friend/aV;->a(I)V

    goto :goto_5

    .line 159
    :pswitch_1c
    iget-object v0, p0, Lcom/google/googlenav/friend/aU;->c:Lcom/google/googlenav/friend/aV;

    if-eqz v0, :cond_5

    .line 160
    iget-object v0, p0, Lcom/google/googlenav/friend/aU;->c:Lcom/google/googlenav/friend/aV;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/googlenav/friend/aV;->a(I)V

    goto :goto_5

    .line 144
    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_6
        :pswitch_1c
        :pswitch_11
    .end packed-switch
.end method
