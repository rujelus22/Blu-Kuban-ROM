.class Ljackpal/androidterm/emulatorview/UnicodeTranscript;
.super Ljava/lang/Object;
.source "UnicodeTranscript.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UnicodeTranscript"


# instance fields
.field private mActiveTranscriptRows:I

.field private mColor:[[B

.field private mColumns:I

.field private mDefaultBackColor:I

.field private mDefaultForeColor:I

.field private mLineWrap:[Z

.field private mLines:[Ljava/lang/Object;

.field private mScreenFirstRow:I

.field private mScreenRows:I

.field private mTotalRows:I

.field private tmpChar:[C

.field private tmpColor:[B

.field private tmpLine:[C


# direct methods
.method public constructor <init>(IIIII)V
    .registers 7
    .parameter "columns"
    .parameter "totalRows"
    .parameter "screenRows"
    .parameter "foreColor"
    .parameter "backColor"

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    .line 56
    iput v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mDefaultForeColor:I

    .line 57
    iput v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mDefaultBackColor:I

    .line 59
    iput v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenFirstRow:I

    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [C

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->tmpChar:[C

    .line 66
    iput p1, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColumns:I

    .line 67
    iput p2, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mTotalRows:I

    .line 68
    iput p3, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    .line 69
    new-array v0, p2, [Ljava/lang/Object;

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    .line 70
    new-array v0, p2, [[B

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColor:[[B

    .line 71
    new-array v0, p2, [Z

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLineWrap:[Z

    .line 72
    new-array v0, p1, [B

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->tmpColor:[B

    .line 74
    iput p4, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mDefaultForeColor:I

    .line 75
    iput p5, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mDefaultBackColor:I

    .line 76
    return-void
.end method

.method private allocateBasicLine(II)[C
    .registers 7
    .parameter "row"
    .parameter "columns"

    .prologue
    .line 728
    new-array v1, p2, [C

    .line 731
    .local v1, line:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    if-ge v0, p2, :cond_c

    .line 732
    const/16 v2, 0x20

    aput-char v2, v1, v0

    .line 731
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 735
    :cond_c
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    aput-object v1, v2, p1

    .line 736
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColor:[[B

    const/4 v3, 0x0

    aput-object v3, v2, p1

    .line 737
    return-object v1
.end method

.method private allocateColor(II)[B
    .registers 8
    .parameter "row"
    .parameter "columns"

    .prologue
    .line 749
    new-array v0, p2, [B

    .line 752
    .local v0, color:[B
    iget v3, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mDefaultForeColor:I

    iget v4, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mDefaultBackColor:I

    invoke-direct {p0, v3, v4}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->encodeColor(II)B

    move-result v1

    .line 753
    .local v1, defaultColor:B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_b
    if-ge v2, p2, :cond_12

    .line 754
    aput-byte v1, v0, v2

    .line 753
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 756
    :cond_12
    iget-object v3, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColor:[[B

    aput-object v0, v3, p1

    .line 757
    return-object v0
.end method

.method private allocateFullLine(II)Ljackpal/androidterm/emulatorview/FullUnicodeLine;
    .registers 6
    .parameter "row"
    .parameter "columns"

    .prologue
    .line 741
    new-instance v0, Ljackpal/androidterm/emulatorview/FullUnicodeLine;

    invoke-direct {v0, p2}, Ljackpal/androidterm/emulatorview/FullUnicodeLine;-><init>(I)V

    .line 743
    .local v0, line:Ljackpal/androidterm/emulatorview/FullUnicodeLine;
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    aput-object v0, v1, p1

    .line 744
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColor:[[B

    const/4 v2, 0x0

    aput-object v2, v1, p1

    .line 745
    return-object v0
.end method

.method private blockCopyLines(III)V
    .registers 11
    .parameter "src"
    .parameter "len"
    .parameter "shift"

    .prologue
    .line 257
    iget v2, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mTotalRows:I

    .line 260
    .local v2, totalRows:I
    add-int v3, p1, p3

    if-ltz v3, :cond_28

    .line 261
    add-int v3, p1, p3

    rem-int v0, v3, v2

    .line 266
    .local v0, dst:I
    :goto_a
    add-int v3, p1, p2

    if-gt v3, v2, :cond_2d

    add-int v3, v0, p2

    if-gt v3, v2, :cond_2d

    .line 268
    iget-object v3, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    iget-object v4, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    invoke-static {v3, p1, v4, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    iget-object v3, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColor:[[B

    iget-object v4, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColor:[[B

    invoke-static {v3, p1, v4, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 270
    iget-object v3, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLineWrap:[Z

    iget-object v4, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLineWrap:[Z

    invoke-static {v3, p1, v4, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    :cond_27
    return-void

    .line 263
    .end local v0           #dst:I
    :cond_28
    add-int v3, v2, p1

    add-int v0, v3, p3

    .restart local v0       #dst:I
    goto :goto_a

    .line 274
    :cond_2d
    if-gez p3, :cond_5f

    .line 276
    const/4 v1, 0x0

    .local v1, i:I
    :goto_30
    if-ge v1, p2, :cond_27

    .line 277
    iget-object v3, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    add-int v4, v0, v1

    rem-int/2addr v4, v2

    iget-object v5, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    add-int v6, p1, v1

    rem-int/2addr v6, v2

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    .line 278
    iget-object v3, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColor:[[B

    add-int v4, v0, v1

    rem-int/2addr v4, v2

    iget-object v5, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColor:[[B

    add-int v6, p1, v1

    rem-int/2addr v6, v2

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    .line 279
    iget-object v3, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLineWrap:[Z

    add-int v4, v0, v1

    rem-int/2addr v4, v2

    iget-object v5, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLineWrap:[Z

    add-int v6, p1, v1

    rem-int/2addr v6, v2

    aget-boolean v5, v5, v6

    aput-boolean v5, v3, v4

    .line 276
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 283
    .end local v1           #i:I
    :cond_5f
    add-int/lit8 v1, p2, -0x1

    .restart local v1       #i:I
    :goto_61
    if-ltz v1, :cond_27

    .line 284
    iget-object v3, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    add-int v4, v0, v1

    rem-int/2addr v4, v2

    iget-object v5, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    add-int v6, p1, v1

    rem-int/2addr v6, v2

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    .line 285
    iget-object v3, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColor:[[B

    add-int v4, v0, v1

    rem-int/2addr v4, v2

    iget-object v5, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColor:[[B

    add-int v6, p1, v1

    rem-int/2addr v6, v2

    aget-object v5, v5, v6

    aput-object v5, v3, v4

    .line 286
    iget-object v3, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLineWrap:[Z

    add-int v4, v0, v1

    rem-int/2addr v4, v2

    iget-object v5, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLineWrap:[Z

    add-int v6, p1, v1

    rem-int/2addr v6, v2

    aget-boolean v5, v5, v6

    aput-boolean v5, v3, v4

    .line 283
    add-int/lit8 v1, v1, -0x1

    goto :goto_61
.end method

.method public static charWidth(CC)I
    .registers 3
    .parameter "cHigh"
    .parameter "cLow"

    .prologue
    .line 574
    invoke-static {p0, p1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    invoke-static {v0}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->charWidth(I)I

    move-result v0

    return v0
.end method

.method public static charWidth(I)I
    .registers 4
    .parameter "codePoint"

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 536
    const/16 v2, 0x1f

    if-le p0, v2, :cond_b

    const/16 v2, 0x7f

    if-ge p0, v2, :cond_b

    .line 570
    :cond_a
    :goto_a
    return v0

    .line 542
    :cond_b
    const/16 v2, 0x1b

    if-eq p0, v2, :cond_a

    .line 546
    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_34

    .line 554
    invoke-static {p0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    if-ne v2, v0, :cond_29

    .line 556
    int-to-char v2, p0

    invoke-static {v2}, Ljackpal/androidterm/emulatorview/compat/AndroidCharacterCompat;->getEastAsianWidth(C)I

    move-result v2

    packed-switch v2, :pswitch_data_46

    :pswitch_24
    goto :goto_a

    :pswitch_25
    move v0, v1

    .line 559
    goto :goto_a

    .line 551
    :sswitch_27
    const/4 v0, 0x0

    goto :goto_a

    .line 563
    :cond_29
    shr-int/lit8 v2, p0, 0x10

    and-int/lit8 v2, v2, 0xf

    packed-switch v2, :pswitch_data_50

    goto :goto_a

    :pswitch_31
    move v0, v1

    .line 566
    goto :goto_a

    .line 546
    nop

    :sswitch_data_34
    .sparse-switch
        0x6 -> :sswitch_27
        0x7 -> :sswitch_27
        0xf -> :sswitch_27
        0x10 -> :sswitch_27
    .end sparse-switch

    .line 556
    :pswitch_data_46
    .packed-switch 0x3
        :pswitch_25
        :pswitch_24
        :pswitch_25
    .end packed-switch

    .line 563
    :pswitch_data_50
    .packed-switch 0x2
        :pswitch_31
        :pswitch_31
    .end packed-switch
.end method

.method private encodeColor(II)B
    .registers 5
    .parameter "foreColor"
    .parameter "backColor"

    .prologue
    .line 761
    and-int/lit8 v0, p1, 0xf

    shl-int/lit8 v0, v0, 0x4

    and-int/lit8 v1, p2, 0xf

    or-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method private externalToInternalRow(I)I
    .registers 5
    .parameter "extRow"

    .prologue
    .line 119
    iget v1, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    neg-int v1, v1

    if-lt p1, v1, :cond_9

    iget v1, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    if-le p1, v1, :cond_3f

    .line 120
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "externalToInternalRow "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, errorMessage:Ljava/lang/String;
    const-string v1, "UnicodeTranscript"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    .end local v0           #errorMessage:Ljava/lang/String;
    :cond_3f
    if-ltz p1, :cond_48

    .line 127
    iget v1, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenFirstRow:I

    add-int/2addr v1, p1

    iget v2, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mTotalRows:I

    rem-int/2addr v1, v2

    .line 132
    :goto_47
    return v1

    .line 129
    :cond_48
    neg-int v1, p1

    iget v2, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenFirstRow:I

    if-le v1, v2, :cond_54

    .line 130
    iget v1, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mTotalRows:I

    iget v2, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenFirstRow:I

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    goto :goto_47

    .line 132
    :cond_54
    iget v1, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenFirstRow:I

    add-int/2addr v1, p1

    goto :goto_47
.end method

.method private isBasicChar(I)Z
    .registers 4
    .parameter "codePoint"

    .prologue
    const/4 v0, 0x1

    .line 724
    invoke-static {p1}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->charWidth(I)I

    move-result v1

    if-ne v1, v0, :cond_e

    invoke-static {p1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    if-ne v1, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public blockCopy(IIIIII)V
    .registers 31
    .parameter "sx"
    .parameter "sy"
    .parameter "w"
    .parameter "h"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 381
    if-ltz p1, :cond_28

    add-int v3, p1, p3

    move-object/from16 v0, p0

    iget v4, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColumns:I

    if-gt v3, v4, :cond_28

    if-ltz p2, :cond_28

    add-int v3, p2, p4

    move-object/from16 v0, p0

    iget v4, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    if-gt v3, v4, :cond_28

    if-ltz p5, :cond_28

    add-int v3, p5, p3

    move-object/from16 v0, p0

    iget v4, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColumns:I

    if-gt v3, v4, :cond_28

    if-ltz p6, :cond_28

    add-int v3, p6, p4

    move-object/from16 v0, p0

    iget v4, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    if-le v3, v4, :cond_2e

    .line 384
    :cond_28
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 386
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 387
    .local v18, lines:[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v13, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColor:[[B

    .line 388
    .local v13, color:[[B
    move/from16 v0, p2

    move/from16 v1, p6

    if-le v0, v1, :cond_139

    .line 390
    const/16 v22, 0x0

    .local v22, y:I
    :goto_40
    move/from16 v0, v22

    move/from16 v1, p4

    if-ge v0, v1, :cond_238

    .line 391
    add-int v3, p2, v22

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result v19

    .line 392
    .local v19, srcRow:I
    add-int v3, p6, v22

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result v16

    .line 393
    .local v16, dstRow:I
    aget-object v3, v18, v19

    instance-of v3, v3, [C

    if-eqz v3, :cond_7a

    aget-object v3, v18, v16

    instance-of v3, v3, [C

    if-eqz v3, :cond_7a

    .line 394
    aget-object v3, v18, v19

    aget-object v4, v18, v16

    move/from16 v0, p1

    move/from16 v1, p5

    move/from16 v2, p3

    invoke-static {v3, v0, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 424
    :cond_6f
    aget-object v3, v13, v19

    if-nez v3, :cond_f2

    aget-object v3, v13, v16

    if-nez v3, :cond_f2

    .line 390
    :cond_77
    :goto_77
    add-int/lit8 v22, v22, 0x1

    goto :goto_40

    .line 397
    :cond_7a
    add-int v5, p6, v22

    .line 398
    .local v5, extDstRow:I
    add-int v3, p2, v22

    add-int v4, p1, p3

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v3, v1, v4}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->getLine(III)[C

    move-result-object v20

    .line 399
    .local v20, tmp:[C
    if-nez v20, :cond_9f

    .line 401
    const/4 v7, 0x1

    const/16 v8, 0x20

    move-object/from16 v0, p0

    iget v9, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mDefaultForeColor:I

    move-object/from16 v0, p0

    iget v10, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mDefaultBackColor:I

    move-object/from16 v3, p0

    move/from16 v4, p5

    move/from16 v6, p3

    invoke-virtual/range {v3 .. v10}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->blockSet(IIIIIII)V

    goto :goto_77

    .line 404
    :cond_9f
    const/4 v11, 0x0

    .line 405
    .local v11, cHigh:C
    const/16 v21, 0x0

    .line 406
    .local v21, x:I
    move-object/from16 v0, p0

    iget v14, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColumns:I

    .line 407
    .local v14, columns:I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_a8
    move-object/from16 v0, v20

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_6f

    .line 408
    aget-char v3, v20, v17

    if-eqz v3, :cond_6f

    add-int v3, p5, v21

    if-ge v3, v14, :cond_6f

    .line 411
    aget-char v3, v20, v17

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_c4

    .line 412
    aget-char v11, v20, v17

    .line 407
    :goto_c1
    add-int/lit8 v17, v17, 0x1

    goto :goto_a8

    .line 414
    :cond_c4
    aget-char v3, v20, v17

    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_e0

    .line 415
    aget-char v3, v20, v17

    invoke-static {v11, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v12

    .line 416
    .local v12, codePoint:I
    add-int v3, p5, v21

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v12}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->setChar(III)Z

    .line 417
    invoke-static {v12}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->charWidth(I)I

    move-result v3

    add-int v21, v21, v3

    .line 418
    goto :goto_c1

    .line 419
    .end local v12           #codePoint:I
    :cond_e0
    add-int v3, p5, v21

    aget-char v4, v20, v17

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v4}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->setChar(III)Z

    .line 420
    aget-char v3, v20, v17

    invoke-static {v3}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->charWidth(I)I

    move-result v3

    add-int v21, v21, v3

    goto :goto_c1

    .line 426
    .end local v5           #extDstRow:I
    .end local v11           #cHigh:C
    .end local v14           #columns:I
    .end local v17           #i:I
    .end local v20           #tmp:[C
    .end local v21           #x:I
    :cond_f2
    aget-object v3, v13, v19

    if-nez v3, :cond_117

    aget-object v3, v13, v16

    if-eqz v3, :cond_117

    .line 427
    move-object/from16 v0, p0

    iget v3, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mDefaultForeColor:I

    move-object/from16 v0, p0

    iget v4, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mDefaultBackColor:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->encodeColor(II)B

    move-result v15

    .line 428
    .local v15, defaultColor:B
    move/from16 v21, p5

    .restart local v21       #x:I
    :goto_10a
    add-int v3, p5, p3

    move/from16 v0, v21

    if-ge v0, v3, :cond_77

    .line 429
    aget-object v3, v13, v16

    aput-byte v15, v3, v21

    .line 428
    add-int/lit8 v21, v21, 0x1

    goto :goto_10a

    .line 432
    .end local v15           #defaultColor:B
    .end local v21           #x:I
    :cond_117
    aget-object v3, v13, v19

    if-eqz v3, :cond_12a

    aget-object v3, v13, v16

    if-nez v3, :cond_12a

    .line 433
    move-object/from16 v0, p0

    iget v3, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColumns:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v3}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->allocateColor(II)[B

    .line 435
    :cond_12a
    aget-object v3, v13, v19

    aget-object v4, v13, v16

    move/from16 v0, p1

    move/from16 v1, p5

    move/from16 v2, p3

    invoke-static {v3, v0, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_77

    .line 439
    .end local v16           #dstRow:I
    .end local v19           #srcRow:I
    .end local v22           #y:I
    :cond_139
    const/16 v22, 0x0

    .restart local v22       #y:I
    :goto_13b
    move/from16 v0, v22

    move/from16 v1, p4

    if-ge v0, v1, :cond_238

    .line 440
    add-int/lit8 v3, v22, 0x1

    sub-int v23, p4, v3

    .line 441
    .local v23, y2:I
    add-int v3, p2, v23

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result v19

    .line 442
    .restart local v19       #srcRow:I
    add-int v3, p6, v23

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result v16

    .line 443
    .restart local v16       #dstRow:I
    aget-object v3, v18, v19

    instance-of v3, v3, [C

    if-eqz v3, :cond_179

    aget-object v3, v18, v16

    instance-of v3, v3, [C

    if-eqz v3, :cond_179

    .line 444
    aget-object v3, v18, v19

    aget-object v4, v18, v16

    move/from16 v0, p1

    move/from16 v1, p5

    move/from16 v2, p3

    invoke-static {v3, v0, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 473
    :cond_16e
    aget-object v3, v13, v19

    if-nez v3, :cond_1f1

    aget-object v3, v13, v16

    if-nez v3, :cond_1f1

    .line 439
    :cond_176
    :goto_176
    add-int/lit8 v22, v22, 0x1

    goto :goto_13b

    .line 446
    :cond_179
    add-int v5, p6, v23

    .line 447
    .restart local v5       #extDstRow:I
    add-int v3, p2, v23

    add-int v4, p1, p3

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v3, v1, v4}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->getLine(III)[C

    move-result-object v20

    .line 448
    .restart local v20       #tmp:[C
    if-nez v20, :cond_19e

    .line 450
    const/4 v7, 0x1

    const/16 v8, 0x20

    move-object/from16 v0, p0

    iget v9, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mDefaultForeColor:I

    move-object/from16 v0, p0

    iget v10, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mDefaultBackColor:I

    move-object/from16 v3, p0

    move/from16 v4, p5

    move/from16 v6, p3

    invoke-virtual/range {v3 .. v10}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->blockSet(IIIIIII)V

    goto :goto_176

    .line 453
    :cond_19e
    const/4 v11, 0x0

    .line 454
    .restart local v11       #cHigh:C
    const/16 v21, 0x0

    .line 455
    .restart local v21       #x:I
    move-object/from16 v0, p0

    iget v14, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColumns:I

    .line 456
    .restart local v14       #columns:I
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_1a7
    move-object/from16 v0, v20

    array-length v3, v0

    move/from16 v0, v17

    if-ge v0, v3, :cond_16e

    .line 457
    aget-char v3, v20, v17

    if-eqz v3, :cond_16e

    add-int v3, p5, v21

    if-ge v3, v14, :cond_16e

    .line 460
    aget-char v3, v20, v17

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_1c3

    .line 461
    aget-char v11, v20, v17

    .line 456
    :goto_1c0
    add-int/lit8 v17, v17, 0x1

    goto :goto_1a7

    .line 463
    :cond_1c3
    aget-char v3, v20, v17

    invoke-static {v3}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_1df

    .line 464
    aget-char v3, v20, v17

    invoke-static {v11, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v12

    .line 465
    .restart local v12       #codePoint:I
    add-int v3, p5, v21

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v12}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->setChar(III)Z

    .line 466
    invoke-static {v12}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->charWidth(I)I

    move-result v3

    add-int v21, v21, v3

    .line 467
    goto :goto_1c0

    .line 468
    .end local v12           #codePoint:I
    :cond_1df
    add-int v3, p5, v21

    aget-char v4, v20, v17

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v4}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->setChar(III)Z

    .line 469
    aget-char v3, v20, v17

    invoke-static {v3}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->charWidth(I)I

    move-result v3

    add-int v21, v21, v3

    goto :goto_1c0

    .line 475
    .end local v5           #extDstRow:I
    .end local v11           #cHigh:C
    .end local v14           #columns:I
    .end local v17           #i:I
    .end local v20           #tmp:[C
    .end local v21           #x:I
    :cond_1f1
    aget-object v3, v13, v19

    if-nez v3, :cond_216

    aget-object v3, v13, v16

    if-eqz v3, :cond_216

    .line 476
    move-object/from16 v0, p0

    iget v3, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mDefaultForeColor:I

    move-object/from16 v0, p0

    iget v4, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mDefaultBackColor:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->encodeColor(II)B

    move-result v15

    .line 477
    .restart local v15       #defaultColor:B
    move/from16 v21, p5

    .restart local v21       #x:I
    :goto_209
    add-int v3, p5, p3

    move/from16 v0, v21

    if-ge v0, v3, :cond_176

    .line 478
    aget-object v3, v13, v16

    aput-byte v15, v3, v21

    .line 477
    add-int/lit8 v21, v21, 0x1

    goto :goto_209

    .line 481
    .end local v15           #defaultColor:B
    .end local v21           #x:I
    :cond_216
    aget-object v3, v13, v19

    if-eqz v3, :cond_229

    aget-object v3, v13, v16

    if-nez v3, :cond_229

    .line 482
    move-object/from16 v0, p0

    iget v3, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColumns:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v3}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->allocateColor(II)[B

    .line 484
    :cond_229
    aget-object v3, v13, v19

    aget-object v4, v13, v16

    move/from16 v0, p1

    move/from16 v1, p5

    move/from16 v2, p3

    invoke-static {v3, v0, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_176

    .line 487
    .end local v16           #dstRow:I
    .end local v19           #srcRow:I
    .end local v23           #y2:I
    :cond_238
    return-void
.end method

.method public blockSet(IIIIIII)V
    .registers 16
    .parameter "sx"
    .parameter "sy"
    .parameter "w"
    .parameter "h"
    .parameter "val"
    .parameter "foreColor"
    .parameter "backColor"

    .prologue
    .line 503
    if-ltz p1, :cond_10

    add-int v0, p1, p3

    iget v1, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColumns:I

    if-gt v0, v1, :cond_10

    if-ltz p2, :cond_10

    add-int v0, p2, p4

    iget v1, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    if-le v0, v1, :cond_6e

    .line 504
    :cond_10
    const-string v0, "UnicodeTranscript"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal arguments! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColumns:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 508
    :cond_6e
    const/4 v7, 0x0

    .local v7, y:I
    :goto_6f
    if-ge v7, p4, :cond_85

    .line 509
    const/4 v6, 0x0

    .local v6, x:I
    :goto_72
    if-ge v6, p3, :cond_82

    .line 510
    add-int v1, p1, v6

    add-int v2, p2, v7

    move-object v0, p0

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->setChar(IIIII)Z

    .line 509
    add-int/lit8 v6, v6, 0x1

    goto :goto_72

    .line 508
    :cond_82
    add-int/lit8 v7, v7, 0x1

    goto :goto_6f

    .line 513
    .end local v6           #x:I
    :cond_85
    return-void
.end method

.method public getActiveRows()I
    .registers 3

    .prologue
    .line 100
    iget v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    iget v1, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getActiveTranscriptRows()I
    .registers 2

    .prologue
    .line 96
    iget v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    return v0
.end method

.method public getBackColor(II)I
    .registers 4
    .parameter "row"
    .parameter "column"

    .prologue
    .line 711
    iget v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    neg-int v0, v0

    if-lt p1, v0, :cond_b

    iget v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_11

    .line 712
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 714
    :cond_11
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result p1

    .line 716
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColor:[[B

    aget-object v0, v0, p1

    if-nez v0, :cond_1e

    .line 717
    iget v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mDefaultBackColor:I

    .line 719
    :goto_1d
    return v0

    :cond_1e
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColor:[[B

    aget-object v0, v0, p1

    aget-byte v0, v0, p2

    and-int/lit8 v0, v0, 0xf

    goto :goto_1d
.end method

.method public getChar(II)Z
    .registers 4
    .parameter "row"
    .parameter "column"

    .prologue
    .line 663
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->getChar(III)Z

    move-result v0

    return v0
.end method

.method public getChar(III)Z
    .registers 10
    .parameter "row"
    .parameter "column"
    .parameter "charIndex"

    .prologue
    .line 667
    const/4 v0, 0x1

    new-array v4, v0, [C

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->getChar(III[CI)Z

    move-result v0

    return v0
.end method

.method public getChar(III[CI)Z
    .registers 8
    .parameter "row"
    .parameter "column"
    .parameter "charIndex"
    .parameter "out"
    .parameter "offset"

    .prologue
    .line 681
    iget v1, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    neg-int v1, v1

    if-lt p1, v1, :cond_b

    iget v1, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_11

    .line 682
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 684
    :cond_11
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result p1

    .line 686
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    aget-object v1, v1, p1

    instance-of v1, v1, [C

    if-eqz v1, :cond_2c

    .line 688
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    aget-object v1, v1, p1

    check-cast v1, [C

    move-object v0, v1

    check-cast v0, [C

    .line 689
    .local v0, line:[C
    aget-char v1, v0, p2

    aput-char v1, p4, p5

    .line 690
    const/4 v1, 0x0

    .line 694
    .end local v0           #line:[C
    :goto_2b
    return v1

    .line 693
    :cond_2c
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    aget-object v0, v1, p1

    check-cast v0, Ljackpal/androidterm/emulatorview/FullUnicodeLine;

    .line 694
    .local v0, line:Ljackpal/androidterm/emulatorview/FullUnicodeLine;
    invoke-virtual {v0, p2, p3, p4, p5}, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->getChar(II[CI)Z

    move-result v1

    goto :goto_2b
.end method

.method public getDefaultBackColor()I
    .registers 2

    .prologue
    .line 88
    iget v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mDefaultBackColor:I

    return v0
.end method

.method public getDefaultColorsEncoded()B
    .registers 3

    .prologue
    .line 92
    iget v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mDefaultForeColor:I

    iget v1, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mDefaultBackColor:I

    invoke-direct {p0, v0, v1}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->encodeColor(II)B

    move-result v0

    return v0
.end method

.method public getDefaultForeColor()I
    .registers 2

    .prologue
    .line 84
    iget v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mDefaultForeColor:I

    return v0
.end method

.method public getForeColor(II)I
    .registers 4
    .parameter "row"
    .parameter "column"

    .prologue
    .line 698
    iget v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    neg-int v0, v0

    if-lt p1, v0, :cond_b

    iget v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_11

    .line 699
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 701
    :cond_11
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result p1

    .line 703
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColor:[[B

    aget-object v0, v0, p1

    if-nez v0, :cond_1e

    .line 704
    iget v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mDefaultForeColor:I

    .line 706
    :goto_1d
    return v0

    :cond_1e
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColor:[[B

    aget-object v0, v0, p1

    aget-byte v0, v0, p2

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    goto :goto_1d
.end method

.method public getLine(I)[C
    .registers 4
    .parameter "row"

    .prologue
    .line 637
    const/4 v0, 0x0

    iget v1, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColumns:I

    invoke-virtual {p0, p1, v0, v1}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->getLine(III)[C

    move-result-object v0

    return-object v0
.end method

.method public getLine(III)[C
    .registers 11
    .parameter "row"
    .parameter "x1"
    .parameter "x2"

    .prologue
    const/4 v6, 0x0

    .line 591
    iget v4, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    neg-int v4, v4

    if-lt p1, v4, :cond_c

    iget v4, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    add-int/lit8 v4, v4, -0x1

    if-le p1, v4, :cond_12

    .line 592
    :cond_c
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 595
    :cond_12
    iget v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColumns:I

    .line 596
    .local v0, columns:I
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result p1

    .line 597
    iget-object v4, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    aget-object v4, v4, p1

    if-nez v4, :cond_20

    .line 599
    const/4 v4, 0x0

    .line 633
    :goto_1f
    return-object v4

    .line 601
    :cond_20
    iget-object v4, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    aget-object v4, v4, p1

    instance-of v4, v4, [C

    if-eqz v4, :cond_58

    .line 603
    if-nez p2, :cond_35

    if-ne p3, v0, :cond_35

    .line 605
    iget-object v4, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    aget-object v4, v4, p1

    check-cast v4, [C

    check-cast v4, [C

    goto :goto_1f

    .line 607
    :cond_35
    iget-object v4, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->tmpLine:[C

    if-eqz v4, :cond_40

    iget-object v4, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->tmpLine:[C

    array-length v4, v4

    add-int/lit8 v5, v0, 0x1

    if-ge v4, v5, :cond_46

    .line 608
    :cond_40
    add-int/lit8 v4, v0, 0x1

    new-array v4, v4, [C

    iput-object v4, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->tmpLine:[C

    .line 610
    :cond_46
    sub-int v1, p3, p2

    .line 611
    .local v1, length:I
    iget-object v4, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    aget-object v4, v4, p1

    iget-object v5, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->tmpLine:[C

    invoke-static {v4, p2, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 612
    iget-object v4, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->tmpLine:[C

    aput-char v6, v4, v1

    .line 613
    iget-object v4, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->tmpLine:[C

    goto :goto_1f

    .line 618
    .end local v1           #length:I
    :cond_58
    iget-object v4, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    aget-object v2, v4, p1

    check-cast v2, Ljackpal/androidterm/emulatorview/FullUnicodeLine;

    .line 619
    .local v2, line:Ljackpal/androidterm/emulatorview/FullUnicodeLine;
    invoke-virtual {v2}, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->getLine()[C

    move-result-object v3

    .line 620
    .local v3, rawLine:[C
    invoke-virtual {v2, p2}, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->findStartOfColumn(I)I

    move-result p2

    .line 621
    if-ge p3, v0, :cond_8b

    .line 622
    invoke-virtual {v2, p3}, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->findStartOfColumn(I)I

    move-result p3

    .line 626
    :goto_6c
    sub-int v1, p3, p2

    .line 628
    .restart local v1       #length:I
    iget-object v4, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->tmpLine:[C

    if-eqz v4, :cond_79

    iget-object v4, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->tmpLine:[C

    array-length v4, v4

    add-int/lit8 v5, v1, 0x1

    if-ge v4, v5, :cond_7f

    .line 629
    :cond_79
    add-int/lit8 v4, v1, 0x1

    new-array v4, v4, [C

    iput-object v4, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->tmpLine:[C

    .line 631
    :cond_7f
    iget-object v4, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->tmpLine:[C

    invoke-static {v3, p2, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 632
    iget-object v4, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->tmpLine:[C

    aput-char v6, v4, v1

    .line 633
    iget-object v4, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->tmpLine:[C

    goto :goto_1f

    .line 624
    .end local v1           #length:I
    :cond_8b
    invoke-virtual {v2}, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->getSpaceUsed()I

    move-result p3

    goto :goto_6c
.end method

.method public getLineColor(I)[B
    .registers 4
    .parameter "row"

    .prologue
    .line 659
    const/4 v0, 0x0

    iget v1, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColumns:I

    invoke-virtual {p0, p1, v0, v1}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->getLineColor(III)[B

    move-result-object v0

    return-object v0
.end method

.method public getLineColor(III)[B
    .registers 8
    .parameter "row"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 641
    iget v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    neg-int v0, v0

    if-lt p1, v0, :cond_b

    iget v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_11

    .line 642
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 645
    :cond_11
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result p1

    .line 646
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColor:[[B

    aget-object v0, v0, p1

    if-eqz v0, :cond_35

    .line 647
    if-nez p2, :cond_26

    iget v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColumns:I

    if-ne p3, v0, :cond_26

    .line 648
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColor:[[B

    aget-object v0, v0, p1

    .line 654
    :goto_25
    return-object v0

    .line 651
    :cond_26
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColor:[[B

    aget-object v0, v0, p1

    iget-object v1, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->tmpColor:[B

    const/4 v2, 0x0

    sub-int v3, p3, p2

    invoke-static {v0, p2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 652
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->tmpColor:[B

    goto :goto_25

    .line 654
    :cond_35
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public getLineWrap(I)Z
    .registers 4
    .parameter "row"

    .prologue
    .line 142
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLineWrap:[Z

    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result v1

    aget-boolean v0, v0, v1

    return v0
.end method

.method public resize(II[I)Z
    .registers 21
    .parameter "newColumns"
    .parameter "newRows"
    .parameter "cursor"

    .prologue
    .line 157
    move-object/from16 v0, p0

    iget v15, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColumns:I

    move/from16 v0, p1

    if-ne v0, v15, :cond_10

    move-object/from16 v0, p0

    iget v15, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mTotalRows:I

    move/from16 v0, p2

    if-le v0, v15, :cond_12

    .line 158
    :cond_10
    const/4 v15, 0x0

    .line 245
    :goto_11
    return v15

    .line 161
    :cond_12
    move-object/from16 v0, p0

    iget v12, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    .line 162
    .local v12, screenRows:I
    move-object/from16 v0, p0

    iget v2, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    .line 163
    .local v2, activeTranscriptRows:I
    sub-int v13, v12, p2

    .line 164
    .local v13, shift:I
    neg-int v15, v2

    if-ge v13, v15, :cond_85

    .line 166
    move-object/from16 v0, p0

    iget-object v10, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    .line 167
    .local v10, lines:[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v3, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColor:[[B

    .line 168
    .local v3, color:[[B
    move-object/from16 v0, p0

    iget-object v9, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLineWrap:[Z

    .line 169
    .local v9, lineWrap:[Z
    move-object/from16 v0, p0

    iget v11, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenFirstRow:I

    .line 170
    .local v11, screenFirstRow:I
    move-object/from16 v0, p0

    iget v14, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mTotalRows:I

    .line 171
    .local v14, totalRows:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_34
    sub-int v15, v2, v13

    if-ge v4, v15, :cond_49

    .line 172
    add-int v15, v11, v12

    add-int/2addr v15, v4

    rem-int v5, v15, v14

    .line 173
    .local v5, index:I
    const/4 v15, 0x0

    aput-object v15, v10, v5

    .line 174
    const/4 v15, 0x0

    aput-object v15, v3, v5

    .line 175
    const/4 v15, 0x0

    aput-boolean v15, v9, v5

    .line 171
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 177
    .end local v5           #index:I
    :cond_49
    neg-int v13, v2

    .line 229
    .end local v3           #color:[[B
    .end local v4           #i:I
    .end local v9           #lineWrap:[Z
    .end local v10           #lines:[Ljava/lang/Object;
    .end local v11           #screenFirstRow:I
    .end local v14           #totalRows:I
    :cond_4a
    :goto_4a
    if-gtz v13, :cond_59

    if-gez v13, :cond_dd

    move-object/from16 v0, p0

    iget v15, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenFirstRow:I

    neg-int v0, v13

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v15, v0, :cond_dd

    .line 231
    :cond_59
    move-object/from16 v0, p0

    iget v15, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenFirstRow:I

    add-int/2addr v15, v13

    move-object/from16 v0, p0

    iget v0, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mTotalRows:I

    move/from16 v16, v0

    rem-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenFirstRow:I

    .line 237
    :cond_6a
    :goto_6a
    move-object/from16 v0, p0

    iget v15, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    add-int/2addr v15, v13

    if-gez v15, :cond_f2

    .line 238
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    .line 242
    :goto_76
    const/4 v15, 0x1

    aget v16, p3, v15

    sub-int v16, v16, v13

    aput v16, p3, v15

    .line 243
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    .line 245
    const/4 v15, 0x1

    goto :goto_11

    .line 178
    :cond_85
    if-lez v13, :cond_4a

    const/4 v15, 0x1

    aget v15, p3, v15

    add-int/lit8 v16, v12, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_4a

    .line 181
    move-object/from16 v0, p0

    iget-object v10, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    .line 182
    .restart local v10       #lines:[Ljava/lang/Object;
    add-int/lit8 v4, v12, -0x1

    .restart local v4       #i:I
    :goto_96
    const/4 v15, 0x1

    aget v15, p3, v15

    if-le v4, v15, :cond_4a

    .line 183
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result v5

    .line 184
    .restart local v5       #index:I
    aget-object v15, v10, v5

    if-nez v15, :cond_ac

    .line 186
    add-int/lit8 v13, v13, -0x1

    .line 187
    if-eqz v13, :cond_4a

    .line 182
    :cond_a9
    add-int/lit8 v4, v4, -0x1

    goto :goto_96

    .line 195
    :cond_ac
    aget-object v15, v10, v5

    instance-of v15, v15, [C

    if-eqz v15, :cond_c9

    .line 196
    aget-object v15, v10, v5

    check-cast v15, [C

    move-object v8, v15

    check-cast v8, [C

    .line 201
    .local v8, line:[C
    :goto_b9
    array-length v7, v8

    .line 203
    .local v7, len:I
    const/4 v6, 0x0

    .local v6, j:I
    :goto_bb
    if-ge v6, v7, :cond_c2

    .line 204
    aget-char v15, v8, v6

    if-nez v15, :cond_d2

    .line 206
    move v6, v7

    .line 214
    :cond_c2
    if-ne v6, v7, :cond_4a

    .line 216
    add-int/lit8 v13, v13, -0x1

    .line 217
    if-nez v13, :cond_a9

    goto :goto_4a

    .line 198
    .end local v6           #j:I
    .end local v7           #len:I
    .end local v8           #line:[C
    :cond_c9
    aget-object v15, v10, v5

    check-cast v15, Ljackpal/androidterm/emulatorview/FullUnicodeLine;

    invoke-virtual {v15}, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->getLine()[C

    move-result-object v8

    .restart local v8       #line:[C
    goto :goto_b9

    .line 208
    .restart local v6       #j:I
    .restart local v7       #len:I
    :cond_d2
    aget-char v15, v8, v6

    const/16 v16, 0x20

    move/from16 v0, v16

    if-ne v15, v0, :cond_c2

    .line 203
    add-int/lit8 v6, v6, 0x1

    goto :goto_bb

    .line 232
    .end local v4           #i:I
    .end local v5           #index:I
    .end local v6           #j:I
    .end local v7           #len:I
    .end local v8           #line:[C
    .end local v10           #lines:[Ljava/lang/Object;
    :cond_dd
    if-gez v13, :cond_6a

    .line 234
    move-object/from16 v0, p0

    iget v15, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mTotalRows:I

    move-object/from16 v0, p0

    iget v0, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenFirstRow:I

    move/from16 v16, v0

    add-int v15, v15, v16

    add-int/2addr v15, v13

    move-object/from16 v0, p0

    iput v15, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenFirstRow:I

    goto/16 :goto_6a

    .line 240
    :cond_f2
    move-object/from16 v0, p0

    iget v15, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    add-int/2addr v15, v13

    move-object/from16 v0, p0

    iput v15, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    goto/16 :goto_76
.end method

.method public scroll(II)V
    .registers 20
    .parameter "topMargin"
    .parameter "bottomMargin"

    .prologue
    .line 301
    add-int/lit8 v15, p2, -0x1

    move/from16 v0, p1

    if-le v0, v15, :cond_c

    .line 302
    new-instance v15, Ljava/lang/IllegalArgumentException;

    invoke-direct {v15}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v15

    .line 305
    :cond_c
    if-gez p1, :cond_14

    .line 306
    new-instance v15, Ljava/lang/IllegalArgumentException;

    invoke-direct {v15}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v15

    .line 309
    :cond_14
    move-object/from16 v0, p0

    iget v15, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    move/from16 v0, p2

    if-le v0, v15, :cond_22

    .line 310
    new-instance v15, Ljava/lang/IllegalArgumentException;

    invoke-direct {v15}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v15

    .line 313
    :cond_22
    move-object/from16 v0, p0

    iget v8, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    .line 314
    .local v8, screenRows:I
    move-object/from16 v0, p0

    iget v14, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mTotalRows:I

    .line 316
    .local v14, totalRows:I
    if-nez p1, :cond_70

    move/from16 v0, p2

    if-ne v0, v8, :cond_70

    .line 318
    move-object/from16 v0, p0

    iget v15, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenFirstRow:I

    add-int/lit8 v15, v15, 0x1

    rem-int/2addr v15, v14

    move-object/from16 v0, p0

    iput v15, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenFirstRow:I

    .line 319
    move-object/from16 v0, p0

    iget v15, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    sub-int v16, v14, v8

    move/from16 v0, v16

    if-ge v15, v0, :cond_4f

    .line 320
    move-object/from16 v0, p0

    iget v15, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    .line 324
    :cond_4f
    add-int/lit8 v15, p2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result v2

    .line 325
    .local v2, blankRow:I
    move-object/from16 v0, p0

    iget-object v15, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v16, v15, v2

    .line 326
    move-object/from16 v0, p0

    iget-object v15, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColor:[[B

    const/16 v16, 0x0

    aput-object v16, v15, v2

    .line 327
    move-object/from16 v0, p0

    iget-object v15, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLineWrap:[Z

    const/16 v16, 0x0

    aput-boolean v16, v15, v2

    .line 364
    :goto_6f
    return-void

    .line 332
    .end local v2           #blankRow:I
    :cond_70
    move-object/from16 v0, p0

    iget v7, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenFirstRow:I

    .line 333
    .local v7, screenFirstRow:I
    sub-int v10, p2, p1

    .line 334
    .local v10, scrollLen:I
    invoke-direct/range {p0 .. p1}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result v13

    .line 335
    .local v13, topMarginInt:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result v3

    .line 340
    .local v3, bottomMarginInt:I
    move-object/from16 v0, p0

    iget-object v6, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    .line 341
    .local v6, lines:[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v4, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColor:[[B

    .line 342
    .local v4, color:[[B
    move-object/from16 v0, p0

    iget-object v5, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLineWrap:[Z

    .line 343
    .local v5, lineWrap:[Z
    aget-object v11, v6, v13

    .line 344
    .local v11, scrollLine:Ljava/lang/Object;
    aget-object v9, v4, v13

    .line 345
    .local v9, scrollColor:[B
    aget-boolean v12, v5, v13

    .line 346
    .local v12, scrollLineWrap:Z
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v7, v1, v15}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->blockCopyLines(III)V

    .line 347
    sub-int v15, v8, p2

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v3, v15, v1}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->blockCopyLines(III)V

    .line 348
    aput-object v11, v6, v7

    .line 349
    aput-object v9, v4, v7

    .line 350
    aput-boolean v12, v5, v7

    .line 353
    add-int/lit8 v15, v7, 0x1

    rem-int/2addr v15, v14

    move-object/from16 v0, p0

    iput v15, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenFirstRow:I

    .line 354
    move-object/from16 v0, p0

    iget v15, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    sub-int v16, v14, v8

    move/from16 v0, v16

    if-ge v15, v0, :cond_c8

    .line 355
    move-object/from16 v0, p0

    iget v15, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mActiveTranscriptRows:I

    .line 359
    :cond_c8
    add-int/lit8 v15, p2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result v2

    .line 360
    .restart local v2       #blankRow:I
    const/4 v15, 0x0

    aput-object v15, v6, v2

    .line 361
    const/4 v15, 0x0

    aput-object v15, v4, v2

    .line 362
    const/4 v15, 0x0

    aput-boolean v15, v5, v2

    goto :goto_6f
.end method

.method public setChar(III)Z
    .registers 9
    .parameter "column"
    .parameter "row"
    .parameter "codePoint"

    .prologue
    const/4 v4, 0x1

    .line 779
    iget v2, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    if-ge p2, v2, :cond_9

    iget v2, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColumns:I

    if-lt p1, v2, :cond_49

    .line 780
    :cond_9
    const-string v2, "UnicodeTranscript"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal arguments! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mScreenRows:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColumns:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 783
    :cond_49
    invoke-direct {p0, p2}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result p2

    .line 789
    const/4 v0, -0x1

    .line 792
    .local v0, basicMode:I
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    aget-object v2, v2, p2

    if-nez v2, :cond_60

    .line 793
    invoke-direct {p0, p3}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->isBasicChar(I)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 794
    iget v2, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColumns:I

    invoke-direct {p0, p2, v2}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->allocateBasicLine(II)[C

    .line 795
    const/4 v0, 0x1

    .line 802
    :cond_60
    :goto_60
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    aget-object v2, v2, p2

    instance-of v2, v2, [C

    if-eqz v2, :cond_93

    .line 803
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    aget-object v2, v2, p2

    check-cast v2, [C

    move-object v1, v2

    check-cast v1, [C

    .line 805
    .local v1, line:[C
    const/4 v2, -0x1

    if-ne v0, v2, :cond_7b

    .line 806
    invoke-direct {p0, p3}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->isBasicChar(I)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 807
    const/4 v0, 0x1

    .line 813
    :cond_7b
    :goto_7b
    if-ne v0, v4, :cond_8a

    .line 815
    int-to-char v2, p3

    aput-char v2, v1, p1

    .line 825
    .end local v1           #line:[C
    :goto_80
    return v4

    .line 797
    :cond_81
    iget v2, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColumns:I

    invoke-direct {p0, p2, v2}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->allocateFullLine(II)Ljackpal/androidterm/emulatorview/FullUnicodeLine;

    .line 798
    const/4 v0, 0x0

    goto :goto_60

    .line 809
    .restart local v1       #line:[C
    :cond_88
    const/4 v0, 0x0

    goto :goto_7b

    .line 820
    :cond_8a
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    new-instance v3, Ljackpal/androidterm/emulatorview/FullUnicodeLine;

    invoke-direct {v3, v1}, Ljackpal/androidterm/emulatorview/FullUnicodeLine;-><init>([C)V

    aput-object v3, v2, p2

    .line 823
    .end local v1           #line:[C
    :cond_93
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLines:[Ljava/lang/Object;

    aget-object v1, v2, p2

    check-cast v1, Ljackpal/androidterm/emulatorview/FullUnicodeLine;

    .line 824
    .local v1, line:Ljackpal/androidterm/emulatorview/FullUnicodeLine;
    invoke-virtual {v1, p1, p3}, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->setChar(II)V

    goto :goto_80
.end method

.method public setChar(IIIII)Z
    .registers 8
    .parameter "column"
    .parameter "row"
    .parameter "codePoint"
    .parameter "foreColor"
    .parameter "backColor"

    .prologue
    .line 765
    invoke-virtual {p0, p1, p2, p3}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->setChar(III)Z

    move-result v0

    if-nez v0, :cond_8

    .line 766
    const/4 v0, 0x0

    .line 775
    :goto_7
    return v0

    .line 769
    :cond_8
    invoke-direct {p0, p2}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result p2

    .line 770
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColor:[[B

    aget-object v0, v0, p2

    if-nez v0, :cond_17

    .line 771
    iget v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColumns:I

    invoke-direct {p0, p2, v0}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->allocateColor(II)[B

    .line 773
    :cond_17
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mColor:[[B

    aget-object v0, v0, p2

    invoke-direct {p0, p4, p5}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->encodeColor(II)B

    move-result v1

    aput-byte v1, v0, p1

    .line 775
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public setDefaultColors(II)V
    .registers 3
    .parameter "foreColor"
    .parameter "backColor"

    .prologue
    .line 79
    iput p1, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mDefaultForeColor:I

    .line 80
    iput p2, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mDefaultBackColor:I

    .line 81
    return-void
.end method

.method public setLineWrap(I)V
    .registers 5
    .parameter "row"

    .prologue
    .line 138
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->mLineWrap:[Z

    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->externalToInternalRow(I)I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 139
    return-void
.end method
