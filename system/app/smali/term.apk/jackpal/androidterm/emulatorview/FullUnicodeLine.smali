.class Ljackpal/androidterm/emulatorview/FullUnicodeLine;
.super Ljava/lang/Object;
.source "UnicodeTranscript.java"


# static fields
.field private static final SPARE_CAPACITY_FACTOR:F = 1.5f


# instance fields
.field private mColumns:I

.field private mOffset:[S

.field private mText:[C


# direct methods
.method public constructor <init>(I)V
    .registers 7
    .parameter "columns"

    .prologue
    .line 849
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 850
    invoke-direct {p0, p1}, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->commonConstructor(I)V

    .line 851
    iget-object v1, p0, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->mText:[C

    .line 853
    .local v1, text:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    if-ge v0, p1, :cond_12

    .line 854
    const/16 v2, 0x20

    aput-char v2, v1, v0

    .line 853
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 857
    :cond_12
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->mOffset:[S

    const/4 v3, 0x0

    int-to-short v4, p1

    aput-short v4, v2, v3

    .line 858
    return-void
.end method

.method public constructor <init>([C)V
    .registers 5
    .parameter "basicLine"

    .prologue
    const/4 v2, 0x0

    .line 860
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 861
    array-length v0, p1

    invoke-direct {p0, v0}, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->commonConstructor(I)V

    .line 862
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->mText:[C

    iget v1, p0, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->mColumns:I

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 864
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->mOffset:[S

    array-length v1, p1

    int-to-short v1, v1

    aput-short v1, v0, v2

    .line 865
    return-void
.end method

.method private commonConstructor(I)V
    .registers 4
    .parameter "columns"

    .prologue
    .line 868
    iput p1, p0, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->mColumns:I

    .line 869
    new-array v0, p1, [S

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->mOffset:[S

    .line 870
    const/high16 v0, 0x3fc0

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    new-array v0, v0, [C

    iput-object v0, p0, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->mText:[C

    .line 871
    return-void
.end method


# virtual methods
.method public findStartOfColumn(I)I
    .registers 3
    .parameter "column"

    .prologue
    .line 882
    if-nez p1, :cond_4

    .line 883
    const/4 v0, 0x0

    .line 885
    :goto_3
    return v0

    :cond_4
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->mOffset:[S

    aget-short v0, v0, p1

    add-int/2addr v0, p1

    goto :goto_3
.end method

.method public getChar(II[CI)Z
    .registers 9
    .parameter "column"
    .parameter "charIndex"
    .parameter "out"
    .parameter "offset"

    .prologue
    .line 890
    invoke-virtual {p0, p1}, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->findStartOfColumn(I)I

    move-result v1

    .line 892
    .local v1, pos:I
    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->mColumns:I

    if-ge v2, v3, :cond_1a

    .line 893
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->findStartOfColumn(I)I

    move-result v2

    sub-int v0, v2, v1

    .line 897
    .local v0, length:I
    :goto_12
    if-lt p2, v0, :cond_21

    .line 898
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 895
    .end local v0           #length:I
    :cond_1a
    invoke-virtual {p0}, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->getSpaceUsed()I

    move-result v2

    sub-int v0, v2, v1

    .restart local v0       #length:I
    goto :goto_12

    .line 900
    :cond_21
    iget-object v2, p0, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->mText:[C

    add-int v3, v1, p2

    aget-char v2, v2, v3

    aput-char v2, p3, p4

    .line 901
    add-int/lit8 v2, p2, 0x1

    if-ge v2, v0, :cond_2f

    const/4 v2, 0x1

    :goto_2e
    return v2

    :cond_2f
    const/4 v2, 0x0

    goto :goto_2e
.end method

.method public getLine()[C
    .registers 2

    .prologue
    .line 878
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->mText:[C

    return-object v0
.end method

.method public getSpaceUsed()I
    .registers 3

    .prologue
    .line 874
    iget-object v0, p0, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->mOffset:[S

    const/4 v1, 0x0

    aget-short v0, v0, v1

    return v0
.end method

.method public setChar(II)V
    .registers 26
    .parameter "column"
    .parameter "codePoint"

    .prologue
    .line 905
    move-object/from16 v0, p0

    iget v6, v0, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->mColumns:I

    .line 906
    .local v6, columns:I
    if-ltz p1, :cond_a

    move/from16 v0, p1

    if-lt v0, v6, :cond_10

    .line 907
    :cond_a
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    .line 910
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->mText:[C

    move-object/from16 v19, v0

    .line 911
    .local v19, text:[C
    move-object/from16 v0, p0

    iget-object v13, v0, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->mOffset:[S

    .line 912
    .local v13, offset:[S
    const/16 v20, 0x0

    aget-short v18, v13, v20

    .line 914
    .local v18, spaceUsed:I
    invoke-virtual/range {p0 .. p1}, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->findStartOfColumn(I)I

    move-result v16

    .line 916
    .local v16, pos:I
    invoke-static/range {p2 .. p2}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->charWidth(I)I

    move-result v5

    .line 918
    .local v5, charWidth:I
    aget-char v20, v19, v16

    invoke-static/range {v20 .. v20}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v20

    if-eqz v20, :cond_144

    .line 919
    aget-char v20, v19, v16

    add-int/lit8 v21, v16, 0x1

    aget-char v21, v19, v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->charWidth(I)I

    move-result v14

    .line 926
    .local v14, oldCharWidth:I
    :goto_3c
    add-int v20, p1, v14

    move/from16 v0, v20

    if-ge v0, v6, :cond_14c

    .line 927
    add-int v20, p1, v14

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->findStartOfColumn(I)I

    move-result v20

    sub-int v15, v20, v16

    .line 933
    .local v15, oldLen:I
    :goto_4e
    invoke-static/range {p2 .. p2}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    .line 934
    .local v8, newLen:I
    if-nez v5, :cond_55

    .line 938
    add-int/2addr v8, v15

    .line 940
    :cond_55
    sub-int v17, v8, v15

    .line 943
    .local v17, shift:I
    if-lez v17, :cond_99

    .line 944
    add-int v20, v18, v17

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_150

    .line 946
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    add-int v20, v20, v6

    move/from16 v0, v20

    new-array v9, v0, [C

    .line 947
    .local v9, newText:[C
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v16

    invoke-static {v0, v1, v9, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 948
    add-int v20, v16, v15

    add-int v21, v16, v8

    sub-int v22, v18, v16

    sub-int v22, v22, v15

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v9, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 949
    move-object/from16 v19, v9

    move-object/from16 v0, p0

    iput-object v9, v0, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->mText:[C

    .line 956
    .end local v9           #newText:[C
    :cond_99
    :goto_99
    if-lez v5, :cond_167

    .line 957
    move/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Ljava/lang/Character;->toChars(I[CI)I

    .line 965
    :goto_a4
    if-gez v17, :cond_bb

    .line 966
    add-int v20, v16, v15

    add-int v21, v16, v8

    sub-int v22, v18, v16

    sub-int v22, v22, v15

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v19

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 970
    :cond_bb
    if-eqz v17, :cond_c8

    .line 971
    add-int v18, v18, v17

    .line 972
    const/16 v20, 0x0

    move/from16 v0, v18

    int-to-short v0, v0

    move/from16 v21, v0

    aput-short v21, v13, v20

    .line 981
    :cond_c8
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v14, v0, :cond_19a

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v5, v0, :cond_19a

    .line 983
    add-int v11, v16, v8

    .line 984
    .local v11, nextPos:I
    add-int/lit8 v20, v18, 0x1

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_174

    .line 986
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    add-int v20, v20, v6

    move/from16 v0, v20

    new-array v9, v0, [C

    .line 987
    .restart local v9       #newText:[C
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v9, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 989
    add-int/lit8 v20, v11, 0x1

    sub-int v21, v18, v11

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v11, v9, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 990
    move-object/from16 v19, v9

    move-object/from16 v0, p0

    iput-object v9, v0, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->mText:[C

    .line 994
    .end local v9           #newText:[C
    :goto_10e
    const/16 v20, 0x20

    aput-char v20, v19, v11

    .line 997
    const/16 v20, 0x0

    aget-short v21, v13, v20

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    int-to-short v0, v0

    move/from16 v21, v0

    aput-short v21, v13, v20

    .line 1000
    if-nez p1, :cond_184

    .line 1001
    const/16 v20, 0x1

    add-int/lit8 v21, v8, -0x1

    move/from16 v0, v21

    int-to-short v0, v0

    move/from16 v21, v0

    aput-short v21, v13, v20

    .line 1005
    :cond_12c
    :goto_12c
    add-int/lit8 p1, p1, 0x1

    .line 1006
    add-int/lit8 v17, v17, 0x1

    .line 1064
    .end local v11           #nextPos:I
    :cond_130
    :goto_130
    if-eqz v17, :cond_296

    .line 1065
    add-int/lit8 v7, p1, 0x1

    .local v7, i:I
    :goto_134
    if-ge v7, v6, :cond_296

    .line 1066
    aget-short v20, v13, v7

    add-int v20, v20, v17

    move/from16 v0, v20

    int-to-short v0, v0

    move/from16 v20, v0

    aput-short v20, v13, v7

    .line 1065
    add-int/lit8 v7, v7, 0x1

    goto :goto_134

    .line 921
    .end local v7           #i:I
    .end local v8           #newLen:I
    .end local v14           #oldCharWidth:I
    .end local v15           #oldLen:I
    .end local v17           #shift:I
    :cond_144
    aget-char v20, v19, v16

    invoke-static/range {v20 .. v20}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->charWidth(I)I

    move-result v14

    .restart local v14       #oldCharWidth:I
    goto/16 :goto_3c

    .line 929
    :cond_14c
    sub-int v15, v18, v16

    .restart local v15       #oldLen:I
    goto/16 :goto_4e

    .line 951
    .restart local v8       #newLen:I
    .restart local v17       #shift:I
    :cond_150
    add-int v20, v16, v15

    add-int v21, v16, v8

    sub-int v22, v18, v16

    sub-int v22, v22, v15

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v19

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_99

    .line 961
    :cond_167
    add-int v20, v16, v15

    move/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Ljava/lang/Character;->toChars(I[CI)I

    goto/16 :goto_a4

    .line 992
    .restart local v11       #nextPos:I
    :cond_174
    add-int/lit8 v20, v11, 0x1

    sub-int v21, v18, v11

    move-object/from16 v0, v19

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v11, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_10e

    .line 1002
    :cond_184
    add-int/lit8 v20, p1, 0x1

    move/from16 v0, v20

    if-ge v0, v6, :cond_12c

    .line 1003
    add-int/lit8 v20, p1, 0x1

    aget-short v21, v13, p1

    add-int v21, v21, v8

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    int-to-short v0, v0

    move/from16 v21, v0

    aput-short v21, v13, v20

    goto :goto_12c

    .line 1007
    .end local v11           #nextPos:I
    :cond_19a
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v14, v0, :cond_130

    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v5, v0, :cond_130

    .line 1008
    add-int/lit8 v20, v6, -0x1

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_1c1

    .line 1010
    const/16 v20, 0x20

    aput-char v20, v19, v16

    .line 1011
    const/16 v20, 0x0

    add-int/lit8 v21, v16, 0x1

    move/from16 v0, v21

    int-to-short v0, v0

    move/from16 v21, v0

    aput-short v21, v13, v20

    .line 1012
    const/16 v17, 0x0

    goto/16 :goto_130

    .line 1013
    :cond_1c1
    add-int/lit8 v20, v6, -0x2

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_1e5

    .line 1015
    add-int/lit8 v20, p1, 0x1

    aget-short v21, v13, p1

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    int-to-short v0, v0

    move/from16 v21, v0

    aput-short v21, v13, v20

    .line 1018
    const/16 v20, 0x0

    add-int v21, v16, v8

    move/from16 v0, v21

    int-to-short v0, v0

    move/from16 v21, v0

    aput-short v21, v13, v20

    .line 1019
    const/16 v17, 0x0

    goto/16 :goto_130

    .line 1022
    :cond_1e5
    add-int v11, v16, v8

    .line 1024
    .restart local v11       #nextPos:I
    aget-char v20, v19, v11

    invoke-static/range {v20 .. v20}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v20

    if-eqz v20, :cond_257

    .line 1025
    aget-char v20, v19, v11

    add-int/lit8 v21, v11, 0x1

    aget-char v21, v19, v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->charWidth(I)I

    move-result v12

    .line 1030
    .local v12, nextWidth:I
    :goto_1fd
    add-int v20, p1, v12

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    if-ge v0, v6, :cond_25e

    .line 1031
    add-int v20, p1, v12

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->findStartOfColumn(I)I

    move-result v20

    sub-int v10, v20, v11

    .line 1036
    .local v10, nextLen:I
    :goto_213
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v12, v0, :cond_261

    .line 1037
    const/16 v20, 0x20

    aput-char v20, v19, v11

    .line 1039
    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v10, v0, :cond_24b

    .line 1040
    add-int v20, v11, v10

    add-int/lit8 v21, v11, 0x1

    sub-int v22, v18, v11

    sub-int v22, v22, v10

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v19

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1041
    add-int/lit8 v20, v10, -0x1

    sub-int v17, v17, v20

    .line 1042
    const/16 v20, 0x0

    aget-short v21, v13, v20

    add-int/lit8 v22, v10, -0x1

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-short v0, v0

    move/from16 v21, v0

    aput-short v21, v13, v20

    .line 1054
    :cond_24b
    :goto_24b
    if-nez p1, :cond_288

    .line 1055
    const/16 v20, 0x1

    const/16 v21, -0x1

    aput-short v21, v13, v20

    .line 1059
    :goto_253
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_130

    .line 1027
    .end local v10           #nextLen:I
    .end local v12           #nextWidth:I
    :cond_257
    aget-char v20, v19, v11

    invoke-static/range {v20 .. v20}, Ljackpal/androidterm/emulatorview/UnicodeTranscript;->charWidth(I)I

    move-result v12

    .restart local v12       #nextWidth:I
    goto :goto_1fd

    .line 1033
    :cond_25e
    sub-int v10, v18, v11

    .restart local v10       #nextLen:I
    goto :goto_213

    .line 1046
    :cond_261
    add-int v20, v11, v10

    sub-int v21, v18, v11

    sub-int v21, v21, v10

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v19

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1047
    sub-int v17, v17, v10

    .line 1050
    const/16 v20, 0x0

    add-int/lit8 v21, v6, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljackpal/androidterm/emulatorview/FullUnicodeLine;->findStartOfColumn(I)I

    move-result v21

    move/from16 v0, v21

    int-to-short v0, v0

    move/from16 v21, v0

    aput-short v21, v13, v20

    goto :goto_24b

    .line 1057
    :cond_288
    add-int/lit8 v20, p1, 0x1

    aget-short v21, v13, p1

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    int-to-short v0, v0

    move/from16 v21, v0

    aput-short v21, v13, v20

    goto :goto_253

    .line 1069
    .end local v10           #nextLen:I
    .end local v11           #nextPos:I
    .end local v12           #nextWidth:I
    :cond_296
    return-void
.end method
