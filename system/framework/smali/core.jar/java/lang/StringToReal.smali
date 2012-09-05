.class final Ljava/lang/StringToReal;
.super Ljava/lang/Object;
.source "StringToReal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/StringToReal$1;,
        Ljava/lang/StringToReal$StringExponentPair;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method private static initialParse(Ljava/lang/String;IZ)Ljava/lang/StringToReal$StringExponentPair;
    .registers 25
    .parameter "s"
    .parameter "length"
    .parameter "isDouble"

    .prologue
    .line 74
    new-instance v16, Ljava/lang/StringToReal$StringExponentPair;

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringToReal$StringExponentPair;-><init>(Ljava/lang/StringToReal$1;)V

    .line 75
    .local v16, result:Ljava/lang/StringToReal$StringExponentPair;
    if-nez p1, :cond_16

    .line 76
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v18

    throw v18

    .line 78
    :cond_16
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x2d

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5f

    const/16 v18, 0x1

    :goto_2a
    move/from16 v0, v18

    move-object/from16 v1, v16

    iput-boolean v0, v1, Ljava/lang/StringToReal$StringExponentPair;->negative:Z

    .line 82
    add-int/lit8 v18, p1, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 83
    .local v5, c:C
    const/16 v18, 0x44

    move/from16 v0, v18

    if-eq v5, v0, :cond_52

    const/16 v18, 0x64

    move/from16 v0, v18

    if-eq v5, v0, :cond_52

    const/16 v18, 0x46

    move/from16 v0, v18

    if-eq v5, v0, :cond_52

    const/16 v18, 0x66

    move/from16 v0, v18

    if-ne v5, v0, :cond_62

    .line 84
    :cond_52
    add-int/lit8 p1, p1, -0x1

    .line 85
    if-nez p1, :cond_62

    .line 86
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v18

    throw v18

    .line 78
    .end local v5           #c:C
    :cond_5f
    const/16 v18, 0x0

    goto :goto_2a

    .line 90
    .restart local v5       #c:C
    :cond_62
    const/16 v18, 0x45

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    const/16 v19, 0x65

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 91
    .local v9, end:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v9, v0, :cond_12f

    .line 93
    add-int/lit8 v18, v9, 0x1

    move/from16 v0, v18

    move/from16 v1, p1

    if-ne v0, v1, :cond_91

    .line 94
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v18

    throw v18

    .line 98
    :cond_91
    add-int/lit8 v11, v9, 0x1

    .line 99
    .local v11, exponentOffset:I
    const/4 v15, 0x0

    .line 100
    .local v15, negativeExponent:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 101
    .local v13, firstExponentChar:C
    const/16 v18, 0x2b

    move/from16 v0, v18

    if-eq v13, v0, :cond_a6

    const/16 v18, 0x2d

    move/from16 v0, v18

    if-ne v13, v0, :cond_af

    .line 102
    :cond_a6
    const/16 v18, 0x2d

    move/from16 v0, v18

    if-ne v13, v0, :cond_c6

    const/4 v15, 0x1

    .line 103
    :goto_ad
    add-int/lit8 v11, v11, 0x1

    .line 107
    :cond_af
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 108
    .local v12, exponentString:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_c8

    .line 109
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v18

    throw v18

    .line 102
    .end local v12           #exponentString:Ljava/lang/String;
    :cond_c6
    const/4 v15, 0x0

    goto :goto_ad

    .line 111
    .restart local v12       #exponentString:Ljava/lang/String;
    :cond_c8
    const/4 v14, 0x0

    .local v14, i:I
    :goto_c9
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v14, v0, :cond_ed

    .line 112
    invoke-virtual {v12, v14}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 113
    .local v6, ch:C
    const/16 v18, 0x30

    move/from16 v0, v18

    if-lt v6, v0, :cond_e1

    const/16 v18, 0x39

    move/from16 v0, v18

    if-le v6, v0, :cond_ea

    .line 114
    :cond_e1
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v18

    throw v18

    .line 111
    :cond_ea
    add-int/lit8 v14, v14, 0x1

    goto :goto_c9

    .line 120
    .end local v6           #ch:C
    :cond_ed
    :try_start_ed
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, v16

    iput-wide v0, v2, Ljava/lang/StringToReal$StringExponentPair;->e:J

    .line 121
    if-eqz v15, :cond_10f

    .line 122
    move-object/from16 v0, v16

    iget-wide v0, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    neg-long v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, v16

    iput-wide v0, v2, Ljava/lang/StringToReal$StringExponentPair;->e:J
    :try_end_10f
    .catch Ljava/lang/NumberFormatException; {:try_start_ed .. :try_end_10f} :catch_11a

    .line 136
    .end local v11           #exponentOffset:I
    .end local v12           #exponentString:Ljava/lang/String;
    .end local v13           #firstExponentChar:C
    .end local v14           #i:I
    .end local v15           #negativeExponent:Z
    :cond_10f
    :goto_10f
    if-nez p1, :cond_132

    .line 137
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v18

    throw v18

    .line 124
    .restart local v11       #exponentOffset:I
    .restart local v12       #exponentString:Ljava/lang/String;
    .restart local v13       #firstExponentChar:C
    .restart local v14       #i:I
    .restart local v15       #negativeExponent:Z
    :catch_11a
    move-exception v10

    .line 126
    .local v10, ex:Ljava/lang/NumberFormatException;
    if-eqz v15, :cond_126

    .line 127
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput-boolean v0, v1, Ljava/lang/StringToReal$StringExponentPair;->zero:Z

    .line 205
    .end local v10           #ex:Ljava/lang/NumberFormatException;
    .end local v11           #exponentOffset:I
    .end local v12           #exponentString:Ljava/lang/String;
    .end local v13           #firstExponentChar:C
    .end local v14           #i:I
    .end local v15           #negativeExponent:Z
    :goto_125
    return-object v16

    .line 129
    .restart local v10       #ex:Ljava/lang/NumberFormatException;
    .restart local v11       #exponentOffset:I
    .restart local v12       #exponentString:Ljava/lang/String;
    .restart local v13       #firstExponentChar:C
    .restart local v14       #i:I
    .restart local v15       #negativeExponent:Z
    :cond_126
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput-boolean v0, v1, Ljava/lang/StringToReal$StringExponentPair;->infinity:Z

    goto :goto_125

    .line 134
    .end local v10           #ex:Ljava/lang/NumberFormatException;
    .end local v11           #exponentOffset:I
    .end local v12           #exponentString:Ljava/lang/String;
    .end local v13           #firstExponentChar:C
    .end local v14           #i:I
    .end local v15           #negativeExponent:Z
    :cond_12f
    move/from16 v9, p1

    goto :goto_10f

    .line 140
    :cond_132
    const/16 v17, 0x0

    .line 141
    .local v17, start:I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 142
    const/16 v18, 0x2d

    move/from16 v0, v18

    if-ne v5, v0, :cond_159

    .line 143
    add-int/lit8 v17, v17, 0x1

    .line 144
    add-int/lit8 p1, p1, -0x1

    .line 145
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput-boolean v0, v1, Ljava/lang/StringToReal$StringExponentPair;->negative:Z

    .line 150
    :cond_14e
    :goto_14e
    if-nez p1, :cond_164

    .line 151
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v18

    throw v18

    .line 146
    :cond_159
    const/16 v18, 0x2b

    move/from16 v0, v18

    if-ne v5, v0, :cond_14e

    .line 147
    add-int/lit8 v17, v17, 0x1

    .line 148
    add-int/lit8 p1, p1, -0x1

    goto :goto_14e

    .line 154
    :cond_164
    const/16 v18, 0x2e

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 155
    .local v8, decimal:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-le v8, v0, :cond_1bd

    .line 156
    move-object/from16 v0, v16

    iget-wide v0, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    move-wide/from16 v18, v0

    sub-int v20, v9, v8

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, v16

    iput-wide v0, v2, Ljava/lang/StringToReal$StringExponentPair;->e:J

    .line 157
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    add-int/lit8 v19, v8, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 162
    :goto_1ae
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1c6

    .line 163
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v18

    throw v18

    .line 159
    :cond_1bd
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_1ae

    .line 166
    :cond_1c6
    move/from16 v9, p1

    .line 167
    :goto_1c8
    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v9, v0, :cond_1e3

    add-int/lit8 v18, v9, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x30

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1e3

    .line 168
    add-int/lit8 v9, v9, -0x1

    goto :goto_1c8

    .line 171
    :cond_1e3
    const/16 v17, 0x0

    .line 172
    :goto_1e5
    add-int/lit8 v18, v9, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_200

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x30

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_200

    .line 173
    add-int/lit8 v17, v17, 0x1

    goto :goto_1e5

    .line 176
    :cond_200
    move/from16 v0, p1

    if-ne v9, v0, :cond_206

    if-eqz v17, :cond_223

    .line 177
    :cond_206
    move-object/from16 v0, v16

    iget-wide v0, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    move-wide/from16 v18, v0

    sub-int v20, p1, v9

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, v16

    iput-wide v0, v2, Ljava/lang/StringToReal$StringExponentPair;->e:J

    .line 178
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 184
    :cond_223
    const/16 v3, -0x167

    .line 185
    .local v3, APPROX_MIN_MAGNITUDE:I
    const/16 v4, 0x34

    .line 186
    .local v4, MAX_DIGITS:I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result p1

    .line 187
    const/16 v18, 0x34

    move/from16 v0, p1

    move/from16 v1, v18

    if-le v0, v1, :cond_275

    move-object/from16 v0, v16

    iget-wide v0, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    move-wide/from16 v18, v0

    const-wide/16 v20, -0x167

    cmp-long v18, v18, v20

    if-gez v18, :cond_275

    .line 188
    move-object/from16 v0, v16

    iget-wide v0, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    rsub-int v0, v0, -0x167

    move/from16 v18, v0

    add-int/lit8 v19, p1, -0x1

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 189
    .local v7, d:I
    const/16 v18, 0x0

    sub-int v19, p1, v7

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 190
    move-object/from16 v0, v16

    iget-wide v0, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    move-wide/from16 v18, v0

    int-to-long v0, v7

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, v16

    iput-wide v0, v2, Ljava/lang/StringToReal$StringExponentPair;->e:J

    .line 196
    .end local v7           #d:I
    :cond_275
    move-object/from16 v0, v16

    iget-wide v0, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    move-wide/from16 v18, v0

    const-wide/16 v20, -0x400

    cmp-long v18, v18, v20

    if-gez v18, :cond_28b

    .line 197
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput-boolean v0, v1, Ljava/lang/StringToReal$StringExponentPair;->zero:Z

    goto/16 :goto_125

    .line 199
    :cond_28b
    move-object/from16 v0, v16

    iget-wide v0, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x400

    cmp-long v18, v18, v20

    if-lez v18, :cond_2a1

    .line 200
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v16

    iput-boolean v0, v1, Ljava/lang/StringToReal$StringExponentPair;->infinity:Z

    goto/16 :goto_125

    .line 204
    :cond_2a1
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    iput-object v0, v1, Ljava/lang/StringToReal$StringExponentPair;->s:Ljava/lang/String;

    goto/16 :goto_125
