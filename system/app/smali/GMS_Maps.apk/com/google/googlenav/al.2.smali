.class public Lcom/google/googlenav/al;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/googlenav/am;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x2

    const/4 v5, 0x1

    .line 3889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3886
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/al;->c:Ljava/util/Vector;

    .line 3890
    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_40

    new-instance v0, Lcom/google/googlenav/am;

    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/googlenav/am;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    :goto_1b
    iput-object v0, p0, Lcom/google/googlenav/al;->a:Lcom/google/googlenav/am;

    .line 3893
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/al;->b:Ljava/lang/String;

    .line 3895
    invoke-virtual {p1, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 3896
    const/4 v0, 0x0

    :goto_29
    if-ge v0, v1, :cond_42

    .line 3897
    iget-object v2, p0, Lcom/google/googlenav/al;->c:Ljava/util/Vector;

    new-instance v3, Lcom/google/googlenav/am;

    invoke-virtual {p1, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/googlenav/am;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 3896
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 3890
    :cond_40
    const/4 v0, 0x0

    goto :goto_1b

    .line 3900
    :cond_42
    return-void
.end method


# virtual methods
.method public a()Lcom/google/googlenav/am;
    .registers 2

    .prologue
    .line 3903
    iget-object v0, p0, Lcom/google/googlenav/al;->a:Lcom/google/googlenav/am;

    return-object v0
.end method

.method public b()Ljava/util/Vector;
    .registers 2

    .prologue
    .line 3911
    iget-object v0, p0, Lcom/google/googlenav/al;->c:Ljava/util/Vector;

    return-object v0
.end method
