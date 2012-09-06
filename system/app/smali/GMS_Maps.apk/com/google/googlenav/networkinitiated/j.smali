.class public Lcom/google/googlenav/networkinitiated/j;
.super Lac/a;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/googlenav/networkinitiated/k;

.field private final c:I

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/google/googlenav/networkinitiated/k;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/googlenav/networkinitiated/j;->a:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/google/googlenav/networkinitiated/j;->b:Lcom/google/googlenav/networkinitiated/k;

    .line 60
    iput p2, p0, Lcom/google/googlenav/networkinitiated/j;->c:I

    .line 61
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 65
    const/16 v0, 0x5b

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 97
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/common/Config;->u()Lcom/google/googlenav/common/a;

    .line 100
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lbq/G;->o:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 101
    iget-object v1, p0, Lcom/google/googlenav/networkinitiated/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 102
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/googlenav/networkinitiated/j;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 106
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addInt(II)V

    .line 110
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/bJ;->K:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 112
    invoke-virtual {v1, v3, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 116
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 117
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 77
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/bJ;->L:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 79
    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/networkinitiated/j;->d:I

    .line 92
    return v1
.end method

.method public l_()V
    .registers 4

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/j;->b:Lcom/google/googlenav/networkinitiated/k;

    if-eqz v0, :cond_d

    .line 122
    iget-object v0, p0, Lcom/google/googlenav/networkinitiated/j;->b:Lcom/google/googlenav/networkinitiated/k;

    iget v1, p0, Lcom/google/googlenav/networkinitiated/j;->d:I

    iget-object v2, p0, Lcom/google/googlenav/networkinitiated/j;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/googlenav/networkinitiated/k;->a(ILjava/lang/String;)V

    .line 124
    :cond_d
    return-void
.end method

.method public z_()Z
    .registers 2

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method
