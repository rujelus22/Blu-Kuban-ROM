.class public Lcom/google/googlenav/friend/aD;
.super Lac/a;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:Z

.field private c:Lcom/google/googlenav/friend/aE;


# direct methods
.method public constructor <init>(JLcom/google/googlenav/friend/aE;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 43
    iput-wide p1, p0, Lcom/google/googlenav/friend/aD;->a:J

    .line 44
    iput-object p3, p0, Lcom/google/googlenav/friend/aD;->c:Lcom/google/googlenav/friend/aE;

    .line 45
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 48
    const/16 v0, 0x6d

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 52
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/bJ;->aj:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 55
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lbq/t;->o:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 56
    iget-wide v2, p0, Lcom/google/googlenav/friend/aD;->a:J

    invoke-virtual {v1, v4, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addLong(IJ)V

    .line 59
    invoke-virtual {v0, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 62
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 63
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 67
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/bJ;->ak:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 69
    invoke-static {v0, v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v1

    .line 73
    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 75
    invoke-static {v0, v3, v4}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v0

    .line 78
    packed-switch v1, :pswitch_data_26

    .line 85
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/googlenav/friend/aD;->b:Z

    .line 87
    invoke-static {}, Las/f;->j()Las/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Las/f;->a(I)V

    .line 90
    :goto_22
    return v3

    .line 80
    :pswitch_23
    iput-boolean v3, p0, Lcom/google/googlenav/friend/aD;->b:Z

    goto :goto_22

    .line 78
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_23
    .end packed-switch
.end method

.method public l_()V
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/googlenav/friend/aD;->c:Lcom/google/googlenav/friend/aE;

    if-eqz v0, :cond_d

    .line 96
    iget-boolean v0, p0, Lcom/google/googlenav/friend/aD;->b:Z

    if-eqz v0, :cond_e

    .line 97
    iget-object v0, p0, Lcom/google/googlenav/friend/aD;->c:Lcom/google/googlenav/friend/aE;

    invoke-interface {v0}, Lcom/google/googlenav/friend/aE;->a()V

    .line 102
    :cond_d
    :goto_d
    return-void

    .line 99
    :cond_e
    iget-object v0, p0, Lcom/google/googlenav/friend/aD;->c:Lcom/google/googlenav/friend/aE;

    invoke-interface {v0}, Lcom/google/googlenav/friend/aE;->b()V

    goto :goto_d
.end method
