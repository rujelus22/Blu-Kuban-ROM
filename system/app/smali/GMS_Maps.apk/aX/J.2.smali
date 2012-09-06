.class public Lax/J;
.super Lac/a;
.source "SourceFile"


# instance fields
.field private a:Lax/K;

.field private b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 3
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lax/J;->d:Z

    .line 45
    iput-object p1, p0, Lax/J;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 46
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 50
    const/16 v0, 0x4d

    return v0
.end method

.method public a(Lax/K;)V
    .registers 2
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lax/J;->a:Lax/K;

    .line 94
    return-void
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 3
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lax/J;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 66
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 3
    .parameter

    .prologue
    .line 70
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/hc;->h:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    iput-object v0, p0, Lax/J;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public i_()Z
    .registers 2

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public k()Z
    .registers 2

    .prologue
    .line 100
    iget-boolean v0, p0, Lax/J;->d:Z

    return v0
.end method

.method public l_()V
    .registers 3

    .prologue
    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lax/J;->d:Z

    .line 80
    iget-object v0, p0, Lax/J;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lax/J;->a:Lax/K;

    if-nez v0, :cond_c

    .line 84
    :cond_b
    :goto_b
    return-void

    .line 83
    :cond_c
    iget-object v0, p0, Lax/J;->a:Lax/K;

    iget-object v1, p0, Lax/J;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-interface {v0, v1}, Lax/K;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    goto :goto_b
.end method

.method public z_()Z
    .registers 2

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method
