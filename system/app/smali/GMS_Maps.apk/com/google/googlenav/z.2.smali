.class Lcom/google/googlenav/Z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/ce;


# instance fields
.field private final a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private final b:[Lcom/google/googlenav/ca;

.field private final c:[Lcom/google/googlenav/ca;

.field private final d:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;[Lcom/google/googlenav/ca;[Lcom/google/googlenav/ca;Ljava/util/Map;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 696
    iput-object p1, p0, Lcom/google/googlenav/Z;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 697
    iput-object p2, p0, Lcom/google/googlenav/Z;->b:[Lcom/google/googlenav/ca;

    .line 698
    iput-object p3, p0, Lcom/google/googlenav/Z;->c:[Lcom/google/googlenav/ca;

    .line 699
    iput-object p4, p0, Lcom/google/googlenav/Z;->d:Ljava/util/Map;

    .line 700
    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x6

    .line 704
    iget-object v0, p0, Lcom/google/googlenav/Z;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    if-lt p1, v0, :cond_b

    .line 706
    const/4 v0, 0x0

    .line 708
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/google/googlenav/Z;->a:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    goto :goto_a
.end method

.method public b(I)Lcom/google/googlenav/ab;
    .registers 4
    .parameter

    .prologue
    .line 724
    iget-object v0, p0, Lcom/google/googlenav/Z;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ab;

    return-object v0
.end method
