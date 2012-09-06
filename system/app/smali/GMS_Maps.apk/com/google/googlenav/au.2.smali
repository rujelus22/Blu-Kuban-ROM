.class public Lcom/google/googlenav/aU;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:I

.field private final c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>(I[Ljava/lang/String;Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput p1, p0, Lcom/google/googlenav/aU;->b:I

    .line 103
    iput-object p2, p0, Lcom/google/googlenav/aU;->a:[Ljava/lang/String;

    .line 104
    iput-object p3, p0, Lcom/google/googlenav/aU;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 105
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/googlenav/aU;->a:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_b

    iget-object v0, p0, Lcom/google/googlenav/aU;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method public b()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 112
    iget-object v0, p0, Lcom/google/googlenav/aU;->a:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, v1, :cond_b

    iget-object v0, p0, Lcom/google/googlenav/aU;->a:[Ljava/lang/String;

    aget-object v0, v0, v1

    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method public c()I
    .registers 2

    .prologue
    .line 117
    iget v0, p0, Lcom/google/googlenav/aU;->b:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/googlenav/aU;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/google/googlenav/common/io/protocol/b;->b(Lcom/google/googlenav/common/io/protocol/ProtoBuf;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 3

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/googlenav/aU;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/googlenav/aU;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/google/googlenav/common/io/protocol/ProtoBuf;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/googlenav/aU;->c:Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    return-object v0
.end method