.end method

.method private static invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;
    .registers 5
    .parameter "s"
    .parameter "isDouble"

    .prologue
    .line 63
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_2d

    const-string v0, "double"

    :goto_11
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2d
    const-string v0, "float"

    goto :goto_11
.end method

.method private static native parseDblImpl(Ljava/lang/String;I)D
.end method

.method public static parseDouble(Ljava/lang/String;)D
    .registers 11
    .parameter "s"

    .prologue
    const/4 v6, -0x1

    const/4 v9, 0x1

    .line 244
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 245
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 247
    .local v2, length:I
    if-nez v2, :cond_11

    .line 248
    invoke-static {p0, v9}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v5

    throw v5

    .line 252
    :cond_11
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 253
    .local v1, last:C
    const/16 v5, 0x79

    if-eq v1, v5, :cond_1f

    const/16 v5, 0x4e

    if-ne v1, v5, :cond_25

    .line 254
    :cond_1f
    invoke-static {p0, v9}, Ljava/lang/StringToReal;->parseName(Ljava/lang/String;Z)F

    move-result v5

    float-to-double v3, v5

    .line 271
    :cond_24
    :goto_24
    return-wide v3

    .line 259
    :cond_25
    const-string v5, "0x"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v6, :cond_35

    const-string v5, "0X"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v6, :cond_3a

    .line 260
    :cond_35
    invoke-static {p0}, Ljava/lang/HexStringParser;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    goto :goto_24

    .line 263
    :cond_3a
    invoke-static {p0, v2, v9}, Ljava/lang/StringToReal;->initialParse(Ljava/lang/String;IZ)Ljava/lang/StringToReal$StringExponentPair;

    move-result-object v0

    .line 264
    .local v0, info:Ljava/lang/StringToReal$StringExponentPair;
    iget-boolean v5, v0, Ljava/lang/StringToReal$StringExponentPair;->infinity:Z

    if-nez v5, :cond_46

    iget-boolean v5, v0, Ljava/lang/StringToReal$StringExponentPair;->zero:Z

    if-eqz v5, :cond_4c

    .line 265
    :cond_46
    invoke-virtual {v0}, Ljava/lang/StringToReal$StringExponentPair;->specialValue()F

    move-result v5

    float-to-double v3, v5

    goto :goto_24

    .line 267
    :cond_4c
    iget-object v5, v0, Ljava/lang/StringToReal$StringExponentPair;->s:Ljava/lang/String;

    iget-wide v6, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    long-to-int v6, v6

    invoke-static {v5, v6}, Ljava/lang/StringToReal;->parseDblImpl(Ljava/lang/String;I)D

    move-result-wide v3

    .line 268
    .local v3, result:D
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_64

    .line 269
    invoke-static {p0, v9}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v5

    throw v5

    .line 271
    :cond_64
    iget-boolean v5, v0, Ljava/lang/StringToReal$StringExponentPair;->negative:Z

    if-eqz v5, :cond_24

    neg-double v3, v3

    goto :goto_24
