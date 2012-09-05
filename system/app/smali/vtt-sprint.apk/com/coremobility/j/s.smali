.class public final Lcom/coremobility/j/s;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 12

    const/16 v10, 0x7f

    const/16 v6, 0x22

    const/16 v9, 0x20

    const/16 v8, 0x2e

    const/4 v1, 0x0

    if-nez p0, :cond_c

    :cond_b
    :goto_b
    return v1

    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "()<>@,;:\\\"[]"

    move v0, v1

    :goto_13
    if-ge v0, v4, :cond_69

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_5a

    if-eqz v0, :cond_2d

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v8, :cond_2d

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_5a

    :cond_2d
    :goto_2d
    add-int/lit8 v2, v0, 0x1

    if-ge v2, v4, :cond_49

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v6, :cond_49

    const/16 v3, 0x5c

    if-ne v0, v3, :cond_43

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v9, :cond_47

    :cond_43
    if-le v0, v9, :cond_b

    if-ge v0, v10, :cond_b

    :cond_47
    move v0, v2

    goto :goto_2d

    :cond_49
    add-int/lit8 v0, v2, 0x1

    if-ge v0, v4, :cond_b

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x40

    if-eq v2, v3, :cond_69

    if-ne v2, v8, :cond_b

    :cond_57
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_5a
    const/16 v3, 0x40

    if-eq v2, v3, :cond_69

    if-le v2, v9, :cond_b

    if-ge v2, v10, :cond_b

    invoke-virtual {v5, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_57

    goto :goto_b

    :cond_69
    if-eqz v0, :cond_b

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v8, :cond_b

    add-int/lit8 v0, v0, 0x1

    if-ge v0, v4, :cond_b

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v2, v0

    move v3, v1

    move v0, v1

    :cond_7e
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_9d

    if-eq v7, v6, :cond_b

    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v8, :cond_b

    add-int/lit8 v3, v3, 0x1

    move v0, v1

    :goto_91
    add-int/lit8 v2, v2, 0x1

    if-lt v2, v4, :cond_7e

    if-lez v3, :cond_b

    const/4 v2, 0x2

    if-lt v0, v2, :cond_b

    const/4 v1, 0x1

    goto/16 :goto_b

    :cond_9d
    if-le v7, v9, :cond_b

    if-ge v7, v10, :cond_b

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-gez v7, :cond_b

    add-int/lit8 v0, v0, 0x1

    goto :goto_91
.end method

.method public static b(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x4

    if-lt v2, v1, :cond_3

    const-string v1, "000"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v0

    :goto_14
    if-ge v1, v2, :cond_33

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_26

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x39

    if-le v3, v4, :cond_30

    :cond_26
    if-nez v1, :cond_3

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_3

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_33
    const/4 v0, 0x1

    goto :goto_3
.end method
