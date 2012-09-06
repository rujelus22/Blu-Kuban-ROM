.class public Lad/q;
.super Lac/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lad/o;

.field private b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>(Lad/o;)V
    .registers 3
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lad/q;->a:Lad/o;

    invoke-direct {p0}, Lac/a;-><init>()V

    .line 355
    const/4 v0, 0x0

    iput-object v0, p0, Lad/q;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 358
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 361
    const/16 v0, 0x2b

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 4
    .parameter

    .prologue
    .line 373
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/aY;->r:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 375
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 376
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 3
    .parameter

    .prologue
    .line 379
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/aY;->s:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    iput-object v0, p0, Lad/q;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 381
    const/4 v0, 0x1

    return v0
.end method

.method public l_()V
    .registers 4

    .prologue
    .line 386
    iget-object v0, p0, Lad/q;->a:Lad/o;

    iget-object v1, p0, Lad/q;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lad/o;->a(Lad/o;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Z)V

    .line 387
    return-void
.end method

.method public z_()Z
    .registers 2

    .prologue
    .line 366
    const/4 v0, 0x0

    return v0
.end method
