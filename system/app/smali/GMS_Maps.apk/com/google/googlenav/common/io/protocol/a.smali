.class Lcom/google/googlenav/common/io/protocol/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;


# direct methods
.method constructor <init>(ILjava/lang/Object;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p1, p0, Lcom/google/googlenav/common/io/protocol/a;->a:I

    .line 83
    iput-object p2, p0, Lcom/google/googlenav/common/io/protocol/a;->b:Ljava/lang/Object;

    .line 84
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/common/io/protocol/a;)I
    .registers 2
    .parameter

    .prologue
    .line 78
    iget v0, p0, Lcom/google/googlenav/common/io/protocol/a;->a:I

    return v0
.end method

.method static synthetic b(Lcom/google/googlenav/common/io/protocol/a;)Ljava/lang/Object;
    .registers 2
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/googlenav/common/io/protocol/a;->b:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 93
    if-ne p0, p1, :cond_5

    .line 100
    :cond_4
    :goto_4
    return v0

    .line 96
    :cond_5
    if-eqz p1, :cond_b

    instance-of v2, p1, Lcom/google/googlenav/common/io/protocol/a;

    if-nez v2, :cond_d

    :cond_b
    move v0, v1

    .line 97
    goto :goto_4

    .line 99
    :cond_d
    check-cast p1, Lcom/google/googlenav/common/io/protocol/a;

    .line 100
    iget v2, p0, Lcom/google/googlenav/common/io/protocol/a;->a:I

    iget v3, p1, Lcom/google/googlenav/common/io/protocol/a;->a:I

    if-ne v2, v3, :cond_29

    iget-object v2, p0, Lcom/google/googlenav/common/io/protocol/a;->b:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/googlenav/common/io/protocol/a;->b:Ljava/lang/Object;

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/google/googlenav/common/io/protocol/a;->b:Ljava/lang/Object;

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/google/googlenav/common/io/protocol/a;->b:Ljava/lang/Object;

    iget-object v3, p1, Lcom/google/googlenav/common/io/protocol/a;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_29
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 88
    iget v0, p0, Lcom/google/googlenav/common/io/protocol/a;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TypeInfo{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/common/io/protocol/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/common/io/protocol/a;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
