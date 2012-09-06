.class public Lcom/google/googlenav/friend/bz;
.super Lac/a;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/common/f;

.field private b:Lcom/google/googlenav/common/f;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/f;Lcom/google/googlenav/common/f;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/googlenav/friend/bz;->a:Lcom/google/googlenav/common/f;

    .line 34
    iput-object p2, p0, Lcom/google/googlenav/friend/bz;->b:Lcom/google/googlenav/common/f;

    .line 35
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 38
    const/16 v0, 0x36

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 9
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 42
    new-instance v2, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/bJ;->E:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 46
    iget-object v1, p0, Lcom/google/googlenav/friend/bz;->a:Lcom/google/googlenav/common/f;

    if-eqz v1, :cond_22

    .line 47
    iget-object v1, p0, Lcom/google/googlenav/friend/bz;->a:Lcom/google/googlenav/common/f;

    invoke-virtual {v1}, Lcom/google/googlenav/common/f;->b()I

    move-result v3

    move v1, v0

    :goto_13
    if-ge v1, v3, :cond_22

    .line 48
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/google/googlenav/friend/bz;->a:Lcom/google/googlenav/common/f;

    invoke-virtual {v5, v1}, Lcom/google/googlenav/common/f;->a(I)J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addLong(IJ)V

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 54
    :cond_22
    iget-object v1, p0, Lcom/google/googlenav/friend/bz;->b:Lcom/google/googlenav/common/f;

    if-eqz v1, :cond_3b

    .line 55
    iget-object v1, p0, Lcom/google/googlenav/friend/bz;->b:Lcom/google/googlenav/common/f;

    invoke-virtual {v1}, Lcom/google/googlenav/common/f;->b()I

    move-result v1

    :goto_2c
    if-ge v0, v1, :cond_3b

    .line 56
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/googlenav/friend/bz;->b:Lcom/google/googlenav/common/f;

    invoke-virtual {v4, v0}, Lcom/google/googlenav/common/f;->a(I)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addLong(IJ)V

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 62
    :cond_3b
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v2, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 63
    return-void
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 102
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 67
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/bJ;->F:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 69
    invoke-static {v0, v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v1

    .line 73
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 75
    invoke-static {v0, v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v0

    .line 78
    packed-switch v1, :pswitch_data_2a

    .line 93
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Las/f;->a(I)V

    .line 96
    :goto_1f
    return v3

    .line 80
    :pswitch_20
    invoke-virtual {p0, v3}, Lcom/google/googlenav/friend/bz;->a(Z)V

    goto :goto_1f

    .line 84
    :pswitch_24
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/friend/bz;->a(Z)V

    goto :goto_1f

    .line 78
    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_20
        :pswitch_24
    .end packed-switch
.end method
