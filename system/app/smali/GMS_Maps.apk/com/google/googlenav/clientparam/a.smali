.class public final Lcom/google/googlenav/clientparam/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private volatile a:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 3
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/a;->a:Z

    .line 41
    invoke-virtual {p0, p1}, Lcom/google/googlenav/clientparam/a;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 42
    return-void
.end method

.method public static b()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 63
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/ClientParameters;->f:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    return-object v0
.end method


# virtual methods
.method a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 51
    iget-boolean v1, p0, Lcom/google/googlenav/clientparam/a;->a:Z

    if-eqz v1, :cond_e

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v1

    if-eqz v1, :cond_e

    :goto_b
    iput-boolean v0, p0, Lcom/google/googlenav/clientparam/a;->a:Z

    .line 55
    return-void

    .line 51
    :cond_e
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/google/googlenav/clientparam/a;->a:Z

    return v0
.end method
