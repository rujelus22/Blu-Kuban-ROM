.class public Lcom/google/googlenav/ax;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)J
    .registers 7

    if-nez p0, :cond_a

    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "null string"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "empty string"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    :goto_1b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_3c

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_34

    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    const-wide/16 v4, 0xa

    mul-long/2addr v1, v4

    int-to-long v3, v3

    add-long/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_3c
    return-wide v1
.end method

.method public static a(J)Ljava/lang/String;
    .registers 10

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_b

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const-wide v0, 0x7fffffffffffffffL

    and-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "9223372036854775808"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v2

    move v2, v1

    move v1, v0

    :goto_2c
    if-ltz v2, :cond_51

    if-ltz v1, :cond_4e

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_34
    add-int/lit8 v0, v0, -0x30

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/lit8 v7, v7, -0x30

    add-int/2addr v0, v7

    add-int/2addr v0, v3

    rem-int/lit8 v3, v0, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    div-int/lit8 v3, v0, 0xa

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2c

    :cond_4e
    const/16 v0, 0x30

    goto :goto_34

    :cond_51
    if-eqz v3, :cond_56

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_56
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public static a(Lam/b;Lam/b;)Z
    .registers 7

    const/16 v3, 0x10

    const/4 v4, 0x2

    const/4 v0, 0x1

    invoke-static {p0, v3}, Lam/g;->h(Lam/b;I)Z

    move-result v1

    invoke-static {p0, v4}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v3}, Lam/g;->h(Lam/b;I)Z

    move-result v3

    invoke-static {p1, v4}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v4

    if-ne v3, v0, :cond_19

    if-ne v1, v0, :cond_19

    :goto_18
    return v0

    :cond_19
    if-eqz v4, :cond_1d

    if-nez v2, :cond_1f

    :cond_1d
    const/4 v0, 0x0

    goto :goto_18

    :cond_1f
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_18
.end method

.method public static a(Lam/b;ZLjava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    const/16 v1, 0x10

    invoke-static {p0, v1}, Lam/g;->h(Lam/b;I)Z

    move-result v1

    const/4 v2, 0x2

    invoke-static {p0, v2}, Lam/g;->b(Lam/b;I)Ljava/lang/String;

    move-result-object v2

    if-ne p1, v0, :cond_11

    if-ne v1, v0, :cond_11

    :goto_10
    return v0

    :cond_11
    if-eqz p2, :cond_15

    if-nez v2, :cond_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_10

    :cond_17
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_10
.end method
