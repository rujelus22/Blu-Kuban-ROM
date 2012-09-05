.class Lcom/sec/android/app/calculator/CExpression;
.super Ljava/lang/Object;
.source "Logic.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/calculator/CExpression$1;
    }
.end annotation


# static fields
.field static final FACT:[D

.field static final GAMMA:[D


# instance fields
.field Cursor:I

.field private exception:Lcom/sec/android/app/calculator/SyntaxException;

.field private infixStringExp:Ljava/lang/StringBuilder;

.field private infixTokenExp:[Lcom/sec/android/app/calculator/CToken;

.field private postfixTokenExp:[Lcom/sec/android/app/calculator/CToken;

.field private value:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 261
    const/16 v0, 0xe

    new-array v0, v0, [D

    fill-array-data v0, :array_14

    sput-object v0, Lcom/sec/android/app/calculator/CExpression;->GAMMA:[D

    .line 281
    const/16 v0, 0x16

    new-array v0, v0, [D

    fill-array-data v0, :array_50

    sput-object v0, Lcom/sec/android/app/calculator/CExpression;->FACT:[D

    return-void

    .line 261
    nop

    :array_14
    .array-data 0x8
        0xcet 0xact 0xc1t 0x87t 0xfft 0x93t 0x4ct 0x40t
        0x30t 0x89t 0x5t 0xf7t 0x89t 0xcct 0x4dt 0xc0t
        0xa1t 0x22t 0x3dt 0xa2t 0xaet 0x45t 0x2ct 0x40t
        0xe4t 0xbft 0x25t 0x16t 0x84t 0x7bt 0xdft 0xbft
        0x3at 0x18t 0x86t 0x47t 0xaft 0xd2t 0x1t 0x3ft
        0xbdt 0xe3t 0xc5t 0xb7t 0x4bt 0x64t 0x8t 0x3ft
        0xb7t 0x74t 0xe5t 0x9dt 0xcct 0xc9t 0x19t 0xbft
        0x6dt 0xe6t 0xd4t 0x9et 0x93t 0xb8t 0x24t 0x3ft
        0x36t 0xbet 0x2at 0xcdt 0x4dt 0x8ft 0x2bt 0xbft
        0x26t 0xe8t 0xe9t 0x18t 0x10t 0x80t 0x2ct 0x3ft
        0x40t 0x26t 0x95t 0xc9t 0x99t 0x89t 0x25t 0xbft
        0x55t 0x3dt 0x77t 0xbt 0x36t 0x21t 0x16t 0x3ft
        0x6t 0xe2t 0xd1t 0xb5t 0x8ct 0x76t 0xfbt 0xbet
        0x10t 0x98t 0xfct 0x4t 0xat 0xf4t 0xcet 0x3et
    .end array-data

    .line 281
    :array_50
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0xf0t 0x3ft
        0x0t 0x0t 0x0t 0x0t 0x0t 0xb0t 0xe3t 0x40t
        0x0t 0x0t 0x80t 0x75t 0x77t 0x7t 0xb3t 0x42t
        0x9at 0x7bt 0x7at 0x68t 0x52t 0x6ct 0xe0t 0x44t
        0xa4t 0x33t 0xaet 0xat 0xadt 0x56t 0x49t 0x47t
        0xfet 0x98t 0x70t 0x3t 0x5dt 0xddt 0xe1t 0x49t
        0xb6t 0x2ct 0xd7t 0x78t 0x9at 0xe6t 0x9et 0x4ct
        0x3t 0x40t 0x9at 0x35t 0x93t 0x26t 0x79t 0x4ft
        0x4at 0x84t 0x34t 0xeet 0x78t 0xe4t 0x6ft 0x52t
        0xb6t 0x95t 0x66t 0x79t 0x5t 0x57t 0x7bt 0x55t
        0xfft 0xabt 0xedt 0x94t 0x90t 0x61t 0x9ct 0x58t
        0x3et 0x74t 0x30t 0x4bt 0xct 0x55t 0xd0t 0x5bt
        0x47t 0x63t 0xbdt 0xd7t 0x8dt 0x63t 0x13t 0x5ft
        0x70t 0xat 0x76t 0xb1t 0xet 0x5bt 0x66t 0x62t
        0x3t 0xe5t 0xcft 0x97t 0xc1t 0xcat 0xc7t 0x65t
        0x16t 0xd9t 0xa9t 0x80t 0x63t 0x5ft 0x36t 0x69t
        0xe5t 0xe1t 0x40t 0xc1t 0xdft 0xe5t 0xb1t 0x6ct
        0x55t 0x8t 0x3bt 0x41t 0x85t 0x91t 0x37t 0x70t
        0x7et 0x70t 0xdbt 0xfat 0x85t 0xcet 0xc8t 0x73t
        0xa3t 0xd5t 0xeft 0x3at 0x90t 0x55t 0x64t 0x77t
        0xdet 0x8et 0x92t 0x3dt 0x5ft 0x5dt 0x9t 0x7bt
        0x43t 0x3at 0x9dt 0xa7t 0x2ft 0x93t 0xb7t 0x7et
    .end array-data
.end method

.method constructor <init>()V
    .registers 5

    .prologue
    const/16 v3, 0x100

    .line 1136
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    .line 255
    new-array v1, v3, [Lcom/sec/android/app/calculator/CToken;

    iput-object v1, p0, Lcom/sec/android/app/calculator/CExpression;->infixTokenExp:[Lcom/sec/android/app/calculator/CToken;

    .line 257
    new-array v1, v3, [Lcom/sec/android/app/calculator/CToken;

    iput-object v1, p0, Lcom/sec/android/app/calculator/CExpression;->postfixTokenExp:[Lcom/sec/android/app/calculator/CToken;

    .line 259
    new-instance v1, Lcom/sec/android/app/calculator/SyntaxException;

    invoke-direct {v1}, Lcom/sec/android/app/calculator/SyntaxException;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    .line 269
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    .line 1137
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/sec/android/app/calculator/CExpression;->value:D

    .line 1138
    const/4 v0, 0x0

    .local v0, i:I
    :goto_23
    if-ge v0, v3, :cond_3a

    .line 1139
    iget-object v1, p0, Lcom/sec/android/app/calculator/CExpression;->infixTokenExp:[Lcom/sec/android/app/calculator/CToken;

    new-instance v2, Lcom/sec/android/app/calculator/CToken;

    invoke-direct {v2}, Lcom/sec/android/app/calculator/CToken;-><init>()V

    aput-object v2, v1, v0

    .line 1140
    iget-object v1, p0, Lcom/sec/android/app/calculator/CExpression;->postfixTokenExp:[Lcom/sec/android/app/calculator/CToken;

    new-instance v2, Lcom/sec/android/app/calculator/CToken;

    invoke-direct {v2}, Lcom/sec/android/app/calculator/CToken;-><init>()V

    aput-object v2, v1, v0

    .line 1138
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 1142
    :cond_3a
    return-void
.end method

.method public static final abs(D)D
    .registers 4
    .parameter "x"

    .prologue
    .line 330
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private checkingExpression(Z)V
    .registers 39
    .parameter "checkEnter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/app/calculator/SyntaxException;
        }
    .end annotation

    .prologue
    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 736
    .local v31, s:Ljava/lang/String;
    const/16 v30, 0x0

    .line 737
    .local v30, rear:C
    const/16 v29, 0x0

    .line 738
    .local v29, param_num:I
    const/16 v25, 0x0

    .line 739
    .local v25, numMax:I
    const/4 v12, 0x0

    .line 740
    .local v12, comMax:I
    const/4 v14, 0x0

    .line 741
    .local v14, dot_cnt:I
    const/4 v15, 0x0

    .line 742
    .local v15, dot_num:I
    const/16 v28, 0x0

    .line 743
    .local v28, opMax:I
    const/16 v27, 0x0

    .line 744
    .local v27, opCount:I
    const/16 v16, 0x0

    .line 745
    .local v16, factError13:Z
    const/16 v17, 0x0

    .line 746
    .local v17, factError14:Z
    const/4 v3, 0x0

    .line 747
    .local v3, Error:Z
    const/4 v4, 0x0

    .line 748
    .local v4, Error1:Z
    const/4 v7, 0x0

    .line 749
    .local v7, Error2:Z
    const/4 v8, 0x0

    .line 750
    .local v8, Error4:Z
    const/4 v9, 0x0

    .line 751
    .local v9, Error5:Z
    const/4 v5, 0x0

    .line 752
    .local v5, Error14:Z
    const/4 v6, 0x0

    .line 753
    .local v6, Error15:Z
    const/4 v10, 0x0

    .line 754
    .local v10, Etc:Z
    const/4 v13, 0x0

    .line 755
    .local v13, comflag:Z
    const/16 v26, 0x0

    .line 756
    .local v26, numflag:Z
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    .line 757
    const/16 v19, 0x0

    .local v19, i:I
    :goto_32
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v34

    move/from16 v0, v19

    move/from16 v1, v34

    if-ge v0, v1, :cond_4b

    .line 759
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    invoke-static/range {v34 .. v34}, Lcom/sec/android/app/calculator/Cmyfunc;->isCharSet(C)Z

    move-result v34

    if-nez v34, :cond_63

    .line 760
    const/4 v3, 0x1

    .line 1014
    :cond_4b
    :goto_4b
    if-nez v3, :cond_4f

    if-gez v29, :cond_655

    .line 1015
    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070001

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    .line 764
    :cond_63
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    invoke-static/range {v34 .. v34}, Lcom/sec/android/app/calculator/Cmyfunc;->isDigit(C)Z

    move-result v34

    if-nez v34, :cond_81

    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x2e

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_1ea

    .line 772
    :cond_81
    add-int/lit8 v25, v25, 0x1

    .line 773
    const/16 v26, 0x1

    .line 774
    const/16 v34, 0xf

    move/from16 v0, v25

    move/from16 v1, v34

    if-le v0, v1, :cond_8f

    .line 775
    const/4 v4, 0x1

    .line 776
    goto :goto_4b

    .line 779
    :cond_8f
    if-lez v14, :cond_10e

    .line 780
    add-int/lit8 v15, v15, 0x1

    .line 781
    const/16 v34, 0x5

    move/from16 v0, v34

    if-le v15, v0, :cond_fd

    if-nez p1, :cond_fd

    .line 782
    const/16 v34, 0x45

    move-object/from16 v0, v31

    move/from16 v1, v34

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v24

    .line 783
    .local v24, nEPos:I
    const/16 v34, -0x1

    move/from16 v0, v24

    move/from16 v1, v34

    if-ne v0, v1, :cond_e7

    const/16 v18, 0x0

    .line 786
    .local v18, hasE:Z
    :goto_b1
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x45

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_c2

    .line 787
    const/4 v14, 0x0

    .line 790
    :cond_c2
    add-int/lit8 v20, v19, 0x1

    .local v20, j:I
    :goto_c4
    move/from16 v0, v20

    move/from16 v1, v24

    if-ge v0, v1, :cond_ea

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v34

    move/from16 v0, v20

    move/from16 v1, v34

    if-ge v0, v1, :cond_ea

    .line 791
    move-object/from16 v0, v31

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    invoke-static/range {v34 .. v34}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v34

    if-nez v34, :cond_e4

    .line 792
    const/16 v18, 0x0

    .line 790
    :cond_e4
    add-int/lit8 v20, v20, 0x1

    goto :goto_c4

    .line 783
    .end local v18           #hasE:Z
    .end local v20           #j:I
    :cond_e7
    const/16 v18, 0x1

    goto :goto_b1

    .line 793
    .restart local v18       #hasE:Z
    .restart local v20       #j:I
    :cond_ea
    if-eqz v18, :cond_fa

    const/16 v34, 0x1

    move/from16 v0, v18

    move/from16 v1, v34

    if-ne v0, v1, :cond_10e

    const/16 v34, 0x9

    move/from16 v0, v34

    if-le v15, v0, :cond_10e

    .line 794
    :cond_fa
    const/4 v4, 0x1

    .line 795
    goto/16 :goto_4b

    .line 800
    .end local v18           #hasE:Z
    .end local v20           #j:I
    .end local v24           #nEPos:I
    :cond_fd
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x45

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_10e

    .line 801
    const/4 v14, 0x0

    .line 806
    :cond_10e
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x2e

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_135

    .line 808
    add-int/lit8 v14, v14, 0x1

    .line 809
    const/16 v34, 0x1

    move/from16 v0, v34

    if-gt v14, v0, :cond_132

    const-string v34, "."

    move-object/from16 v0, v34

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_135

    .line 810
    :cond_132
    const/4 v3, 0x1

    .line 811
    goto/16 :goto_4b

    .line 814
    :cond_135
    const/16 v34, 0x2e

    move/from16 v0, v30

    move/from16 v1, v34

    if-ne v0, v1, :cond_161

    .line 815
    const/4 v13, 0x1

    .line 816
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x65

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_15e

    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x3c0

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_161

    .line 817
    :cond_15e
    const/4 v3, 0x1

    .line 818
    goto/16 :goto_4b

    .line 822
    :cond_161
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x65

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_17c

    .line 823
    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/calculator/Cmyfunc;->isDigit(C)Z

    move-result v34

    if-eqz v34, :cond_17a

    .line 824
    const/4 v3, 0x1

    .line 825
    goto/16 :goto_4b

    .line 827
    :cond_17a
    const/4 v13, 0x0

    .line 828
    const/4 v12, 0x0

    .line 831
    :cond_17c
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x45

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_1a4

    .line 832
    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/calculator/Cmyfunc;->isOnlyDigit(C)Z

    move-result v34

    if-nez v34, :cond_1a2

    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070001

    add-int/lit8 v36, v19, -0x1

    invoke-virtual/range {v34 .. v36}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    .line 835
    :cond_1a2
    const/4 v13, 0x0

    .line 836
    const/4 v12, 0x0

    .line 839
    :cond_1a4
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    invoke-static/range {v34 .. v34}, Lcom/sec/android/app/calculator/Cmyfunc;->isDigit(C)Z

    move-result v34

    if-eqz v34, :cond_1d5

    .line 842
    const/16 v34, 0x65

    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_1d2

    const/16 v34, 0x21

    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_1d2

    const/16 v34, 0x25

    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_1d2

    const/16 v34, 0x3c0

    move/from16 v0, v30

    move/from16 v1, v34

    if-ne v0, v1, :cond_1d5

    .line 843
    :cond_1d2
    const/4 v8, 0x1

    .line 844
    goto/16 :goto_4b

    .line 847
    :cond_1d5
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v30

    .line 849
    if-eqz v13, :cond_1e1

    .line 850
    add-int/lit8 v12, v12, 0x1

    .line 851
    :cond_1e1
    const/16 v34, 0xa

    move/from16 v0, v34

    if-le v12, v0, :cond_270

    .line 852
    const/4 v7, 0x1

    .line 853
    goto/16 :goto_4b

    .line 857
    :cond_1ea
    const/4 v14, 0x0

    .line 858
    const/4 v15, 0x0

    .line 859
    const/4 v13, 0x0

    .line 860
    const/16 v25, 0x0

    .line 861
    const/4 v12, 0x0

    .line 862
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x28

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_237

    .line 863
    add-int/lit8 v29, v29, 0x1

    .line 865
    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/calculator/Cmyfunc;->isDigit(C)Z

    move-result v34

    if-nez v34, :cond_218

    const/16 v34, 0x29

    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_218

    const/16 v34, 0x21

    move/from16 v0, v30

    move/from16 v1, v34

    if-ne v0, v1, :cond_21b

    .line 866
    :cond_218
    const/4 v8, 0x1

    .line 867
    goto/16 :goto_4b

    .line 870
    :cond_21b
    const/16 v34, 0x2e

    move/from16 v0, v30

    move/from16 v1, v34

    if-ne v0, v1, :cond_621

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070016

    move-object/from16 v0, v34

    move/from16 v1, v35

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    .line 873
    :cond_237
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x29

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_294

    .line 875
    const/4 v13, 0x0

    .line 876
    add-int/lit8 v29, v29, -0x1

    .line 877
    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/calculator/Cmyfunc;->isDigit(C)Z

    move-result v34

    if-nez v34, :cond_270

    const/16 v34, 0x21

    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_270

    const/16 v34, 0x25

    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_270

    const/16 v34, 0x29

    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_270

    const/16 v34, 0x2e

    move/from16 v0, v30

    move/from16 v1, v34

    if-ne v0, v1, :cond_274

    .line 757
    :cond_270
    :goto_270
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_32

    .line 880
    :cond_274
    const/16 v34, 0x28

    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_282

    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/calculator/Cmyfunc;->isOprator(C)Z

    move-result v34

    if-eqz v34, :cond_285

    .line 882
    :cond_282
    const/4 v9, 0x1

    goto/16 :goto_4b

    .line 883
    :cond_285
    const/16 v34, 0xf7

    move/from16 v0, v30

    move/from16 v1, v34

    if-ne v0, v1, :cond_291

    .line 884
    const/16 v17, 0x1

    goto/16 :goto_4b

    .line 886
    :cond_291
    const/4 v3, 0x1

    .line 887
    goto/16 :goto_4b

    .line 888
    :cond_294
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x2d

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_341

    .line 889
    const/4 v13, 0x0

    .line 890
    const/4 v12, 0x0

    .line 891
    add-int/lit8 v28, v28, 0x1

    .line 892
    move/from16 v27, v19

    .line 894
    if-lez v19, :cond_2b4

    const/16 v34, 0x221a

    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_2d6

    :cond_2b4
    const/16 v34, 0x1

    move/from16 v0, v19

    move/from16 v1, v34

    if-le v0, v1, :cond_2ea

    const/16 v34, 0x28

    move/from16 v0, v30

    move/from16 v1, v34

    if-ne v0, v1, :cond_2ea

    add-int/lit8 v34, v19, -0x2

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x221a

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_2ea

    .line 896
    :cond_2d6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070006

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    .line 898
    :cond_2ea
    if-nez p1, :cond_621

    const-string v34, "log"

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_621

    .line 899
    const-string v35, "log"

    add-int/lit8 v34, v19, -0x3

    if-lez v34, :cond_33e

    add-int/lit8 v34, v19, -0x4

    :goto_300
    move-object/from16 v0, v31

    move-object/from16 v1, v35

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v23

    .line 900
    .local v23, log:I
    const/16 v34, 0x28

    move/from16 v0, v30

    move/from16 v1, v34

    if-ne v0, v1, :cond_31a

    add-int/lit8 v34, v19, -0x4

    move/from16 v0, v23

    move/from16 v1, v34

    if-eq v0, v1, :cond_32a

    :cond_31a
    const/16 v34, 0x67

    move/from16 v0, v30

    move/from16 v1, v34

    if-ne v0, v1, :cond_621

    add-int/lit8 v34, v19, -0x3

    move/from16 v0, v23

    move/from16 v1, v34

    if-ne v0, v1, :cond_621

    .line 901
    :cond_32a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070006

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    .line 899
    .end local v23           #log:I
    :cond_33e
    const/16 v34, 0x0

    goto :goto_300

    .line 903
    :cond_341
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    invoke-static/range {v34 .. v34}, Lcom/sec/android/app/calculator/Cmyfunc;->isChar(C)Z

    move-result v34

    if-eqz v34, :cond_406

    .line 904
    move/from16 v33, v19

    .line 906
    .local v33, tmp:I
    :goto_351
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v34

    move/from16 v0, v33

    move/from16 v1, v34

    if-ge v0, v1, :cond_36c

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    invoke-static/range {v34 .. v34}, Lcom/sec/android/app/calculator/Cmyfunc;->isChar(C)Z

    move-result v34

    if-eqz v34, :cond_36c

    .line 907
    add-int/lit8 v33, v33, 0x1

    goto :goto_351

    .line 909
    :cond_36c
    move-object/from16 v0, v31

    move/from16 v1, v19

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    .line 910
    .local v32, sub:Ljava/lang/String;
    const-string v34, "sin"

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_3d2

    const-string v34, "cos"

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_3d2

    const-string v34, "tan"

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_3d2

    const-string v34, "log"

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_3d2

    const-string v34, "ln"

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_3d2

    const-string v34, "abs"

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_3d2

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070001

    move-object/from16 v0, v34

    move/from16 v1, v35

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    .line 916
    :cond_3d2
    const/4 v13, 0x0

    .line 917
    add-int/lit8 v28, v28, 0x1

    .line 918
    const/4 v12, 0x0

    .line 919
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v34

    add-int/lit8 v34, v34, -0x1

    add-int v19, v19, v34

    .line 920
    move/from16 v27, v19

    .line 921
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v34

    move/from16 v0, v33

    move/from16 v1, v34

    if-lt v0, v1, :cond_621

    const/16 v34, 0x1

    move/from16 v0, p1

    move/from16 v1, v34

    if-ne v0, v1, :cond_621

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070001

    move-object/from16 v0, v34

    move/from16 v1, v35

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    .line 924
    .end local v32           #sub:Ljava/lang/String;
    .end local v33           #tmp:I
    :cond_406
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    invoke-static/range {v34 .. v34}, Lcom/sec/android/app/calculator/Cmyfunc;->isToken(C)Z

    move-result v34

    if-eqz v34, :cond_621

    .line 925
    const/4 v13, 0x0

    .line 926
    const/16 v34, 0x45

    move/from16 v0, v30

    move/from16 v1, v34

    if-ne v0, v1, :cond_44d

    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x2b

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_44d

    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x2d

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_44d

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070001

    add-int/lit8 v36, v19, -0x1

    invoke-virtual/range {v34 .. v36}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    .line 931
    :cond_44d
    const/16 v34, 0x2e

    move/from16 v0, v30

    move/from16 v1, v34

    if-ne v0, v1, :cond_473

    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    invoke-static/range {v34 .. v34}, Lcom/sec/android/app/calculator/Cmyfunc;->isOpByTwo(C)Z

    move-result v34

    if-nez v34, :cond_473

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070001

    add-int/lit8 v36, v19, -0x1

    invoke-virtual/range {v34 .. v36}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    .line 936
    :cond_473
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x5e

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_4e4

    .line 937
    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/calculator/Cmyfunc;->isDigit(C)Z

    move-result v34

    if-eqz v34, :cond_493

    .line 938
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v30

    .line 939
    goto/16 :goto_270

    .line 941
    :cond_493
    if-nez v30, :cond_4a5

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070001

    add-int/lit8 v36, v19, -0x1

    invoke-virtual/range {v34 .. v36}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    .line 944
    :cond_4a5
    const/16 v34, 0x65

    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_4e4

    .line 946
    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/calculator/Cmyfunc;->isDigit(C)Z

    move-result v34

    if-nez v34, :cond_4e4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->length()I

    move-result v34

    add-int/lit8 v35, v19, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_4d7

    add-int/lit8 v34, v19, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x28

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_4e4

    .line 948
    :cond_4d7
    add-int/lit8 v22, v19, 0x2

    .line 949
    .local v22, length:I
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v34

    move/from16 v0, v22

    move/from16 v1, v34

    if-lt v0, v1, :cond_51a

    .line 950
    const/4 v6, 0x1

    .line 957
    .end local v22           #length:I
    :cond_4e4
    :goto_4e4
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x21

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_52c

    .line 958
    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/calculator/Cmyfunc;->isOprator(C)Z

    move-result v34

    if-nez v34, :cond_50e

    const/16 v34, 0x28

    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_50e

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v34

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_52c

    .line 959
    :cond_50e
    add-int/lit8 v34, v19, -0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    .line 960
    const/16 v16, 0x1

    .line 961
    goto/16 :goto_4b

    .line 951
    .restart local v22       #length:I
    :cond_51a
    move-object/from16 v0, v31

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x32

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_4e4

    .line 952
    const/4 v5, 0x1

    goto :goto_4e4

    .line 964
    .end local v22           #length:I
    :cond_52c
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x25

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_5ac

    .line 965
    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/calculator/Cmyfunc;->isDigit(C)Z

    move-result v34

    if-nez v34, :cond_56a

    const/16 v34, 0x29

    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_56a

    const/16 v34, 0x3c0

    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_56a

    const/16 v34, 0x2e

    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_56a

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070001

    add-int/lit8 v36, v19, -0x1

    invoke-virtual/range {v34 .. v36}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    .line 969
    :cond_56a
    add-int/lit8 v34, v19, 0x1

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v35

    move/from16 v0, v34

    move/from16 v1, v35

    if-ge v0, v1, :cond_5ac

    add-int/lit8 v34, v19, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    invoke-static/range {v34 .. v34}, Lcom/sec/android/app/calculator/Cmyfunc;->isOprator(C)Z

    move-result v34

    if-nez v34, :cond_5ac

    add-int/lit8 v34, v19, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x29

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_5ac

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070001

    move-object/from16 v0, v34

    move/from16 v1, v35

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    .line 975
    :cond_5ac
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x221a

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_5d5

    .line 977
    const/16 v34, 0x29

    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_5ca

    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/calculator/Cmyfunc;->isDigit(C)Z

    move-result v34

    if-eqz v34, :cond_5d5

    .line 978
    :cond_5ca
    const/4 v8, 0x1

    .line 979
    add-int/lit8 v34, v19, -0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    goto/16 :goto_4b

    .line 984
    :cond_5d5
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x21

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_5ed

    .line 985
    const/16 v25, 0x0

    .line 986
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    .line 988
    :cond_5ed
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    invoke-static/range {v34 .. v34}, Lcom/sec/android/app/calculator/Cmyfunc;->isOprator(C)Z

    move-result v34

    if-eqz v34, :cond_61b

    .line 989
    sparse-switch v30, :sswitch_data_810

    .line 999
    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/calculator/Cmyfunc;->isOprator(C)Z

    move-result v34

    if-nez v34, :cond_612

    invoke-static/range {v30 .. v30}, Lcom/sec/android/app/calculator/Cmyfunc;->isChar(C)Z

    move-result v34

    if-eqz v34, :cond_61b

    const/16 v34, 0x65

    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_61b

    .line 1000
    :cond_612
    add-int/lit8 v34, v19, -0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    .line 1001
    const/4 v9, 0x1

    .line 1006
    :cond_61b
    :goto_61b
    const/4 v13, 0x0

    .line 1007
    add-int/lit8 v28, v28, 0x1

    .line 1008
    move/from16 v27, v19

    .line 1009
    const/4 v12, 0x0

    .line 1011
    :cond_621
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v30

    goto/16 :goto_270

    .line 991
    :sswitch_62b
    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x2b

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_61b

    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x2d

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_61b

    .line 995
    :sswitch_64b
    add-int/lit8 v34, v19, -0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    .line 996
    const/4 v9, 0x1

    .line 997
    goto :goto_61b

    .line 1018
    :cond_655
    if-eqz v4, :cond_66b

    .line 1019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070002

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    .line 1022
    :cond_66b
    if-eqz v7, :cond_681

    .line 1023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070003

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    .line 1026
    :cond_681
    const/16 v34, 0x14

    move/from16 v0, v28

    move/from16 v1, v34

    if-le v0, v1, :cond_6a3

    .line 1027
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    .line 1028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070004

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    .line 1032
    :cond_6a3
    if-eqz v16, :cond_6b9

    .line 1033
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070007

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    .line 1036
    :cond_6b9
    if-eqz v5, :cond_6cf

    .line 1037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070007

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    .line 1040
    :cond_6cf
    if-eqz v6, :cond_6e5

    .line 1041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070007

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    .line 1044
    :cond_6e5
    if-nez v26, :cond_70d

    if-nez v27, :cond_70d

    const/16 v34, 0x28

    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_70d

    const/16 v34, 0x221a

    move/from16 v0, v30

    move/from16 v1, v34

    if-eq v0, v1, :cond_70d

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070001

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    .line 1048
    :cond_70d
    if-eqz v9, :cond_72a

    .line 1049
    const/16 v34, 0x1

    move/from16 v0, v34

    if-ne v10, v0, :cond_716

    .line 1050
    const/4 v10, 0x0

    .line 1052
    :cond_716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070001

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    .line 1056
    :cond_72a
    move/from16 v11, v29

    .local v11, clearparam:I
    :goto_72c
    if-lez v11, :cond_73c

    .line 1057
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    move-object/from16 v34, v0

    const-string v35, ")"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1056
    add-int/lit8 v11, v11, -0x1

    goto :goto_72c

    .line 1060
    :cond_73c
    if-eqz v8, :cond_752

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070001

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    .line 1064
    :cond_752
    const/16 v34, 0x1

    move/from16 v0, p1

    move/from16 v1, v34

    if-ne v0, v1, :cond_7b4

    .line 1065
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v34

    add-int/lit8 v34, v34, -0x1

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    invoke-static/range {v34 .. v34}, Lcom/sec/android/app/calculator/Cmyfunc;->isOprator(C)Z

    move-result v34

    if-eqz v34, :cond_782

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070001

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    .line 1067
    :cond_782
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v34

    add-int/lit8 v34, v34, -0x1

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v21

    .line 1068
    .local v21, last:C
    const/16 v34, 0x221a

    move/from16 v0, v21

    move/from16 v1, v34

    if-eq v0, v1, :cond_7a0

    const/16 v34, 0x5e

    move/from16 v0, v21

    move/from16 v1, v34

    if-ne v0, v1, :cond_7f8

    .line 1069
    :cond_7a0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070001

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    .line 1071
    .end local v21           #last:C
    :cond_7b4
    const/16 v34, 0x1

    move/from16 v0, v34

    if-eq v10, v0, :cond_7e4

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v34

    add-int/lit8 v34, v34, -0x1

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    invoke-static/range {v34 .. v34}, Lcom/sec/android/app/calculator/Cmyfunc;->isOprator(C)Z

    move-result v34

    if-nez v34, :cond_7e4

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v34

    add-int/lit8 v34, v34, -0x1

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v34

    const/16 v35, 0x2d

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_7f8

    .line 1073
    :cond_7e4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070015

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    .line 1077
    :cond_7f8
    if-eqz v17, :cond_80e

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    move-object/from16 v34, v0

    const v35, 0x7f070007

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    move/from16 v36, v0

    invoke-virtual/range {v34 .. v36}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v34

    throw v34

    .line 1079
    :cond_80e
    return-void

    .line 989
    nop

    :sswitch_data_810
    .sparse-switch
        0x28 -> :sswitch_62b
        0x5e -> :sswitch_64b
        0x221a -> :sswitch_64b
    .end sparse-switch
.end method

.method public static final cos(D)D
    .registers 6
    .parameter "x"

    .prologue
    .line 338
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    const-wide v2, 0x3ff921fb54442d18L

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/sec/android/app/calculator/CExpression;->isPiMultiple(D)Z

    move-result v0

    if-eqz v0, :cond_13

    const-wide/16 v0, 0x0

    :goto_12
    return-wide v0

    :cond_13
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    goto :goto_12
.end method

.method private evaluateByToken(Lcom/sec/android/app/calculator/CToken;Lcom/sec/android/app/calculator/CToken;Lcom/sec/android/app/calculator/CToken;)D
    .registers 12
    .parameter "t"
    .parameter "t_1"
    .parameter "t_2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/app/calculator/SyntaxException;
        }
    .end annotation

    .prologue
    .line 352
    const-wide/16 v0, 0x0

    .local v0, t1:D
    const-wide/16 v2, 0x0

    .line 353
    .local v2, t2:D
    invoke-virtual {p2}, Lcom/sec/android/app/calculator/CToken;->getTokenValue()D

    move-result-wide v0

    .line 354
    invoke-virtual {p3}, Lcom/sec/android/app/calculator/CToken;->getTokenValue()D

    move-result-wide v2

    .line 355
    sget-object v4, Lcom/sec/android/app/calculator/CExpression$1;->$SwitchMap$com$sec$android$app$calculator$token_type:[I

    invoke-virtual {p1}, Lcom/sec/android/app/calculator/CToken;->getTokenType()Lcom/sec/android/app/calculator/token_type;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/calculator/token_type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_6a

    .line 395
    const-wide/high16 v4, -0x4010

    :goto_1d
    return-wide v4

    .line 357
    :pswitch_1e
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    goto :goto_1d

    .line 383
    :pswitch_23
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    goto :goto_1d

    .line 386
    :pswitch_34
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v5

    const/16 v6, 0x64

    const/4 v7, 0x4

    invoke-virtual {v4, v5, v6, v7}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    goto :goto_1d

    .line 389
    :pswitch_48
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    goto :goto_1d

    .line 391
    :pswitch_59
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    goto :goto_1d

    .line 355
    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_23
        :pswitch_34
        :pswitch_48
        :pswitch_59
    .end packed-switch
.end method

.method private evaluateByTokenOne(Lcom/sec/android/app/calculator/CToken;Lcom/sec/android/app/calculator/CToken;)D
    .registers 12
    .parameter "t"
    .parameter "t_1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/app/calculator/SyntaxException;
        }
    .end annotation

    .prologue
    const v8, 0x7f070006

    const-wide/16 v6, 0x0

    .line 399
    invoke-virtual {p2}, Lcom/sec/android/app/calculator/CToken;->getTokenValue()D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/calculator/CExpression;->setRounds(D)D

    move-result-wide v1

    .line 400
    .local v1, t1:D
    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    .line 401
    sget-object v4, Lcom/sec/android/app/calculator/CExpression$1;->$SwitchMap$com$sec$android$app$calculator$token_type:[I

    invoke-virtual {p1}, Lcom/sec/android/app/calculator/CToken;->getTokenType()Lcom/sec/android/app/calculator/token_type;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/calculator/token_type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_c8

    .line 446
    const-wide/high16 v4, -0x4010

    :goto_26
    return-wide v4

    .line 403
    :pswitch_27
    invoke-static {v1, v2}, Lcom/sec/android/app/calculator/CExpression;->abs(D)D

    move-result-wide v4

    goto :goto_26

    .line 405
    :pswitch_2c
    invoke-static {v1, v2}, Lcom/sec/android/app/calculator/CExpression;->persentage(D)D

    move-result-wide v4

    goto :goto_26

    .line 407
    :pswitch_31
    invoke-static {v1, v2}, Lcom/sec/android/app/calculator/CExpression;->sin(D)D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/calculator/CExpression;->setRounds(D)D

    move-result-wide v4

    goto :goto_26

    .line 409
    :pswitch_3a
    invoke-static {v1, v2}, Lcom/sec/android/app/calculator/CExpression;->cos(D)D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/calculator/CExpression;->setRounds(D)D

    move-result-wide v4

    goto :goto_26

    .line 411
    :pswitch_43
    invoke-static {v1, v2}, Lcom/sec/android/app/calculator/CExpression;->tan(D)D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/calculator/CExpression;->setRounds(D)D

    move-result-wide v4

    goto :goto_26

    .line 413
    :pswitch_4c
    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    goto :goto_26

    .line 416
    :pswitch_51
    cmpg-double v4, v1, v6

    if-gez v4, :cond_5e

    .line 417
    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    iget v5, p0, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    invoke-virtual {v4, v8, v5}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v4

    throw v4

    .line 419
    :cond_5e
    invoke-static {v1, v2}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    goto :goto_26

    .line 422
    :pswitch_63
    cmpg-double v4, v1, v6

    if-gez v4, :cond_70

    .line 423
    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    iget v5, p0, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    invoke-virtual {v4, v8, v5}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v4

    throw v4

    .line 427
    :cond_70
    const/4 v3, 0x0

    .line 428
    .local v3, tmp1:I
    double-to-int v3, v1

    .line 430
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    cmpl-double v4, v4, v1

    if-eqz v4, :cond_8b

    .line 431
    invoke-virtual {p2}, Lcom/sec/android/app/calculator/CToken;->getTokenValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/calculator/CExpression;->setRounds(D)D

    move-result-wide v4

    goto :goto_26

    .line 433
    :cond_8b
    invoke-virtual {p2}, Lcom/sec/android/app/calculator/CToken;->getTokenValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    goto :goto_26

    .line 435
    .end local v3           #tmp1:I
    :pswitch_94
    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, m1:Ljava/lang/String;
    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_ba

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-eq v4, v5, :cond_ba

    .line 438
    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->exception:Lcom/sec/android/app/calculator/SyntaxException;

    const v5, 0x7f070001

    iget v6, p0, Lcom/sec/android/app/calculator/CExpression;->Cursor:I

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/calculator/SyntaxException;->set(II)Lcom/sec/android/app/calculator/SyntaxException;

    move-result-object v4

    throw v4

    .line 440
    :cond_ba
    invoke-static {v1, v2}, Lcom/sec/android/app/calculator/CExpression;->factorial(D)D

    move-result-wide v4

    goto/16 :goto_26

    .line 442
    .end local v0           #m1:Ljava/lang/String;
    :pswitch_c0
    invoke-virtual {p1}, Lcom/sec/android/app/calculator/CToken;->getTokenValue()D

    move-result-wide v4

    mul-double/2addr v1, v4

    move-wide v4, v1

    goto/16 :goto_26

    .line 401
    :pswitch_data_c8
    .packed-switch 0x6
        :pswitch_27
        :pswitch_2c
        :pswitch_31
        :pswitch_3a
        :pswitch_43
        :pswitch_4c
        :pswitch_51
        :pswitch_63
        :pswitch_94
        :pswitch_c0
    .end packed-switch
.end method

.method public static final factorial(D)D
    .registers 9
    .parameter "x"

    .prologue
    const-wide/high16 v5, 0x3ff0

    .line 292
    const-wide/16 v3, 0x0

    cmpg-double v3, p0, v3

    if-gez v3, :cond_b

    .line 293
    const-wide/high16 v3, 0x7ff8

    .line 321
    :goto_a
    return-wide v3

    .line 294
    :cond_b
    const-wide v3, 0x4065400000000000L

    cmpl-double v3, p0, v3

    if-lez v3, :cond_1d

    .line 295
    invoke-static {p0, p1}, Lcom/sec/android/app/calculator/CExpression;->lgamma(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    goto :goto_a

    .line 296
    :cond_1d
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    cmpl-double v3, v3, p0

    if-eqz v3, :cond_2e

    .line 297
    invoke-static {p0, p1}, Lcom/sec/android/app/calculator/CExpression;->lgamma(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    goto :goto_a

    .line 299
    :cond_2e
    double-to-int v2, p0

    .line 300
    .local v2, n:I
    move-wide v0, p0

    .line 301
    .local v0, extra:D
    and-int/lit8 v3, v2, 0x7

    packed-switch v3, :pswitch_data_5a

    .line 321
    invoke-static {p0, p1}, Lcom/sec/android/app/calculator/CExpression;->lgamma(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    goto :goto_a

    .line 303
    :pswitch_3e
    sub-double/2addr p0, v5

    mul-double/2addr v0, p0

    .line 305
    :pswitch_40
    sub-double/2addr p0, v5

    mul-double/2addr v0, p0

    .line 307
    :pswitch_42
    sub-double/2addr p0, v5

    mul-double/2addr v0, p0

    .line 309
    :pswitch_44
    sub-double/2addr p0, v5

    mul-double/2addr v0, p0

    .line 311
    :pswitch_46
    sub-double/2addr p0, v5

    mul-double/2addr v0, p0

    .line 313
    :pswitch_48
    sub-double/2addr p0, v5

    mul-double/2addr v0, p0

    .line 315
    :pswitch_4a
    sget-object v3, Lcom/sec/android/app/calculator/CExpression;->FACT:[D

    shr-int/lit8 v4, v2, 0x3

    aget-wide v3, v3, v4

    mul-double/2addr v3, v0

    goto :goto_a

    .line 317
    :pswitch_52
    sget-object v3, Lcom/sec/android/app/calculator/CExpression;->FACT:[D

    shr-int/lit8 v4, v2, 0x3

    aget-wide v3, v3, v4

    goto :goto_a

    .line 301
    nop

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_52
        :pswitch_4a
        :pswitch_48
        :pswitch_46
        :pswitch_44
        :pswitch_42
        :pswitch_40
        :pswitch_3e
    .end packed-switch
.end method

.method private getToken(Lcom/sec/android/app/calculator/Int;I)Lcom/sec/android/app/calculator/CToken;
    .registers 11
    .parameter "n"
    .parameter "abs"

    .prologue
    .line 565
    const/4 v0, 0x0

    .line 566
    .local v0, c:C
    new-instance v2, Lcom/sec/android/app/calculator/CToken;

    invoke-direct {v2}, Lcom/sec/android/app/calculator/CToken;-><init>()V

    .line 568
    .local v2, t:Lcom/sec/android/app/calculator/CToken;
    :goto_6
    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/sec/android/app/calculator/Int;->data:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/calculator/Cmyfunc;->isSpace(C)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 569
    iget v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    goto :goto_6

    .line 571
    :cond_1b
    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/sec/android/app/calculator/Int;->data:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    .line 572
    const/16 v4, 0x65

    if-ne v0, v4, :cond_3b

    .line 573
    sget-object v4, Lcom/sec/android/app/calculator/token_type;->OPERAND:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    .line 575
    const-wide v4, 0x4005bf0a8b145774L

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/app/calculator/CToken;->setTokenValue(D)V

    .line 576
    iget v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    .line 730
    :goto_3a
    return-object v2

    .line 577
    :cond_3b
    const/16 v4, 0x3c0

    if-ne v0, v4, :cond_57

    .line 578
    sget-object v4, Lcom/sec/android/app/calculator/token_type;->OPERAND:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    .line 579
    const-wide v4, 0x400921fb54442d11L

    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/calculator/CExpression;->setRounds(D)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/app/calculator/CToken;->setTokenValue(D)V

    .line 581
    iget v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    goto :goto_3a

    .line 582
    :cond_57
    const/16 v4, 0x2d

    if-ne v0, v4, :cond_f8

    .line 583
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/calculator/CExpression;->isSign(Lcom/sec/android/app/calculator/Int;I)Z

    move-result v4

    if-nez v4, :cond_6d

    .line 584
    sget-object v4, Lcom/sec/android/app/calculator/token_type;->MINUS:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    .line 585
    iget v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    goto :goto_3a

    .line 587
    :cond_6d
    iget v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    add-int/lit8 v3, v4, 0x1

    .line 589
    .local v3, tmp:I
    :goto_71
    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ge v3, v4, :cond_92

    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/calculator/Cmyfunc;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_8f

    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_92

    .line 591
    :cond_8f
    add-int/lit8 v3, v3, 0x1

    goto :goto_71

    .line 594
    :cond_92
    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/sec/android/app/calculator/Int;->data:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 595
    .local v1, sub:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b9

    .line 596
    sget-object v4, Lcom/sec/android/app/calculator/token_type;->SIGN:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    .line 597
    const-wide/high16 v4, -0x4010

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/app/calculator/CToken;->setTokenValue(D)V

    .line 598
    iput v3, p1, Lcom/sec/android/app/calculator/Int;->data:I

    goto :goto_3a

    .line 600
    :cond_b9
    const-string v4, "e"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d6

    .line 601
    const-wide v4, -0x3ffa40f574eba88cL

    iput-wide v4, p0, Lcom/sec/android/app/calculator/CExpression;->value:D

    .line 608
    :goto_c8
    sget-object v4, Lcom/sec/android/app/calculator/token_type;->OPERAND:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    .line 609
    iget-wide v4, p0, Lcom/sec/android/app/calculator/CExpression;->value:D

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/app/calculator/CToken;->setTokenValue(D)V

    .line 610
    iput v3, p1, Lcom/sec/android/app/calculator/Int;->data:I

    goto/16 :goto_3a

    .line 602
    :cond_d6
    const-string v4, "\u03c0"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e6

    .line 603
    const-wide v4, -0x3ff6de04abbbd2efL

    iput-wide v4, p0, Lcom/sec/android/app/calculator/CExpression;->value:D

    goto :goto_c8

    .line 605
    :cond_e6
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/app/calculator/CExpression;->value:D

    .line 606
    iget-wide v4, p0, Lcom/sec/android/app/calculator/CExpression;->value:D

    const-wide/high16 v6, -0x4010

    mul-double/2addr v4, v6

    iput-wide v4, p0, Lcom/sec/android/app/calculator/CExpression;->value:D

    goto :goto_c8

    .line 613
    .end local v1           #sub:Ljava/lang/String;
    .end local v3           #tmp:I
    :cond_f8
    const/16 v4, 0x2b

    if-ne v0, v4, :cond_1a7

    .line 614
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/calculator/CExpression;->isSign(Lcom/sec/android/app/calculator/Int;I)Z

    move-result v4

    if-nez v4, :cond_10f

    .line 615
    sget-object v4, Lcom/sec/android/app/calculator/token_type;->PLUS:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    .line 616
    iget v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    goto/16 :goto_3a

    .line 618
    :cond_10f
    iget v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    add-int/lit8 v3, v4, 0x1

    .line 620
    .restart local v3       #tmp:I
    :goto_113
    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ge v3, v4, :cond_134

    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/calculator/Cmyfunc;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_131

    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_134

    .line 622
    :cond_131
    add-int/lit8 v3, v3, 0x1

    goto :goto_113

    .line 624
    :cond_134
    iget v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    add-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_147

    .line 625
    sget-object v4, Lcom/sec/android/app/calculator/token_type;->ENDMARKER:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    .line 626
    iget v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    goto/16 :goto_3a

    .line 628
    :cond_147
    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/sec/android/app/calculator/Int;->data:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 629
    .restart local v1       #sub:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16f

    .line 630
    sget-object v4, Lcom/sec/android/app/calculator/token_type;->SIGN:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    .line 631
    const-wide/high16 v4, -0x4010

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/app/calculator/CToken;->setTokenValue(D)V

    .line 632
    iput v3, p1, Lcom/sec/android/app/calculator/Int;->data:I

    goto/16 :goto_3a

    .line 634
    :cond_16f
    const-string v4, "e"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18c

    .line 635
    const-wide v4, 0x4005bf0a8b145774L

    iput-wide v4, p0, Lcom/sec/android/app/calculator/CExpression;->value:D

    .line 640
    :goto_17e
    sget-object v4, Lcom/sec/android/app/calculator/token_type;->OPERAND:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    .line 641
    iget-wide v4, p0, Lcom/sec/android/app/calculator/CExpression;->value:D

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/app/calculator/CToken;->setTokenValue(D)V

    .line 642
    iput v3, p1, Lcom/sec/android/app/calculator/Int;->data:I

    goto/16 :goto_3a

    .line 636
    :cond_18c
    const-string v4, "\u03c0"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19c

    .line 637
    const-wide v4, 0x400921fb54442d11L

    iput-wide v4, p0, Lcom/sec/android/app/calculator/CExpression;->value:D

    goto :goto_17e

    .line 639
    :cond_19c
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/app/calculator/CExpression;->value:D

    goto :goto_17e

    .line 646
    .end local v1           #sub:Ljava/lang/String;
    .end local v3           #tmp:I
    :cond_1a7
    invoke-static {v0}, Lcom/sec/android/app/calculator/Cmyfunc;->isChar(C)Z

    move-result v4

    if-eqz v4, :cond_246

    .line 647
    iget v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    add-int/lit8 v3, v4, 0x1

    .line 649
    .restart local v3       #tmp:I
    :goto_1b1
    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ge v3, v4, :cond_1c8

    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/calculator/Cmyfunc;->isChar(C)Z

    move-result v4

    if-eqz v4, :cond_1c8

    .line 650
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b1

    .line 652
    :cond_1c8
    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/sec/android/app/calculator/Int;->data:I

    invoke-virtual {v4, v5, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 654
    .restart local v1       #sub:Ljava/lang/String;
    iget v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    add-int/lit8 v4, v4, 0x3

    iput v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    .line 655
    const-string v4, "sin"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1ed

    .line 656
    sget-object v4, Lcom/sec/android/app/calculator/token_type;->SIN:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    goto/16 :goto_3a

    .line 657
    :cond_1ed
    const-string v4, "cos"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1fc

    .line 658
    sget-object v4, Lcom/sec/android/app/calculator/token_type;->COS:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    goto/16 :goto_3a

    .line 659
    :cond_1fc
    const-string v4, "tan"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20b

    .line 660
    sget-object v4, Lcom/sec/android/app/calculator/token_type;->TAN:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    goto/16 :goto_3a

    .line 661
    :cond_20b
    const-string v4, "log"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21a

    .line 662
    sget-object v4, Lcom/sec/android/app/calculator/token_type;->LOG:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    goto/16 :goto_3a

    .line 663
    :cond_21a
    const-string v4, "abs"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_229

    .line 664
    sget-object v4, Lcom/sec/android/app/calculator/token_type;->ABS:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    goto/16 :goto_3a

    .line 665
    :cond_229
    const-string v4, "ln"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23e

    .line 666
    sget-object v4, Lcom/sec/android/app/calculator/token_type;->LN:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    .line 667
    iget v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    goto/16 :goto_3a

    .line 669
    :cond_23e
    iget v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    add-int/lit8 v4, v4, -0x3

    iput v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    goto/16 :goto_3a

    .line 672
    .end local v1           #sub:Ljava/lang/String;
    .end local v3           #tmp:I
    :cond_246
    const/16 v4, 0x29

    if-ne v0, v4, :cond_257

    .line 673
    sget-object v4, Lcom/sec/android/app/calculator/token_type;->RPARAM:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    .line 728
    :goto_24f
    iget v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    goto/16 :goto_3a

    .line 674
    :cond_257
    const/16 v4, 0x28

    if-ne v0, v4, :cond_261

    .line 675
    sget-object v4, Lcom/sec/android/app/calculator/token_type;->LPARAM:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    goto :goto_24f

    .line 676
    :cond_261
    invoke-static {v0}, Lcom/sec/android/app/calculator/Cmyfunc;->isToken(C)Z

    move-result v4

    if-eqz v4, :cond_2a1

    .line 678
    sparse-switch v0, :sswitch_data_32e

    goto :goto_24f

    .line 704
    :sswitch_26b
    sget-object v4, Lcom/sec/android/app/calculator/token_type;->EOS:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    goto :goto_24f

    .line 680
    :sswitch_271
    sget-object v4, Lcom/sec/android/app/calculator/token_type;->MULTI:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    goto :goto_24f

    .line 683
    :sswitch_277
    sget-object v4, Lcom/sec/android/app/calculator/token_type;->DIVIDE:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    goto :goto_24f

    .line 686
    :sswitch_27d
    sget-object v4, Lcom/sec/android/app/calculator/token_type;->PLUS:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    goto :goto_24f

    .line 689
    :sswitch_283
    sget-object v4, Lcom/sec/android/app/calculator/token_type;->MINUS:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    goto :goto_24f

    .line 692
    :sswitch_289
    sget-object v4, Lcom/sec/android/app/calculator/token_type;->SQUARE:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    goto :goto_24f

    .line 695
    :sswitch_28f
    sget-object v4, Lcom/sec/android/app/calculator/token_type;->ROOT:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    goto :goto_24f

    .line 698
    :sswitch_295
    sget-object v4, Lcom/sec/android/app/calculator/token_type;->PERSENTAGE:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    goto :goto_24f

    .line 701
    :sswitch_29b
    sget-object v4, Lcom/sec/android/app/calculator/token_type;->FACT:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    goto :goto_24f

    .line 710
    :cond_2a1
    iget v4, p1, Lcom/sec/android/app/calculator/Int;->data:I

    add-int/lit8 v3, v4, 0x1

    .line 712
    .restart local v3       #tmp:I
    :goto_2a5
    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ge v3, v4, :cond_306

    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/calculator/Cmyfunc;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_303

    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-eq v4, v5, :cond_303

    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x45

    if-eq v4, v5, :cond_303

    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x2c

    if-eq v4, v5, :cond_303

    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_2ed

    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x45

    if-eq v4, v5, :cond_303

    :cond_2ed
    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_306

    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x45

    if-ne v4, v5, :cond_306

    .line 719
    :cond_303
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a5

    .line 721
    :cond_306
    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/sec/android/app/calculator/Int;->data:I

    invoke-virtual {v4, v5, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 722
    .restart local v1       #sub:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/app/calculator/CExpression;->value:D

    .line 723
    sget-object v4, Lcom/sec/android/app/calculator/token_type;->OPERAND:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    .line 724
    iget-wide v4, p0, Lcom/sec/android/app/calculator/CExpression;->value:D

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/app/calculator/CToken;->setTokenValue(D)V

    .line 725
    iput v3, p1, Lcom/sec/android/app/calculator/Int;->data:I

    goto/16 :goto_3a

    .line 678
    :sswitch_data_32e
    .sparse-switch
        0x0 -> :sswitch_26b
        0x21 -> :sswitch_29b
        0x25 -> :sswitch_295
        0x2b -> :sswitch_27d
        0x2d -> :sswitch_283
        0x5e -> :sswitch_289
        0xd7 -> :sswitch_271
        0xf7 -> :sswitch_277
        0x221a -> :sswitch_28f
    .end sparse-switch
.end method

.method private infix2postfix()V
    .registers 12

    .prologue
    const/16 v9, 0x14

    .line 1087
    const/4 v2, 0x0

    .line 1088
    .local v2, infix_n:I
    const/4 v6, 0x0

    .line 1089
    .local v6, postfix_n:I
    new-instance v8, Ljava/util/Stack;

    invoke-direct {v8}, Ljava/util/Stack;-><init>()V

    .line 1090
    .local v8, tokenStack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/sec/android/app/calculator/CToken;>;"
    new-instance v5, Lcom/sec/android/app/calculator/CToken;

    invoke-direct {v5}, Lcom/sec/android/app/calculator/CToken;-><init>()V

    .line 1091
    .local v5, ist:Lcom/sec/android/app/calculator/CToken;
    new-instance v1, Lcom/sec/android/app/calculator/CToken;

    invoke-direct {v1}, Lcom/sec/android/app/calculator/CToken;-><init>()V

    .line 1092
    .local v1, ict:Lcom/sec/android/app/calculator/CToken;
    new-array v4, v9, [I

    fill-array-data v4, :array_bc

    .line 1095
    .local v4, isp:[I
    new-array v0, v9, [I

    fill-array-data v0, :array_e8

    .line 1099
    .local v0, icp:[I
    sget-object v9, Lcom/sec/android/app/calculator/token_type;->EOS:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v5, v9}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    .line 1100
    invoke-virtual {v8, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    iget-object v9, p0, Lcom/sec/android/app/calculator/CExpression;->infixTokenExp:[Lcom/sec/android/app/calculator/CToken;

    add-int/lit8 v3, v2, 0x1

    .end local v2           #infix_n:I
    .local v3, infix_n:I
    aget-object v1, v9, v2

    move v2, v3

    .line 1103
    .end local v3           #infix_n:I
    .restart local v2       #infix_n:I
    :goto_2c
    invoke-virtual {v1}, Lcom/sec/android/app/calculator/CToken;->getTokenType()Lcom/sec/android/app/calculator/token_type;

    move-result-object v9

    sget-object v10, Lcom/sec/android/app/calculator/token_type;->EOS:Lcom/sec/android/app/calculator/token_type;

    if-eq v9, v10, :cond_a6

    .line 1104
    sget-object v9, Lcom/sec/android/app/calculator/CExpression$1;->$SwitchMap$com$sec$android$app$calculator$token_type:[I

    invoke-virtual {v1}, Lcom/sec/android/app/calculator/CToken;->getTokenType()Lcom/sec/android/app/calculator/token_type;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/calculator/token_type;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_114

    .line 1116
    invoke-virtual {v8}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #ist:Lcom/sec/android/app/calculator/CToken;
    check-cast v5, Lcom/sec/android/app/calculator/CToken;

    .line 1117
    .restart local v5       #ist:Lcom/sec/android/app/calculator/CToken;
    :goto_49
    invoke-virtual {v5}, Lcom/sec/android/app/calculator/CToken;->getTokenType()Lcom/sec/android/app/calculator/token_type;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/calculator/token_type;->ordinal()I

    move-result v9

    aget v9, v4, v9

    invoke-virtual {v1}, Lcom/sec/android/app/calculator/CToken;->getTokenType()Lcom/sec/android/app/calculator/token_type;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/calculator/token_type;->ordinal()I

    move-result v10

    aget v10, v0, v10

    if-lt v9, v10, :cond_98

    .line 1118
    iget-object v9, p0, Lcom/sec/android/app/calculator/CExpression;->postfixTokenExp:[Lcom/sec/android/app/calculator/CToken;

    add-int/lit8 v7, v6, 0x1

    .end local v6           #postfix_n:I
    .local v7, postfix_n:I
    aput-object v5, v9, v6

    .line 1119
    invoke-virtual {v8}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #ist:Lcom/sec/android/app/calculator/CToken;
    check-cast v5, Lcom/sec/android/app/calculator/CToken;

    .restart local v5       #ist:Lcom/sec/android/app/calculator/CToken;
    move v6, v7

    .end local v7           #postfix_n:I
    .restart local v6       #postfix_n:I
    goto :goto_49

    .line 1106
    :pswitch_6d
    iget-object v9, p0, Lcom/sec/android/app/calculator/CExpression;->postfixTokenExp:[Lcom/sec/android/app/calculator/CToken;

    add-int/lit8 v7, v6, 0x1

    .end local v6           #postfix_n:I
    .restart local v7       #postfix_n:I
    aput-object v1, v9, v6

    move v6, v7

    .line 1125
    .end local v7           #postfix_n:I
    .restart local v6       #postfix_n:I
    :cond_74
    :goto_74
    iget-object v9, p0, Lcom/sec/android/app/calculator/CExpression;->infixTokenExp:[Lcom/sec/android/app/calculator/CToken;

    add-int/lit8 v3, v2, 0x1

    .end local v2           #infix_n:I
    .restart local v3       #infix_n:I
    aget-object v1, v9, v2

    move v2, v3

    .end local v3           #infix_n:I
    .restart local v2       #infix_n:I
    goto :goto_2c

    .line 1109
    :pswitch_7c
    invoke-virtual {v8}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #ist:Lcom/sec/android/app/calculator/CToken;
    check-cast v5, Lcom/sec/android/app/calculator/CToken;

    .line 1110
    .restart local v5       #ist:Lcom/sec/android/app/calculator/CToken;
    :goto_82
    invoke-virtual {v5}, Lcom/sec/android/app/calculator/CToken;->getTokenType()Lcom/sec/android/app/calculator/token_type;

    move-result-object v9

    sget-object v10, Lcom/sec/android/app/calculator/token_type;->LPARAM:Lcom/sec/android/app/calculator/token_type;

    if-eq v9, v10, :cond_74

    .line 1111
    iget-object v9, p0, Lcom/sec/android/app/calculator/CExpression;->postfixTokenExp:[Lcom/sec/android/app/calculator/CToken;

    add-int/lit8 v7, v6, 0x1

    .end local v6           #postfix_n:I
    .restart local v7       #postfix_n:I
    aput-object v5, v9, v6

    .line 1112
    invoke-virtual {v8}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #ist:Lcom/sec/android/app/calculator/CToken;
    check-cast v5, Lcom/sec/android/app/calculator/CToken;

    .restart local v5       #ist:Lcom/sec/android/app/calculator/CToken;
    move v6, v7

    .end local v7           #postfix_n:I
    .restart local v6       #postfix_n:I
    goto :goto_82

    .line 1121
    :cond_98
    invoke-virtual {v8, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    invoke-virtual {v8, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_74

    .line 1132
    :cond_9f
    iget-object v9, p0, Lcom/sec/android/app/calculator/CExpression;->postfixTokenExp:[Lcom/sec/android/app/calculator/CToken;

    add-int/lit8 v7, v6, 0x1

    .end local v6           #postfix_n:I
    .restart local v7       #postfix_n:I
    aput-object v5, v9, v6

    move v6, v7

    .line 1128
    .end local v7           #postfix_n:I
    .restart local v6       #postfix_n:I
    :cond_a6
    invoke-virtual {v8}, Ljava/util/Stack;->empty()Z

    move-result v9

    if-nez v9, :cond_ba

    .line 1129
    invoke-virtual {v8}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #ist:Lcom/sec/android/app/calculator/CToken;
    check-cast v5, Lcom/sec/android/app/calculator/CToken;

    .line 1130
    .restart local v5       #ist:Lcom/sec/android/app/calculator/CToken;
    invoke-virtual {v5}, Lcom/sec/android/app/calculator/CToken;->getTokenType()Lcom/sec/android/app/calculator/token_type;

    move-result-object v9

    sget-object v10, Lcom/sec/android/app/calculator/token_type;->EOS:Lcom/sec/android/app/calculator/token_type;

    if-ne v9, v10, :cond_9f

    .line 1134
    :cond_ba
    return-void

    .line 1092
    nop

    :array_bc
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 1095
    :array_e8
    .array-data 0x4
        0x15t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 1104
    :pswitch_data_114
    .packed-switch 0x10
        :pswitch_6d
        :pswitch_7c
    .end packed-switch
.end method

.method private static final isPiMultiple(D)Z
    .registers 6
    .parameter "x"

    .prologue
    .line 325
    const-wide v2, 0x400921fb54442d18L

    div-double v0, p0, v2

    .line 326
    .local v0, d:D
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    cmpl-double v2, v0, v2

    if-nez v2, :cond_11

    const/4 v2, 0x1

    :goto_10
    return v2

    :cond_11
    const/4 v2, 0x0

    goto :goto_10
.end method

.method private isSign(Lcom/sec/android/app/calculator/Int;I)Z
    .registers 5
    .parameter "n"
    .parameter "abs"

    .prologue
    .line 546
    iget v0, p1, Lcom/sec/android/app/calculator/Int;->data:I

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/sec/android/app/calculator/Int;->data:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/calculator/Cmyfunc;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_4c

    iget-object v0, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/sec/android/app/calculator/Int;->data:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x29

    if-eq v0, v1, :cond_4c

    iget-object v0, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/sec/android/app/calculator/Int;->data:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_4c

    iget-object v0, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/sec/android/app/calculator/Int;->data:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x25

    if-eq v0, v1, :cond_4c

    iget-object v0, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/sec/android/app/calculator/Int;->data:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_4e

    .line 552
    :cond_4c
    const/4 v0, 0x0

    .line 554
    :goto_4d
    return v0

    :cond_4e
    const/4 v0, 0x1

    goto :goto_4d
.end method

.method public static final lgamma(D)D
    .registers 13
    .parameter "x"

    .prologue
    .line 273
    const-wide v5, 0x4014f80000000000L

    add-double v3, p0, v5

    .line 274
    .local v3, tmp:D
    const-wide v1, 0x3fefffffffffffe6L

    .line 275
    .local v1, sum:D
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    sget-object v5, Lcom/sec/android/app/calculator/CExpression;->GAMMA:[D

    array-length v5, v5

    if-ge v0, v5, :cond_1e

    .line 276
    sget-object v5, Lcom/sec/android/app/calculator/CExpression;->GAMMA:[D

    aget-wide v5, v5, v0

    const-wide/high16 v7, 0x3ff0

    add-double/2addr p0, v7

    div-double/2addr v5, p0

    add-double/2addr v1, v5

    .line 275
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 278
    :cond_1e
    const-wide v5, 0x3fed67f1c864beb5L

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    add-double/2addr v5, v7

    const-wide v7, 0x4012f80000000000L

    sub-double v7, v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    sub-double/2addr v5, v3

    return-wide v5
.end method

.method public static final persentage(D)D
    .registers 4
    .parameter "x"

    .prologue
    .line 348
    const-wide/high16 v0, 0x4059

    div-double v0, p0, v0

    return-wide v0
.end method

.method private setRounds(D)D
    .registers 5
    .parameter "v"

    .prologue
    .line 452
    const/16 v0, 0xa

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/calculator/CExpression;->setRounds(DI)D

    move-result-wide v0

    return-wide v0
.end method

.method private setRounds(DI)D
    .registers 20
    .parameter "v"
    .parameter "roundingStart"

    .prologue
    .line 456
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    .line 457
    .local v1, absv:D
    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v12

    .line 459
    .local v12, str:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 461
    .local v3, buf:Ljava/lang/StringBuffer;
    const/16 v14, 0x45

    invoke-virtual {v12, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 462
    .local v6, ePos:I
    const/4 v14, -0x1

    if-eq v6, v14, :cond_35

    add-int/lit8 v14, v6, 0x1

    invoke-virtual {v12, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 464
    .local v11, rounds:Ljava/lang/String;
    :goto_1c
    const/4 v14, -0x1

    if-eq v6, v14, :cond_22

    .line 465
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 468
    :cond_22
    const/4 v7, 0x0

    .line 470
    .local v7, exp:I
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    .line 472
    .local v9, len:I
    const/4 v4, 0x0

    .local v4, dotPos:I
    :goto_28
    if-ge v4, v9, :cond_38

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v14

    const/16 v15, 0x2e

    if-eq v14, v15, :cond_38

    .line 473
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 462
    .end local v4           #dotPos:I
    .end local v7           #exp:I
    .end local v9           #len:I
    .end local v11           #rounds:Ljava/lang/String;
    :cond_35
    const-string v11, ""

    goto :goto_1c

    .line 475
    .restart local v4       #dotPos:I
    .restart local v7       #exp:I
    .restart local v9       #len:I
    .restart local v11       #rounds:Ljava/lang/String;
    :cond_38
    add-int/2addr v7, v4

    .line 477
    if-ge v4, v9, :cond_40

    .line 478
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 479
    add-int/lit8 v9, v9, -0x1

    .line 481
    :cond_40
    add-int p3, p3, v7

    .line 482
    move/from16 v0, p3

    if-ge v0, v9, :cond_75

    .line 485
    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v14

    const/16 v15, 0x35

    if-lt v14, v15, :cond_70

    .line 487
    add-int/lit8 v10, p3, -0x1

    .local v10, p:I
    :goto_52
    if-ltz v10, :cond_64

    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v14

    const/16 v15, 0x39

    if-ne v14, v15, :cond_64

    .line 488
    const/16 v14, 0x30

    invoke-virtual {v3, v10, v14}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 487
    add-int/lit8 v10, v10, -0x1

    goto :goto_52

    .line 490
    :cond_64
    if-ltz v10, :cond_a2

    .line 491
    invoke-virtual {v3, v10}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v14

    add-int/lit8 v14, v14, 0x1

    int-to-char v14, v14

    invoke-virtual {v3, v10, v14}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 498
    .end local v10           #p:I
    :cond_70
    :goto_70
    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 501
    :cond_75
    const/4 v14, -0x5

    if-lt v7, v14, :cond_7c

    const/16 v14, 0xf

    if-le v7, v14, :cond_ad

    .line 502
    :cond_7c
    const/4 v14, 0x1

    const/16 v15, 0x2e

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 503
    add-int/lit8 v7, v7, -0x1

    .line 512
    :goto_84
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    .line 515
    sub-int v14, v9, v4

    add-int/lit8 v5, v14, -0x1

    .line 516
    .local v5, dotlen:I
    const/16 v14, 0xa

    if-le v5, v14, :cond_ce

    .line 517
    add-int/lit8 v5, v5, -0xa

    .line 518
    const/4 v8, 0x0

    .local v8, i:I
    :goto_93
    if-ge v8, v5, :cond_ce

    .line 519
    add-int/lit8 v14, v4, 0xa

    add-int/2addr v14, v8

    add-int/lit8 v14, v14, 0x1

    const/16 v15, 0x30

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 518
    add-int/lit8 v8, v8, 0x1

    goto :goto_93

    .line 493
    .end local v5           #dotlen:I
    .end local v8           #i:I
    .restart local v10       #p:I
    :cond_a2
    const/4 v14, 0x0

    const/16 v15, 0x31

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 494
    add-int/lit8 p3, p3, 0x1

    .line 495
    add-int/lit8 v7, v7, 0x1

    goto :goto_70

    .line 505
    .end local v10           #p:I
    :cond_ad
    move v8, v9

    .restart local v8       #i:I
    :goto_ae
    if-ge v8, v7, :cond_b8

    .line 506
    const/16 v14, 0x30

    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 505
    add-int/lit8 v8, v8, 0x1

    goto :goto_ae

    .line 507
    :cond_b8
    move v8, v7

    :goto_b9
    if-gtz v8, :cond_c4

    .line 508
    const/4 v14, 0x0

    const/16 v15, 0x30

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 507
    add-int/lit8 v8, v8, 0x1

    goto :goto_b9

    .line 509
    :cond_c4
    if-gtz v7, :cond_c7

    const/4 v7, 0x1

    .end local v7           #exp:I
    :cond_c7
    const/16 v14, 0x2e

    invoke-virtual {v3, v7, v14}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 510
    const/4 v7, 0x0

    .restart local v7       #exp:I
    goto :goto_84

    .line 525
    .end local v8           #i:I
    .restart local v5       #dotlen:I
    :cond_ce
    add-int/lit8 v13, v9, -0x1

    .local v13, tail:I
    :goto_d0
    if-ltz v13, :cond_e0

    invoke-virtual {v3, v13}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v14

    const/16 v15, 0x30

    if-ne v14, v15, :cond_e0

    .line 526
    invoke-virtual {v3, v13}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 525
    add-int/lit8 v13, v13, -0x1

    goto :goto_d0

    .line 528
    :cond_e0
    if-ltz v13, :cond_ed

    invoke-virtual {v3, v13}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v14

    const/16 v15, 0x2e

    if-ne v14, v15, :cond_ed

    .line 529
    invoke-virtual {v3, v13}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 531
    :cond_ed
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_fc

    .line 532
    const/16 v14, 0x45

    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 534
    :cond_fc
    const-wide/16 v14, 0x0

    cmpg-double v14, p1, v14

    if-gez v14, :cond_108

    .line 535
    const/4 v14, 0x0

    const/16 v15, 0x2d

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 536
    :cond_108
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    return-wide v14
.end method

.method public static final sin(D)D
    .registers 4
    .parameter "x"

    .prologue
    .line 334
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sec/android/app/calculator/CExpression;->isPiMultiple(D)Z

    move-result v0

    if-eqz v0, :cond_d

    const-wide/16 v0, 0x0

    :goto_c
    return-wide v0

    :cond_d
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    goto :goto_c
.end method

.method public static final tan(D)D
    .registers 6
    .parameter "x"

    .prologue
    .line 342
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L

    rem-double/2addr v0, v2

    const-wide v2, 0x4056800000000000L

    cmpl-double v0, v0, v2

    if-nez v0, :cond_16

    .line 343
    const-wide/high16 v0, 0x7ff0

    .line 344
    :goto_15
    return-wide v0

    :cond_16
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sec/android/app/calculator/CExpression;->isPiMultiple(D)Z

    move-result v0

    if-eqz v0, :cond_23

    const-wide/16 v0, 0x0

    goto :goto_15

    :cond_23
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    goto :goto_15
.end method


# virtual methods
.method public checkInputExp(Ljava/lang/StringBuilder;Z)Z
    .registers 7
    .parameter "input"
    .parameter "checkEnter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/app/calculator/SyntaxException;
        }
    .end annotation

    .prologue
    .line 1168
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v1, v2, :cond_6e

    .line 1169
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0xad

    if-ne v2, v3, :cond_16

    .line 1170
    add-int/lit8 v2, v1, 0x1

    const-string v3, "-"

    invoke-virtual {p1, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1171
    :cond_16
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x2212

    if-ne v2, v3, :cond_25

    .line 1172
    add-int/lit8 v2, v1, 0x1

    const-string v3, "-"

    invoke-virtual {p1, v1, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    :cond_25
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_35

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_3f

    .line 1175
    :cond_35
    iget-object v2, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1168
    :cond_3c
    :goto_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1178
    :cond_3f
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-eq v2, v3, :cond_3c

    .line 1181
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_64

    .line 1182
    if-eqz v1, :cond_5d

    if-eqz v1, :cond_64

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x28

    if-ne v2, v3, :cond_64

    .line 1183
    :cond_5d
    iget-object v2, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1186
    :cond_64
    iget-object v2, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3c

    .line 1188
    :cond_6e
    invoke-direct {p0, p2}, Lcom/sec/android/app/calculator/CExpression;->checkingExpression(Z)V

    .line 1189
    if-eqz p2, :cond_79

    .line 1191
    :try_start_73
    invoke-virtual {p0}, Lcom/sec/android/app/calculator/CExpression;->transInfixStringExp2TokenExp()V

    .line 1192
    invoke-direct {p0}, Lcom/sec/android/app/calculator/CExpression;->infix2postfix()V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_79} :catch_7b

    .line 1197
    :cond_79
    const/4 v2, 0x1

    :goto_7a
    return v2

    .line 1193
    :catch_7b
    move-exception v0

    .line 1194
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_7a
.end method

.method public evaluateExp()Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/app/calculator/SyntaxException;
        }
    .end annotation

    .prologue
    .line 1202
    const-wide/16 v6, 0x0

    .line 1203
    .local v6, val:D
    const/4 v0, 0x0

    .line 1205
    .local v0, n:I
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    .line 1206
    .local v3, tokenStack:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/sec/android/app/calculator/CToken;>;"
    new-instance v2, Lcom/sec/android/app/calculator/CToken;

    invoke-direct {v2}, Lcom/sec/android/app/calculator/CToken;-><init>()V

    .line 1208
    .local v2, t:Lcom/sec/android/app/calculator/CToken;
    sget-object v8, Lcom/sec/android/app/calculator/token_type;->EOS:Lcom/sec/android/app/calculator/token_type;

    invoke-virtual {v2, v8}, Lcom/sec/android/app/calculator/CToken;->setTokenType(Lcom/sec/android/app/calculator/token_type;)V

    .line 1209
    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    iget-object v8, p0, Lcom/sec/android/app/calculator/CExpression;->postfixTokenExp:[Lcom/sec/android/app/calculator/CToken;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #n:I
    .local v1, n:I
    aget-object v2, v8, v0

    move v0, v1

    .line 1212
    .end local v1           #n:I
    .restart local v0       #n:I
    :goto_1c
    invoke-virtual {v2}, Lcom/sec/android/app/calculator/CToken;->getTokenType()Lcom/sec/android/app/calculator/token_type;

    move-result-object v8

    sget-object v9, Lcom/sec/android/app/calculator/token_type;->EOS:Lcom/sec/android/app/calculator/token_type;

    if-eq v8, v9, :cond_6e

    .line 1213
    sget-object v8, Lcom/sec/android/app/calculator/CExpression$1;->$SwitchMap$com$sec$android$app$calculator$token_type:[I

    invoke-virtual {v2}, Lcom/sec/android/app/calculator/CToken;->getTokenType()Lcom/sec/android/app/calculator/token_type;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/app/calculator/token_type;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_82

    .line 1232
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/calculator/CToken;

    .line 1233
    .local v4, token_1:Lcom/sec/android/app/calculator/CToken;
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/calculator/CToken;

    .line 1234
    .local v5, token_2:Lcom/sec/android/app/calculator/CToken;
    invoke-direct {p0, v2, v5, v4}, Lcom/sec/android/app/calculator/CExpression;->evaluateByToken(Lcom/sec/android/app/calculator/CToken;Lcom/sec/android/app/calculator/CToken;Lcom/sec/android/app/calculator/CToken;)D

    move-result-wide v6

    .line 1235
    new-instance v8, Lcom/sec/android/app/calculator/CToken;

    sget-object v9, Lcom/sec/android/app/calculator/token_type;->OPERAND:Lcom/sec/android/app/calculator/token_type;

    invoke-direct {v8, v9, v6, v7}, Lcom/sec/android/app/calculator/CToken;-><init>(Lcom/sec/android/app/calculator/token_type;D)V

    invoke-virtual {v3, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1238
    .end local v4           #token_1:Lcom/sec/android/app/calculator/CToken;
    .end local v5           #token_2:Lcom/sec/android/app/calculator/CToken;
    :goto_4d
    iget-object v8, p0, Lcom/sec/android/app/calculator/CExpression;->postfixTokenExp:[Lcom/sec/android/app/calculator/CToken;

    add-int/lit8 v1, v0, 0x1

    .end local v0           #n:I
    .restart local v1       #n:I
    aget-object v2, v8, v0

    move v0, v1

    .end local v1           #n:I
    .restart local v0       #n:I
    goto :goto_1c

    .line 1215
    :pswitch_55
    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4d

    .line 1227
    :pswitch_59
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/calculator/CToken;

    .line 1228
    .restart local v4       #token_1:Lcom/sec/android/app/calculator/CToken;
    invoke-direct {p0, v2, v4}, Lcom/sec/android/app/calculator/CExpression;->evaluateByTokenOne(Lcom/sec/android/app/calculator/CToken;Lcom/sec/android/app/calculator/CToken;)D

    move-result-wide v6

    .line 1229
    new-instance v8, Lcom/sec/android/app/calculator/CToken;

    sget-object v9, Lcom/sec/android/app/calculator/token_type;->OPERAND:Lcom/sec/android/app/calculator/token_type;

    invoke-direct {v8, v9, v6, v7}, Lcom/sec/android/app/calculator/CToken;-><init>(Lcom/sec/android/app/calculator/token_type;D)V

    invoke-virtual {v3, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4d

    .line 1240
    .end local v4           #token_1:Lcom/sec/android/app/calculator/CToken;
    :cond_6e
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #t:Lcom/sec/android/app/calculator/CToken;
    check-cast v2, Lcom/sec/android/app/calculator/CToken;

    .line 1241
    .restart local v2       #t:Lcom/sec/android/app/calculator/CToken;
    invoke-virtual {v2}, Lcom/sec/android/app/calculator/CToken;->getTokenValue()D

    move-result-wide v8

    iput-wide v8, p0, Lcom/sec/android/app/calculator/CExpression;->value:D

    .line 1244
    iget-wide v8, p0, Lcom/sec/android/app/calculator/CExpression;->value:D

    invoke-static {v8, v9}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 1213
    nop

    :pswitch_data_82
    .packed-switch 0x6
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_55
    .end packed-switch
.end method

.method public transInfixStringExp2TokenExp()V
    .registers 7

    .prologue
    .line 1146
    new-instance v2, Lcom/sec/android/app/calculator/Int;

    invoke-direct {v2}, Lcom/sec/android/app/calculator/Int;-><init>()V

    .line 1147
    .local v2, n:Lcom/sec/android/app/calculator/Int;
    const/4 v1, 0x0

    .line 1148
    .local v1, index:I
    new-instance v3, Lcom/sec/android/app/calculator/CToken;

    invoke-direct {v3}, Lcom/sec/android/app/calculator/CToken;-><init>()V

    .line 1149
    .local v3, t:Lcom/sec/android/app/calculator/CToken;
    const/4 v4, 0x0

    iput v4, v2, Lcom/sec/android/app/calculator/Int;->data:I

    .line 1150
    const/4 v0, 0x0

    .line 1152
    .local v0, abs_num:I
    :cond_f
    :goto_f
    iget v4, v2, Lcom/sec/android/app/calculator/Int;->data:I

    iget-object v5, p0, Lcom/sec/android/app/calculator/CExpression;->infixStringExp:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-ge v4, v5, :cond_49

    .line 1153
    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/calculator/CExpression;->getToken(Lcom/sec/android/app/calculator/Int;I)Lcom/sec/android/app/calculator/CToken;

    move-result-object v3

    .line 1154
    iget v4, v2, Lcom/sec/android/app/calculator/Int;->data:I

    if-nez v4, :cond_3a

    .line 1155
    invoke-static {}, Lcom/sec/android/app/calculator/Cmyfunc;->getmOrigin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3a

    .line 1156
    invoke-static {}, Lcom/sec/android/app/calculator/Cmyfunc;->getmTrans()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/calculator/CToken;->setTokenValue(D)V

    .line 1158
    :cond_3a
    invoke-virtual {v3}, Lcom/sec/android/app/calculator/CToken;->getTokenType()Lcom/sec/android/app/calculator/token_type;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/calculator/token_type;->ENDMARKER:Lcom/sec/android/app/calculator/token_type;

    if-eq v4, v5, :cond_f

    .line 1160
    iget-object v4, p0, Lcom/sec/android/app/calculator/CExpression;->infixTokenExp:[Lcom/sec/android/app/calculator/CToken;

    aput-object v3, v4, v1

    .line 1161
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1164
    :cond_49
    return-void
.end method