.end method

.method public static parseFloat(Ljava/lang/String;)F
    .registers 10
    .parameter "s"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 285
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 286
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 288
    .local v2, length:I
    if-nez v2, :cond_11

    .line 289
    invoke-static {p0, v7}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v4

    throw v4

    .line 293
    :cond_11
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 294
    .local v1, last:C
    const/16 v4, 0x79

    if-eq v1, v4, :cond_1f

    const/16 v4, 0x4e

    if-ne v1, v4, :cond_24

    .line 295
    :cond_1f
    invoke-static {p0, v7}, Ljava/lang/StringToReal;->parseName(Ljava/lang/String;Z)F

    move-result v3

    .line 312
    :cond_23
    :goto_23
    return v3

    .line 300
    :cond_24
    const-string v4, "0x"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v8, :cond_34

    const-string v4, "0X"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v8, :cond_39

    .line 301
    :cond_34
    invoke-static {p0}, Ljava/lang/HexStringParser;->parseFloat(Ljava/lang/String;)F

    move-result v3

    goto :goto_23

    .line 304
    :cond_39
    invoke-static {p0, v2, v7}, Ljava/lang/StringToReal;->initialParse(Ljava/lang/String;IZ)Ljava/lang/StringToReal$StringExponentPair;

    move-result-object v0

    .line 305
    .local v0, info:Ljava/lang/StringToReal$StringExponentPair;
    iget-boolean v4, v0, Ljava/lang/StringToReal$StringExponentPair;->infinity:Z

    if-nez v4, :cond_45

    iget-boolean v4, v0, Ljava/lang/StringToReal$StringExponentPair;->zero:Z

    if-eqz v4, :cond_4a

    .line 306
    :cond_45
    invoke-virtual {v0}, Ljava/lang/StringToReal$StringExponentPair;->specialValue()F

    move-result v3

    goto :goto_23

    .line 308
    :cond_4a
    iget-object v4, v0, Ljava/lang/StringToReal$StringExponentPair;->s:Ljava/lang/String;

    iget-wide v5, v0, Ljava/lang/StringToReal$StringExponentPair;->e:J

    long-to-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/StringToReal;->parseFltImpl(Ljava/lang/String;I)F

    move-result v3

    .line 309
    .local v3, result:F
    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    if-ne v4, v8, :cond_5e

    .line 310
    invoke-static {p0, v7}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v4

    throw v4

    .line 312
    :cond_5e
    iget-boolean v4, v0, Ljava/lang/StringToReal$StringExponentPair;->negative:Z

    if-eqz v4, :cond_23

    neg-float v3, v3

    goto :goto_23
