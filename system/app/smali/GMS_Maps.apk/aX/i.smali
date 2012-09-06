.class public Lax/i;
.super Lax/s;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lax/N;Lax/F;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 20
    const/4 v3, 0x6

    const/4 v4, 0x0

    new-instance v5, Lax/j;

    invoke-direct {v5}, Lax/j;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lax/s;-><init>(Lax/N;Lax/F;IZLax/O;)V

    .line 28
    return-void
.end method

.method private static b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2
    .parameter

    .prologue
    .line 55
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lax/A;
    .registers 4
    .parameter

    .prologue
    .line 37
    new-instance v0, Lax/h;

    invoke-static {p1}, Lax/i;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-direct {v0, v1}, Lax/h;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    return-object v0
.end method

.method protected a(Lax/A;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-virtual {p1}, Lax/A;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 43
    const/4 v1, 0x4

    invoke-virtual {p2, v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 44
    return-void
.end method

.method protected a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-static {p2}, Lax/i;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 50
    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 51
    return-void
.end method
