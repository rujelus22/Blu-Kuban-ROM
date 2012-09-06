.class public Lcom/google/googlenav/layer/k;
.super Lac/a;
.source "SourceFile"


# instance fields
.field private final a:Lat/H;

.field private final b:I

.field private final c:I

.field private final d:Ljava/lang/String;

.field private e:Lcom/google/googlenav/layer/l;

.field private f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>(Lat/H;IILjava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/googlenav/layer/k;->a:Lat/H;

    .line 65
    iput p2, p0, Lcom/google/googlenav/layer/k;->b:I

    .line 66
    iput p3, p0, Lcom/google/googlenav/layer/k;->c:I

    .line 67
    iput-object p4, p0, Lcom/google/googlenav/layer/k;->d:Ljava/lang/String;

    .line 68
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 72
    const/16 v0, 0x39

    return v0
.end method

.method public a(Lcom/google/googlenav/layer/l;)V
    .registers 2
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/googlenav/layer/k;->e:Lcom/google/googlenav/layer/l;

    .line 133
    return-void
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 7
    .parameter

    .prologue
    .line 82
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/dA;->k:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 85
    invoke-static {}, Lcom/google/googlenav/layer/f;->a()Lcom/google/googlenav/layer/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/layer/f;->e()I

    move-result v1

    .line 86
    if-eqz v1, :cond_15

    .line 87
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 91
    :cond_15
    invoke-static {}, Lcom/google/googlenav/layer/f;->a()Lcom/google/googlenav/layer/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/layer/f;->f()Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 93
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 97
    :cond_27
    invoke-static {}, Lcom/google/googlenav/layer/f;->a()Lcom/google/googlenav/layer/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/layer/f;->g()J

    move-result-wide v1

    .line 98
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_39

    .line 99
    const/4 v3, 0x7

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setLong(IJ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 102
    :cond_39
    iget-object v1, p0, Lcom/google/googlenav/layer/k;->a:Lat/H;

    invoke-virtual {v1}, Lat/H;->a()Lat/B;

    move-result-object v1

    iget v2, p0, Lcom/google/googlenav/layer/k;->b:I

    iget v3, p0, Lcom/google/googlenav/layer/k;->c:I

    iget-object v4, p0, Lcom/google/googlenav/layer/k;->a:Lat/H;

    invoke-virtual {v4}, Lat/H;->b()Lat/Y;

    move-result-object v4

    invoke-virtual {v4}, Lat/Y;->a()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lat/C;->a(Lat/B;III)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 105
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 107
    iget-object v1, p0, Lcom/google/googlenav/layer/k;->d:Ljava/lang/String;

    invoke-static {v1}, Laa/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_63

    .line 108
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlenav/layer/k;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 111
    :cond_63
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 112
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 3
    .parameter

    .prologue
    .line 116
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/dA;->l:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/layer/k;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public l_()V
    .registers 4

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/googlenav/layer/k;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-nez v0, :cond_5

    .line 129
    :goto_4
    return-void

    .line 128
    :cond_5
    invoke-static {}, Lcom/google/googlenav/layer/f;->a()Lcom/google/googlenav/layer/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/layer/k;->f:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    iget-object v2, p0, Lcom/google/googlenav/layer/k;->e:Lcom/google/googlenav/layer/l;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/layer/f;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/layer/l;)V

    goto :goto_4
.end method

.method public z_()Z
    .registers 2

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method
