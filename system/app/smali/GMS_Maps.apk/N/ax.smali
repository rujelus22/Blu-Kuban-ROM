.class public Ln/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/ao;


# instance fields
.field private final a:Ln/m;

.field private final b:[Ljava/lang/Integer;


# direct methods
.method protected constructor <init>(Ln/m;[Ljava/lang/Integer;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Ln/ax;->a:Ln/m;

    .line 44
    invoke-static {p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 45
    iput-object p2, p0, Ln/ax;->b:[Ljava/lang/Integer;

    .line 46
    return-void
.end method

.method static synthetic a(Ln/ax;)Ln/m;
    .registers 2
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Ln/ax;->a:Ln/m;

    return-object v0
.end method

.method static synthetic b(Ln/ax;)[Ljava/lang/Integer;
    .registers 2
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Ln/ax;->b:[Ljava/lang/Integer;

    return-object v0
.end method


# virtual methods
.method public a()Ln/aq;
    .registers 2

    .prologue
    .line 50
    sget-object v0, Ln/aq;->d:Ln/aq;

    return-object v0
.end method

.method public a(Lcom/google/googlenav/common/io/protocol/ProtoBuf;)V
    .registers 7
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Ln/ax;->a:Ln/m;

    if-eqz v0, :cond_f

    .line 67
    const/16 v0, 0x9

    iget-object v1, p0, Ln/ax;->a:Ln/m;

    invoke-virtual {v1}, Ln/m;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)Lcom/google/googlenav/common/io/protocol/ProtoBuf;

    .line 69
    :cond_f
    iget-object v1, p0, Ln/ax;->b:[Ljava/lang/Integer;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v2, :cond_23

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 70
    const/16 v4, 0xc

    invoke-virtual {p1, v4, v3}, Lcom/google/googlenav/common/io/protocol/ProtoBuf;->addInt(II)V

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 72
    :cond_23
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/dg;)Z
    .registers 3
    .parameter

    .prologue
    .line 60
    sget-object v0, Lcom/google/android/maps/driveabout/vector/dg;->m:Lcom/google/android/maps/driveabout/vector/dg;

    if-ne p1, v0, :cond_f

    iget-object v0, p0, Ln/ax;->a:Ln/m;

    if-nez v0, :cond_d

    iget-object v0, p0, Ln/ax;->b:[Ljava/lang/Integer;

    array-length v0, v0

    if-eqz v0, :cond_f

    :cond_d
    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public a(Ln/ao;)Z
    .registers 3
    .parameter

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Ln/ax;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(Ln/ao;)I
    .registers 4
    .parameter

    .prologue
    .line 99
    if-nez p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ln/ax;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_3
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 22
    check-cast p1, Ln/ao;

    invoke-virtual {p0, p1}, Ln/ax;->b(Ln/ao;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 104
    if-ne p0, p1, :cond_5

    .line 114
    :cond_4
    :goto_4
    return v0

    .line 107
    :cond_5
    if-nez p1, :cond_12

    .line 108
    iget-object v2, p0, Ln/ax;->a:Ln/m;

    if-nez v2, :cond_10

    iget-object v2, p0, Ln/ax;->b:[Ljava/lang/Integer;

    array-length v2, v2

    if-eqz v2, :cond_4

    :cond_10
    move v0, v1

    goto :goto_4

    .line 110
    :cond_12
    instance-of v2, p1, Ln/ax;

    if-nez v2, :cond_18

    move v0, v1

    .line 111
    goto :goto_4

    .line 113
    :cond_18
    check-cast p1, Ln/ax;

    .line 114
    iget-object v2, p0, Ln/ax;->a:Ln/m;

    iget-object v3, p1, Ln/ax;->a:Ln/m;

    invoke-static {v2, v3}, Lcom/google/common/base/K;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, p0, Ln/ax;->b:[Ljava/lang/Integer;

    iget-object v3, p1, Ln/ax;->b:[Ljava/lang/Integer;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2e
    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 88
    .line 90
    iget-object v0, p0, Ln/ax;->a:Ln/m;

    if-nez v0, :cond_16

    const/4 v0, 0x0

    :goto_5
    add-int/lit8 v0, v0, 0x1f

    .line 91
    iget-object v1, p0, Ln/ax;->b:[Ljava/lang/Integer;

    array-length v1, v1

    if-lez v1, :cond_15

    .line 92
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ln/ax;->b:[Ljava/lang/Integer;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 94
    :cond_15
    return v0

    .line 90
    :cond_16
    iget-object v0, p0, Ln/ax;->a:Ln/m;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    iget-object v0, p0, Ln/ax;->a:Ln/m;

    if-nez v0, :cond_2a

    const-string v0, ""

    :goto_b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object v2, p0, Ln/ax;->b:[Ljava/lang/Integer;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_17
    if-ge v0, v3, :cond_31

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 80
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 77
    :cond_2a
    iget-object v0, p0, Ln/ax;->a:Ln/m;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 83
    :cond_31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
