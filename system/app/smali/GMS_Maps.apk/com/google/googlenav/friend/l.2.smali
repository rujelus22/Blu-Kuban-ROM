.class public Lcom/google/googlenav/friend/l;
.super Lac/a;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/google/googlenav/friend/m;

.field private g:Z

.field private h:Lcom/google/googlenav/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/googlenav/friend/m;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 65
    iput p1, p0, Lcom/google/googlenav/friend/l;->a:I

    .line 66
    iput p2, p0, Lcom/google/googlenav/friend/l;->b:I

    .line 67
    iput-object p3, p0, Lcom/google/googlenav/friend/l;->c:Ljava/lang/String;

    .line 68
    iput-object p4, p0, Lcom/google/googlenav/friend/l;->d:Ljava/lang/String;

    .line 69
    iput-object p5, p0, Lcom/google/googlenav/friend/l;->e:Ljava/lang/String;

    .line 70
    iput-object p6, p0, Lcom/google/googlenav/friend/l;->f:Lcom/google/googlenav/friend/m;

    .line 71
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 75
    const/16 v0, 0x74

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 80
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/gj;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 83
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lbq/G;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 84
    iget v2, p0, Lcom/google/googlenav/friend/l;->a:I

    mul-int/lit8 v2, v2, 0xa

    .line 85
    iget v3, p0, Lcom/google/googlenav/friend/l;->b:I

    mul-int/lit8 v3, v3, 0xa

    .line 86
    invoke-virtual {v1, v4, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 87
    invoke-virtual {v1, v5, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 88
    invoke-virtual {v0, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 89
    iget-object v1, p0, Lcom/google/googlenav/friend/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v5, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 90
    iget-object v1, p0, Lcom/google/googlenav/friend/l;->d:Ljava/lang/String;

    if-eqz v1, :cond_30

    .line 91
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlenav/friend/l;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 93
    :cond_30
    iget-object v1, p0, Lcom/google/googlenav/friend/l;->e:Ljava/lang/String;

    if-eqz v1, :cond_3a

    .line 94
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/googlenav/friend/l;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 98
    :cond_3a
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 99
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 103
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/gj;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 105
    const/4 v1, -0x1

    invoke-static {v0, v3, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v1

    .line 108
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/friend/l;->h:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 110
    packed-switch v1, :pswitch_data_1a

    .line 118
    :goto_16
    return v3

    .line 112
    :pswitch_17
    iput-boolean v3, p0, Lcom/google/googlenav/friend/l;->g:Z

    goto :goto_16

    .line 110
    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_17
    .end packed-switch
.end method

.method public l_()V
    .registers 4

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/googlenav/friend/l;->f:Lcom/google/googlenav/friend/m;

    if-eqz v0, :cond_d

    .line 125
    iget-object v0, p0, Lcom/google/googlenav/friend/l;->f:Lcom/google/googlenav/friend/m;

    iget-boolean v1, p0, Lcom/google/googlenav/friend/l;->g:Z

    iget-object v2, p0, Lcom/google/googlenav/friend/l;->h:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/friend/m;->a(ZLcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 127
    :cond_d
    return-void
.end method
