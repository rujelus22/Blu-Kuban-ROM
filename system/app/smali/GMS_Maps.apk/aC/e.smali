.class public Lac/e;
.super Lac/a;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 48
    invoke-direct {p0}, Lac/a;-><init>()V

    .line 49
    iput-object p1, p0, Lac/e;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 50
    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 51
    invoke-direct {p0}, Lac/e;->k()Ljava/lang/String;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_15

    .line 53
    invoke-virtual {p1, v1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 56
    :cond_15
    return-void
.end method

.method private k()Ljava/lang/String;
    .registers 2

    .prologue
    .line 106
    const-string v0, "Cohort"

    invoke-static {v0}, Lcom/google/googlenav/common/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 60
    const/16 v0, 0x3e

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 3
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lac/e;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->a(Ljava/io/DataOutput;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 83
    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 87
    sget-object v0, Lcom/google/wireless/googlenav/proto/j2me/ab;->b:Lcom/google/googlenav/common/io/protocol/ProtoBufType;

    invoke-static {v0, p1}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 89
    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 90
    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 92
    iget-object v2, p0, Lac/e;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v2, v3, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 93
    const-string v2, "Cohort"

    invoke-static {v2, v1}, Lcom/google/googlenav/common/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_1c
    invoke-virtual {v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 99
    invoke-static {}, Lac/h;->a()Lac/h;

    move-result-object v1

    invoke-virtual {v0, v4}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {v1, v0}, Lac/h;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 102
    :cond_2d
    return v3
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public j_()Z
    .registers 2

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public z_()Z
    .registers 2

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method
