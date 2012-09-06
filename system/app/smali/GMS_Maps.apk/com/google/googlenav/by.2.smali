.class Lcom/google/googlenav/bY;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private final a:I

.field private final b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1060
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1061
    invoke-virtual {p1, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/bY;->a:I

    .line 1063
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/bY;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 1065
    return-void
.end method

.method static synthetic b(Lcom/google/googlenav/bY;)I
    .registers 2
    .parameter

    .prologue
    .line 1051
    iget v0, p0, Lcom/google/googlenav/bY;->a:I

    return v0
.end method

.method static synthetic c(Lcom/google/googlenav/bY;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2
    .parameter

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/google/googlenav/bY;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/googlenav/bY;)I
    .registers 6
    .parameter

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/google/googlenav/bY;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v0}, Lcom/google/googlenav/ui/bi;->d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)J

    move-result-wide v0

    iget-object v2, p1, Lcom/google/googlenav/bY;->b:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-static {v2}, Lcom/google/googlenav/ui/bi;->d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, LJ/b;->a(JJ)I

    move-result v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 1051
    check-cast p1, Lcom/google/googlenav/bY;

    invoke-virtual {p0, p1}, Lcom/google/googlenav/bY;->a(Lcom/google/googlenav/bY;)I

    move-result v0

    return v0
.end method
