.class public Lcom/google/googlenav/friend/ag;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 2
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/googlenav/friend/ag;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 26
    return-void
.end method


# virtual methods
.method public a()I
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 36
    iget-object v0, p0, Lcom/google/googlenav/friend/ag;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v0, v2}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 38
    const/4 v1, -0x1

    invoke-static {v0, v2, v1}, Lcom/google/googlenav/common/io/protocol/b;->c(Lcom/google/googlenav/common/io/protocol/ProtoBuf;II)I

    move-result v0

    return v0
.end method

.method public b()Z
    .registers 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/googlenav/friend/ag;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v0

    return v0
.end method

.method public c()Z
    .registers 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/googlenav/friend/ag;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .registers 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/googlenav/friend/ag;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->h(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Z

    move-result v0

    return v0
.end method
