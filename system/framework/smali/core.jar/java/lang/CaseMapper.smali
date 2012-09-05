.class Ljava/lang/CaseMapper;
.super Ljava/lang/Object;
.source "CaseMapper.java"


# static fields
.field private static final GREEK_CAPITAL_SIGMA:C = '\u03a3'

.field private static final GREEK_SMALL_FINAL_SIGMA:C = '\u03c2'

.field private static final LATIN_CAPITAL_I_WITH_DOT:C = '\u0130'

.field private static final upperValues:[C

.field private static final upperValues2:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-string v0, "SS\u0000\u02bcN\u0000J\u030c\u0000\u0399\u0308\u0301\u03a5\u0308\u0301\u0535\u0552\u0000H\u0331\u0000T\u0308\u0000W\u030a\u0000Y\u030a\u0000A\u02be\u0000\u03a5\u0313\u0000\u03a5\u0313\u0300\u03a5\u0313\u0301\u03a5\u0313\u0342\u1f08\u0399\u0000\u1f09\u0399\u0000\u1f0a\u0399\u0000\u1f0b\u0399\u0000\u1f0c\u0399\u0000\u1f0d\u0399\u0000\u1f0e\u0399\u0000\u1f0f\u0399\u0000\u1f08\u0399\u0000\u1f09\u0399\u0000\u1f0a\u0399\u0000\u1f0b\u0399\u0000\u1f0c\u0399\u0000\u1f0d\u0399\u0000\u1f0e\u0399\u0000\u1f0f\u0399\u0000\u1f28\u0399\u0000\u1f29\u0399\u0000\u1f2a\u0399\u0000\u1f2b\u0399\u0000\u1f2c\u0399\u0000\u1f2d\u0399\u0000\u1f2e\u0399\u0000\u1f2f\u0399\u0000\u1f28\u0399\u0000\u1f29\u0399\u0000\u1f2a\u0399\u0000\u1f2b\u0399\u0000\u1f2c\u0399\u0000\u1f2d\u0399\u0000\u1f2e\u0399\u0000\u1f2f\u0399\u0000\u1f68\u0399\u0000\u1f69\u0399\u0000\u1f6a\u0399\u0000\u1f6b\u0399\u0000\u1f6c\u0399\u0000\u1f6d\u0399\u0000\u1f6e\u0399\u0000\u1f6f\u0399\u0000\u1f68\u0399\u0000\u1f69\u0399\u0000\u1f6a\u0399\u0000\u1f6b\u0399\u0000\u1f6c\u0399\u0000\u1f6d\u0399\u0000\u1f6e\u0399\u0000\u1f6f\u0399\u0000\u1fba\u0399\u0000\u0391\u0399\u0000\u0386\u0399\u0000\u0391\u0342\u0000\u0391\u0342\u0399\u0391\u0399\u0000\u1fca\u0399\u0000\u0397\u0399\u0000\u0389\u0399\u0000\u0397\u0342\u0000\u0397\u0342\u0399\u0397\u0399\u0000\u0399\u0308\u0300\u0399\u0308\u0301\u0399\u0342\u0000\u0399\u0308\u0342\u03a5\u0308\u0300\u03a5\u0308\u0301\u03a1\u0313\u0000\u03a5\u0342\u0000\u03a5\u0308\u0342\u1ffa\u0399\u0000\u03a9\u0399\u0000\u038f\u0399\u0000\u03a9\u0342\u0000\u03a9\u0342\u0399\u03a9\u0399\u0000FF\u0000FI\u0000FL\u0000FFIFFLST\u0000ST\u0000\u0544\u0546\u0000\u0544\u0535\u0000\u0544\u053b\u0000\u054e\u0546\u0000\u0544\u053d\u0000"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Ljava/lang/CaseMapper;->upperValues:[C

    .line 27
    const-string v0, "\u000b\u0000\u000c\u0000\r\u0000\u000e\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&\'()*+,-./0123456789:;<=>\u0000\u0000?@A\u0000BC\u0000\u0000\u0000\u0000D\u0000\u0000\u0000\u0000\u0000EFG\u0000HI\u0000\u0000\u0000\u0000J\u0000\u0000\u0000\u0000\u0000KL\u0000\u0000MN\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000OPQ\u0000RS\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000\u0000TUV\u0000WX\u0000\u0000\u0000\u0000Y"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Ljava/lang/CaseMapper;->upperValues2:[C

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method private static isFinalSigma([CIII)Z
    .registers 10
    .parameter "value"
    .parameter "offset"
    .parameter "count"
    .parameter "index"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    if-gt p3, p1, :cond_5

    .line 100
    :cond_4
    :goto_4
    return v2

    .line 89
    :cond_5
    add-int/lit8 v4, p3, -0x1

    aget-char v1, p0, v4

    .line 90
    .local v1, previous:C
    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v4

    if-nez v4, :cond_1b

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-nez v4, :cond_1b

    invoke-static {v1}, Ljava/lang/Character;->isTitleCase(C)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 93
    :cond_1b
    add-int/lit8 v4, p3, 0x1

    add-int v5, p1, p2

    if-lt v4, v5, :cond_23

    move v2, v3

    .line 94
    goto :goto_4

    .line 96
    :cond_23
    add-int/lit8 v4, p3, 0x1

    aget-char v0, p0, v4

    .line 97
    .local v0, next:C
    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v0}, Ljava/lang/Character;->isTitleCase(C)Z

    move-result v4

    if-nez v4, :cond_4

    move v2, v3

    .line 100
    goto :goto_4
.end method

.method public static toLowerCase(Ljava/util/Locale;Ljava/lang/String;[CII)Ljava/lang/String;
    .registers 15
    .parameter "locale"
    .parameter "s"
    .parameter "value"
    .parameter "offset"
    .parameter "count"

    .prologue
    const/4 v9, 0x0

    .line 48
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, languageCode:Ljava/lang/String;
    const-string v8, "tr"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1d

    const-string v8, "az"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1d

    const-string v8, "lt"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_26

    .line 50
    :cond_1d
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Llibcore/icu/ICU;->toLowerCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 75
    .end local p1
    :cond_25
    :goto_25
    return-object p1

    .line 53
    .restart local p1
    :cond_26
    const/4 v7, 0x0

    .line 54
    .local v7, newValue:[C
    const/4 v5, 0x0

    .line 55
    .local v5, newCount:I
    move v2, p3

    .local v2, i:I
    add-int v1, p3, p4

    .local v1, end:I
    :goto_2b
    if-ge v2, v1, :cond_68

    .line 56
    aget-char v0, p2, v2

    .line 58
    .local v0, ch:C
    const/16 v8, 0x130

    if-eq v0, v8, :cond_39

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_42

    .line 60
    :cond_39
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Llibcore/icu/ICU;->toLowerCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_25

    .line 61
    :cond_42
    const/16 v8, 0x3a3

    if-ne v0, v8, :cond_63

    invoke-static {p2, p3, p4, v2}, Ljava/lang/CaseMapper;->isFinalSigma([CIII)Z

    move-result v8

    if-eqz v8, :cond_63

    .line 62
    const/16 v4, 0x3c2

    .line 66
    .local v4, newCh:C
    :goto_4e
    if-nez v7, :cond_59

    if-eq v0, v4, :cond_59

    .line 67
    new-array v7, p4, [C

    .line 68
    sub-int v5, v2, p3

    .line 69
    invoke-static {p2, p3, v7, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_59
    move v6, v5

    .line 71
    .end local v5           #newCount:I
    .local v6, newCount:I
    if-eqz v7, :cond_70

    .line 72
    add-int/lit8 v5, v6, 0x1

    .end local v6           #newCount:I
    .restart local v5       #newCount:I
    aput-char v4, v7, v6

    .line 55
    :goto_60
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 64
    .end local v4           #newCh:C
    :cond_63
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    .restart local v4       #newCh:C
    goto :goto_4e

    .line 75
    .end local v0           #ch:C
    .end local v4           #newCh:C
    :cond_68
    if-eqz v7, :cond_25

    new-instance p1, Ljava/lang/String;

    .end local p1
    invoke-direct {p1, v9, v5, v7}, Ljava/lang/String;-><init>(II[C)V

    goto :goto_25

    .end local v5           #newCount:I
    .restart local v0       #ch:C
    .restart local v4       #newCh:C
    .restart local v6       #newCount:I
    .restart local p1
    :cond_70
    move v5, v6

    .end local v6           #newCount:I
    .restart local v5       #newCount:I
    goto :goto_60
.end method

.method public static toUpperCase(Ljava/util/Locale;Ljava/lang/String;[CII)Ljava/lang/String;
    .registers 23
    .parameter "locale"
    .parameter "s"
    .parameter "value"
    .parameter "offset"
    .parameter "count"

    .prologue
    .line 143
    invoke-virtual/range {p0 .. p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 144
    .local v7, languageCode:Ljava/lang/String;
    const-string v15, "tr"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1c

    const-string v15, "az"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1c

    const-string v15, "lt"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_27

    .line 145
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Llibcore/icu/ICU;->toUpperCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 198
    .end local p1
    :cond_26
    :goto_26
    return-object p1

    .line 148
    .restart local p1
    :cond_27
    const/4 v10, 0x0

    .line 149
    .local v10, output:[C
    const/4 v4, 0x0

    .line 150
    .local v4, i:I
    move/from16 v9, p3

    .local v9, o:I
    add-int v3, p3, p4

    .local v3, end:I
    move v5, v4

    .end local v4           #i:I
    .local v5, i:I
    :goto_2e
    if-ge v9, v3, :cond_e8

    .line 151
    aget-char v2, p2, v9

    .line 152
    .local v2, ch:C
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v15

    if-eqz v15, :cond_43

    .line 153
    invoke-virtual/range {p0 .. p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Llibcore/icu/ICU;->toUpperCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_26

    .line 155
    :cond_43
    invoke-static {v2}, Ljava/lang/CaseMapper;->upperIndex(I)I

    move-result v6

    .line 156
    .local v6, index:I
    const/4 v15, -0x1

    if-ne v6, v15, :cond_8c

    .line 157
    if-eqz v10, :cond_66

    array-length v15, v10

    if-lt v5, v15, :cond_66

    .line 158
    array-length v15, v10

    div-int/lit8 v16, p4, 0x6

    add-int v15, v15, v16

    add-int/lit8 v15, v15, 0x2

    new-array v8, v15, [C

    .line 159
    .local v8, newoutput:[C
    const/4 v15, 0x0

    const/16 v16, 0x0

    array-length v0, v10

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v10, v15, v8, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    move-object v10, v8

    .line 162
    .end local v8           #newoutput:[C
    :cond_66
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v12

    .line 163
    .local v12, upch:C
    if-eq v2, v12, :cond_85

    .line 164
    if-nez v10, :cond_10e

    .line 165
    move/from16 v0, p4

    new-array v10, v0, [C

    .line 166
    sub-int v4, v9, p3

    .line 167
    .end local v5           #i:I
    .restart local v4       #i:I
    const/4 v15, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v10, v15, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    :goto_7c
    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    aput-char v12, v10, v4

    move v4, v5

    .line 150
    .end local v5           #i:I
    .end local v12           #upch:C
    .restart local v4       #i:I
    :cond_81
    :goto_81
    add-int/lit8 v9, v9, 0x1

    move v5, v4

    .end local v4           #i:I
    .restart local v5       #i:I
    goto :goto_2e

    .line 170
    .restart local v12       #upch:C
    :cond_85
    if-eqz v10, :cond_c0

    .line 171
    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    aput-char v2, v10, v5

    goto :goto_81

    .line 174
    .end local v4           #i:I
    .end local v12           #upch:C
    .restart local v5       #i:I
    :cond_8c
    mul-int/lit8 v11, v6, 0x3

    .line 175
    .local v11, target:I
    sget-object v15, Ljava/lang/CaseMapper;->upperValues:[C

    add-int/lit8 v16, v11, 0x2

    aget-char v14, v15, v16

    .line 176
    .local v14, val3:C
    if-nez v10, :cond_c2

    .line 177
    div-int/lit8 v15, p4, 0x6

    add-int v15, v15, p4

    add-int/lit8 v15, v15, 0x2

    new-array v10, v15, [C

    .line 178
    sub-int v4, v9, p3

    .line 179
    .end local v5           #i:I
    .restart local v4       #i:I
    const/4 v15, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v10, v15, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    :goto_a8
    sget-object v15, Ljava/lang/CaseMapper;->upperValues:[C

    aget-char v13, v15, v11

    .line 187
    .local v13, val:C
    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    aput-char v13, v10, v4

    .line 188
    sget-object v15, Ljava/lang/CaseMapper;->upperValues:[C

    add-int/lit8 v16, v11, 0x1

    aget-char v13, v15, v16

    .line 189
    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    aput-char v13, v10, v5

    .line 190
    if-eqz v14, :cond_81

    .line 191
    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    aput-char v14, v10, v4

    .end local v11           #target:I
    .end local v13           #val:C
    .end local v14           #val3:C
    :cond_c0
    move v4, v5

    .end local v5           #i:I
    .restart local v4       #i:I
    goto :goto_81

    .line 180
    .end local v4           #i:I
    .restart local v5       #i:I
    .restart local v11       #target:I
    .restart local v14       #val3:C
    :cond_c2
    if-nez v14, :cond_e6

    const/4 v15, 0x1

    :goto_c5
    add-int/2addr v15, v5

    array-length v0, v10

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v15, v0, :cond_10c

    .line 181
    array-length v15, v10

    div-int/lit8 v16, p4, 0x6

    add-int v15, v15, v16

    add-int/lit8 v15, v15, 0x3

    new-array v8, v15, [C

    .line 182
    .restart local v8       #newoutput:[C
    const/4 v15, 0x0

    const/16 v16, 0x0

    array-length v0, v10

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v10, v15, v8, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    move-object v10, v8

    move v4, v5

    .end local v5           #i:I
    .restart local v4       #i:I
    goto :goto_a8

    .line 180
    .end local v4           #i:I
    .end local v8           #newoutput:[C
    .restart local v5       #i:I
    :cond_e6
    const/4 v15, 0x2

    goto :goto_c5

    .line 195
    .end local v2           #ch:C
    .end local v6           #index:I
    .end local v11           #target:I
    .end local v14           #val3:C
    :cond_e8
    if-eqz v10, :cond_26

    .line 198
    array-length v15, v10

    if-eq v15, v5, :cond_f5

    array-length v15, v10

    sub-int/2addr v15, v5

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ge v15, v0, :cond_102

    :cond_f5
    new-instance v15, Ljava/lang/String;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v15, v0, v5, v10}, Ljava/lang/String;-><init>(II[C)V

    :goto_fe
    move-object/from16 p1, v15

    goto/16 :goto_26

    :cond_102
    new-instance v15, Ljava/lang/String;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v15, v10, v0, v5}, Ljava/lang/String;-><init>([CII)V

    goto :goto_fe

    .restart local v2       #ch:C
    .restart local v6       #index:I
    .restart local v11       #target:I
    .restart local v14       #val3:C
    :cond_10c
    move v4, v5

    .end local v5           #i:I
    .restart local v4       #i:I
    goto :goto_a8

    .end local v4           #i:I
    .end local v11           #target:I
    .end local v14           #val3:C
    .restart local v5       #i:I
    .restart local v12       #upch:C
    :cond_10e
    move v4, v5

    .end local v5           #i:I
    .restart local v4       #i:I
    goto/16 :goto_7c
.end method

.method private static upperIndex(I)I
    .registers 5
    .parameter "ch"

    .prologue
    const v3, 0xfb13

    const v2, 0xfb00

    .line 111
    const/4 v0, -0x1

    .line 112
    .local v0, index:I
    const/16 v1, 0xdf

    if-lt p0, v1, :cond_12

    .line 113
    const/16 v1, 0x587

    if-gt p0, v1, :cond_20

    .line 114
    sparse-switch p0, :sswitch_data_58

    :cond_12
    :goto_12
    move v1, v0

    .line 139
    :goto_13
    return v1

    .line 115
    :sswitch_14
    const/4 v1, 0x0

    goto :goto_13

    .line 116
    :sswitch_16
    const/4 v1, 0x1

    goto :goto_13

    .line 117
    :sswitch_18
    const/4 v1, 0x2

    goto :goto_13

    .line 118
    :sswitch_1a
    const/4 v1, 0x3

    goto :goto_13

    .line 119
    :sswitch_1c
    const/4 v1, 0x4

    goto :goto_13

    .line 120
    :sswitch_1e
    const/4 v1, 0x5

    goto :goto_13

    .line 122
    :cond_20
    const/16 v1, 0x1e96

    if-lt p0, v1, :cond_12

    .line 123
    const/16 v1, 0x1e9a

    if-gt p0, v1, :cond_2d

    .line 124
    add-int/lit8 v1, p0, 0x6

    add-int/lit16 v0, v1, -0x1e96

    goto :goto_12

    .line 125
    :cond_2d
    const/16 v1, 0x1f50

    if-lt p0, v1, :cond_3f

    const/16 v1, 0x1ffc

    if-gt p0, v1, :cond_3f

    .line 126
    sget-object v1, Ljava/lang/CaseMapper;->upperValues2:[C

    add-int/lit16 v2, p0, -0x1f50

    aget-char v0, v1, v2

    .line 127
    if-nez v0, :cond_12

    .line 128
    const/4 v0, -0x1

    goto :goto_12

    .line 130
    :cond_3f
    if-lt p0, v2, :cond_12

    .line 131
    const v1, 0xfb06

    if-gt p0, v1, :cond_4b

    .line 132
    add-int/lit8 v1, p0, 0x5a

    sub-int v0, v1, v2

    goto :goto_12

    .line 133
    :cond_4b
    if-lt p0, v3, :cond_12

    const v1, 0xfb17

    if-gt p0, v1, :cond_12

    .line 134
    add-int/lit8 v1, p0, 0x61

    sub-int v0, v1, v3

    goto :goto_12

    .line 114
    nop

    :sswitch_data_58
    .sparse-switch
        0xdf -> :sswitch_14
        0x149 -> :sswitch_16
        0x1f0 -> :sswitch_18
        0x390 -> :sswitch_1a
        0x3b0 -> :sswitch_1c
        0x587 -> :sswitch_1e
    .end sparse-switch
.end method
