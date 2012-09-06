.class Lr/ah;
.super Lac/a;
.source "SourceFile"


# instance fields
.field a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field b:Lr/ac;

.field final synthetic c:Lr/af;


# direct methods
.method private constructor <init>(Lr/af;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lr/ac;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lr/ah;->c:Lr/af;

    invoke-direct {p0}, Lac/a;-><init>()V

    .line 333
    iput-object p2, p0, Lr/ah;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 334
    iput-object p3, p0, Lr/ah;->b:Lr/ac;

    .line 335
    return-void
.end method

.method synthetic constructor <init>(Lr/af;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lr/ac;Lr/ag;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 325
    invoke-direct {p0, p1, p2, p3}, Lr/ah;-><init>(Lr/af;Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lr/ac;)V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 349
    const/16 v0, 0x27

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 4
    .parameter

    .prologue
    .line 373
    iget-object v0, p0, Lr/ah;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->toByteArray()[B

    move-result-object v0

    .line 374
    array-length v1, v0

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    .line 375
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    .line 376
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 354
    sget-object v2, Lcom/google/wireless/googlenav/proto/j2me/fg;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v2, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    .line 357
    invoke-virtual {v2, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    if-nez v3, :cond_f

    .line 368
    :goto_e
    return v0

    .line 363
    :cond_f
    invoke-virtual {v2, v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 364
    iget-object v2, p0, Lr/ah;->b:Lr/ac;

    invoke-virtual {v2, v0}, Lr/ac;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Z

    move-result v2

    .line 365
    iget-object v3, p0, Lr/ah;->c:Lr/af;

    invoke-static {v3}, Lr/af;->a(Lr/af;)Lr/r;

    move-result-object v3

    if-eqz v3, :cond_34

    if-eqz v2, :cond_34

    iget-object v2, p0, Lr/ah;->b:Lr/ac;

    invoke-virtual {v2}, Lr/ac;->a()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 366
    iget-object v2, p0, Lr/ah;->c:Lr/af;

    invoke-static {v2}, Lr/af;->a(Lr/af;)Lr/r;

    move-result-object v2

    invoke-virtual {v2, v0}, Lr/r;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    :cond_34
    move v0, v1

    .line 368
    goto :goto_e
.end method

.method public b()V
    .registers 2

    .prologue
    .line 338
    iget-object v0, p0, Lr/ah;->b:Lr/ac;

    invoke-virtual {v0}, Lr/ac;->i()V

    .line 339
    return-void
.end method

.method public i_()Z
    .registers 2

    .prologue
    .line 344
    const/4 v0, 0x1

    return v0
.end method
