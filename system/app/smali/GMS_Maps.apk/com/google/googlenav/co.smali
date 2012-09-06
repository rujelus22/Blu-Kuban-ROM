.class abstract Lcom/google/googlenav/co;
.super Lac/a;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field protected b:I

.field private c:Lcom/google/googlenav/ca;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/ca;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 606
    iget-object v0, p1, Lcom/google/googlenav/ca;->a:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/google/googlenav/co;-><init>(Ljava/lang/String;I)V

    .line 607
    iput-object p1, p0, Lcom/google/googlenav/co;->c:Lcom/google/googlenav/ca;

    .line 608
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 594
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 595
    iput-object p1, p0, Lcom/google/googlenav/co;->a:Ljava/lang/String;

    .line 596
    iput p2, p0, Lcom/google/googlenav/co;->b:I

    .line 597
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 612
    const/16 v0, 0x70

    return v0
.end method

.method protected a(Z)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 5
    .parameter

    .prologue
    .line 622
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/hz;->a:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 623
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlenav/co;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 624
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlenav/co;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setInt(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 625
    if-eqz p1, :cond_25

    .line 626
    const/4 v1, 0x3

    invoke-static {}, Lcom/google/googlenav/ui/bn;->d()Lcom/google/googlenav/ui/bn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bn;->T()Lcom/google/googlenav/ui/bm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bm;->d()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 629
    :cond_25
    return-object v0
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 4
    .parameter

    .prologue
    .line 642
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/hz;->c:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 644
    iget-object v1, p0, Lcom/google/googlenav/co;->c:Lcom/google/googlenav/ca;

    if-eqz v1, :cond_11

    .line 645
    iget-object v1, p0, Lcom/google/googlenav/co;->c:Lcom/google/googlenav/ca;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ca;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 649
    :goto_f
    const/4 v0, 0x1

    return v0

    .line 647
    :cond_11
    new-instance v1, Lcom/google/googlenav/ca;

    invoke-direct {v1, v0}, Lcom/google/googlenav/ca;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    iput-object v1, p0, Lcom/google/googlenav/co;->c:Lcom/google/googlenav/ca;

    goto :goto_f
.end method

.method public i()Lcom/google/googlenav/ca;
    .registers 2

    .prologue
    .line 653
    iget-object v0, p0, Lcom/google/googlenav/co;->c:Lcom/google/googlenav/ca;

    return-object v0
.end method

.method protected k()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 637
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/co;->a(Z)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method
