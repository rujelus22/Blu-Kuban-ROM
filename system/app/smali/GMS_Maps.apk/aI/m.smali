.class public LaI/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/gV;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, LaI/m;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 19
    return-void
.end method


# virtual methods
.method public a(I)LaI/m;
    .registers 4
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, LaI/m;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 23
    return-object p0
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)LaI/m;
    .registers 4
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, LaI/m;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 46
    return-object p0
.end method

.method public a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, LaI/m;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public b(I)LaI/m;
    .registers 4
    .parameter

    .prologue
    .line 28
    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    .line 29
    iget-object v0, p0, LaI/m;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 31
    :cond_9
    return-object p0
.end method

.method public b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)LaI/m;
    .registers 4
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, LaI/m;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 51
    return-object p0
.end method

.method public c(I)LaI/m;
    .registers 4
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, LaI/m;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 41
    return-object p0
.end method
