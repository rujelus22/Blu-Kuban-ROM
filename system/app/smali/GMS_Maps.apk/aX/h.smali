.class public Lax/h;
.super Lax/A;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

.field private d:Lad/b;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 36
    invoke-direct {p0}, Lax/A;-><init>()V

    .line 39
    invoke-virtual {p1, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lax/h;->a(Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x4

    const-wide/16 v1, -0x1

    invoke-static {p1, v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;IJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lax/h;->a(J)V

    .line 42
    const/16 v0, 0xc

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/google/googlenav/common/io/protocol/b;->a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;IJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lax/h;->b(J)V

    .line 45
    const/16 v0, 0xe

    invoke-static {p1, v0}, Lcom/google/googlenav/common/io/protocol/b;->d(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v0

    iput-object v0, p0, Lax/h;->c:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 46
    iget-object v0, p0, Lax/h;->c:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    array-length v0, v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_34

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lax/h;->b:Ljava/lang/String;

    iput-object v0, p0, Lax/h;->a:Ljava/lang/String;

    .line 53
    :goto_33
    return-void

    .line 51
    :cond_34
    iget-object v0, p0, Lax/h;->c:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lax/h;->a:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lax/h;->c:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    iget-object v1, p0, Lax/h;->c:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lax/h;->b:Ljava/lang/String;

    goto :goto_33
.end method

.method private e()Lad/b;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-virtual {p0}, Lax/h;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 91
    const-string v1, "dirflg"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    const-string v1, "w"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 93
    new-instance v0, Lad/x;

    iget-object v1, p0, Lax/h;->c:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {v0, v1, v2}, Lad/x;-><init>([Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ui/p;)V

    .line 100
    :goto_1e
    return-object v0

    .line 94
    :cond_1f
    const-string v1, "r"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 95
    new-instance v0, Lad/w;

    iget-object v1, p0, Lax/h;->c:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {v0, v1, v2}, Lad/w;-><init>([Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ui/p;)V

    goto :goto_1e

    .line 96
    :cond_2f
    const-string v1, "b"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 97
    new-instance v0, Lad/i;

    iget-object v1, p0, Lax/h;->c:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {v0, v1, v2}, Lad/i;-><init>([Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ui/p;)V

    goto :goto_1e

    .line 100
    :cond_3f
    new-instance v0, Lad/s;

    iget-object v1, p0, Lax/h;->c:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    invoke-direct {v0, v1, v2}, Lad/s;-><init>([Lcom/google/googlenav/common/io/protocol/ProtoBuf;Lcom/google/googlenav/ui/p;)V

    goto :goto_1e
.end method


# virtual methods
.method public a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 5

    .prologue
    .line 70
    invoke-super {p0}, Lax/A;->a()Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    move-result-object v1

    .line 71
    const/4 v0, 0x0

    :goto_5
    iget-object v2, p0, Lax/h;->c:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    array-length v2, v2

    if-ge v0, v2, :cond_16

    .line 72
    const/16 v2, 0xe

    iget-object v3, p0, Lax/h;->c:[Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/googlenav/common/io/protocol/ProtoBuf;)V

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 74
    :cond_16
    return-object v1
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lax/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lax/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Lad/b;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lax/h;->d:Lad/b;

    if-nez v0, :cond_a

    .line 106
    invoke-direct {p0}, Lax/h;->e()Lad/b;

    move-result-object v0

    iput-object v0, p0, Lax/h;->d:Lad/b;

    .line 108
    :cond_a
    iget-object v0, p0, Lax/h;->d:Lad/b;

    return-object v0
.end method
