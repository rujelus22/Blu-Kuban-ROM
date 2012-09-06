.class public final LafZ;
.super Ljava/lang/Object;
.source "Strings.java"


# direct methods
.method public static a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 191
    invoke-static {p0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-static {p1}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v0, v1

    .line 196
    :goto_14
    if-ge v0, v2, :cond_23

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_23

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 199
    :cond_23
    add-int/lit8 v2, v0, -0x1

    invoke-static {p0, v2}, LafZ;->a(Ljava/lang/CharSequence;I)Z

    move-result v2

    if-nez v2, :cond_33

    add-int/lit8 v2, v0, -0x1

    invoke-static {p1, v2}, LafZ;->a(Ljava/lang/CharSequence;I)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 200
    :cond_33
    add-int/lit8 v0, v0, -0x1

    .line 202
    :cond_35
    invoke-interface {p0, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 155
    invoke-static {p0}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    if-gt p1, v1, :cond_1e

    .line 158
    if-ltz p1, :cond_1c

    move v0, v1

    :goto_a
    const-string v3, "invalid count: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, LafQ;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 159
    if-nez p1, :cond_1b

    const-string p0, ""

    .line 178
    :cond_1b
    :goto_1b
    return-object p0

    :cond_1c
    move v0, v2

    .line 158
    goto :goto_a

    .line 163
    :cond_1e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 164
    int-to-long v3, v0

    int-to-long v5, p1

    mul-long/2addr v3, v5

    .line 165
    long-to-int v1, v3

    .line 166
    int-to-long v5, v1

    cmp-long v5, v5, v3

    if-eqz v5, :cond_48

    .line 167
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required array size too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_48
    new-array v3, v1, [C

    .line 172
    invoke-virtual {p0, v2, v0, v3, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 174
    :goto_4d
    sub-int v4, v1, v0

    if-ge v0, v4, :cond_57

    .line 175
    invoke-static {v3, v2, v3, v0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    shl-int/lit8 v0, v0, 0x1

    goto :goto_4d

    .line 177
    :cond_57
    sub-int/2addr v1, v0

    invoke-static {v3, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    goto :goto_1b
.end method

.method static a(Ljava/lang/CharSequence;I)Z
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 237
    if-ltz p1, :cond_22

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-gt p1, v0, :cond_22

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_22

    add-int/lit8 v0, p1, 0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 2
    .parameter

    .prologue
    .line 76
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
