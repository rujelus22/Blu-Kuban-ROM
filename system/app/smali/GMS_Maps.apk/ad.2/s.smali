.class public Lad/s;
.super Lad/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lad/k;)V
    .registers 3
    .parameter

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lad/b;-><init>(Lad/k;Lcom/google/googlenav/ui/p;)V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lad/s;->b:I

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/google/googlenav/ui/p;)V
    .registers 3
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lad/b;-><init>(Lcom/google/googlenav/ui/p;)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lad/s;->b:I

    .line 31
    return-void
.end method

.method public constructor <init>([Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ui/p;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lad/b;-><init>([Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ui/p;)V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lad/s;->b:I

    .line 43
    return-void
.end method


# virtual methods
.method L()I
    .registers 2

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 3
    .parameter

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lad/s;->d(I)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

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
    .line 48
    new-instance v0, Lad/s;

    invoke-virtual {p0}, Lad/s;->ap()Lad/j;

    move-result-object v1

    invoke-direct {v0, v1}, Lad/s;-><init>(Lad/k;)V

    .line 49
    return-object v0
.end method

.method public aU()I
    .registers 2

    .prologue
    .line 83
    invoke-virtual {p0}, Lad/s;->ab()Lad/h;

    move-result-object v0

    invoke-virtual {v0}, Lad/h;->q()I

    move-result v0

    return v0
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
    .line 99
    const/4 v0, 0x1

    return v0
.end method
