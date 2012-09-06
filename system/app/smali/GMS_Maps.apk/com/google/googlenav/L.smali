.class public Lcom/google/googlenav/l;
.super Lac/a;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/m;

.field private final b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/m;)V
    .registers 4
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/googlenav/l;->a:Lcom/google/googlenav/m;

    .line 49
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/aS;->d:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lcom/google/googlenav/l;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 50
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 77
    const/16 v0, 0x49

    return v0
.end method

.method public a(I)V
    .registers 4
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/googlenav/l;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 70
    return-void
.end method

.method public a(II)V
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 61
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/aS;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 62
    invoke-virtual {v0, v2, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 63
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 64
    iget-object v1, p0, Lcom/google/googlenav/l;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v2, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 65
    return-void
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 3
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/googlenav/l;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getDataSize()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 88
    iget-object v0, p0, Lcom/google/googlenav/l;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    .line 89
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 3
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/googlenav/l;->a:Lcom/google/googlenav/m;

    if-eqz v0, :cond_9

    .line 94
    iget-object v0, p0, Lcom/google/googlenav/l;->a:Lcom/google/googlenav/m;

    invoke-interface {v0, p1}, Lcom/google/googlenav/m;->a(Ljava/io/DataInput;)V

    .line 96
    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method public m_()V
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/googlenav/l;->a:Lcom/google/googlenav/m;

    if-eqz v0, :cond_9

    .line 102
    iget-object v0, p0, Lcom/google/googlenav/l;->a:Lcom/google/googlenav/m;

    invoke-interface {v0}, Lcom/google/googlenav/m;->a()V

    .line 104
    :cond_9
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    const-string v0, "ClientFeatureRestrictionsRequest"

    return-object v0
.end method

.method public y_()V
    .registers 2

    .prologue
    .line 111
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lac/h;->c(Lac/g;)V

    .line 112
    return-void
.end method
