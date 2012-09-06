.class public Lcom/google/googlenav/ct;
.super Lac/a;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private final b:Lcom/google/googlenav/cu;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/cu;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/google/googlenav/ct;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 44
    iput-object p2, p0, Lcom/google/googlenav/ct;->b:Lcom/google/googlenav/cu;

    .line 45
    return-void
.end method

.method private static a(ILcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-virtual {p1, p0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->hasFieldSet(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 122
    invoke-virtual {p1, p0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    invoke-virtual {p2, p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setBool(IZ)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 124
    :cond_d
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 52
    const/16 v0, 0x5e

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 74
    new-instance v0, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/bJ;->Y:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 76
    iget-object v1, p0, Lcom/google/googlenav/ct;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v1, :cond_3a

    .line 80
    new-instance v1, Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    sget-object v2, Lbq/G;->A:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-direct {v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBufType;)V

    .line 81
    iget-object v2, p0, Lcom/google/googlenav/ct;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v5, v2, v1}, Lcom/google/googlenav/ct;->a(ILcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 82
    iget-object v2, p0, Lcom/google/googlenav/ct;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v4, v2, v1}, Lcom/google/googlenav/ct;->a(ILcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 83
    iget-object v2, p0, Lcom/google/googlenav/ct;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v6, v2, v1}, Lcom/google/googlenav/ct;->a(ILcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 84
    iget-object v2, p0, Lcom/google/googlenav/ct;->b:Lcom/google/googlenav/cu;

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/google/googlenav/ct;->b:Lcom/google/googlenav/cu;

    iget-object v2, v2, Lcom/google/googlenav/cu;->e:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v2, :cond_37

    .line 85
    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/googlenav/ct;->b:Lcom/google/googlenav/cu;

    iget-object v3, v3, Lcom/google/googlenav/cu;->e:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 87
    :cond_37
    invoke-virtual {v0, v4, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 90
    :cond_3a
    iget-object v1, p0, Lcom/google/googlenav/ct;->b:Lcom/google/googlenav/cu;

    if-eqz v1, :cond_74

    .line 92
    iget-object v1, p0, Lcom/google/googlenav/ct;->b:Lcom/google/googlenav/cu;

    iget-object v1, v1, Lcom/google/googlenav/cu;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v1, :cond_4b

    .line 93
    iget-object v1, p0, Lcom/google/googlenav/ct;->b:Lcom/google/googlenav/cu;

    iget-object v1, v1, Lcom/google/googlenav/cu;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v5, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 98
    :cond_4b
    iget-object v1, p0, Lcom/google/googlenav/ct;->b:Lcom/google/googlenav/cu;

    iget-object v1, v1, Lcom/google/googlenav/cu;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v1, :cond_58

    .line 99
    iget-object v1, p0, Lcom/google/googlenav/ct;->b:Lcom/google/googlenav/cu;

    iget-object v1, v1, Lcom/google/googlenav/cu;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v6, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 104
    :cond_58
    iget-object v1, p0, Lcom/google/googlenav/ct;->b:Lcom/google/googlenav/cu;

    iget-object v1, v1, Lcom/google/googlenav/cu;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v1, :cond_66

    .line 105
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/googlenav/ct;->b:Lcom/google/googlenav/cu;

    iget-object v2, v2, Lcom/google/googlenav/cu;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 110
    :cond_66
    iget-object v1, p0, Lcom/google/googlenav/ct;->b:Lcom/google/googlenav/cu;

    iget-object v1, v1, Lcom/google/googlenav/cu;->d:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    if-eqz v1, :cond_74

    .line 111
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/googlenav/ct;->b:Lcom/google/googlenav/cu;

    iget-object v2, v2, Lcom/google/googlenav/cu;->d:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 117
    :cond_74
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 118
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 60
    sget-object v1, Lcom/google/wireless/googlenav/proto/j2me/bJ;->Z:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v1, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 63
    invoke-virtual {v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v1

    if-nez v1, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
