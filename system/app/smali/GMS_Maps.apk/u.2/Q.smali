.class public final Lu/Q;
.super Ljava/lang/Object;


# instance fields
.field private final a:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_9

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_5
    invoke-direct {p0, v0}, Lu/Q;-><init>([Ljava/lang/String;)V

    return-void

    :cond_9
    const/16 v0, 0xa

    invoke-static {p1, v0}, Las/b;->a(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lu/Q;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu/Q;->a:[Ljava/lang/String;

    return-void
.end method

.method private static a([Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_3
    array-length v3, p0

    if-ge v0, v3, :cond_1b

    aget-object v3, p0, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p0, v0

    aget-object v3, p0, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_18

    add-int/lit8 v2, v2, 0x1

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_1b
    if-nez v2, :cond_1e

    :goto_1d
    return-object p0

    :cond_1e
    array-length v0, p0

    sub-int/2addr v0, v2

    new-array v3, v0, [Ljava/lang/String;

    move v0, v1

    :goto_23
    array-length v2, p0

    if-ge v0, v2, :cond_38

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_35

    add-int/lit8 v2, v1, 0x1

    aget-object v4, p0, v0

    aput-object v4, v3, v1

    move v1, v2

    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_38
    move-object p0, v3

    goto :goto_1d
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lu/Q;->a:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public a(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lu/Q;->a:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lu/Q;->a:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    iget-object v1, p0, Lu/Q;->a:[Ljava/lang/String;

    aget-object v0, v1, v0

    :goto_b
    return-object v0

    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_11
    iget-object v2, p0, Lu/Q;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_27

    if-lez v0, :cond_1d

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1d
    iget-object v2, p0, Lu/Q;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p1, p0, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    instance-of v0, p1, Lu/Q;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lu/Q;->a:[Ljava/lang/String;

    check-cast p1, Lu/Q;

    iget-object v1, p1, Lu/Q;->a:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lu/Q;->a:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lu/Q;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
