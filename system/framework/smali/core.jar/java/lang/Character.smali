.class public final Ljava/lang/Character;
.super Ljava/lang/Object;
.source "Character.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Character$UnicodeBlock;,
        Ljava/lang/Character$Subset;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation

.annotation build Ljava/lang/FindBugsSuppressWarnings;
    value = {
        "DM_NUMBER_CTOR"
    }
.end annotation


# static fields
.field public static final COMBINING_SPACING_MARK:B = 0x8t

.field public static final CONNECTOR_PUNCTUATION:B = 0x17t

.field public static final CONTROL:B = 0xft

.field public static final CURRENCY_SYMBOL:B = 0x1at

.field public static final DASH_PUNCTUATION:B = 0x14t

.field public static final DECIMAL_DIGIT_NUMBER:B = 0x9t

.field private static final DIRECTIONALITY:[B = null

.field public static final DIRECTIONALITY_ARABIC_NUMBER:B = 0x6t

.field public static final DIRECTIONALITY_BOUNDARY_NEUTRAL:B = 0x9t

.field public static final DIRECTIONALITY_COMMON_NUMBER_SEPARATOR:B = 0x7t

.field public static final DIRECTIONALITY_EUROPEAN_NUMBER:B = 0x3t

.field public static final DIRECTIONALITY_EUROPEAN_NUMBER_SEPARATOR:B = 0x4t

.field public static final DIRECTIONALITY_EUROPEAN_NUMBER_TERMINATOR:B = 0x5t

.field public static final DIRECTIONALITY_LEFT_TO_RIGHT:B = 0x0t

.field public static final DIRECTIONALITY_LEFT_TO_RIGHT_EMBEDDING:B = 0xet

.field public static final DIRECTIONALITY_LEFT_TO_RIGHT_OVERRIDE:B = 0xft

.field public static final DIRECTIONALITY_NONSPACING_MARK:B = 0x8t

.field public static final DIRECTIONALITY_OTHER_NEUTRALS:B = 0xdt

.field public static final DIRECTIONALITY_PARAGRAPH_SEPARATOR:B = 0xat

.field public static final DIRECTIONALITY_POP_DIRECTIONAL_FORMAT:B = 0x12t

.field public static final DIRECTIONALITY_RIGHT_TO_LEFT:B = 0x1t

.field public static final DIRECTIONALITY_RIGHT_TO_LEFT_ARABIC:B = 0x2t

.field public static final DIRECTIONALITY_RIGHT_TO_LEFT_EMBEDDING:B = 0x10t

.field public static final DIRECTIONALITY_RIGHT_TO_LEFT_OVERRIDE:B = 0x11t

.field public static final DIRECTIONALITY_SEGMENT_SEPARATOR:B = 0xbt

.field public static final DIRECTIONALITY_UNDEFINED:B = -0x1t

.field public static final DIRECTIONALITY_WHITESPACE:B = 0xct

.field public static final ENCLOSING_MARK:B = 0x7t

.field public static final END_PUNCTUATION:B = 0x16t

.field public static final FINAL_QUOTE_PUNCTUATION:B = 0x1et

.field public static final FORMAT:B = 0x10t

.field public static final INITIAL_QUOTE_PUNCTUATION:B = 0x1dt

.field public static final LETTER_NUMBER:B = 0xat

.field public static final LINE_SEPARATOR:B = 0xdt

.field public static final LOWERCASE_LETTER:B = 0x2t

.field public static final MATH_SYMBOL:B = 0x19t

.field public static final MAX_CODE_POINT:I = 0x10ffff

.field public static final MAX_HIGH_SURROGATE:C = '\udbff'

.field public static final MAX_LOW_SURROGATE:C = '\udfff'

.field public static final MAX_RADIX:I = 0x24

.field public static final MAX_SURROGATE:C = '\udfff'

.field public static final MAX_VALUE:C = '\uffff'

.field public static final MIN_CODE_POINT:I = 0x0

.field public static final MIN_HIGH_SURROGATE:C = '\ud800'

.field public static final MIN_LOW_SURROGATE:C = '\udc00'

.field public static final MIN_RADIX:I = 0x2

.field public static final MIN_SUPPLEMENTARY_CODE_POINT:I = 0x10000

.field public static final MIN_SURROGATE:C = '\ud800'

.field public static final MIN_VALUE:C = '\u0000'

.field public static final MODIFIER_LETTER:B = 0x4t

.field public static final MODIFIER_SYMBOL:B = 0x1bt

.field public static final NON_SPACING_MARK:B = 0x6t

.field public static final OTHER_LETTER:B = 0x5t

.field public static final OTHER_NUMBER:B = 0xbt

.field public static final OTHER_PUNCTUATION:B = 0x18t

.field public static final OTHER_SYMBOL:B = 0x1ct

.field public static final PARAGRAPH_SEPARATOR:B = 0xet

.field public static final PRIVATE_USE:B = 0x12t

.field public static final SIZE:I = 0x10

.field private static final SMALL_VALUES:[Ljava/lang/Character; = null

.field public static final SPACE_SEPARATOR:B = 0xct

.field public static final START_PUNCTUATION:B = 0x15t

.field public static final SURROGATE:B = 0x13t

.field public static final TITLECASE_LETTER:B = 0x3t

.field public static final TYPE:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNASSIGNED:B = 0x0t

.field public static final UPPERCASE_LETTER:B = 0x1t

.field private static final serialVersionUID:J = 0x348b47d96b1a2678L


# instance fields
.field private final value:C


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/16 v4, 0x80

    .line 129
    const-class v1, [C

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 503
    const/16 v1, 0x13

    new-array v1, v1, [B

    fill-array-data v1, :array_28

    sput-object v1, Ljava/lang/Character;->DIRECTIONALITY:[B

    .line 1642
    new-array v1, v4, [Ljava/lang/Character;

    sput-object v1, Ljava/lang/Character;->SMALL_VALUES:[Ljava/lang/Character;

    .line 1645
    const/4 v0, 0x0

    .local v0, i:I
    :goto_18
    if-ge v0, v4, :cond_27

    .line 1646
    sget-object v1, Ljava/lang/Character;->SMALL_VALUES:[Ljava/lang/Character;

    new-instance v2, Ljava/lang/Character;

    int-to-char v3, v0

    invoke-direct {v2, v3}, Ljava/lang/Character;-><init>(C)V

    aput-object v2, v1, v0

    .line 1645
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 1648
    :cond_27
    return-void

    .line 503
    :array_28
    .array-data 0x1
        0x0t
        0x1t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x2t
        0x10t
        0x11t
        0x12t
        0x8t
        0x9t
    .end array-data
.end method

.method public constructor <init>(C)V
    .registers 2
    .parameter "value"

    .prologue
    .line 1576
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1577
    iput-char p1, p0, Ljava/lang/Character;->value:C

    .line 1578
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 100
    invoke-static {p0}, Ljava/lang/Character;->forNameImpl(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(I)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-static {p0}, Ljava/lang/Character;->checkValidCodePoint(I)V

    return-void
.end method

.method static synthetic access$200(I)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 100
    invoke-static {p0}, Ljava/lang/Character;->ofImpl(I)I

    move-result v0

    return v0
.end method

.method public static charCount(I)I
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 1751
    const/high16 v0, 0x1

    if-lt p0, v0, :cond_6

    const/4 v0, 0x2

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private static checkValidCodePoint(I)V
    .registers 4
    .parameter "codePoint"

    .prologue
    .line 1590
    invoke-static {p0}, Ljava/lang/Character;->isValidCodePoint(I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1591
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid code point: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1593
    :cond_1f
    return-void
.end method

.method public static codePointAt(Ljava/lang/CharSequence;I)I
    .registers 7
    .parameter "seq"
    .parameter "index"

    .prologue
    .line 1800
    if-nez p0, :cond_8

    .line 1801
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 1803
    :cond_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1804
    .local v2, len:I
    if-ltz p1, :cond_10

    if-lt p1, v2, :cond_16

    .line 1805
    :cond_10
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 1808
    :cond_16
    add-int/lit8 v1, p1, 0x1

    .end local p1
    .local v1, index:I
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1809
    .local v0, high:C
    if-lt v1, v2, :cond_1f

    .line 1816
    .end local v0           #high:C
    :cond_1e
    :goto_1e
    return v0

    .line 1812
    .restart local v0       #high:C
    :cond_1f
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 1813
    .local v3, low:C
    invoke-static {v0, v3}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1814
    invoke-static {v0, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    goto :goto_1e
.end method

.method public static codePointAt([CI)I
    .registers 7
    .parameter "seq"
    .parameter "index"

    .prologue
    .line 1842
    if-nez p0, :cond_8

    .line 1843
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 1845
    :cond_8
    array-length v2, p0

    .line 1846
    .local v2, len:I
    if-ltz p1, :cond_d

    if-lt p1, v2, :cond_13

    .line 1847
    :cond_d
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 1850
    :cond_13
    add-int/lit8 v1, p1, 0x1

    .end local p1
    .local v1, index:I
    aget-char v0, p0, p1

    .line 1851
    .local v0, high:C
    if-lt v1, v2, :cond_1a

    .line 1858
    .end local v0           #high:C
    :cond_19
    :goto_19
    return v0

    .line 1854
    .restart local v0       #high:C
    :cond_1a
    aget-char v3, p0, v1

    .line 1855
    .local v3, low:C
    invoke-static {v0, v3}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1856
    invoke-static {v0, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    goto :goto_19
.end method

.method public static codePointAt([CII)I
    .registers 7
    .parameter "seq"
    .parameter "index"
    .parameter "limit"

    .prologue
    .line 1887
    if-ltz p1, :cond_9

    if-ge p1, p2, :cond_9

    if-ltz p2, :cond_9

    array-length v3, p0

    if-le p2, v3, :cond_f

    .line 1888
    :cond_9
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 1891
    :cond_f
    add-int/lit8 v1, p1, 0x1

    .end local p1
    .local v1, index:I
    aget-char v0, p0, p1

    .line 1892
    .local v0, high:C
    if-lt v1, p2, :cond_16

    .line 1899
    .end local v0           #high:C
    :cond_15
    :goto_15
    return v0

    .line 1895
    .restart local v0       #high:C
    :cond_16
    aget-char v2, p0, v1

    .line 1896
    .local v2, low:C
    invoke-static {v0, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1897
    invoke-static {v0, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    goto :goto_15
.end method

.method public static codePointBefore(Ljava/lang/CharSequence;I)I
    .registers 6
    .parameter "seq"
    .parameter "index"

    .prologue
    .line 1925
    if-nez p0, :cond_8

    .line 1926
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1928
    :cond_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1929
    .local v1, len:I
    const/4 v3, 0x1

    if-lt p1, v3, :cond_11

    if-le p1, v1, :cond_17

    .line 1930
    :cond_11
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 1933
    :cond_17
    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 1934
    .local v2, low:C
    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_22

    .line 1941
    .end local v2           #low:C
    :cond_21
    :goto_21
    return v2

    .line 1937
    .restart local v2       #low:C
    :cond_22
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1938
    .local v0, high:C
    invoke-static {v0, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1939
    invoke-static {v0, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    goto :goto_21
.end method

.method public static codePointBefore([CI)I
    .registers 6
    .parameter "seq"
    .parameter "index"

    .prologue
    .line 1967
    if-nez p0, :cond_8

    .line 1968
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 1970
    :cond_8
    array-length v1, p0

    .line 1971
    .local v1, len:I
    const/4 v3, 0x1

    if-lt p1, v3, :cond_e

    if-le p1, v1, :cond_14

    .line 1972
    :cond_e
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 1975
    :cond_14
    add-int/lit8 p1, p1, -0x1

    aget-char v2, p0, p1

    .line 1976
    .local v2, low:C
    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_1d

    .line 1983
    .end local v2           #low:C
    :cond_1c
    :goto_1c
    return v2

    .line 1979
    .restart local v2       #low:C
    :cond_1d
    aget-char v0, p0, p1

    .line 1980
    .local v0, high:C
    invoke-static {v0, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1981
    invoke-static {v0, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    goto :goto_1c
.end method

.method public static codePointBefore([CII)I
    .registers 7
    .parameter "seq"
    .parameter "index"
    .parameter "start"

    .prologue
    .line 2014
    if-nez p0, :cond_8

    .line 2015
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 2017
    :cond_8
    array-length v1, p0

    .line 2018
    .local v1, len:I
    if-le p1, p2, :cond_11

    if-gt p1, v1, :cond_11

    if-ltz p2, :cond_11

    if-lt p2, v1, :cond_17

    .line 2019
    :cond_11
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 2022
    :cond_17
    add-int/lit8 p1, p1, -0x1

    aget-char v2, p0, p1

    .line 2023
    .local v2, low:C
    add-int/lit8 p1, p1, -0x1

    if-ge p1, p2, :cond_20

    .line 2030
    .end local v2           #low:C
    :cond_1f
    :goto_1f
    return v2

    .line 2026
    .restart local v2       #low:C
    :cond_20
    aget-char v0, p0, p1

    .line 2027
    .local v0, high:C
    invoke-static {v0, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 2028
    invoke-static {v0, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    goto :goto_1f
.end method

.method public static codePointCount(Ljava/lang/CharSequence;II)I
    .registers 8
    .parameter "seq"
    .parameter "beginIndex"
    .parameter "endIndex"

    .prologue
    .line 2128
    if-nez p0, :cond_8

    .line 2129
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 2131
    :cond_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 2132
    .local v2, len:I
    if-ltz p1, :cond_12

    if-gt p2, v2, :cond_12

    if-le p1, p2, :cond_18

    .line 2133
    :cond_12
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 2136
    :cond_18
    const/4 v3, 0x0

    .line 2137
    .local v3, result:I
    move v1, p1

    .local v1, i:I
    :goto_1a
    if-ge v1, p2, :cond_3b

    .line 2138
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 2139
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 2140
    add-int/lit8 v1, v1, 0x1

    if-ge v1, p2, :cond_36

    .line 2141
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 2142
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-nez v4, :cond_36

    .line 2143
    add-int/lit8 v3, v3, 0x1

    .line 2147
    :cond_36
    add-int/lit8 v3, v3, 0x1

    .line 2137
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 2149
    .end local v0           #c:C
    :cond_3b
    return v3
.end method

.method public static codePointCount([CII)I
    .registers 8
    .parameter "seq"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 2175
    array-length v4, p0

    invoke-static {v4, p1, p2}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 2176
    add-int v1, p1, p2

    .line 2177
    .local v1, endIndex:I
    const/4 v3, 0x0

    .line 2178
    .local v3, result:I
    move v2, p1

    .local v2, i:I
    :goto_8
    if-ge v2, v1, :cond_25

    .line 2179
    aget-char v0, p0, v2

    .line 2180
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 2181
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_20

    .line 2182
    aget-char v0, p0, v2

    .line 2183
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-nez v4, :cond_20

    .line 2184
    add-int/lit8 v3, v3, 0x1

    .line 2188
    :cond_20
    add-int/lit8 v3, v3, 0x1

    .line 2178
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2190
    .end local v0           #c:C
    :cond_25
    return v3
.end method

.method public static compare(CC)I
    .registers 3
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    .line 1620
    sub-int v0, p0, p1

    return v0
.end method

.method public static digit(CI)I
    .registers 3
    .parameter "c"
    .parameter "radix"

    .prologue
    .line 2360
    invoke-static {p0, p1}, Ljava/lang/Character;->digit(II)I

    move-result v0

    return v0
.end method

.method public static digit(II)I
    .registers 5
    .parameter "codePoint"
    .parameter "radix"

    .prologue
    const/4 v1, -0x1

    .line 2377
    const/4 v2, 0x2

    if-lt p1, v2, :cond_8

    const/16 v2, 0x24

    if-le p1, v2, :cond_a

    :cond_8
    move v0, v1

    .line 2392
    :cond_9
    :goto_9
    return v0

    .line 2380
    :cond_a
    const/16 v2, 0x80

    if-ge p0, v2, :cond_37

    .line 2382
    const/4 v0, -0x1

    .line 2383
    .local v0, result:I
    const/16 v2, 0x30

    if-gt v2, p0, :cond_1d

    const/16 v2, 0x39

    if-gt p0, v2, :cond_1d

    .line 2384
    add-int/lit8 v0, p0, -0x30

    .line 2390
    :cond_19
    :goto_19
    if-lt v0, p1, :cond_9

    move v0, v1

    goto :goto_9

    .line 2385
    :cond_1d
    const/16 v2, 0x61

    if-gt v2, p0, :cond_2a

    const/16 v2, 0x7a

    if-gt p0, v2, :cond_2a

    .line 2386
    add-int/lit8 v2, p0, -0x61

    add-int/lit8 v0, v2, 0xa

    goto :goto_19

    .line 2387
    :cond_2a
    const/16 v2, 0x41

    if-gt v2, p0, :cond_19

    const/16 v2, 0x5a

    if-gt p0, v2, :cond_19

    .line 2388
    add-int/lit8 v2, p0, -0x41

    add-int/lit8 v0, v2, 0xa

    goto :goto_19

    .line 2392
    .end local v0           #result:I
    :cond_37
    invoke-static {p0, p1}, Ljava/lang/Character;->digitImpl(II)I

    move-result v0

    goto :goto_9
.end method

.method private static native digitImpl(II)I
.end method

.method public static forDigit(II)C
    .registers 3
    .parameter "digit"
    .parameter "radix"

    .prologue
    .line 2427
    const/4 v0, 0x2

    if-gt v0, p1, :cond_18

    const/16 v0, 0x24

    if-gt p1, v0, :cond_18

    .line 2428
    if-ltz p0, :cond_18

    if-ge p0, p1, :cond_18

    .line 2429
    const/16 v0, 0xa

    if-ge p0, v0, :cond_13

    add-int/lit8 v0, p0, 0x30

    :goto_11
    int-to-char v0, v0

    .line 2432
    :goto_12
    return v0

    .line 2429
    :cond_13
    add-int/lit8 v0, p0, 0x61

    add-int/lit8 v0, v0, -0xa

    goto :goto_11

    .line 2432
    :cond_18
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private static native forNameImpl(Ljava/lang/String;)I
.end method

.method public static getDirectionality(C)B
    .registers 2
    .parameter "c"

    .prologue
    .line 2564
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v0

    return v0
.end method

.method public static getDirectionality(I)B
    .registers 4
    .parameter "codePoint"

    .prologue
    const/4 v1, -0x1

    .line 2575
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v2

    if-nez v2, :cond_8

    .line 2583
    :cond_7
    :goto_7
    return v1

    .line 2579
    :cond_8
    invoke-static {p0}, Ljava/lang/Character;->getDirectionalityImpl(I)B

    move-result v0

    .line 2580
    .local v0, directionality:B
    if-eq v0, v1, :cond_7

    .line 2583
    sget-object v1, Ljava/lang/Character;->DIRECTIONALITY:[B

    aget-byte v1, v1, v0

    goto :goto_7
.end method

.method private static native getDirectionalityImpl(I)B
.end method

.method public static getName(I)Ljava/lang/String;
    .registers 6
    .parameter "codePoint"

    .prologue
    .line 2455
    invoke-static {p0}, Ljava/lang/Character;->checkValidCodePoint(I)V

    .line 2456
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v2

    if-nez v2, :cond_b

    .line 2457
    const/4 v1, 0x0

    .line 2464
    :cond_a
    :goto_a
    return-object v1

    .line 2459
    :cond_b
    invoke-static {p0}, Ljava/lang/Character;->getNameImpl(I)Ljava/lang/String;

    move-result-object v1

    .line 2460
    .local v1, result:Ljava/lang/String;
    if-nez v1, :cond_a

    .line 2461
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(I)Ljava/lang/Character$UnicodeBlock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Character$UnicodeBlock;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x5f

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 2462
    .local v0, blockName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Ljava/lang/IntegralToString;->intToHexString(IZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_a
.end method

.method private static native getNameImpl(I)Ljava/lang/String;
.end method

.method public static getNumericValue(C)I
    .registers 2
    .parameter "c"

    .prologue
    .line 2479
    invoke-static {p0}, Ljava/lang/Character;->getNumericValue(I)I

    move-result v0

    return v0
.end method

.method public static getNumericValue(I)I
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 2502
    const/16 v0, 0x80

    if-ge p0, v0, :cond_27

    .line 2503
    const/16 v0, 0x30

    if-lt p0, v0, :cond_f

    const/16 v0, 0x39

    if-gt p0, v0, :cond_f

    .line 2504
    add-int/lit8 v0, p0, -0x30

    .line 2522
    :goto_e
    return v0

    .line 2506
    :cond_f
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1a

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1a

    .line 2507
    add-int/lit8 v0, p0, -0x57

    goto :goto_e

    .line 2509
    :cond_1a
    const/16 v0, 0x41

    if-lt p0, v0, :cond_25

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_25

    .line 2510
    add-int/lit8 v0, p0, -0x37

    goto :goto_e

    .line 2512
    :cond_25
    const/4 v0, -0x1

    goto :goto_e

    .line 2515
    :cond_27
    const v0, 0xff21

    if-lt p0, v0, :cond_37

    const v0, 0xff3a

    if-gt p0, v0, :cond_37

    .line 2516
    const v0, 0xff17

    sub-int v0, p0, v0

    goto :goto_e

    .line 2519
    :cond_37
    const v0, 0xff41

    if-lt p0, v0, :cond_47

    const v0, 0xff5a

    if-gt p0, v0, :cond_47

    .line 2520
    const v0, 0xff37

    sub-int v0, p0, v0

    goto :goto_e

    .line 2522
    :cond_47
    invoke-static {p0}, Ljava/lang/Character;->getNumericValueImpl(I)I

    move-result v0

    goto :goto_e
.end method

.method private static native getNumericValueImpl(I)I
.end method

.method public static getType(C)I
    .registers 2
    .parameter "c"

    .prologue
    .line 2535
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    return v0
.end method

.method public static getType(I)I
    .registers 3
    .parameter "codePoint"

    .prologue
    .line 2546
    invoke-static {p0}, Ljava/lang/Character;->getTypeImpl(I)I

    move-result v0

    .line 2548
    .local v0, type:I
    const/16 v1, 0x10

    if-gt v0, v1, :cond_9

    .line 2551
    .end local v0           #type:I
    :goto_8
    return v0

    .restart local v0       #type:I
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method private static native getTypeImpl(I)I
.end method

.method public static highSurrogate(I)C
    .registers 3
    .parameter "codePoint"

    .prologue
    .line 2626
    shr-int/lit8 v0, p0, 0xa

    const v1, 0xd7c0

    add-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public static isBmpCodePoint(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 2646
    if-ltz p0, :cond_9

    const v0, 0xffff

    if-gt p0, v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static isDefined(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 2659
    invoke-static {p0}, Ljava/lang/Character;->isDefinedImpl(I)Z

    move-result v0

    return v0
.end method

.method public static isDefined(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 2672
    invoke-static {p0}, Ljava/lang/Character;->isDefinedImpl(I)Z

    move-result v0

    return v0
.end method

.method private static native isDefinedImpl(I)Z
.end method

.method public static isDigit(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 2686
    invoke-static {p0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    return v0
.end method

.method public static isDigit(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 2699
    const/16 v0, 0x30

    if-gt v0, p0, :cond_a

    const/16 v0, 0x39

    if-gt p0, v0, :cond_a

    .line 2700
    const/4 v0, 0x1

    .line 2705
    :goto_9
    return v0

    .line 2702
    :cond_a
    const/16 v0, 0x660

    if-ge p0, v0, :cond_10

    .line 2703
    const/4 v0, 0x0

    goto :goto_9

    .line 2705
    :cond_10
    invoke-static {p0}, Ljava/lang/Character;->isDigitImpl(I)Z

    move-result v0

    goto :goto_9
.end method

.method private static native isDigitImpl(I)Z
.end method

.method public static isHighSurrogate(C)Z
    .registers 2
    .parameter "ch"

    .prologue
    .line 1689
    const v0, 0xd800

    if-gt v0, p0, :cond_c

    const v0, 0xdbff

    if-lt v0, p0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isISOControl(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 2751
    invoke-static {p0}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v0

    return v0
.end method

.method public static isISOControl(I)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 2763
    if-ltz p0, :cond_6

    const/16 v0, 0x1f

    if-le p0, v0, :cond_e

    :cond_6
    const/16 v0, 0x7f

    if-lt p0, v0, :cond_10

    const/16 v0, 0x9f

    if-gt p0, v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static isIdentifierIgnorable(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 2719
    invoke-static {p0}, Ljava/lang/Character;->isIdentifierIgnorable(I)Z

    move-result v0

    return v0
.end method

.method public static isIdentifierIgnorable(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 2733
    const/16 v0, 0x600

    if-ge p0, v0, :cond_22

    .line 2734
    if-ltz p0, :cond_a

    const/16 v0, 0x8

    if-le p0, v0, :cond_1e

    :cond_a
    const/16 v0, 0xe

    if-lt p0, v0, :cond_12

    const/16 v0, 0x1b

    if-le p0, v0, :cond_1e

    :cond_12
    const/16 v0, 0x7f

    if-lt p0, v0, :cond_1a

    const/16 v0, 0x9f

    if-le p0, v0, :cond_1e

    :cond_1a
    const/16 v0, 0xad

    if-ne p0, v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    .line 2737
    :goto_1f
    return v0

    .line 2734
    :cond_20
    const/4 v0, 0x0

    goto :goto_1f

    .line 2737
    :cond_22
    invoke-static {p0}, Ljava/lang/Character;->isIdentifierIgnorableImpl(I)Z

    move-result v0

    goto :goto_1f
.end method

.method private static native isIdentifierIgnorableImpl(I)Z
.end method

.method public static isJavaIdentifierPart(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 2776
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierPart(I)Z

    move-result v0

    return v0
.end method

.method public static isJavaIdentifierPart(I)Z
    .registers 12
    .parameter "codePoint"

    .prologue
    const-wide/16 v9, 0x1

    const-wide/16 v7, 0x0

    const/16 v4, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2790
    const/16 v3, 0x40

    if-ge p0, v3, :cond_1b

    .line 2791
    const-wide v3, 0x3ff00100fffc1ffL

    shl-long v5, v9, p0

    and-long/2addr v3, v5

    cmp-long v3, v3, v7

    if-eqz v3, :cond_19

    .line 2796
    :cond_18
    :goto_18
    return v1

    :cond_19
    move v1, v2

    .line 2791
    goto :goto_18

    .line 2792
    :cond_1b
    const/16 v3, 0x80

    if-ge p0, v3, :cond_2f

    .line 2793
    const-wide v3, -0x7800000178000002L

    add-int/lit8 v5, p0, -0x40

    shl-long v5, v9, v5

    and-long/2addr v3, v5

    cmp-long v3, v3, v7

    if-nez v3, :cond_18

    move v1, v2

    goto :goto_18

    .line 2795
    :cond_2f
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    .line 2796
    .local v0, type:I
    if-lt v0, v1, :cond_38

    const/4 v3, 0x5

    if-le v0, v3, :cond_18

    :cond_38
    const/16 v3, 0x1a

    if-eq v0, v3, :cond_18

    const/16 v3, 0x17

    if-eq v0, v3, :cond_18

    const/16 v3, 0x9

    if-lt v0, v3, :cond_48

    const/16 v3, 0xa

    if-le v0, v3, :cond_18

    :cond_48
    if-eq v0, v4, :cond_18

    const/4 v3, 0x6

    if-eq v0, v3, :cond_18

    if-ltz p0, :cond_51

    if-le p0, v4, :cond_18

    :cond_51
    const/16 v3, 0xe

    if-lt p0, v3, :cond_59

    const/16 v3, 0x1b

    if-le p0, v3, :cond_18

    :cond_59
    const/16 v3, 0x7f

    if-lt p0, v3, :cond_61

    const/16 v3, 0x9f

    if-le p0, v3, :cond_18

    :cond_61
    const/16 v3, 0x10

    if-eq v0, v3, :cond_18

    move v1, v2

    goto :goto_18
.end method

.method public static isJavaIdentifierStart(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 2814
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    move-result v0

    return v0
.end method

.method public static isJavaIdentifierStart(I)Z
    .registers 9
    .parameter "codePoint"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2828
    const/16 v3, 0x40

    if-ge p0, v3, :cond_d

    .line 2829
    const/16 v3, 0x24

    if-ne p0, v3, :cond_b

    .line 2834
    :cond_a
    :goto_a
    return v1

    :cond_b
    move v1, v2

    .line 2829
    goto :goto_a

    .line 2830
    :cond_d
    const/16 v3, 0x80

    if-ge p0, v3, :cond_24

    .line 2831
    const-wide v3, 0x7fffffe87fffffeL

    const-wide/16 v5, 0x1

    add-int/lit8 v7, p0, -0x40

    shl-long/2addr v5, v7

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_a

    move v1, v2

    goto :goto_a

    .line 2833
    :cond_24
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    .line 2834
    .local v0, type:I
    if-lt v0, v1, :cond_2d

    const/4 v3, 0x5

    if-le v0, v3, :cond_a

    :cond_2d
    const/16 v3, 0x1a

    if-eq v0, v3, :cond_a

    const/16 v3, 0x17

    if-eq v0, v3, :cond_a

    const/16 v3, 0xa

    if-eq v0, v3, :cond_a

    move v1, v2

    goto :goto_a
.end method

.method public static isJavaLetter(C)Z
    .registers 2
    .parameter "c"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2849
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierStart(C)Z

    move-result v0

    return v0
.end method

.method public static isJavaLetterOrDigit(C)Z
    .registers 2
    .parameter "c"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2864
    invoke-static {p0}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    return v0
.end method

.method public static isLetter(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 2875
    invoke-static {p0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v0

    return v0
.end method

.method public static isLetter(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 2887
    const/16 v0, 0x41

    if-gt v0, p0, :cond_8

    const/16 v0, 0x5a

    if-le p0, v0, :cond_10

    :cond_8
    const/16 v0, 0x61

    if-gt v0, p0, :cond_12

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_12

    .line 2888
    :cond_10
    const/4 v0, 0x1

    .line 2893
    :goto_11
    return v0

    .line 2890
    :cond_12
    const/16 v0, 0x80

    if-ge p0, v0, :cond_18

    .line 2891
    const/4 v0, 0x0

    goto :goto_11

    .line 2893
    :cond_18
    invoke-static {p0}, Ljava/lang/Character;->isLetterImpl(I)Z

    move-result v0

    goto :goto_11
.end method

.method private static native isLetterImpl(I)Z
.end method

.method public static isLetterOrDigit(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 2907
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v0

    return v0
.end method

.method public static isLetterOrDigit(I)Z
    .registers 3
    .parameter "codePoint"

    .prologue
    const/4 v0, 0x1

    .line 2920
    const/16 v1, 0x41

    if-gt v1, p0, :cond_9

    const/16 v1, 0x5a

    if-le p0, v1, :cond_11

    :cond_9
    const/16 v1, 0x61

    if-gt v1, p0, :cond_12

    const/16 v1, 0x7a

    if-gt p0, v1, :cond_12

    .line 2929
    :cond_11
    :goto_11
    return v0

    .line 2923
    :cond_12
    const/16 v1, 0x30

    if-gt v1, p0, :cond_1a

    const/16 v1, 0x39

    if-le p0, v1, :cond_11

    .line 2926
    :cond_1a
    const/16 v0, 0x80

    if-ge p0, v0, :cond_20

    .line 2927
    const/4 v0, 0x0

    goto :goto_11

    .line 2929
    :cond_20
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigitImpl(I)Z

    move-result v0

    goto :goto_11
.end method

.method private static native isLetterOrDigitImpl(I)Z
.end method

.method public static isLowSurrogate(C)Z
    .registers 2
    .parameter "ch"

    .prologue
    .line 1705
    const v0, 0xdc00

    if-gt v0, p0, :cond_c

    const v0, 0xdfff

    if-lt v0, p0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isLowerCase(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 2943
    invoke-static {p0}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v0

    return v0
.end method

.method public static isLowerCase(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 2956
    const/16 v0, 0x61

    if-gt v0, p0, :cond_a

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_a

    .line 2957
    const/4 v0, 0x1

    .line 2962
    :goto_9
    return v0

    .line 2959
    :cond_a
    const/16 v0, 0x80

    if-ge p0, v0, :cond_10

    .line 2960
    const/4 v0, 0x0

    goto :goto_9

    .line 2962
    :cond_10
    invoke-static {p0}, Ljava/lang/Character;->isLowerCaseImpl(I)Z

    move-result v0

    goto :goto_9
.end method

.method private static native isLowerCaseImpl(I)Z
.end method

.method public static isMirrored(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 2597
    invoke-static {p0}, Ljava/lang/Character;->isMirrored(I)Z

    move-result v0

    return v0
.end method

.method public static isMirrored(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 2609
    invoke-static {p0}, Ljava/lang/Character;->isMirroredImpl(I)Z

    move-result v0

    return v0
.end method

.method private static native isMirroredImpl(I)Z
.end method

.method public static isSpace(C)Z
    .registers 2
    .parameter "c"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2978
    const/16 v0, 0xa

    if-eq p0, v0, :cond_14

    const/16 v0, 0x9

    if-eq p0, v0, :cond_14

    const/16 v0, 0xc

    if-eq p0, v0, :cond_14

    const/16 v0, 0xd

    if-eq p0, v0, :cond_14

    const/16 v0, 0x20

    if-ne p0, v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static isSpaceChar(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 2992
    invoke-static {p0}, Ljava/lang/Character;->isSpaceChar(I)Z

    move-result v0

    return v0
.end method

.method public static isSpaceChar(I)Z
    .registers 4
    .parameter "codePoint"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3006
    const/16 v2, 0x20

    if-eq p0, v2, :cond_e

    const/16 v2, 0xa0

    if-eq p0, v2, :cond_e

    const/16 v2, 0x1680

    if-ne p0, v2, :cond_10

    :cond_e
    move v0, v1

    .line 3016
    :cond_f
    :goto_f
    return v0

    .line 3009
    :cond_10
    const/16 v2, 0x2000

    if-lt p0, v2, :cond_f

    .line 3012
    const v2, 0xffff

    if-gt p0, v2, :cond_2f

    .line 3013
    const/16 v2, 0x200b

    if-le p0, v2, :cond_2d

    const/16 v2, 0x2028

    if-eq p0, v2, :cond_2d

    const/16 v2, 0x2029

    if-eq p0, v2, :cond_2d

    const/16 v2, 0x202f

    if-eq p0, v2, :cond_2d

    const/16 v2, 0x3000

    if-ne p0, v2, :cond_f

    :cond_2d
    move v0, v1

    goto :goto_f

    .line 3016
    :cond_2f
    invoke-static {p0}, Ljava/lang/Character;->isSpaceCharImpl(I)Z

    move-result v0

    goto :goto_f
.end method

.method private static native isSpaceCharImpl(I)Z
.end method

.method public static isSupplementaryCodePoint(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 1673
    const/high16 v0, 0x1

    if-gt v0, p0, :cond_b

    const v0, 0x10ffff

    if-lt v0, p0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static isSurrogate(C)Z
    .registers 2
    .parameter "ch"

    .prologue
    .line 1714
    const v0, 0xd800

    if-lt p0, v0, :cond_c

    const v0, 0xdfff

    if-gt p0, v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isSurrogatePair(CC)Z
    .registers 3
    .parameter "high"
    .parameter "low"

    .prologue
    .line 1732
    invoke-static {p0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isTitleCase(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 3030
    invoke-static {p0}, Ljava/lang/Character;->isTitleCaseImpl(I)Z

    move-result v0

    return v0
.end method

.method public static isTitleCase(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 3042
    invoke-static {p0}, Ljava/lang/Character;->isTitleCaseImpl(I)Z

    move-result v0

    return v0
.end method

.method private static native isTitleCaseImpl(I)Z
.end method

.method public static isUnicodeIdentifierPart(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 3057
    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierPartImpl(I)Z

    move-result v0

    return v0
.end method

.method public static isUnicodeIdentifierPart(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 3070
    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierPartImpl(I)Z

    move-result v0

    return v0
.end method

.method private static native isUnicodeIdentifierPartImpl(I)Z
.end method

.method public static isUnicodeIdentifierStart(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 3085
    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierStartImpl(I)Z

    move-result v0

    return v0
.end method

.method public static isUnicodeIdentifierStart(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 3098
    invoke-static {p0}, Ljava/lang/Character;->isUnicodeIdentifierStartImpl(I)Z

    move-result v0

    return v0
.end method

.method private static native isUnicodeIdentifierStartImpl(I)Z
.end method

.method public static isUpperCase(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 3112
    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v0

    return v0
.end method

.method public static isUpperCase(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 3125
    const/16 v0, 0x41

    if-gt v0, p0, :cond_a

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_a

    .line 3126
    const/4 v0, 0x1

    .line 3131
    :goto_9
    return v0

    .line 3128
    :cond_a
    const/16 v0, 0x80

    if-ge p0, v0, :cond_10

    .line 3129
    const/4 v0, 0x0

    goto :goto_9

    .line 3131
    :cond_10
    invoke-static {p0}, Ljava/lang/Character;->isUpperCaseImpl(I)Z

    move-result v0

    goto :goto_9
.end method

.method private static native isUpperCaseImpl(I)Z
.end method

.method public static isValidCodePoint(I)Z
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 1659
    if-ltz p0, :cond_9

    const v0, 0x10ffff

    if-lt v0, p0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static isWhitespace(C)Z
    .registers 2
    .parameter "c"

    .prologue
    .line 3146
    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    return v0
.end method

.method public static isWhitespace(I)Z
    .registers 4
    .parameter "codePoint"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3160
    const/16 v2, 0x1c

    if-lt p0, v2, :cond_a

    const/16 v2, 0x20

    if-le p0, v2, :cond_12

    :cond_a
    const/16 v2, 0x9

    if-lt p0, v2, :cond_13

    const/16 v2, 0xd

    if-gt p0, v2, :cond_13

    .line 3173
    :cond_12
    :goto_12
    return v1

    .line 3163
    :cond_13
    const/16 v2, 0x1680

    if-eq p0, v2, :cond_12

    .line 3166
    const/16 v2, 0x2000

    if-lt p0, v2, :cond_1f

    const/16 v2, 0x2007

    if-ne p0, v2, :cond_21

    :cond_1f
    move v1, v0

    .line 3167
    goto :goto_12

    .line 3169
    :cond_21
    const v2, 0xffff

    if-gt p0, v2, :cond_39

    .line 3170
    const/16 v2, 0x200b

    if-le p0, v2, :cond_36

    const/16 v2, 0x2028

    if-eq p0, v2, :cond_36

    const/16 v2, 0x2029

    if-eq p0, v2, :cond_36

    const/16 v2, 0x3000

    if-ne p0, v2, :cond_37

    :cond_36
    move v0, v1

    :cond_37
    move v1, v0

    goto :goto_12

    .line 3173
    :cond_39
    invoke-static {p0}, Ljava/lang/Character;->isWhitespaceImpl(I)Z

    move-result v1

    goto :goto_12
.end method

.method private static native isWhitespaceImpl(I)Z
.end method

.method public static lowSurrogate(I)C
    .registers 3
    .parameter "codePoint"

    .prologue
    .line 2636
    and-int/lit16 v0, p0, 0x3ff

    const v1, 0xdc00

    or-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method private static native ofImpl(I)I
.end method

.method public static offsetByCodePoints(Ljava/lang/CharSequence;II)I
    .registers 9
    .parameter "seq"
    .parameter "index"
    .parameter "codePointOffset"

    .prologue
    .line 2217
    if-nez p0, :cond_8

    .line 2218
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 2220
    :cond_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 2221
    .local v2, len:I
    if-ltz p1, :cond_10

    if-le p1, v2, :cond_16

    .line 2222
    :cond_10
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 2225
    :cond_16
    if-nez p2, :cond_1a

    move v1, p1

    .line 2263
    :cond_19
    return v1

    .line 2229
    :cond_1a
    if-lez p2, :cond_47

    .line 2230
    move v0, p2

    .line 2231
    .local v0, codePoints:I
    move v1, p1

    .line 2232
    .local v1, i:I
    :goto_1e
    if-lez v0, :cond_19

    .line 2233
    add-int/lit8 v0, v0, -0x1

    .line 2234
    if-lt v1, v2, :cond_2a

    .line 2235
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 2237
    :cond_2a
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 2238
    add-int/lit8 v3, v1, 0x1

    .line 2239
    .local v3, next:I
    if-ge v3, v2, :cond_44

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 2240
    add-int/lit8 v1, v1, 0x1

    .line 2243
    .end local v3           #next:I
    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 2248
    .end local v0           #codePoints:I
    .end local v1           #i:I
    :cond_47
    neg-int v0, p2

    .line 2249
    .restart local v0       #codePoints:I
    move v1, p1

    .line 2250
    .restart local v1       #i:I
    :cond_49
    :goto_49
    if-lez v0, :cond_19

    .line 2251
    add-int/lit8 v0, v0, -0x1

    .line 2252
    add-int/lit8 v1, v1, -0x1

    .line 2253
    if-gez v1, :cond_57

    .line 2254
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 2256
    :cond_57
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 2257
    add-int/lit8 v4, v1, -0x1

    .line 2258
    .local v4, prev:I
    if-ltz v4, :cond_49

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 2259
    add-int/lit8 v1, v1, -0x1

    goto :goto_49
.end method

.method public static offsetByCodePoints([CIIII)I
    .registers 11
    .parameter "seq"
    .parameter "start"
    .parameter "count"
    .parameter "index"
    .parameter "codePointOffset"

    .prologue
    .line 2300
    array-length v5, p0

    invoke-static {v5, p1, p2}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 2301
    add-int v1, p1, p2

    .line 2302
    .local v1, end:I
    if-lt p3, p1, :cond_a

    if-le p3, v1, :cond_10

    .line 2303
    :cond_a
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 2306
    :cond_10
    if-nez p4, :cond_14

    move v2, p3

    .line 2344
    :cond_13
    return v2

    .line 2310
    :cond_14
    if-lez p4, :cond_3d

    .line 2311
    move v0, p4

    .line 2312
    .local v0, codePoints:I
    move v2, p3

    .line 2313
    .local v2, i:I
    :goto_18
    if-lez v0, :cond_13

    .line 2314
    add-int/lit8 v0, v0, -0x1

    .line 2315
    if-lt v2, v1, :cond_24

    .line 2316
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 2318
    :cond_24
    aget-char v5, p0, v2

    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 2319
    add-int/lit8 v3, v2, 0x1

    .line 2320
    .local v3, next:I
    if-ge v3, v1, :cond_3a

    aget-char v5, p0, v3

    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 2321
    add-int/lit8 v2, v2, 0x1

    .line 2324
    .end local v3           #next:I
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 2329
    .end local v0           #codePoints:I
    .end local v2           #i:I
    :cond_3d
    neg-int v0, p4

    .line 2330
    .restart local v0       #codePoints:I
    move v2, p3

    .line 2331
    .restart local v2       #i:I
    :cond_3f
    :goto_3f
    if-lez v0, :cond_13

    .line 2332
    add-int/lit8 v0, v0, -0x1

    .line 2333
    add-int/lit8 v2, v2, -0x1

    .line 2334
    if-ge v2, p1, :cond_4d

    .line 2335
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 2337
    :cond_4d
    aget-char v5, p0, v2

    invoke-static {v5}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 2338
    add-int/lit8 v4, v2, -0x1

    .line 2339
    .local v4, prev:I
    if-lt v4, p1, :cond_3f

    aget-char v5, p0, v4

    invoke-static {v5}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 2340
    add-int/lit8 v2, v2, -0x1

    goto :goto_3f
.end method

.method public static reverseBytes(C)C
    .registers 3
    .parameter "c"

    .prologue
    .line 3187
    shl-int/lit8 v0, p0, 0x8

    shr-int/lit8 v1, p0, 0x8

    or-int/2addr v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public static toChars(I[CI)I
    .registers 8
    .parameter "codePoint"
    .parameter "dst"
    .parameter "dstIndex"

    .prologue
    .line 2056
    invoke-static {p0}, Ljava/lang/Character;->checkValidCodePoint(I)V

    .line 2057
    if-nez p1, :cond_b

    .line 2058
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 2060
    :cond_b
    if-ltz p2, :cond_10

    array-length v3, p1

    if-lt p2, v3, :cond_16

    .line 2061
    :cond_10
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 2064
    :cond_16
    invoke-static {p0}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 2065
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-ne p2, v3, :cond_27

    .line 2066
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 2070
    :cond_27
    const/high16 v3, 0x1

    sub-int v0, p0, v3

    .line 2071
    .local v0, cpPrime:I
    const v3, 0xd800

    shr-int/lit8 v4, v0, 0xa

    and-int/lit16 v4, v4, 0x3ff

    or-int v1, v3, v4

    .line 2072
    .local v1, high:I
    const v3, 0xdc00

    and-int/lit16 v4, v0, 0x3ff

    or-int v2, v3, v4

    .line 2073
    .local v2, low:I
    int-to-char v3, v1

    aput-char v3, p1, p2

    .line 2074
    add-int/lit8 v3, p2, 0x1

    int-to-char v4, v2

    aput-char v4, p1, v3

    .line 2075
    const/4 v3, 0x2

    .line 2079
    .end local v0           #cpPrime:I
    .end local v1           #high:I
    .end local v2           #low:I
    :goto_44
    return v3

    .line 2078
    :cond_45
    int-to-char v3, p0

    aput-char v3, p1, p2

    .line 2079
    const/4 v3, 0x1

    goto :goto_44
.end method

.method public static toChars(I)[C
    .registers 8
    .parameter "codePoint"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2096
    invoke-static {p0}, Ljava/lang/Character;->checkValidCodePoint(I)V

    .line 2097
    invoke-static {p0}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 2098
    const/high16 v3, 0x1

    sub-int v0, p0, v3

    .line 2099
    .local v0, cpPrime:I
    const v3, 0xd800

    shr-int/lit8 v4, v0, 0xa

    and-int/lit16 v4, v4, 0x3ff

    or-int v1, v3, v4

    .line 2100
    .local v1, high:I
    const v3, 0xdc00

    and-int/lit16 v4, v0, 0x3ff

    or-int v2, v3, v4

    .line 2101
    .local v2, low:I
    const/4 v3, 0x2

    new-array v3, v3, [C

    int-to-char v4, v1

    aput-char v4, v3, v5

    int-to-char v4, v2

    aput-char v4, v3, v6

    .line 2103
    .end local v0           #cpPrime:I
    .end local v1           #high:I
    .end local v2           #low:I
    :goto_28
    return-object v3

    :cond_29
    new-array v3, v6, [C

    int-to-char v4, p0

    aput-char v4, v3, v5

    goto :goto_28
.end method

.method public static toCodePoint(CC)I
    .registers 6
    .parameter "high"
    .parameter "low"

    .prologue
    .line 1772
    and-int/lit16 v2, p0, 0x3ff

    shl-int/lit8 v0, v2, 0xa

    .line 1773
    .local v0, h:I
    and-int/lit16 v1, p1, 0x3ff

    .line 1774
    .local v1, l:I
    or-int v2, v0, v1

    const/high16 v3, 0x1

    add-int/2addr v2, v3

    return v2
.end method

.method public static toLowerCase(C)C
    .registers 2
    .parameter "c"

    .prologue
    .line 3201
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public static toLowerCase(I)I
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 3216
    const/16 v0, 0x41

    if-gt v0, p0, :cond_c

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_c

    .line 3217
    add-int/lit8 v0, p0, 0x20

    int-to-char p0, v0

    .line 3222
    .end local p0
    :cond_b
    :goto_b
    return p0

    .line 3219
    .restart local p0
    :cond_c
    const/16 v0, 0xc0

    if-lt p0, v0, :cond_b

    .line 3222
    invoke-static {p0}, Ljava/lang/Character;->toLowerCaseImpl(I)I

    move-result p0

    goto :goto_b
.end method

.method private static native toLowerCaseImpl(I)I
.end method

.method public static toString(C)Ljava/lang/String;
    .registers 2
    .parameter "value"

    .prologue
    .line 3240
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toTitleCase(C)C
    .registers 2
    .parameter "c"

    .prologue
    .line 3253
    invoke-static {p0}, Ljava/lang/Character;->toTitleCaseImpl(I)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public static toTitleCase(I)I
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 3266
    invoke-static {p0}, Ljava/lang/Character;->toTitleCaseImpl(I)I

    move-result v0

    return v0
.end method

.method private static native toTitleCaseImpl(I)I
.end method

.method public static toUpperCase(C)C
    .registers 2
    .parameter "c"

    .prologue
    .line 3282
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public static toUpperCase(I)I
    .registers 2
    .parameter "codePoint"

    .prologue
    .line 3297
    const/16 v0, 0x61

    if-gt v0, p0, :cond_c

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_c

    .line 3298
    add-int/lit8 v0, p0, -0x20

    int-to-char p0, v0

    .line 3303
    .end local p0
    :cond_b
    :goto_b
    return p0

    .line 3300
    .restart local p0
    :cond_c
    const/16 v0, 0xb5

    if-lt p0, v0, :cond_b

    .line 3303
    invoke-static {p0}, Ljava/lang/Character;->toUpperCaseImpl(I)I

    move-result p0

    goto :goto_b
.end method

.method private static native toUpperCaseImpl(I)I
.end method

.method public static valueOf(C)Ljava/lang/Character;
    .registers 2
    .parameter "c"

    .prologue
    .line 1636
    const/16 v0, 0x80

    if-ge p0, v0, :cond_9

    sget-object v0, Ljava/lang/Character;->SMALL_VALUES:[Ljava/lang/Character;

    aget-object v0, v0, p0

    :goto_8
    return-object v0

    :cond_9
    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p0}, Ljava/lang/Character;-><init>(C)V

    goto :goto_8
.end method


# virtual methods
.method public charValue()C
    .registers 2

    .prologue
    .line 1586
    iget-char v0, p0, Ljava/lang/Character;->value:C

    return v0
.end method

.method public compareTo(Ljava/lang/Character;)I
    .registers 4
    .parameter "c"

    .prologue
    .line 1610
    iget-char v0, p0, Ljava/lang/Character;->value:C

    iget-char v1, p1, Ljava/lang/Character;->value:C

    invoke-static {v0, v1}, Ljava/lang/Character;->compare(CC)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 99
    check-cast p1, Ljava/lang/Character;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/lang/Character;->compareTo(Ljava/lang/Character;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "object"

    .prologue
    .line 2409
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_e

    check-cast p1, Ljava/lang/Character;

    .end local p1
    iget-char v0, p1, Ljava/lang/Character;->value:C

    iget-char v1, p0, Ljava/lang/Character;->value:C

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 2616
    iget-char v0, p0, Ljava/lang/Character;->value:C

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3229
    iget-char v0, p0, Ljava/lang/Character;->value:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
