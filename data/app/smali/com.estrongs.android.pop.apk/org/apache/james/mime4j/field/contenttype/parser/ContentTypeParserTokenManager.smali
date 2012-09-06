.class public Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserConstants;


# static fields
.field static commentNest:I

.field static final jjbitVec0:[J

.field public static final jjnewLexState:[I

.field static final jjnextStates:[I

.field public static final jjstrLiteralImages:[Ljava/lang/String;

.field static final jjtoMore:[J

.field static final jjtoSkip:[J

.field static final jjtoSpecial:[J

.field static final jjtoToken:[J

.field public static final lexStateNames:[Ljava/lang/String;


# instance fields
.field protected curChar:C

.field curLexState:I

.field public debugStream:Ljava/io/PrintStream;

.field defaultLexState:I

.field image:Ljava/lang/StringBuffer;

.field protected input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

.field jjimageLen:I

.field jjmatchedKind:I

.field jjmatchedPos:I

.field jjnewStateCnt:I

.field jjround:I

.field private final jjrounds:[I

.field private final jjstateSet:[I

.field lengthOfMatch:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-array v0, v6, [J

    fill-array-data v0, :array_b8

    sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjbitVec0:[J

    new-array v0, v4, [I

    sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnextStates:[I

    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, "\r"

    aput-object v1, v0, v5

    const-string v1, "\n"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "/"

    aput-object v2, v0, v1

    const-string v1, ";"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "="

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    aput-object v3, v0, v1

    const/16 v1, 0x8

    aput-object v3, v0, v1

    const/16 v1, 0x9

    aput-object v3, v0, v1

    const/16 v1, 0xa

    aput-object v3, v0, v1

    const/16 v1, 0xb

    aput-object v3, v0, v1

    const/16 v1, 0xc

    aput-object v3, v0, v1

    const/16 v1, 0xd

    aput-object v3, v0, v1

    const/16 v1, 0xe

    aput-object v3, v0, v1

    const/16 v1, 0xf

    aput-object v3, v0, v1

    const/16 v1, 0x10

    aput-object v3, v0, v1

    const/16 v1, 0x11

    aput-object v3, v0, v1

    const/16 v1, 0x12

    aput-object v3, v0, v1

    const/16 v1, 0x13

    aput-object v3, v0, v1

    const/16 v1, 0x14

    aput-object v3, v0, v1

    const/16 v1, 0x15

    aput-object v3, v0, v1

    const/16 v1, 0x16

    aput-object v3, v0, v1

    const/16 v1, 0x17

    aput-object v3, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "DEFAULT"

    aput-object v1, v0, v4

    const-string v1, "INCOMMENT"

    aput-object v1, v0, v5

    const-string v1, "NESTED_COMMENT"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "INQUOTEDSTRING"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->lexStateNames:[Ljava/lang/String;

    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_cc

    sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewLexState:[I

    new-array v0, v5, [J

    const-wide/32 v1, 0x38003f

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjtoToken:[J

    new-array v0, v5, [J

    const-wide/16 v1, 0x140

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjtoSkip:[J

    new-array v0, v5, [J

    const-wide/16 v1, 0x40

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjtoSpecial:[J

    new-array v0, v5, [J

    const-wide/32 v1, 0x7fe80

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjtoMore:[J

    return-void

    nop

    :array_b8
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_cc
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0x2t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x3t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->debugStream:Ljava/io/PrintStream;

    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjrounds:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curLexState:I

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->defaultLexState:I

    iput-object p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;I)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;)V

    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method private final ReInitRounds()V
    .registers 4

    const v0, -0x7fffffff

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    const/4 v0, 0x3

    :goto_6
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_12

    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjrounds:[I

    const/high16 v2, -0x8000

    aput v2, v0, v1

    move v0, v1

    goto :goto_6

    :cond_12
    return-void
.end method

.method private final jjAddStates(II)V
    .registers 6

    :goto_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    sget-object v2, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnextStates:[I

    aget v2, v2, p1

    aput v2, v0, v1

    add-int/lit8 v0, p1, 0x1

    if-ne p1, p2, :cond_13

    return-void

    :cond_13
    move p1, v0

    goto :goto_0
.end method

.method private final jjCheckNAdd(I)V
    .registers 5

    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjrounds:[I

    aget v0, v0, p1

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    aput p1, v0, v1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjrounds:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    aput v1, v0, p1

    :cond_18
    return-void
.end method

.method private final jjCheckNAddStates(I)V
    .registers 4

    sget-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnextStates:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    sget-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnextStates:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    return-void
.end method

.method private final jjCheckNAddStates(II)V
    .registers 4

    :goto_0
    sget-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnextStates:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    add-int/lit8 v0, p1, 0x1

    if-ne p1, p2, :cond_c

    return-void

    :cond_c
    move p1, v0

    goto :goto_0
.end method

.method private final jjCheckNAddTwoStates(II)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    invoke-direct {p0, p2}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    return-void
.end method

.method private final jjMoveNfa_0(II)I
    .registers 13

    const/4 v2, 0x0

    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    const/4 v3, 0x0

    aput p1, v0, v3

    const v0, 0x7fffffff

    :goto_d
    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_1b

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->ReInitRounds()V

    :cond_1b
    iget-char v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v4, 0x40

    if-ge v3, v4, :cond_c5

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    shl-long/2addr v3, v5

    :cond_26
    iget-object v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v5, v5, v1

    packed-switch v5, :pswitch_data_12e

    :cond_2f
    :goto_2f
    if-ne v1, v2, :cond_26

    :goto_31
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_3d

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    iput p2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    const v0, 0x7fffffff

    :cond_3d
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v2, v2, 0x3

    if-ne v1, v2, :cond_120

    :goto_47
    return p2

    :pswitch_48
    const-wide v5, 0x3ff6cfafffffdffL

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_72

    const/16 v5, 0x15

    if-le v0, v5, :cond_5a

    const/16 v0, 0x15

    :cond_5a
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    :cond_5e
    :goto_5e
    const-wide/high16 v5, 0x3ff

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2f

    const/16 v5, 0x14

    if-le v0, v5, :cond_6d

    const/16 v0, 0x14

    :cond_6d
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_2f

    :cond_72
    const-wide v5, 0x100000200L

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_5e

    const/4 v5, 0x6

    if-le v0, v5, :cond_82

    const/4 v0, 0x6

    :cond_82
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_5e

    :pswitch_87
    const-wide v5, 0x100000200L

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2f

    const/4 v0, 0x6

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_2f

    :pswitch_99
    const-wide/high16 v5, 0x3ff

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2f

    const/16 v5, 0x14

    if-le v0, v5, :cond_a8

    const/16 v0, 0x14

    :cond_a8
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_2f

    :pswitch_ad
    const-wide v5, 0x3ff6cfafffffdffL

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2f

    const/16 v5, 0x15

    if-le v0, v5, :cond_bf

    const/16 v0, 0x15

    :cond_bf
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_2f

    :cond_c5
    iget-char v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v4, 0x80

    if-ge v3, v4, :cond_f0

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit8 v5, v5, 0x3f

    shl-long/2addr v3, v5

    :cond_d2
    iget-object v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v5, v5, v1

    packed-switch v5, :pswitch_data_13a

    :cond_db
    :goto_db
    if-ne v1, v2, :cond_d2

    goto/16 :goto_31

    :pswitch_df
    const-wide/32 v5, -0x38000002

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_db

    const/16 v0, 0x15

    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_db

    :cond_f0
    iget-char v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x6

    const-wide/16 v4, 0x1

    iget-char v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit8 v6, v6, 0x3f

    shl-long/2addr v4, v6

    :cond_fd
    iget-object v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v6, v6, v1

    packed-switch v6, :pswitch_data_142

    :cond_106
    :goto_106
    if-ne v1, v2, :cond_fd

    goto/16 :goto_31

    :pswitch_10a
    sget-object v6, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjbitVec0:[J

    aget-wide v6, v6, v3

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_106

    const/16 v6, 0x15

    if-le v0, v6, :cond_11b

    const/16 v0, 0x15

    :cond_11b
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_106

    :cond_120
    :try_start_120
    iget-object v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C

    move-result v3

    iput-char v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
    :try_end_128
    .catch Ljava/io/IOException; {:try_start_120 .. :try_end_128} :catch_12a

    goto/16 :goto_d

    :catch_12a
    move-exception v0

    goto/16 :goto_47

    nop

    :pswitch_data_12e
    .packed-switch 0x0
        :pswitch_87
        :pswitch_99
        :pswitch_ad
        :pswitch_48
    .end packed-switch

    :pswitch_data_13a
    .packed-switch 0x2
        :pswitch_df
        :pswitch_df
    .end packed-switch

    :pswitch_data_142
    .packed-switch 0x2
        :pswitch_10a
        :pswitch_10a
    .end packed-switch
.end method

.method private final jjMoveNfa_1(II)I
    .registers 13

    const/4 v2, 0x0

    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    const/4 v3, 0x0

    aput p1, v0, v3

    const v0, 0x7fffffff

    :goto_d
    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_1b

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->ReInitRounds()V

    :cond_1b
    iget-char v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v4, 0x40

    if-ge v3, v4, :cond_56

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    shl-long/2addr v3, v5

    :cond_26
    iget-object v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v3, v1

    packed-switch v3, :pswitch_data_e0

    :cond_2f
    :goto_2f
    if-ne v1, v2, :cond_26

    :goto_31
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_3d

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    iput p2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    const v0, 0x7fffffff

    :cond_3d
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v2, v2, 0x3

    if-ne v1, v2, :cond_d2

    :goto_47
    return p2

    :pswitch_48
    const/16 v3, 0xb

    if-le v0, v3, :cond_2f

    const/16 v0, 0xb

    goto :goto_2f

    :pswitch_4f
    const/16 v3, 0x9

    if-le v0, v3, :cond_2f

    const/16 v0, 0x9

    goto :goto_2f

    :cond_56
    iget-char v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v4, 0x80

    if-ge v3, v4, :cond_95

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit8 v5, v5, 0x3f

    shl-long/2addr v3, v5

    :cond_63
    iget-object v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v3, v1

    packed-switch v3, :pswitch_data_e8

    :cond_6c
    :goto_6c
    if-ne v1, v2, :cond_63

    goto :goto_31

    :pswitch_6f
    const/16 v3, 0xb

    if-le v0, v3, :cond_75

    const/16 v0, 0xb

    :cond_75
    iget-char v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_6c

    iget-object v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    const/4 v5, 0x1

    aput v5, v3, v4

    goto :goto_6c

    :pswitch_87
    const/16 v3, 0x9

    if-le v0, v3, :cond_6c

    const/16 v0, 0x9

    goto :goto_6c

    :pswitch_8e
    const/16 v3, 0xb

    if-le v0, v3, :cond_6c

    const/16 v0, 0xb

    goto :goto_6c

    :cond_95
    iget-char v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x6

    const-wide/16 v4, 0x1

    iget-char v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit8 v6, v6, 0x3f

    shl-long/2addr v4, v6

    :cond_a2
    iget-object v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v6, v6, v1

    packed-switch v6, :pswitch_data_f2

    :cond_ab
    :goto_ab
    if-ne v1, v2, :cond_a2

    goto :goto_31

    :pswitch_ae
    sget-object v6, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjbitVec0:[J

    aget-wide v6, v6, v3

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_ab

    const/16 v6, 0xb

    if-le v0, v6, :cond_ab

    const/16 v0, 0xb

    goto :goto_ab

    :pswitch_c0
    sget-object v6, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjbitVec0:[J

    aget-wide v6, v6, v3

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_ab

    const/16 v6, 0x9

    if-le v0, v6, :cond_ab

    const/16 v0, 0x9

    goto :goto_ab

    :cond_d2
    :try_start_d2
    iget-object v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C

    move-result v3

    iput-char v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_da} :catch_dc

    goto/16 :goto_d

    :catch_dc
    move-exception v0

    goto/16 :goto_47

    nop

    :pswitch_data_e0
    .packed-switch 0x0
        :pswitch_48
        :pswitch_4f
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_6f
        :pswitch_87
        :pswitch_8e
    .end packed-switch

    :pswitch_data_f2
    .packed-switch 0x0
        :pswitch_ae
        :pswitch_c0
    .end packed-switch
.end method

.method private final jjMoveNfa_2(II)I
    .registers 13

    const/4 v2, 0x0

    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    const/4 v3, 0x0

    aput p1, v0, v3

    const v0, 0x7fffffff

    :goto_d
    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_1b

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->ReInitRounds()V

    :cond_1b
    iget-char v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v4, 0x40

    if-ge v3, v4, :cond_56

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    shl-long/2addr v3, v5

    :cond_26
    iget-object v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v3, v1

    packed-switch v3, :pswitch_data_e0

    :cond_2f
    :goto_2f
    if-ne v1, v2, :cond_26

    :goto_31
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_3d

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    iput p2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    const v0, 0x7fffffff

    :cond_3d
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v2, v2, 0x3

    if-ne v1, v2, :cond_d2

    :goto_47
    return p2

    :pswitch_48
    const/16 v3, 0xf

    if-le v0, v3, :cond_2f

    const/16 v0, 0xf

    goto :goto_2f

    :pswitch_4f
    const/16 v3, 0xc

    if-le v0, v3, :cond_2f

    const/16 v0, 0xc

    goto :goto_2f

    :cond_56
    iget-char v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v4, 0x80

    if-ge v3, v4, :cond_95

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit8 v5, v5, 0x3f

    shl-long/2addr v3, v5

    :cond_63
    iget-object v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v3, v1

    packed-switch v3, :pswitch_data_e8

    :cond_6c
    :goto_6c
    if-ne v1, v2, :cond_63

    goto :goto_31

    :pswitch_6f
    const/16 v3, 0xf

    if-le v0, v3, :cond_75

    const/16 v0, 0xf

    :cond_75
    iget-char v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_6c

    iget-object v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    iget v4, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    const/4 v5, 0x1

    aput v5, v3, v4

    goto :goto_6c

    :pswitch_87
    const/16 v3, 0xc

    if-le v0, v3, :cond_6c

    const/16 v0, 0xc

    goto :goto_6c

    :pswitch_8e
    const/16 v3, 0xf

    if-le v0, v3, :cond_6c

    const/16 v0, 0xf

    goto :goto_6c

    :cond_95
    iget-char v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x6

    const-wide/16 v4, 0x1

    iget-char v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit8 v6, v6, 0x3f

    shl-long/2addr v4, v6

    :cond_a2
    iget-object v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v6, v6, v1

    packed-switch v6, :pswitch_data_f2

    :cond_ab
    :goto_ab
    if-ne v1, v2, :cond_a2

    goto :goto_31

    :pswitch_ae
    sget-object v6, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjbitVec0:[J

    aget-wide v6, v6, v3

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_ab

    const/16 v6, 0xf

    if-le v0, v6, :cond_ab

    const/16 v0, 0xf

    goto :goto_ab

    :pswitch_c0
    sget-object v6, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjbitVec0:[J

    aget-wide v6, v6, v3

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_ab

    const/16 v6, 0xc

    if-le v0, v6, :cond_ab

    const/16 v0, 0xc

    goto :goto_ab

    :cond_d2
    :try_start_d2
    iget-object v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C

    move-result v3

    iput-char v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
    :try_end_da
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_da} :catch_dc

    goto/16 :goto_d

    :catch_dc
    move-exception v0

    goto/16 :goto_47

    nop

    :pswitch_data_e0
    .packed-switch 0x0
        :pswitch_48
        :pswitch_4f
    .end packed-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_6f
        :pswitch_87
        :pswitch_8e
    .end packed-switch

    :pswitch_data_f2
    .packed-switch 0x0
        :pswitch_ae
        :pswitch_c0
    .end packed-switch
.end method

.method private final jjMoveNfa_3(II)I
    .registers 13

    const/4 v2, 0x0

    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    const/4 v3, 0x0

    aput p1, v0, v3

    const v0, 0x7fffffff

    :goto_d
    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjround:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_1b

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->ReInitRounds()V

    :cond_1b
    iget-char v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v4, 0x40

    if-ge v3, v4, :cond_66

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    shl-long/2addr v3, v5

    :cond_26
    iget-object v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v5, v5, v1

    packed-switch v5, :pswitch_data_112

    :cond_2f
    :goto_2f
    if-ne v1, v2, :cond_26

    :goto_31
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_3d

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    iput p2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    const v0, 0x7fffffff

    :cond_3d
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    iput v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v2, v2, 0x3

    if-ne v1, v2, :cond_104

    :goto_47
    return p2

    :pswitch_48
    const-wide v5, -0x400000001L

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2f

    const/16 v5, 0x12

    if-le v0, v5, :cond_5a

    const/16 v0, 0x12

    :cond_5a
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_2f

    :pswitch_5f
    const/16 v5, 0x11

    if-le v0, v5, :cond_2f

    const/16 v0, 0x11

    goto :goto_2f

    :cond_66
    iget-char v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v4, 0x80

    if-ge v3, v4, :cond_c2

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit8 v5, v5, 0x3f

    shl-long/2addr v3, v5

    :cond_73
    iget-object v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v5, v5, v1

    packed-switch v5, :pswitch_data_11c

    :cond_7c
    :goto_7c
    if-ne v1, v2, :cond_73

    goto :goto_31

    :pswitch_7f
    const-wide/32 v5, -0x10000001

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_94

    const/16 v5, 0x12

    if-le v0, v5, :cond_8f

    const/16 v0, 0x12

    :cond_8f
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_7c

    :cond_94
    iget-char v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_7c

    iget-object v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    iget v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    const/4 v7, 0x1

    aput v7, v5, v6

    goto :goto_7c

    :pswitch_a6
    const/16 v5, 0x11

    if-le v0, v5, :cond_7c

    const/16 v0, 0x11

    goto :goto_7c

    :pswitch_ad
    const-wide/32 v5, -0x10000001

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_7c

    const/16 v5, 0x12

    if-le v0, v5, :cond_bd

    const/16 v0, 0x12

    :cond_bd
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_7c

    :cond_c2
    iget-char v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x6

    const-wide/16 v4, 0x1

    iget-char v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    and-int/lit8 v6, v6, 0x3f

    shl-long/2addr v4, v6

    :cond_cf
    iget-object v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v6, v6, v1

    packed-switch v6, :pswitch_data_126

    :cond_d8
    :goto_d8
    if-ne v1, v2, :cond_cf

    goto/16 :goto_31

    :pswitch_dc
    sget-object v6, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjbitVec0:[J

    aget-wide v6, v6, v3

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_d8

    const/16 v6, 0x12

    if-le v0, v6, :cond_ed

    const/16 v0, 0x12

    :cond_ed
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_d8

    :pswitch_f2
    sget-object v6, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjbitVec0:[J

    aget-wide v6, v6, v3

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_d8

    const/16 v6, 0x11

    if-le v0, v6, :cond_d8

    const/16 v0, 0x11

    goto :goto_d8

    :cond_104
    :try_start_104
    iget-object v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C

    move-result v3

    iput-char v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
    :try_end_10c
    .catch Ljava/io/IOException; {:try_start_104 .. :try_end_10c} :catch_10e

    goto/16 :goto_d

    :catch_10e
    move-exception v0

    goto/16 :goto_47

    nop

    :pswitch_data_112
    .packed-switch 0x0
        :pswitch_48
        :pswitch_5f
        :pswitch_48
    .end packed-switch

    :pswitch_data_11c
    .packed-switch 0x0
        :pswitch_7f
        :pswitch_a6
        :pswitch_ad
    .end packed-switch

    :pswitch_data_126
    .packed-switch 0x0
        :pswitch_dc
        :pswitch_f2
        :pswitch_dc
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa0_0()I
    .registers 5

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x0

    iget-char v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_36

    invoke-direct {p0, v3, v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    :goto_c
    return v0

    :sswitch_d
    invoke-direct {p0, v1, v2, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_c

    :sswitch_12
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    goto :goto_c

    :sswitch_18
    const/16 v0, 0x10

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_c

    :sswitch_1f
    const/4 v0, 0x7

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_c

    :sswitch_25
    invoke-direct {p0, v1, v3}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_c

    :sswitch_2a
    const/4 v0, 0x4

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_c

    :sswitch_30
    const/4 v0, 0x5

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_c

    :sswitch_data_36
    .sparse-switch
        0xa -> :sswitch_d
        0xd -> :sswitch_12
        0x22 -> :sswitch_18
        0x28 -> :sswitch_1f
        0x2f -> :sswitch_25
        0x3b -> :sswitch_2a
        0x3d -> :sswitch_30
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa0_1()I
    .registers 3

    const/4 v1, 0x0

    iget-char v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_1a

    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    :goto_a
    return v0

    :pswitch_b
    const/16 v0, 0xa

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_a

    :pswitch_12
    const/16 v0, 0x8

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_a

    nop

    :pswitch_data_1a
    .packed-switch 0x28
        :pswitch_b
        :pswitch_12
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa0_2()I
    .registers 3

    const/4 v1, 0x0

    iget-char v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_1a

    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    :goto_a
    return v0

    :pswitch_b
    const/16 v0, 0xd

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_a

    :pswitch_12
    const/16 v0, 0xe

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_a

    nop

    :pswitch_data_1a
    .packed-switch 0x28
        :pswitch_b
        :pswitch_12
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa0_3()I
    .registers 3

    const/4 v1, 0x0

    iget-char v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_12

    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    :goto_a
    return v0

    :pswitch_b
    const/16 v0, 0x13

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_a

    :pswitch_data_12
    .packed-switch 0x22
        :pswitch_b
    .end packed-switch
.end method

.method private final jjStartNfaWithStates_0(III)I
    .registers 5

    iput p2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    :try_start_4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_13

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p3, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    :goto_12
    return v0

    :catch_13
    move-exception v0

    add-int/lit8 v0, p1, 0x1

    goto :goto_12
.end method

.method private final jjStartNfaWithStates_1(III)I
    .registers 5

    iput p2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    :try_start_4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_13

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p3, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    :goto_12
    return v0

    :catch_13
    move-exception v0

    add-int/lit8 v0, p1, 0x1

    goto :goto_12
.end method

.method private final jjStartNfaWithStates_2(III)I
    .registers 5

    iput p2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    :try_start_4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_13

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p3, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    :goto_12
    return v0

    :catch_13
    move-exception v0

    add-int/lit8 v0, p1, 0x1

    goto :goto_12
.end method

.method private final jjStartNfaWithStates_3(III)I
    .registers 5

    iput p2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    :try_start_4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_13

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p3, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    :goto_12
    return v0

    :catch_13
    move-exception v0

    add-int/lit8 v0, p1, 0x1

    goto :goto_12
.end method

.method private final jjStartNfa_0(IJ)I
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_1(IJ)I
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_2(IJ)I
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopStringLiteralDfa_2(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_3(IJ)I
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjStopStringLiteralDfa_3(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    return v0
.end method

.method private final jjStopAtPos(II)I
    .registers 4

    iput p2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_0(IJ)I
    .registers 5

    const/4 v0, -0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_1(IJ)I
    .registers 5

    const/4 v0, -0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_2(IJ)I
    .registers 5

    const/4 v0, -0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_3(IJ)I
    .registers 5

    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method MoreLexicalActions()V
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    iget v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->lengthOfMatch:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_11e

    :cond_12
    :goto_12
    :pswitch_12
    return-void

    :pswitch_13
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_1e
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_12

    :pswitch_3b
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_46

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_46
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    sput v4, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->commentNest:I

    goto :goto_12

    :pswitch_58
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_63

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_63
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_12

    :pswitch_80
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_8b

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_8b
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    sget v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->commentNest:I

    goto/16 :goto_12

    :pswitch_a2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_ad

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_ad
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    sget v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->commentNest:I

    sget v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->commentNest:I

    if-nez v0, :cond_12

    invoke-virtual {p0, v4}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->SwitchTo(I)V

    goto/16 :goto_12

    :pswitch_cb
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_d6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_d6
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_12

    :pswitch_f4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_ff

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_ff
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_12

    nop

    :pswitch_data_11e
    .packed-switch 0x9
        :pswitch_13
        :pswitch_3b
        :pswitch_12
        :pswitch_58
        :pswitch_80
        :pswitch_a2
        :pswitch_12
        :pswitch_cb
        :pswitch_f4
    .end packed-switch
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewStateCnt:I

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->defaultLexState:I

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curLexState:I

    iput-object p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->ReInitRounds()V

    return-void
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;I)V
    .registers 3

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;)V

    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method public SwitchTo(I)V
    .registers 5

    const/4 v0, 0x4

    if-ge p1, v0, :cond_5

    if-gez p1, :cond_25

    :cond_5
    new-instance v0, Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Ignoring invalid lexical state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". State unchanged."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_25
    iput p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curLexState:I

    return-void
.end method

.method TokenLexicalActions(Lorg/apache/james/mime4j/field/contenttype/parser/Token;)V
    .registers 6

    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_38

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_11
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->image:Ljava/lang/String;

    goto :goto_5

    nop

    :pswitch_data_38
    .packed-switch 0x13
        :pswitch_6
    .end packed-switch
.end method

.method public getNextToken()Lorg/apache/james/mime4j/field/contenttype/parser/Token;
    .registers 13

    const/4 v5, 0x0

    const/4 v11, -0x1

    const/4 v6, 0x1

    const v10, 0x7fffffff

    const/4 v7, 0x0

    move v0, v7

    move-object v1, v5

    :goto_9
    :try_start_9
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->BeginToken()C

    move-result v2

    iput-char v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_11} :catch_60

    iput-object v5, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iput v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjimageLen:I

    :goto_15
    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curLexState:I

    packed-switch v2, :pswitch_data_15e

    move v2, v0

    :goto_1b
    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    if-eq v0, v10, :cond_ff

    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v0, v0, 0x1

    if-ge v0, v2, :cond_30

    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    sub-int v3, v2, v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->backup(I)V

    :cond_30
    sget-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjtoToken:[J

    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v3, v0, v3

    const-wide/16 v8, 0x1

    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v8, v0

    and-long/2addr v3, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v3, v8

    if-eqz v0, :cond_92

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v0

    iput-object v1, v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->TokenLexicalActions(Lorg/apache/james/mime4j/field/contenttype/parser/Token;)V

    sget-object v1, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewLexState:[I

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v2

    if-eq v1, v11, :cond_5f

    sget-object v1, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewLexState:[I

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v2

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curLexState:I

    :cond_5f
    :goto_5f
    return-object v0

    :catch_60
    move-exception v0

    iput v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v0

    iput-object v1, v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    goto :goto_5f

    :pswitch_6a
    iput v10, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveStringLiteralDfa0_0()I

    move-result v0

    move v2, v0

    goto :goto_1b

    :pswitch_74
    iput v10, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveStringLiteralDfa0_1()I

    move-result v0

    move v2, v0

    goto :goto_1b

    :pswitch_7e
    iput v10, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveStringLiteralDfa0_2()I

    move-result v0

    move v2, v0

    goto :goto_1b

    :pswitch_88
    iput v10, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedPos:I

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjMoveStringLiteralDfa0_3()I

    move-result v0

    move v2, v0

    goto :goto_1b

    :cond_92
    sget-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjtoSkip:[J

    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v3, v0, v3

    const-wide/16 v8, 0x1

    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v8, v0

    and-long/2addr v3, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v3, v8

    if-eqz v0, :cond_dd

    sget-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjtoSpecial:[J

    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v3, v0, v3

    const-wide/16 v8, 0x1

    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v8, v0

    and-long/2addr v3, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v3, v8

    if-eqz v0, :cond_157

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v0

    if-nez v1, :cond_d8

    :goto_c4
    sget-object v1, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewLexState:[I

    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    if-eq v1, v11, :cond_15a

    sget-object v1, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewLexState:[I

    iget v3, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    iput v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curLexState:I

    move-object v1, v0

    move v0, v2

    goto/16 :goto_9

    :cond_d8
    iput-object v1, v0, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    iput-object v0, v1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->next:Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    goto :goto_c4

    :cond_dd
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->MoreLexicalActions()V

    sget-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewLexState:[I

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v2

    if-eq v0, v11, :cond_f0

    sget-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjnewLexState:[I

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v2

    iput v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curLexState:I

    :cond_f0
    iput v10, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    :try_start_f2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C
    :try_end_fa
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_fa} :catch_fd

    move v0, v7

    goto/16 :goto_15

    :catch_fd
    move-exception v0

    move v2, v7

    :cond_ff
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->getEndLine()I

    move-result v3

    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->getEndColumn()I

    move-result v4

    :try_start_10b
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->readChar()C

    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->backup(I)V
    :try_end_116
    .catch Ljava/io/IOException; {:try_start_10b .. :try_end_116} :catch_12d

    move v1, v7

    :goto_117
    if-nez v1, :cond_123

    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v0, v6}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->backup(I)V

    if-gt v2, v6, :cond_150

    const-string v0, ""

    :goto_122
    move-object v5, v0

    :cond_123
    new-instance v0, Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError;

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curLexState:I

    iget-char v6, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    invoke-direct/range {v0 .. v7}, Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v0

    :catch_12d
    move-exception v0

    if-gt v2, v6, :cond_144

    const-string v0, ""

    :goto_132
    iget-char v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v5, 0xa

    if-eq v1, v5, :cond_13e

    iget-char v1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->curChar:C

    const/16 v5, 0xd

    if-ne v1, v5, :cond_14b

    :cond_13e
    add-int/lit8 v3, v3, 0x1

    move v1, v6

    move-object v5, v0

    move v4, v7

    goto :goto_117

    :cond_144
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    goto :goto_132

    :cond_14b
    add-int/lit8 v4, v4, 0x1

    move v1, v6

    move-object v5, v0

    goto :goto_117

    :cond_150
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    goto :goto_122

    :cond_157
    move-object v0, v1

    goto/16 :goto_c4

    :cond_15a
    move-object v1, v0

    move v0, v2

    goto/16 :goto_9

    :pswitch_data_15e
    .packed-switch 0x0
        :pswitch_6a
        :pswitch_74
        :pswitch_7e
        :pswitch_88
    .end packed-switch
.end method

.method protected jjFillToken()Lorg/apache/james/mime4j/field/contenttype/parser/Token;
    .registers 4

    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    invoke-static {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->newToken(I)Lorg/apache/james/mime4j/field/contenttype/parser/Token;

    move-result-object v1

    iget v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    iput v0, v1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->kind:I

    sget-object v0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v2, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->jjmatchedKind:I

    aget-object v0, v0, v2

    if-nez v0, :cond_18

    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    :cond_18
    iput-object v0, v1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->image:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->getBeginLine()I

    move-result v0

    iput v0, v1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->beginLine:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->getBeginColumn()I

    move-result v0

    iput v0, v1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->beginColumn:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->getEndLine()I

    move-result v0

    iput v0, v1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->endLine:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/contenttype/parser/SimpleCharStream;->getEndColumn()I

    move-result v0

    iput v0, v1, Lorg/apache/james/mime4j/field/contenttype/parser/Token;->endColumn:I

    return-object v1
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/james/mime4j/field/contenttype/parser/ContentTypeParserTokenManager;->debugStream:Ljava/io/PrintStream;

    return-void
.end method
