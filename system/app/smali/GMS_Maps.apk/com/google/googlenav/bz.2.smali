.class Lcom/google/googlenav/bZ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:[Lcom/google/googlenav/bY;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x2

    .line 1031
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1032
    invoke-virtual {p1, v5}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 1033
    new-array v0, v1, [Lcom/google/googlenav/bY;

    iput-object v0, p0, Lcom/google/googlenav/bZ;->a:[Lcom/google/googlenav/bY;

    .line 1034
    const/4 v0, 0x0

    :goto_d
    if-ge v0, v1, :cond_1f

    .line 1035
    iget-object v2, p0, Lcom/google/googlenav/bZ;->a:[Lcom/google/googlenav/bY;

    new-instance v3, Lcom/google/googlenav/bY;

    invoke-virtual {p1, v5, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/googlenav/bY;-><init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    aput-object v3, v2, v0

    .line 1034
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1038
    :cond_1f
    iput p2, p0, Lcom/google/googlenav/bZ;->b:I

    .line 1039
    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/bZ;)[Lcom/google/googlenav/bY;
    .registers 2
    .parameter

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/google/googlenav/bZ;->a:[Lcom/google/googlenav/bY;

    return-object v0
.end method

.method static synthetic c(Lcom/google/googlenav/bZ;)I
    .registers 2
    .parameter

    .prologue
    .line 1019
    iget v0, p0, Lcom/google/googlenav/bZ;->b:I

    return v0
.end method


# virtual methods
.method public a(Lcom/google/googlenav/bZ;)I
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1044
    iget-object v0, p0, Lcom/google/googlenav/bZ;->a:[Lcom/google/googlenav/bY;

    aget-object v0, v0, v2

    iget-object v1, p1, Lcom/google/googlenav/bZ;->a:[Lcom/google/googlenav/bY;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/googlenav/bY;->a(Lcom/google/googlenav/bY;)I

    move-result v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 1019
    check-cast p1, Lcom/google/googlenav/bZ;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/bZ;->a(Lcom/google/googlenav/bZ;)I

    move-result v0

    return v0
.end method
