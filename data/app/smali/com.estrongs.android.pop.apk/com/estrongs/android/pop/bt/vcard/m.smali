.class public Lcom/estrongs/android/pop/bt/vcard/m;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Z
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_6

    move v1, v2

    :cond_5
    :goto_5
    return v1

    :cond_6
    move v0, v1

    :goto_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_f

    move v1, v2

    goto :goto_5

    :cond_f
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ltz v3, :cond_5

    const/16 v4, 0x7f

    if-gt v3, v4, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_7
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    new-instance v2, Ljava/util/Vector;

    const/16 v0, 0xa

    invoke-direct {v2, v0}, Ljava/util/Vector;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v0, v1

    :goto_d
    if-lt v0, v3, :cond_1c

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v0, v3, 0x1

    new-array v4, v0, [Ljava/lang/String;

    if-nez v3, :cond_32

    aput-object p0, v4, v1

    :goto_1b
    return-object v4

    :cond_1c
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2f

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_32
    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v0, 0x1

    move v1, v0

    :goto_44
    if-lt v1, v3, :cond_61

    add-int/lit8 v0, v1, -0x1

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_83

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_5e
    aput-object v0, v4, v1

    goto :goto_1b

    :cond_61
    add-int/lit8 v0, v1, -0x1

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_44

    :cond_83
    const-string v0, ""

    goto :goto_5e
.end method
