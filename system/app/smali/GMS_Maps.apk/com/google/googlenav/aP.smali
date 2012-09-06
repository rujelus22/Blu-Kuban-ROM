.class public Lcom/google/googlenav/ap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;I[B)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3668
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3669
    iput-object p1, p0, Lcom/google/googlenav/ap;->a:Ljava/lang/String;

    .line 3670
    iput p2, p0, Lcom/google/googlenav/ap;->b:I

    .line 3671
    iput-object p3, p0, Lcom/google/googlenav/ap;->c:[B

    .line 3672
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/ap;)I
    .registers 2
    .parameter

    .prologue
    .line 3662
    iget v0, p0, Lcom/google/googlenav/ap;->b:I

    return v0
.end method

.method public static a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)Lcom/google/googlenav/ap;
    .registers 5
    .parameter

    .prologue
    const/4 v3, 0x3

    .line 3676
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3677
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    .line 3678
    invoke-virtual {p0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3679
    new-instance v0, Lcom/google/googlenav/ap;

    invoke-virtual {p0, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->getBytes(I)[B

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlenav/ap;-><init>(Ljava/lang/String;I[B)V

    .line 3682
    :goto_1a
    return-object v0

    :cond_1b
    new-instance v0, Lcom/google/googlenav/ap;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlenav/ap;-><init>(Ljava/lang/String;I[B)V

    goto :goto_1a
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3698
    iget-object v0, p0, Lcom/google/googlenav/ap;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 3702
    iget v0, p0, Lcom/google/googlenav/ap;->b:I

    return v0
.end method

.method public c()[B
    .registers 2

    .prologue
    .line 3706
    iget-object v0, p0, Lcom/google/googlenav/ap;->c:[B

    return-object v0
.end method
