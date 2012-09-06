.class Lat/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lat/P;

.field private b:I

.field private final c:I

.field private d:Lat/f;


# direct methods
.method public constructor <init>(Lat/I;)V
    .registers 6
    .parameter

    .prologue
    .line 41
    invoke-virtual {p1}, Lat/I;->c()Lat/P;

    move-result-object v0

    invoke-virtual {p1}, Lat/I;->g()J

    move-result-wide v1

    invoke-virtual {p1}, Lat/I;->j()I

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lat/e;-><init>(Lat/P;JI)V

    .line 43
    return-void
.end method

.method private constructor <init>(Lat/P;JI)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lat/e;->a:Lat/P;

    .line 47
    invoke-virtual {p0, p2, p3}, Lat/e;->a(J)V

    .line 48
    iput p4, p0, Lat/e;->c:I

    .line 49
    return-void
.end method

.method public static a(Ljava/io/DataInput;)Lat/e;
    .registers 7
    .parameter

    .prologue
    .line 114
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 115
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v1

    .line 116
    invoke-static {p0}, Lat/P;->a(Ljava/io/DataInput;)Lat/P;

    move-result-object v2

    .line 118
    new-instance v3, Lat/e;

    int-to-long v4, v0

    invoke-direct {v3, v2, v4, v5, v1}, Lat/e;-><init>(Lat/P;JI)V

    return-object v3
.end method


# virtual methods
.method public a()Lat/P;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lat/e;->a:Lat/P;

    return-object v0
.end method

.method public a(J)V
    .registers 7
    .parameter

    .prologue
    .line 72
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    const-wide/32 v2, 0x424b1f68

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lat/e;->b:I

    .line 73
    return-void
.end method

.method public a(Lat/f;)V
    .registers 4
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lat/e;->d:Lat/f;

    if-eqz v0, :cond_c

    .line 54
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FlashRecord already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_c
    iput-object p1, p0, Lat/e;->d:Lat/f;

    .line 58
    return-void
.end method

.method public a(Ljava/io/DataOutput;)V
    .registers 3
    .parameter

    .prologue
    .line 130
    iget v0, p0, Lat/e;->b:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 131
    iget v0, p0, Lat/e;->c:I

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeShort(I)V

    .line 132
    iget-object v0, p0, Lat/e;->a:Lat/P;

    invoke-virtual {v0, p1}, Lat/P;->a(Ljava/io/DataOutput;)V

    .line 133
    return-void
.end method

.method public b()J
    .registers 5

    .prologue
    .line 80
    iget v0, p0, Lat/e;->b:I

    int-to-long v0, v0

    const-wide/32 v2, 0x424b1f68

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 89
    iget v0, p0, Lat/e;->c:I

    add-int/lit8 v0, v0, 0xc

    return v0
.end method

.method public d()Lat/f;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lat/e;->d:Lat/f;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 137
    if-ne p0, p1, :cond_5

    .line 150
    :cond_4
    :goto_4
    return v0

    .line 140
    :cond_5
    instance-of v2, p1, Lat/e;

    if-nez v2, :cond_b

    move v0, v1

    .line 141
    goto :goto_4

    .line 144
    :cond_b
    check-cast p1, Lat/e;

    .line 146
    iget v2, p0, Lat/e;->c:I

    iget v3, p1, Lat/e;->c:I

    if-eq v2, v3, :cond_15

    move v0, v1

    .line 147
    goto :goto_4

    .line 150
    :cond_15
    iget-object v2, p0, Lat/e;->a:Lat/P;

    if-nez v2, :cond_1f

    iget-object v2, p1, Lat/e;->a:Lat/P;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_1f
    iget-object v0, p0, Lat/e;->a:Lat/P;

    iget-object v1, p1, Lat/e;->a:Lat/P;

    invoke-virtual {v0, v1}, Lat/P;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 158
    iget-object v0, p0, Lat/e;->a:Lat/P;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lat/e;->a:Lat/P;

    invoke-virtual {v0}, Lat/P;->hashCode()I

    move-result v0

    .line 159
    :goto_a
    mul-int/lit8 v0, v0, 0x1d

    iget v1, p0, Lat/e;->c:I

    add-int/2addr v0, v1

    .line 160
    return v0

    .line 158
    :cond_10
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lat/e;->a:Lat/P;

    invoke-virtual {v1}, Lat/P;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lat/e;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
