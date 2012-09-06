.class public final Lcom/google/zxing/common/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final ASSUME_SHIFT_JIS:Z = false

.field private static final EUC_JP:Ljava/lang/String; = "EUC_JP"

.field public static final GB2312:Ljava/lang/String; = "GB2312"

.field private static final ISO88591:Ljava/lang/String; = "ISO8859_1"

.field private static final PLATFORM_DEFAULT_ENCODING:Ljava/lang/String; = null

.field public static final SHIFT_JIS:Ljava/lang/String; = "SJIS"

.field private static final UTF8:Ljava/lang/String; = "UTF8"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 30
    const-string v0, "file.encoding"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    .line 37
    const-string v0, "SJIS"

    sget-object v1, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "EUC_JP"

    sget-object v1, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    sput-boolean v0, Lcom/google/zxing/common/StringUtils;->ASSUME_SHIFT_JIS:Z

    return-void

    :cond_20
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static guessEncoding([BLjava/util/Hashtable;)Ljava/lang/String;
    .registers 21
    .parameter "bytes"
    .parameter "hints"

    .prologue
    .line 51
    if-eqz p1, :cond_11

    .line 52
    sget-object v17, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 53
    .local v5, characterSet:Ljava/lang/String;
    if-eqz v5, :cond_11

    .line 189
    .end local v5           #characterSet:Ljava/lang/String;
    :goto_10
    return-object v5

    .line 58
    :cond_11
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_45

    const/16 v17, 0x0

    aget-byte v17, p0, v17

    const/16 v18, -0x11

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_45

    const/16 v17, 0x1

    aget-byte v17, p0, v17

    const/16 v18, -0x45

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_45

    const/16 v17, 0x2

    aget-byte v17, p0, v17

    const/16 v18, -0x41

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_45

    .line 62
    const-string v5, "UTF8"

    goto :goto_10

    .line 71
    :cond_45
    move-object/from16 v0, p0

    array-length v8, v0

    .line 72
    .local v8, length:I
    const/4 v2, 0x1

    .line 73
    .local v2, canBeISO88591:Z
    const/4 v3, 0x1

    .line 74
    .local v3, canBeShiftJIS:Z
    const/4 v4, 0x1

    .line 75
    .local v4, canBeUTF8:Z
    const/4 v14, 0x0

    .line 76
    .local v14, utf8BytesLeft:I
    const/4 v9, 0x0

    .line 77
    .local v9, maybeDoubleByteCount:I
    const/4 v10, 0x0

    .line 78
    .local v10, maybeSingleByteKatakanaCount:I
    const/4 v12, 0x0

    .line 79
    .local v12, sawLatin1Supplement:Z
    const/4 v13, 0x0

    .line 80
    .local v13, sawUTF8Start:Z
    const/4 v7, 0x0

    .line 82
    .local v7, lastWasPossibleDoubleByteStart:Z
    const/4 v6, 0x0

    .line 83
    .local v6, i:I
    :goto_52
    if-ge v6, v8, :cond_144

    if-nez v2, :cond_5a

    if-nez v3, :cond_5a

    if-eqz v4, :cond_144

    .line 86
    :cond_5a
    aget-byte v17, p0, v6

    move/from16 v0, v17

    and-int/lit16 v15, v0, 0xff

    .line 89
    .local v15, value:I
    const/16 v17, 0x80

    move/from16 v0, v17

    if-lt v15, v0, :cond_100

    const/16 v17, 0xbf

    move/from16 v0, v17

    if-gt v15, v0, :cond_100

    .line 90
    if-lez v14, :cond_70

    .line 91
    add-int/lit8 v14, v14, -0x1

    .line 109
    :cond_70
    const/16 v17, 0xc2

    move/from16 v0, v17

    if-eq v15, v0, :cond_7c

    const/16 v17, 0xc3

    move/from16 v0, v17

    if-ne v15, v0, :cond_a9

    :cond_7c
    add-int/lit8 v17, v8, -0x1

    move/from16 v0, v17

    if-ge v6, v0, :cond_a9

    .line 113
    add-int/lit8 v17, v6, 0x1

    aget-byte v17, p0, v17

    move/from16 v0, v17

    and-int/lit16 v11, v0, 0xff

    .line 114
    .local v11, nextValue:I
    const/16 v17, 0xbf

    move/from16 v0, v17

    if-gt v11, v0, :cond_a9

    const/16 v17, 0xc2

    move/from16 v0, v17

    if-ne v15, v0, :cond_9c

    const/16 v17, 0xa0

    move/from16 v0, v17

    if-ge v11, v0, :cond_a8

    :cond_9c
    const/16 v17, 0xc3

    move/from16 v0, v17

    if-ne v15, v0, :cond_a9

    const/16 v17, 0x80

    move/from16 v0, v17

    if-lt v11, v0, :cond_a9

    .line 116
    :cond_a8
    const/4 v12, 0x1

    .line 119
    .end local v11           #nextValue:I
    :cond_a9
    const/16 v17, 0x7f

    move/from16 v0, v17

    if-lt v15, v0, :cond_b6

    const/16 v17, 0x9f

    move/from16 v0, v17

    if-gt v15, v0, :cond_b6

    .line 120
    const/4 v2, 0x0

    .line 125
    :cond_b6
    const/16 v17, 0xa1

    move/from16 v0, v17

    if-lt v15, v0, :cond_c6

    const/16 v17, 0xdf

    move/from16 v0, v17

    if-gt v15, v0, :cond_c6

    .line 127
    if-nez v7, :cond_c6

    .line 128
    add-int/lit8 v10, v10, 0x1

    .line 131
    :cond_c6
    if-nez v7, :cond_e1

    const/16 v17, 0xf0

    move/from16 v0, v17

    if-lt v15, v0, :cond_d4

    const/16 v17, 0xff

    move/from16 v0, v17

    if-le v15, v0, :cond_e0

    :cond_d4
    const/16 v17, 0x80

    move/from16 v0, v17

    if-eq v15, v0, :cond_e0

    const/16 v17, 0xa0

    move/from16 v0, v17

    if-ne v15, v0, :cond_e1

    .line 133
    :cond_e0
    const/4 v3, 0x0

    .line 135
    :cond_e1
    const/16 v17, 0x81

    move/from16 v0, v17

    if-lt v15, v0, :cond_ed

    const/16 v17, 0x9f

    move/from16 v0, v17

    if-le v15, v0, :cond_f9

    :cond_ed
    const/16 v17, 0xe0

    move/from16 v0, v17

    if-lt v15, v0, :cond_142

    const/16 v17, 0xef

    move/from16 v0, v17

    if-gt v15, v0, :cond_142

    .line 138
    :cond_f9
    if-eqz v7, :cond_11b

    .line 143
    const/4 v7, 0x0

    .line 84
    :goto_fc
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_52

    .line 94
    :cond_100
    if-lez v14, :cond_103

    .line 95
    const/4 v4, 0x0

    .line 97
    :cond_103
    const/16 v17, 0xc0

    move/from16 v0, v17

    if-lt v15, v0, :cond_70

    const/16 v17, 0xfd

    move/from16 v0, v17

    if-gt v15, v0, :cond_70

    .line 98
    const/4 v13, 0x1

    .line 99
    move/from16 v16, v15

    .line 100
    .local v16, valueCopy:I
    :goto_112
    and-int/lit8 v17, v16, 0x40

    if-eqz v17, :cond_70

    .line 101
    add-int/lit8 v14, v14, 0x1

    .line 102
    shl-int/lit8 v16, v16, 0x1

    goto :goto_112

    .line 147
    .end local v16           #valueCopy:I
    :cond_11b
    const/4 v7, 0x1

    .line 148
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-lt v6, v0, :cond_129

    .line 149
    const/4 v3, 0x0

    goto :goto_fc

    .line 151
    :cond_129
    add-int/lit8 v17, v6, 0x1

    aget-byte v17, p0, v17

    move/from16 v0, v17

    and-int/lit16 v11, v0, 0xff

    .line 152
    .restart local v11       #nextValue:I
    const/16 v17, 0x40

    move/from16 v0, v17

    if-lt v11, v0, :cond_13d

    const/16 v17, 0xfc

    move/from16 v0, v17

    if-le v11, v0, :cond_13f

    .line 153
    :cond_13d
    const/4 v3, 0x0

    goto :goto_fc

    .line 155
    :cond_13f
    add-int/lit8 v9, v9, 0x1

    goto :goto_fc

    .line 162
    .end local v11           #nextValue:I
    :cond_142
    const/4 v7, 0x0

    goto :goto_fc

    .line 165
    .end local v15           #value:I
    :cond_144
    if-lez v14, :cond_147

    .line 166
    const/4 v4, 0x0

    .line 170
    :cond_147
    if-eqz v3, :cond_151

    sget-boolean v17, Lcom/google/zxing/common/StringUtils;->ASSUME_SHIFT_JIS:Z

    if-eqz v17, :cond_151

    .line 171
    const-string v5, "SJIS"

    goto/16 :goto_10

    .line 173
    :cond_151
    if-eqz v4, :cond_159

    if-eqz v13, :cond_159

    .line 174
    const-string v5, "UTF8"

    goto/16 :goto_10

    .line 181
    :cond_159
    if-eqz v3, :cond_16b

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ge v9, v0, :cond_167

    mul-int/lit8 v17, v10, 0x14

    move/from16 v0, v17

    if-le v0, v8, :cond_16b

    .line 182
    :cond_167
    const-string v5, "SJIS"

    goto/16 :goto_10

    .line 185
    :cond_16b
    if-nez v12, :cond_173

    if-eqz v2, :cond_173

    .line 186
    const-string v5, "ISO8859_1"

    goto/16 :goto_10

    .line 189
    :cond_173
    sget-object v5, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    goto/16 :goto_10
.end method