.end method

.method private static native parseFltImpl(Ljava/lang/String;I)F
.end method

.method private static parseName(Ljava/lang/String;Z)F
    .registers 12
    .parameter "name"
    .parameter "isDouble"

    .prologue
    const/16 v5, 0x8

    const/4 v9, 0x3

    const/4 v1, 0x0

    .line 211
    const/4 v8, 0x0

    .line 212
    .local v8, negative:Z
    const/4 v2, 0x0

    .line 213
    .local v2, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 214
    .local v7, length:I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 215
    .local v6, firstChar:C
    const/16 v0, 0x2d

    if-ne v6, v0, :cond_28

    .line 216
    const/4 v8, 0x1

    .line 217
    add-int/lit8 v2, v2, 0x1

    .line 218
    add-int/lit8 v7, v7, -0x1

    .line 224
    :cond_17
    :goto_17
    if-ne v7, v5, :cond_34

    const-string v3, "Infinity"

    move-object v0, p0

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 225
    if-eqz v8, :cond_31

    const/high16 v0, -0x80

    .line 228
    :goto_27
    return v0

    .line 219
    :cond_28
    const/16 v0, 0x2b

    if-ne v6, v0, :cond_17

    .line 220
    add-int/lit8 v2, v2, 0x1

    .line 221
    add-int/lit8 v7, v7, -0x1

    goto :goto_17

    .line 225
    :cond_31
    const/high16 v0, 0x7f80

    goto :goto_27

    .line 227
    :cond_34
    if-ne v7, v9, :cond_44

    const-string v3, "NaN"

    move-object v0, p0

    move v4, v1

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 228
    const/high16 v0, 0x7fc0

    goto :goto_27

    .line 230
    :cond_44
    invoke-static {p0, p1}, Ljava/lang/StringToReal;->invalidReal(Ljava/lang/String;Z)Ljava/lang/NumberFormatException;

    move-result-object v0

    throw v0
.end method
