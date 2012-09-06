.class public Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserConstants;


# static fields
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
.field commentNest:I

.field protected curChar:C

.field curLexState:I

.field public debugStream:Ljava/io/PrintStream;

.field defaultLexState:I

.field image:Ljava/lang/StringBuffer;

.field protected input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

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

    fill-array-data v0, :array_b0

    sput-object v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjbitVec0:[J

    new-array v0, v4, [I

    sput-object v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnextStates:[I

    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, ","

    aput-object v1, v0, v5

    const-string v1, "-"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    aput-object v3, v0, v1

    aput-object v3, v0, v6

    const/4 v1, 0x5

    aput-object v3, v0, v1

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

    const-string v2, "."

    aput-object v2, v0, v1

    const/16 v1, 0x15

    aput-object v3, v0, v1

    const/16 v1, 0x16

    aput-object v3, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

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

    sput-object v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->lexStateNames:[Ljava/lang/String;

    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_c4

    sput-object v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewLexState:[I

    new-array v0, v5, [J

    const-wide/32 v1, 0x1f0007

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjtoToken:[J

    new-array v0, v5, [J

    const-wide/16 v1, 0x28

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjtoSkip:[J

    new-array v0, v5, [J

    const-wide/16 v1, 0x8

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjtoSpecial:[J

    new-array v0, v5, [J

    const-wide/32 v1, 0xffd0

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjtoMore:[J

    return-void

    nop

    :array_b0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_c4
    .array-data 0x4
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
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->debugStream:Ljava/io/PrintStream;

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjrounds:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curLexState:I

    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->defaultLexState:I

    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;I)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;)V

    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method private final ReInitRounds()V
    .registers 4

    const v0, -0x7fffffff

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjround:I

    const/4 v0, 0x4

    :goto_6
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_12

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjrounds:[I

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
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    sget-object v2, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnextStates:[I

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

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjrounds:[I

    aget v0, v0, p1

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjround:I

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    aput p1, v0, v1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjrounds:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjround:I

    aput v1, v0, p1

    :cond_18
    return-void
.end method

.method private final jjCheckNAddStates(I)V
    .registers 4

    sget-object v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnextStates:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    sget-object v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnextStates:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    return-void
.end method

.method private final jjCheckNAddStates(II)V
    .registers 4

    :goto_0
    sget-object v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnextStates:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    add-int/lit8 v0, p1, 0x1

    if-ne p1, p2, :cond_c

    return-void

    :cond_c
    move p1, v0

    goto :goto_0
.end method

.method private final jjCheckNAddTwoStates(II)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    invoke-direct {p0, p2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    return-void
.end method

.method private final jjMoveNfa_0(II)I
    .registers 16

    const/16 v6, 0x11

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/16 v4, 0x13

    const-wide/16 v11, 0x0

    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    aput p1, v0, v3

    const v0, 0x7fffffff

    move v2, v3

    :goto_14
    iget v7, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjround:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjround:I

    const v8, 0x7fffffff

    if-ne v7, v8, :cond_22

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->ReInitRounds()V

    :cond_22
    iget-char v7, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v8, 0x40

    if-ge v7, v8, :cond_a8

    const-wide/16 v7, 0x1

    iget-char v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    shl-long/2addr v7, v9

    :cond_2d
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_132

    :cond_36
    :goto_36
    :pswitch_36
    if-ne v1, v2, :cond_2d

    :goto_38
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_44

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    iput p2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    const v0, 0x7fffffff

    :cond_44
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    iput v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v2, v2, 0x4

    if-ne v1, v2, :cond_124

    :goto_4e
    return p2

    :pswitch_4f
    const-wide/high16 v9, 0x3ff

    and-long/2addr v9, v7

    cmp-long v9, v9, v11

    if-eqz v9, :cond_6b

    if-le v0, v4, :cond_59

    move v0, v4

    :cond_59
    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    :cond_5c
    :goto_5c
    const-wide/high16 v9, 0x3ff

    and-long/2addr v9, v7

    cmp-long v9, v9, v11

    if-eqz v9, :cond_36

    if-le v0, v6, :cond_66

    move v0, v6

    :cond_66
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_36

    :cond_6b
    const-wide v9, 0x100002600L

    and-long/2addr v9, v7

    cmp-long v9, v9, v11

    if-eqz v9, :cond_5c

    if-le v0, v5, :cond_78

    move v0, v5

    :cond_78
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_5c

    :pswitch_7c
    const-wide v9, 0x100002600L

    and-long/2addr v9, v7

    cmp-long v9, v9, v11

    if-eqz v9, :cond_36

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    move v0, v5

    goto :goto_36

    :pswitch_8b
    const-wide/high16 v9, 0x3ff

    and-long/2addr v9, v7

    cmp-long v9, v9, v11

    if-eqz v9, :cond_36

    if-le v0, v6, :cond_95

    move v0, v6

    :cond_95
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_36

    :pswitch_9a
    const-wide/high16 v9, 0x3ff

    and-long/2addr v9, v7

    cmp-long v9, v9, v11

    if-eqz v9, :cond_36

    if-le v0, v4, :cond_a4

    move v0, v4

    :cond_a4
    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_36

    :cond_a8
    iget-char v7, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v8, 0x80

    if-ge v7, v8, :cond_10d

    const-wide/16 v7, 0x1

    iget-char v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    and-int/lit8 v9, v9, 0x3f

    shl-long/2addr v7, v9

    :cond_b5
    iget-object v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v9, v9, v1

    packed-switch v9, :pswitch_data_140

    :cond_be
    :goto_be
    if-ne v1, v2, :cond_b5

    goto/16 :goto_38

    :pswitch_c2
    const-wide v9, 0x7fffffe07fffffeL

    and-long/2addr v9, v7

    cmp-long v9, v9, v11

    if-eqz v9, :cond_d2

    if-le v0, v4, :cond_cf

    move v0, v4

    :cond_cf
    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    :cond_d2
    const-wide v9, 0x7fffffe07fffffeL

    and-long/2addr v9, v7

    cmp-long v9, v9, v11

    if-eqz v9, :cond_be

    const/16 v9, 0x12

    if-le v0, v9, :cond_e2

    const/16 v0, 0x12

    :cond_e2
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_be

    :pswitch_e7
    const-wide v9, 0x7fffffe07fffffeL

    and-long/2addr v9, v7

    cmp-long v9, v9, v11

    if-eqz v9, :cond_be

    const/16 v9, 0x12

    if-le v0, v9, :cond_f7

    const/16 v0, 0x12

    :cond_f7
    const/4 v9, 0x2

    invoke-direct {p0, v9}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_be

    :pswitch_fc
    const-wide v9, 0x7fffffe07fffffeL

    and-long/2addr v9, v7

    cmp-long v9, v9, v11

    if-eqz v9, :cond_be

    if-le v0, v4, :cond_109

    move v0, v4

    :cond_109
    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_be

    :cond_10d
    iget-char v7, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v7, v7, 0x6

    const-wide/16 v7, 0x1

    iget-char v9, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    and-int/lit8 v9, v9, 0x3f

    shl-long/2addr v7, v9

    :cond_11a
    iget-object v7, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v7, v7, v1

    if-ne v1, v2, :cond_11a

    goto/16 :goto_38

    :cond_124
    :try_start_124
    iget-object v7, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v7}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->readChar()C

    move-result v7

    iput-char v7, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C
    :try_end_12c
    .catch Ljava/io/IOException; {:try_start_124 .. :try_end_12c} :catch_12e

    goto/16 :goto_14

    :catch_12e
    move-exception v0

    goto/16 :goto_4e

    nop

    :pswitch_data_132
    .packed-switch 0x0
        :pswitch_7c
        :pswitch_8b
        :pswitch_36
        :pswitch_9a
        :pswitch_4f
    .end packed-switch

    :pswitch_data_140
    .packed-switch 0x2
        :pswitch_e7
        :pswitch_fc
        :pswitch_c2
    .end packed-switch
.end method

.method private final jjMoveNfa_1(II)I
    .registers 13

    const/4 v2, 0x0

    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    const/4 v3, 0x0

    aput p1, v0, v3

    const v0, 0x7fffffff

    :goto_d
    iget v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjround:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjround:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_1b

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->ReInitRounds()V

    :cond_1b
    iget-char v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v4, 0x40

    if-ge v3, v4, :cond_54

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    shl-long/2addr v3, v5

    :cond_26
    iget-object v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v3, v1

    packed-switch v3, :pswitch_data_da

    :cond_2f
    :goto_2f
    if-ne v1, v2, :cond_26

    :goto_31
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_3d

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    iput p2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    const v0, 0x7fffffff

    :cond_3d
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    iput v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v2, v2, 0x3

    if-ne v1, v2, :cond_cc

    :goto_47
    return p2

    :pswitch_48
    const/16 v3, 0x8

    if-le v0, v3, :cond_2f

    const/16 v0, 0x8

    goto :goto_2f

    :pswitch_4f
    const/4 v3, 0x6

    if-le v0, v3, :cond_2f

    const/4 v0, 0x6

    goto :goto_2f

    :cond_54
    iget-char v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v4, 0x80

    if-ge v3, v4, :cond_91

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    and-int/lit8 v5, v5, 0x3f

    shl-long/2addr v3, v5

    :cond_61
    iget-object v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v3, v1

    packed-switch v3, :pswitch_data_e2

    :cond_6a
    :goto_6a
    if-ne v1, v2, :cond_61

    goto :goto_31

    :pswitch_6d
    const/16 v3, 0x8

    if-le v0, v3, :cond_73

    const/16 v0, 0x8

    :cond_73
    iget-char v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_6a

    iget-object v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    iget v4, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    const/4 v5, 0x1

    aput v5, v3, v4

    goto :goto_6a

    :pswitch_85
    const/4 v3, 0x6

    if-le v0, v3, :cond_6a

    const/4 v0, 0x6

    goto :goto_6a

    :pswitch_8a
    const/16 v3, 0x8

    if-le v0, v3, :cond_6a

    const/16 v0, 0x8

    goto :goto_6a

    :cond_91
    iget-char v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x6

    const-wide/16 v4, 0x1

    iget-char v6, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    and-int/lit8 v6, v6, 0x3f

    shl-long/2addr v4, v6

    :cond_9e
    iget-object v6, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v6, v6, v1

    packed-switch v6, :pswitch_data_ec

    :cond_a7
    :goto_a7
    if-ne v1, v2, :cond_9e

    goto :goto_31

    :pswitch_aa
    sget-object v6, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjbitVec0:[J

    aget-wide v6, v6, v3

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_a7

    const/16 v6, 0x8

    if-le v0, v6, :cond_a7

    const/16 v0, 0x8

    goto :goto_a7

    :pswitch_bc
    sget-object v6, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjbitVec0:[J

    aget-wide v6, v6, v3

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_a7

    const/4 v6, 0x6

    if-le v0, v6, :cond_a7

    const/4 v0, 0x6

    goto :goto_a7

    :cond_cc
    :try_start_cc
    iget-object v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->readChar()C

    move-result v3

    iput-char v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_d4} :catch_d6

    goto/16 :goto_d

    :catch_d6
    move-exception v0

    goto/16 :goto_47

    nop

    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_48
        :pswitch_4f
    .end packed-switch

    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_6d
        :pswitch_85
        :pswitch_8a
    .end packed-switch

    :pswitch_data_ec
    .packed-switch 0x0
        :pswitch_aa
        :pswitch_bc
    .end packed-switch
.end method

.method private final jjMoveNfa_2(II)I
    .registers 13

    const/4 v2, 0x0

    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    const/4 v3, 0x0

    aput p1, v0, v3

    const v0, 0x7fffffff

    :goto_d
    iget v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjround:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjround:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_1b

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->ReInitRounds()V

    :cond_1b
    iget-char v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v4, 0x40

    if-ge v3, v4, :cond_56

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    shl-long/2addr v3, v5

    :cond_26
    iget-object v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v3, v1

    packed-switch v3, :pswitch_data_e0

    :cond_2f
    :goto_2f
    if-ne v1, v2, :cond_26

    :goto_31
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_3d

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    iput p2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    const v0, 0x7fffffff

    :cond_3d
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    iput v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v2, v2, 0x3

    if-ne v1, v2, :cond_d2

    :goto_47
    return p2

    :pswitch_48
    const/16 v3, 0xc

    if-le v0, v3, :cond_2f

    const/16 v0, 0xc

    goto :goto_2f

    :pswitch_4f
    const/16 v3, 0x9

    if-le v0, v3, :cond_2f

    const/16 v0, 0x9

    goto :goto_2f

    :cond_56
    iget-char v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v4, 0x80

    if-ge v3, v4, :cond_95

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    and-int/lit8 v5, v5, 0x3f

    shl-long/2addr v3, v5

    :cond_63
    iget-object v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v3, v1

    packed-switch v3, :pswitch_data_e8

    :cond_6c
    :goto_6c
    if-ne v1, v2, :cond_63

    goto :goto_31

    :pswitch_6f
    const/16 v3, 0xc

    if-le v0, v3, :cond_75

    const/16 v0, 0xc

    :cond_75
    iget-char v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_6c

    iget-object v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    iget v4, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    const/4 v5, 0x1

    aput v5, v3, v4

    goto :goto_6c

    :pswitch_87
    const/16 v3, 0x9

    if-le v0, v3, :cond_6c

    const/16 v0, 0x9

    goto :goto_6c

    :pswitch_8e
    const/16 v3, 0xc

    if-le v0, v3, :cond_6c

    const/16 v0, 0xc

    goto :goto_6c

    :cond_95
    iget-char v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x6

    const-wide/16 v4, 0x1

    iget-char v6, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    and-int/lit8 v6, v6, 0x3f

    shl-long/2addr v4, v6

    :cond_a2
    iget-object v6, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v6, v6, v1

    packed-switch v6, :pswitch_data_f2

    :cond_ab
    :goto_ab
    if-ne v1, v2, :cond_a2

    goto :goto_31

    :pswitch_ae
    sget-object v6, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjbitVec0:[J

    aget-wide v6, v6, v3

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_ab

    const/16 v6, 0xc

    if-le v0, v6, :cond_ab

    const/16 v0, 0xc

    goto :goto_ab

    :pswitch_c0
    sget-object v6, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjbitVec0:[J

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
    iget-object v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->readChar()C

    move-result v3

    iput-char v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C
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

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    const/4 v3, 0x0

    aput p1, v0, v3

    const v0, 0x7fffffff

    :goto_d
    iget v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjround:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjround:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_1b

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->ReInitRounds()V

    :cond_1b
    iget-char v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v4, 0x40

    if-ge v3, v4, :cond_66

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    shl-long/2addr v3, v5

    :cond_26
    iget-object v5, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v5, v5, v1

    packed-switch v5, :pswitch_data_112

    :cond_2f
    :goto_2f
    if-ne v1, v2, :cond_26

    :goto_31
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_3d

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    iput p2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    const v0, 0x7fffffff

    :cond_3d
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    iput v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

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

    const/16 v5, 0xf

    if-le v0, v5, :cond_5a

    const/16 v0, 0xf

    :cond_5a
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_2f

    :pswitch_5f
    const/16 v5, 0xe

    if-le v0, v5, :cond_2f

    const/16 v0, 0xe

    goto :goto_2f

    :cond_66
    iget-char v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v4, 0x80

    if-ge v3, v4, :cond_c2

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    and-int/lit8 v5, v5, 0x3f

    shl-long/2addr v3, v5

    :cond_73
    iget-object v5, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

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

    const/16 v5, 0xf

    if-le v0, v5, :cond_8f

    const/16 v0, 0xf

    :cond_8f
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_7c

    :cond_94
    iget-char v5, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_7c

    iget-object v5, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    iget v6, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    const/4 v7, 0x1

    aput v7, v5, v6

    goto :goto_7c

    :pswitch_a6
    const/16 v5, 0xe

    if-le v0, v5, :cond_7c

    const/16 v0, 0xe

    goto :goto_7c

    :pswitch_ad
    const-wide/32 v5, -0x10000001

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_7c

    const/16 v5, 0xf

    if-le v0, v5, :cond_bd

    const/16 v0, 0xf

    :cond_bd
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_7c

    :cond_c2
    iget-char v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x6

    const-wide/16 v4, 0x1

    iget-char v6, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    and-int/lit8 v6, v6, 0x3f

    shl-long/2addr v4, v6

    :cond_cf
    iget-object v6, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v6, v6, v1

    packed-switch v6, :pswitch_data_126

    :cond_d8
    :goto_d8
    if-ne v1, v2, :cond_cf

    goto/16 :goto_31

    :pswitch_dc
    sget-object v6, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjbitVec0:[J

    aget-wide v6, v6, v3

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_d8

    const/16 v6, 0xf

    if-le v0, v6, :cond_ed

    const/16 v0, 0xf

    :cond_ed
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_d8

    :pswitch_f2
    sget-object v6, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjbitVec0:[J

    aget-wide v6, v6, v3

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_d8

    const/16 v6, 0xe

    if-le v0, v6, :cond_d8

    const/16 v0, 0xe

    goto :goto_d8

    :cond_104
    :try_start_104
    iget-object v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->readChar()C

    move-result v3

    iput-char v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C
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
    .registers 4

    const/4 v2, 0x4

    const/4 v1, 0x0

    iget-char v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_2c

    invoke-direct {p0, v2, v1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    :goto_b
    return v0

    :sswitch_c
    const/16 v0, 0xd

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_b

    :sswitch_13
    invoke-direct {p0, v1, v2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_b

    :sswitch_18
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_b

    :sswitch_1e
    const/4 v0, 0x2

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_b

    :sswitch_24
    const/16 v0, 0x14

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_b

    nop

    :sswitch_data_2c
    .sparse-switch
        0x22 -> :sswitch_c
        0x28 -> :sswitch_13
        0x2c -> :sswitch_18
        0x2d -> :sswitch_1e
        0x2e -> :sswitch_24
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa0_1()I
    .registers 3

    const/4 v1, 0x0

    iget-char v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_18

    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    :goto_a
    return v0

    :pswitch_b
    const/4 v0, 0x7

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_a

    :pswitch_11
    const/4 v0, 0x5

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_a

    nop

    :pswitch_data_18
    .packed-switch 0x28
        :pswitch_b
        :pswitch_11
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa0_2()I
    .registers 3

    const/4 v1, 0x0

    iget-char v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_1a

    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    :goto_a
    return v0

    :pswitch_b
    const/16 v0, 0xa

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_a

    :pswitch_12
    const/16 v0, 0xb

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

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

    iget-char v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_12

    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    :goto_a
    return v0

    :pswitch_b
    const/16 v0, 0x10

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_a

    :pswitch_data_12
    .packed-switch 0x22
        :pswitch_b
    .end packed-switch
.end method

.method private final jjStartNfaWithStates_0(III)I
    .registers 5

    iput p2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    :try_start_4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_13

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p3, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveNfa_0(II)I

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

    iput p2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    :try_start_4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_13

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p3, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveNfa_1(II)I

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

    iput p2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    :try_start_4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_13

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p3, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveNfa_2(II)I

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

    iput p2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    :try_start_4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_13

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p3, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveNfa_3(II)I

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

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_1(IJ)I
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_2(IJ)I
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopStringLiteralDfa_2(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_3(IJ)I
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjStopStringLiteralDfa_3(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    return v0
.end method

.method private final jjStopAtPos(II)I
    .registers 4

    iput p2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

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

    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->lengthOfMatch:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_11e

    :cond_12
    :goto_12
    :pswitch_12
    return-void

    :pswitch_13
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_1e
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_12

    :pswitch_3b
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_46

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_46
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    iput v4, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->commentNest:I

    goto :goto_12

    :pswitch_58
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_63

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_63
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_12

    :pswitch_80
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_8b

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_8b
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->commentNest:I

    goto/16 :goto_12

    :pswitch_a2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_ad

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_ad
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->commentNest:I

    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->commentNest:I

    if-nez v0, :cond_12

    invoke-virtual {p0, v4}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->SwitchTo(I)V

    goto/16 :goto_12

    :pswitch_cb
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_d6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_d6
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_12

    :pswitch_f4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_ff

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_ff
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_12

    nop

    :pswitch_data_11e
    .packed-switch 0x6
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

.method public ReInit(Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewStateCnt:I

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->defaultLexState:I

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curLexState:I

    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->ReInitRounds()V

    return-void
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;I)V
    .registers 3

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;)V

    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method public SwitchTo(I)V
    .registers 5

    const/4 v0, 0x4

    if-ge p1, v0, :cond_5

    if-gez p1, :cond_25

    :cond_5
    new-instance v0, Lorg/apache/james/mime4j/field/language/parser/TokenMgrError;

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

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/field/language/parser/TokenMgrError;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_25
    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curLexState:I

    return-void
.end method

.method TokenLexicalActions(Lorg/apache/james/mime4j/field/language/parser/Token;)V
    .registers 6

    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_38

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_11
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/james/mime4j/field/language/parser/Token;->image:Ljava/lang/String;

    goto :goto_5

    nop

    :pswitch_data_38
    .packed-switch 0x10
        :pswitch_6
    .end packed-switch
.end method

.method public getNextToken()Lorg/apache/james/mime4j/field/language/parser/Token;
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
    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->BeginToken()C

    move-result v2

    iput-char v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_11} :catch_60

    iput-object v5, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->image:Ljava/lang/StringBuffer;

    iput v7, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjimageLen:I

    :goto_15
    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curLexState:I

    packed-switch v2, :pswitch_data_15e

    move v2, v0

    :goto_1b
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    if-eq v0, v10, :cond_ff

    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v0, v0, 0x1

    if-ge v0, v2, :cond_30

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    iget v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    sub-int v3, v2, v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->backup(I)V

    :cond_30
    sget-object v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjtoToken:[J

    iget v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v3, v0, v3

    const-wide/16 v8, 0x1

    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v8, v0

    and-long/2addr v3, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v3, v8

    if-eqz v0, :cond_92

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/language/parser/Token;

    move-result-object v0

    iput-object v1, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/language/parser/Token;

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->TokenLexicalActions(Lorg/apache/james/mime4j/field/language/parser/Token;)V

    sget-object v1, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewLexState:[I

    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v2

    if-eq v1, v11, :cond_5f

    sget-object v1, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewLexState:[I

    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v2

    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curLexState:I

    :cond_5f
    :goto_5f
    return-object v0

    :catch_60
    move-exception v0

    iput v7, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/language/parser/Token;

    move-result-object v0

    iput-object v1, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/language/parser/Token;

    goto :goto_5f

    :pswitch_6a
    iput v10, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveStringLiteralDfa0_0()I

    move-result v0

    move v2, v0

    goto :goto_1b

    :pswitch_74
    iput v10, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveStringLiteralDfa0_1()I

    move-result v0

    move v2, v0

    goto :goto_1b

    :pswitch_7e
    iput v10, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveStringLiteralDfa0_2()I

    move-result v0

    move v2, v0

    goto :goto_1b

    :pswitch_88
    iput v10, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedPos:I

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjMoveStringLiteralDfa0_3()I

    move-result v0

    move v2, v0

    goto :goto_1b

    :cond_92
    sget-object v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjtoSkip:[J

    iget v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v3, v0, v3

    const-wide/16 v8, 0x1

    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v8, v0

    and-long/2addr v3, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v3, v8

    if-eqz v0, :cond_dd

    sget-object v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjtoSpecial:[J

    iget v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v3, v0, v3

    const-wide/16 v8, 0x1

    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v8, v0

    and-long/2addr v3, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v3, v8

    if-eqz v0, :cond_157

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/language/parser/Token;

    move-result-object v0

    if-nez v1, :cond_d8

    :goto_c4
    sget-object v1, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewLexState:[I

    iget v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    if-eq v1, v11, :cond_15a

    sget-object v1, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewLexState:[I

    iget v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curLexState:I

    move-object v1, v0

    move v0, v2

    goto/16 :goto_9

    :cond_d8
    iput-object v1, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/language/parser/Token;

    iput-object v0, v1, Lorg/apache/james/mime4j/field/language/parser/Token;->next:Lorg/apache/james/mime4j/field/language/parser/Token;

    goto :goto_c4

    :cond_dd
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->MoreLexicalActions()V

    sget-object v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewLexState:[I

    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v2

    if-eq v0, v11, :cond_f0

    sget-object v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjnewLexState:[I

    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v2

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curLexState:I

    :cond_f0
    iput v10, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    :try_start_f2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C
    :try_end_fa
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_fa} :catch_fd

    move v0, v7

    goto/16 :goto_15

    :catch_fd
    move-exception v0

    move v2, v7

    :cond_ff
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->getEndLine()I

    move-result v3

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->getEndColumn()I

    move-result v4

    :try_start_10b
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->readChar()C

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->backup(I)V
    :try_end_116
    .catch Ljava/io/IOException; {:try_start_10b .. :try_end_116} :catch_12d

    move v1, v7

    :goto_117
    if-nez v1, :cond_123

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v0, v6}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->backup(I)V

    if-gt v2, v6, :cond_150

    const-string v0, ""

    :goto_122
    move-object v5, v0

    :cond_123
    new-instance v0, Lorg/apache/james/mime4j/field/language/parser/TokenMgrError;

    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curLexState:I

    iget-char v6, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    invoke-direct/range {v0 .. v7}, Lorg/apache/james/mime4j/field/language/parser/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v0

    :catch_12d
    move-exception v0

    if-gt v2, v6, :cond_144

    const-string v0, ""

    :goto_132
    iget-char v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v5, 0xa

    if-eq v1, v5, :cond_13e

    iget-char v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->curChar:C

    const/16 v5, 0xd

    if-ne v1, v5, :cond_14b

    :cond_13e
    add-int/lit8 v3, v3, 0x1

    move v1, v6

    move-object v5, v0

    move v4, v7

    goto :goto_117

    :cond_144
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    goto :goto_132

    :cond_14b
    add-int/lit8 v4, v4, 0x1

    move v1, v6

    move-object v5, v0

    goto :goto_117

    :cond_150
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

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

.method protected jjFillToken()Lorg/apache/james/mime4j/field/language/parser/Token;
    .registers 4

    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    invoke-static {v0}, Lorg/apache/james/mime4j/field/language/parser/Token;->newToken(I)Lorg/apache/james/mime4j/field/language/parser/Token;

    move-result-object v1

    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    iput v0, v1, Lorg/apache/james/mime4j/field/language/parser/Token;->kind:I

    sget-object v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->jjmatchedKind:I

    aget-object v0, v0, v2

    if-nez v0, :cond_18

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    :cond_18
    iput-object v0, v1, Lorg/apache/james/mime4j/field/language/parser/Token;->image:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->getBeginLine()I

    move-result v0

    iput v0, v1, Lorg/apache/james/mime4j/field/language/parser/Token;->beginLine:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->getBeginColumn()I

    move-result v0

    iput v0, v1, Lorg/apache/james/mime4j/field/language/parser/Token;->beginColumn:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->getEndLine()I

    move-result v0

    iput v0, v1, Lorg/apache/james/mime4j/field/language/parser/Token;->endLine:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->getEndColumn()I

    move-result v0

    iput v0, v1, Lorg/apache/james/mime4j/field/language/parser/Token;->endColumn:I

    return-object v1
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->debugStream:Ljava/io/PrintStream;

    return-void
.end method
