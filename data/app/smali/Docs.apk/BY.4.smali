.class public LBY;
.super Ljava/lang/Object;
.source "AndroidBidi.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I[C[BIZ)I
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 18
    .line 19
    packed-switch p0, :pswitch_data_2e

    :pswitch_6
    move v0, v1

    .line 38
    :goto_7
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1, v1, p3}, Ljava/lang/String;-><init>([CII)V

    .line 39
    new-instance v5, Ljava/text/Bidi;

    invoke-direct {v5, v4, v0}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    .line 41
    :goto_11
    if-ge v1, p3, :cond_25

    .line 42
    invoke-virtual {v5, v1}, Ljava/text/Bidi;->getLevelAt(I)I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, p2, v1

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :pswitch_1d
    move v0, v1

    .line 22
    goto :goto_7

    :pswitch_1f
    move v0, v2

    .line 25
    goto :goto_7

    .line 27
    :pswitch_21
    const/4 v0, -0x2

    .line 28
    goto :goto_7

    :pswitch_23
    move v0, v3

    .line 31
    goto :goto_7

    .line 44
    :cond_25
    invoke-virtual {v5}, Ljava/text/Bidi;->baseIsLeftToRight()Z

    move-result v0

    if-eqz v0, :cond_2c

    :goto_2b
    return v2

    :cond_2c
    move v2, v3

    goto :goto_2b

    .line 19
    :pswitch_data_2e
    .packed-switch -0x2
        :pswitch_23
        :pswitch_1f
        :pswitch_6
        :pswitch_1d
        :pswitch_21
    .end packed-switch
.end method

.method public static a(I[BI[CII)LCm;
    .registers 21
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    const/4 v1, 0x1

    if-ne p0, v1, :cond_3e

    const/4 v1, 0x0

    .line 63
    :goto_4
    aget-byte v8, p1, p2

    .line 65
    const/4 v3, 0x1

    .line 69
    add-int v2, p2, p5

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p1, v2

    and-int/lit8 v2, v2, 0x1

    and-int/lit8 v4, v1, 0x1

    if-eq v2, v4, :cond_121

    move/from16 v2, p5

    .line 71
    :cond_15
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_23

    .line 72
    add-int v4, p4, v2

    aget-char v4, p3, v4

    .line 74
    const/16 v5, 0xa

    if-ne v4, v5, :cond_40

    .line 75
    add-int/lit8 v2, v2, -0x1

    .line 83
    :cond_23
    :goto_23
    add-int/lit8 v2, v2, 0x1

    .line 84
    move/from16 v0, p5

    if-eq v2, v0, :cond_2a

    .line 85
    const/4 v3, 0x2

    .line 89
    :cond_2a
    :goto_2a
    aget-byte v5, p1, p2

    .line 90
    add-int/lit8 v4, p2, 0x1

    add-int v7, p2, v2

    move v6, v4

    :goto_31
    if-ge v6, v7, :cond_49

    .line 91
    aget-byte v4, p1, v6

    .line 92
    if-eq v4, v5, :cond_11e

    .line 94
    add-int/lit8 v3, v3, 0x1

    .line 90
    :goto_39
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    move v5, v4

    goto :goto_31

    .line 62
    :cond_3e
    const/4 v1, 0x1

    goto :goto_4

    .line 79
    :cond_40
    const/16 v5, 0x20

    if-eq v4, v5, :cond_15

    const/16 v5, 0x9

    if-eq v4, v5, :cond_15

    goto :goto_23

    .line 99
    :cond_49
    const/4 v4, 0x1

    if-ne v3, v4, :cond_58

    if-ne v8, v1, :cond_58

    .line 101
    and-int/lit8 v1, v8, 0x1

    if-eqz v1, :cond_55

    .line 102
    sget-object v1, LCl;->b:LCm;

    .line 197
    :goto_54
    return-object v1

    .line 104
    :cond_55
    sget-object v1, LCl;->a:LCm;

    goto :goto_54

    .line 107
    :cond_58
    mul-int/lit8 v4, v3, 0x2

    new-array v12, v4, [I

    .line 109
    shl-int/lit8 v10, v8, 0x1a

    .line 114
    const/4 v9, 0x1

    .line 117
    add-int v13, p2, v2

    move/from16 v7, p2

    move v4, v8

    move v6, v8

    move v11, v8

    move/from16 v8, p2

    :goto_68
    if-ge v7, v13, :cond_95

    .line 118
    aget-byte v5, p1, v7

    .line 119
    if-eq v5, v11, :cond_115

    .line 121
    if-le v5, v4, :cond_91

    move v4, v5

    .line 127
    :cond_71
    :goto_71
    add-int/lit8 v11, v9, 0x1

    sub-int v8, v7, v8

    or-int/2addr v8, v10

    aput v8, v12, v9

    .line 128
    add-int/lit8 v8, v11, 0x1

    sub-int v9, v7, p2

    aput v9, v12, v11

    .line 129
    shl-int/lit8 v9, v5, 0x1a

    move v10, v5

    move v5, v8

    move v8, v4

    move v4, v7

    move v14, v6

    move v6, v9

    move v9, v14

    .line 117
    :goto_87
    add-int/lit8 v7, v7, 0x1

    move v11, v10

    move v10, v6

    move v6, v9

    move v9, v5

    move v14, v8

    move v8, v4

    move v4, v14

    goto :goto_68

    .line 123
    :cond_91
    if-ge v5, v6, :cond_71

    move v6, v5

    .line 124
    goto :goto_71

    .line 133
    :cond_95
    add-int v5, p2, v2

    sub-int/2addr v5, v8

    or-int/2addr v5, v10

    aput v5, v12, v9

    .line 134
    move/from16 v0, p5

    if-ge v2, v0, :cond_ac

    .line 135
    add-int/lit8 v5, v9, 0x1

    aput v2, v12, v5

    .line 136
    add-int/lit8 v5, v5, 0x1

    sub-int v2, p5, v2

    shl-int/lit8 v7, v1, 0x1a

    or-int/2addr v2, v7

    aput v2, v12, v5

    .line 151
    :cond_ac
    and-int/lit8 v2, v6, 0x1

    if-ne v2, v1, :cond_da

    .line 152
    add-int/lit8 v6, v6, 0x1

    .line 153
    if-le v4, v6, :cond_d8

    const/4 v1, 0x1

    .line 157
    :goto_b5
    if-eqz v1, :cond_10e

    .line 159
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    :goto_ba
    if-lt v4, v6, :cond_10e

    .line 160
    const/4 v1, 0x0

    :goto_bd
    array-length v2, v12

    if-ge v1, v2, :cond_10a

    .line 163
    add-int/lit8 v2, v1, 0x1

    aget v2, v12, v2

    shr-int/lit8 v2, v2, 0x1a

    .line 164
    if-lt v2, v4, :cond_107

    .line 165
    add-int/lit8 v2, v1, 0x2

    .line 166
    :goto_ca
    array-length v3, v12

    if-ge v2, v3, :cond_e1

    add-int/lit8 v3, v2, 0x1

    aget v3, v12, v3

    shr-int/lit8 v3, v3, 0x1a

    if-lt v3, v4, :cond_e1

    .line 167
    add-int/lit8 v2, v2, 0x2

    goto :goto_ca

    .line 153
    :cond_d8
    const/4 v1, 0x0

    goto :goto_b5

    .line 155
    :cond_da
    const/4 v1, 0x1

    if-le v3, v1, :cond_df

    const/4 v1, 0x1

    goto :goto_b5

    :cond_df
    const/4 v1, 0x0

    goto :goto_b5

    .line 169
    :cond_e1
    add-int/lit8 v3, v2, -0x2

    move v14, v3

    move v3, v1

    move v1, v14

    :goto_e6
    if-ge v3, v1, :cond_105

    .line 170
    aget v5, v12, v3

    .line 171
    aget v7, v12, v1

    aput v7, v12, v3

    .line 172
    aput v5, v12, v1

    .line 173
    add-int/lit8 v5, v3, 0x1

    aget v5, v12, v5

    .line 174
    add-int/lit8 v7, v3, 0x1

    add-int/lit8 v8, v1, 0x1

    aget v8, v12, v8

    aput v8, v12, v7

    .line 175
    add-int/lit8 v7, v1, 0x1

    aput v5, v12, v7

    .line 169
    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v1, v1, -0x2

    goto :goto_e6

    .line 177
    :cond_105
    add-int/lit8 v1, v2, 0x2

    .line 160
    :cond_107
    add-int/lit8 v1, v1, 0x2

    goto :goto_bd

    .line 159
    :cond_10a
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    goto :goto_ba

    .line 197
    :cond_10e
    new-instance v1, LCm;

    invoke-direct {v1, v12}, LCm;-><init>([I)V

    goto/16 :goto_54

    :cond_115
    move v5, v9

    move v9, v6

    move v6, v10

    move v10, v11

    move v14, v8

    move v8, v4

    move v4, v14

    goto/16 :goto_87

    :cond_11e
    move v4, v5

    goto/16 :goto_39

    :cond_121
    move/from16 v2, p5

    goto/16 :goto_2a
.end method
