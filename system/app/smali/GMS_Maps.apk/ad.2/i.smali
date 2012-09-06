.class public Lad/i;
.super Lad/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lad/k;)V
    .registers 3
    .parameter

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lad/b;-><init>(Lad/k;Lcom/google/googlenav/ui/p;)V

    .line 37
    const/4 v0, 0x3

    iput v0, p0, Lad/i;->b:I

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/p;)V
    .registers 3
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lad/b;-><init>(Lcom/google/googlenav/ui/p;)V

    .line 31
    const/4 v0, 0x3

    iput v0, p0, Lad/i;->b:I

    .line 32
    return-void
.end method

.method public constructor <init>([Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ui/p;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lad/b;-><init>([Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ui/p;)V

    .line 43
    const/4 v0, 0x3

    iput v0, p0, Lad/i;->b:I

    .line 44
    return-void
.end method


# virtual methods
.method L()I
    .registers 2

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 3
    .parameter

    .prologue
    .line 60
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lad/i;->d(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 61
    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->outputWithSizeTo(Ljava/io/OutputStream;)V

    .line 62
    return-void
.end method

.method public aI()Lad/b;
    .registers 3

    .prologue
    .line 49
    new-instance v0, Lad/i;

    invoke-virtual {p0}, Lad/i;->ap()Lad/j;

    move-result-object v1

    invoke-direct {v0, v1}, Lad/i;-><init>(Lad/k;)V

    .line 50
    return-object v0
.end method

.method public p()I
    .registers 2

    .prologue
    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public u()Z
    .registers 2

    .prologue
    .line 80
    invoke-static {}, Lo/O;->a()Z

    move-result v0

    return v0
.end method
