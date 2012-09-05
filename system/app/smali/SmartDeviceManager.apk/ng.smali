.class public final Lng;
.super Ljava/lang/Object;
.source "a"


# static fields
.field static final a:[I

.field static final b:[I

.field static final c:[I

.field static final d:[I

.field static final e:[I

.field static final f:[I

.field static final g:[I

.field private static final h:[C

.field private static final i:[B


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/16 v8, 0xa

    const/4 v7, -0x1

    const/16 v6, 0x100

    const/16 v5, 0x80

    const/4 v4, 0x0

    .line 7
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 10
    sput-object v0, Lng;->h:[C

    array-length v0, v0

    .line 11
    new-array v1, v0, [B

    sput-object v1, Lng;->i:[B

    move v1, v4

    .line 12
    :goto_16
    if-ge v1, v0, :cond_24

    .line 13
    sget-object v2, Lng;->i:[B

    sget-object v3, Lng;->h:[C

    aget-char v3, v3, v1

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 12
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 28
    :cond_24
    new-array v0, v6, [I

    move v1, v4

    .line 30
    :goto_27
    const/16 v2, 0x20

    if-ge v1, v2, :cond_30

    .line 31
    aput v7, v0, v1

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 34
    :cond_30
    const/16 v1, 0x22

    const/4 v2, 0x1

    aput v2, v0, v1

    .line 35
    const/16 v1, 0x5c

    const/4 v2, 0x1

    aput v2, v0, v1

    .line 45
    sput-object v0, Lng;->a:[I

    array-length v0, v0

    new-array v0, v0, [I

    .line 46
    sget-object v1, Lng;->a:[I

    sget-object v2, Lng;->a:[I

    array-length v2, v2

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v5

    .line 47
    :goto_48
    if-ge v1, v6, :cond_68

    .line 51
    and-int/lit16 v2, v1, 0xe0

    const/16 v3, 0xc0

    if-ne v2, v3, :cond_56

    .line 52
    const/4 v2, 0x2

    .line 62
    :goto_51
    aput v2, v0, v1

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    .line 53
    :cond_56
    and-int/lit16 v2, v1, 0xf0

    const/16 v3, 0xe0

    if-ne v2, v3, :cond_5e

    .line 54
    const/4 v2, 0x3

    goto :goto_51

    .line 55
    :cond_5e
    and-int/lit16 v2, v1, 0xf8

    const/16 v3, 0xf0

    if-ne v2, v3, :cond_66

    .line 57
    const/4 v2, 0x4

    goto :goto_51

    :cond_66
    move v2, v7

    .line 60
    goto :goto_51

    .line 64
    :cond_68
    sput-object v0, Lng;->b:[I

    .line 77
    new-array v0, v6, [I

    .line 79
    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([II)V

    .line 81
    const/16 v1, 0x21

    :goto_71
    if-ge v1, v6, :cond_7f

    .line 82
    int-to-char v2, v1

    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 83
    aput v4, v0, v1

    .line 81
    :cond_7c
    add-int/lit8 v1, v1, 0x1

    goto :goto_71

    .line 89
    :cond_7f
    const/16 v1, 0x40

    aput v4, v0, v1

    .line 90
    const/16 v1, 0x23

    aput v4, v0, v1

    .line 91
    const/16 v1, 0x2a

    aput v4, v0, v1

    .line 92
    const/16 v1, 0x2d

    aput v4, v0, v1

    .line 93
    const/16 v1, 0x2b

    aput v4, v0, v1

    .line 94
    sput-object v0, Lng;->c:[I

    .line 104
    new-array v0, v6, [I

    .line 106
    sget-object v1, Lng;->c:[I

    sget-object v2, Lng;->c:[I

    array-length v2, v2

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    invoke-static {v0, v5, v5, v4}, Ljava/util/Arrays;->fill([IIII)V

    .line 108
    sput-object v0, Lng;->d:[I

    .line 115
    new-array v0, v6, [I

    sput-object v0, Lng;->e:[I

    .line 118
    sget-object v0, Lng;->b:[I

    sget-object v1, Lng;->e:[I

    invoke-static {v0, v5, v1, v5, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    sget-object v0, Lng;->e:[I

    const/16 v1, 0x20

    invoke-static {v0, v4, v1, v7}, Ljava/util/Arrays;->fill([IIII)V

    .line 122
    sget-object v0, Lng;->e:[I

    const/16 v1, 0x9

    aput v4, v0, v1

    .line 123
    sget-object v0, Lng;->e:[I

    aput v8, v0, v8

    .line 124
    sget-object v0, Lng;->e:[I

    const/16 v1, 0xd

    const/16 v2, 0xd

    aput v2, v0, v1

    .line 125
    sget-object v0, Lng;->e:[I

    const/16 v1, 0x2a

    const/16 v2, 0x2a

    aput v2, v0, v1

    .line 134
    new-array v0, v6, [I

    move v1, v4

    .line 136
    :goto_d3
    const/16 v2, 0x20

    if-ge v1, v2, :cond_df

    .line 137
    add-int/lit8 v2, v1, 0x1

    neg-int v2, v2

    aput v2, v0, v1

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_d3

    .line 142
    :cond_df
    const/16 v1, 0x22

    const/16 v2, 0x22

    aput v2, v0, v1

    .line 143
    const/16 v1, 0x5c

    const/16 v2, 0x5c

    aput v2, v0, v1

    .line 145
    const/16 v1, 0x8

    const/16 v2, 0x62

    aput v2, v0, v1

    .line 146
    const/16 v1, 0x9

    const/16 v2, 0x74

    aput v2, v0, v1

    .line 147
    const/16 v1, 0xc

    const/16 v2, 0x66

    aput v2, v0, v1

    .line 148
    const/16 v1, 0x6e

    aput v1, v0, v8

    .line 149
    const/16 v1, 0xd

    const/16 v2, 0x72

    aput v2, v0, v1

    .line 150
    sput-object v0, Lng;->f:[I

    .line 158
    new-array v0, v5, [I

    .line 160
    sput-object v0, Lng;->g:[I

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([II)V

    move v0, v4

    .line 161
    :goto_111
    if-ge v0, v8, :cond_11c

    .line 162
    sget-object v1, Lng;->g:[I

    add-int/lit8 v2, v0, 0x30

    aput v0, v1, v2

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_111

    :cond_11c
    move v0, v4

    .line 164
    :goto_11d
    const/4 v1, 0x6

    if-ge v0, v1, :cond_133

    .line 165
    sget-object v1, Lng;->g:[I

    add-int/lit8 v2, v0, 0x61

    add-int/lit8 v3, v0, 0xa

    aput v3, v1, v2

    .line 166
    sget-object v1, Lng;->g:[I

    add-int/lit8 v2, v0, 0x41

    add-int/lit8 v3, v0, 0xa

    aput v3, v1, v2

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_11d

    .line 168
    :cond_133
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .registers 2
    .parameter

    .prologue
    .line 181
    const/16 v0, 0x7f

    if-le p0, v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    sget-object v0, Lng;->g:[I

    aget v0, v0, p0

    goto :goto_5
.end method

.method public static a(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x30

    .line 186
    sget-object v0, Lng;->f:[I

    .line 187
    array-length v1, v0

    .line 188
    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    :goto_a
    if-ge v2, v3, :cond_4b

    .line 189
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 190
    if-ge v4, v1, :cond_16

    aget v5, v0, v4

    if-nez v5, :cond_1c

    .line 191
    :cond_16
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 188
    :goto_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 194
    :cond_1c
    const/16 v5, 0x5c

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 195
    aget v4, v0, v4

    .line 196
    if-gez v4, :cond_46

    .line 198
    const/16 v5, 0x75

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 201
    add-int/lit8 v4, v4, 0x1

    neg-int v4, v4

    .line 202
    sget-object v5, Lng;->h:[C

    shr-int/lit8 v6, v4, 0x4

    aget-char v5, v5, v6

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    sget-object v5, Lng;->h:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v5, v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 205
    :cond_46
    int-to-char v4, v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 208
    :cond_4b
    return-void
.end method

.method public static final a()[I
    .registers 1

    .prologue
    .line 170
    sget-object v0, Lng;->a:[I

    return-object v0
.end method

.method public static final b()[I
    .registers 1

    .prologue
    .line 173
    sget-object v0, Lng;->c:[I

    return-object v0
.end method

.method public static final c()[I
    .registers 1

    .prologue
    .line 177
    sget-object v0, Lng;->f:[I

    return-object v0
.end method

.method public static d()[C
    .registers 1

    .prologue
    .line 215
    sget-object v0, Lng;->h:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method
