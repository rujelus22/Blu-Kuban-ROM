.class public final Lo/Q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 52
    if-nez p1, :cond_9

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    :goto_5
    invoke-direct {p0, v0}, Lo/Q;-><init>([Ljava/lang/String;)V

    .line 53
    return-void

    .line 52
    :cond_9
    const/16 v0, 0xa

    invoke-static {p1, v0}, Laa/b;->a(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {p1}, Lo/Q;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/Q;->a:[Ljava/lang/String;

    .line 58
    return-void
.end method

.method private static a([Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 61
    move v0, v1

    move v2, v1

    .line 62
    :goto_3
    array-length v3, p0

    if-ge v0, v3, :cond_1b

    .line 63
    aget-object v3, p0, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p0, v0

    .line 64
    aget-object v3, p0, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_18

    .line 65
    add-int/lit8 v2, v2, 0x1

    .line 62
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 68
    :cond_1b
    if-nez v2, :cond_1e

    .line 77
    :goto_1d
    return-object p0

    .line 71
    :cond_1e
    array-length v0, p0

    sub-int/2addr v0, v2

    new-array v3, v0, [Ljava/lang/String;

    move v0, v1

    .line 72
    :goto_23
    array-length v2, p0

    if-ge v0, v2, :cond_38

    .line 73
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_35

    .line 74
    add-int/lit8 v2, v1, 0x1

    aget-object v4, p0, v0

    aput-object v4, v3, v1

    move v1, v2

    .line 72
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_38
    move-object p0, v3

    .line 77
    goto :goto_1d
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lo/Q;->a:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public a(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lo/Q;->a:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 93
    iget-object v1, p0, Lo/Q;->a:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    .line 94
    iget-object v1, p0, Lo/Q;->a:[Ljava/lang/String;

    aget-object v0, v1, v0

    .line 103
    :goto_b
    return-object v0

    .line 96
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    :goto_11
    iget-object v2, p0, Lo/Q;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_27

    .line 98
    if-lez v0, :cond_1d

    .line 99
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    :cond_1d
    iget-object v2, p0, Lo/Q;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 103
    :cond_27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter

    .prologue
    .line 114
    if-ne p1, p0, :cond_4

    .line 115
    const/4 v0, 0x1

    .line 120
    :goto_3
    return v0

    .line 117
    :cond_4
    instance-of v0, p1, Lo/Q;

    if-nez v0, :cond_a

    .line 118
    const/4 v0, 0x0

    goto :goto_3

    .line 120
    :cond_a
    iget-object v0, p0, Lo/Q;->a:[Ljava/lang/String;

    check-cast p1, Lo/Q;

    iget-object v1, p1, Lo/Q;->a:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lo/Q;->a:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    invoke-virtual {p0}, Lo/Q;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
