.class public abstract LaeI;
.super LaeE;
.source "UnicodeEscaper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, LaeE;-><init>()V

    return-void
.end method

.method private static a([CII)[C
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 253
    new-array v0, p2, [C

    .line 254
    if-lez p1, :cond_8

    .line 255
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    :cond_8
    return-object v0
.end method

.method protected static b(Ljava/lang/CharSequence;II)I
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 221
    if-ge p1, p2, :cond_87

    .line 222
    add-int/lit8 v1, p1, 0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 223
    const v2, 0xd800

    if-lt v0, v2, :cond_12

    const v2, 0xdfff

    if-le v0, v2, :cond_13

    .line 234
    :cond_12
    :goto_12
    return v0

    .line 226
    :cond_13
    const v2, 0xdbff

    if-gt v0, v2, :cond_58

    .line 228
    if-ne v1, p2, :cond_1c

    .line 229
    neg-int v0, v0

    goto :goto_12

    .line 232
    :cond_1c
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 233
    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 234
    invoke-static {v0, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    goto :goto_12

    .line 236
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected low surrogate but got char \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' with value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_58
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected low surrogate character \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' with value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " at index "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 245
    :cond_87
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index exceeds specified range"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected abstract a(Ljava/lang/CharSequence;II)I
.end method

.method protected final a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 14
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 132
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 135
    invoke-static {}, LaeG;->a()[C

    move-result-object v3

    move v2, v4

    move v0, v4

    .line 139
    :goto_b
    if-ge p2, v5, :cond_55

    .line 140
    invoke-static {p1, p2, v5}, LaeI;->b(Ljava/lang/CharSequence;II)I

    move-result v1

    .line 141
    if-gez v1, :cond_1b

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trailing high surrogate at end of input"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_1b
    invoke-virtual {p0, v1}, LaeI;->a(I)[C

    move-result-object v6

    .line 148
    invoke-static {v1}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v1

    if-eqz v1, :cond_53

    const/4 v1, 0x2

    :goto_26
    add-int/2addr v1, p2

    .line 149
    if-eqz v6, :cond_6b

    .line 150
    sub-int v7, p2, v2

    .line 154
    add-int v8, v0, v7

    array-length v9, v6

    add-int/2addr v8, v9

    .line 155
    array-length v9, v3

    if-ge v9, v8, :cond_3a

    .line 156
    add-int/2addr v8, v5

    sub-int/2addr v8, p2

    add-int/lit8 v8, v8, 0x20

    .line 157
    invoke-static {v3, v0, v8}, LaeI;->a([CII)[C

    move-result-object v3

    .line 160
    :cond_3a
    if-lez v7, :cond_40

    .line 161
    invoke-virtual {p1, v2, p2, v3, v0}, Ljava/lang/String;->getChars(II[CI)V

    .line 162
    add-int/2addr v0, v7

    .line 164
    :cond_40
    array-length v2, v6

    if-lez v2, :cond_49

    .line 165
    array-length v2, v6

    invoke-static {v6, v4, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    array-length v2, v6

    add-int/2addr v0, v2

    :cond_49
    move v2, v0

    move v0, v1

    .line 171
    :goto_4b
    invoke-virtual {p0, p1, v1, v5}, LaeI;->a(Ljava/lang/CharSequence;II)I

    move-result p2

    move v10, v0

    move v0, v2

    move v2, v10

    .line 172
    goto :goto_b

    .line 148
    :cond_53
    const/4 v1, 0x1

    goto :goto_26

    .line 176
    :cond_55
    sub-int v1, v5, v2

    .line 177
    if-lez v1, :cond_65

    .line 178
    add-int/2addr v1, v0

    .line 179
    array-length v6, v3

    if-ge v6, v1, :cond_61

    .line 180
    invoke-static {v3, v0, v1}, LaeI;->a([CII)[C

    move-result-object v3

    .line 182
    :cond_61
    invoke-virtual {p1, v2, v5, v3, v0}, Ljava/lang/String;->getChars(II[CI)V

    move v0, v1

    .line 185
    :cond_65
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3, v4, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    :cond_6b
    move v10, v2

    move v2, v0

    move v0, v10

    goto :goto_4b
.end method

.method protected abstract a(I)[C
.end method
