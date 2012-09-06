.class public Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserConstants;


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

.field protected input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

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

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_15a

    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjbitVec0:[J

    new-array v0, v4, [I

    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnextStates:[I

    const/16 v0, 0x31

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v4

    const-string v1, "\r"

    aput-object v1, v0, v5

    const-string v1, "\n"

    aput-object v1, v0, v6

    const-string v1, ","

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "Mon"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Tue"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Wed"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Thu"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Fri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Sat"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Sun"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Jan"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Feb"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Mar"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Apr"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "May"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Jun"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Jul"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Aug"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Sep"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Oct"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Nov"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Dec"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, ":"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    aput-object v3, v0, v1

    const/16 v1, 0x19

    const-string v2, "UT"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "GMT"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "EST"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "EDT"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "CST"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "CDT"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "MST"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "MDT"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "PST"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "PDT"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    aput-object v3, v0, v1

    const/16 v1, 0x24

    aput-object v3, v0, v1

    const/16 v1, 0x25

    aput-object v3, v0, v1

    const/16 v1, 0x26

    aput-object v3, v0, v1

    const/16 v1, 0x27

    aput-object v3, v0, v1

    const/16 v1, 0x28

    aput-object v3, v0, v1

    const/16 v1, 0x29

    aput-object v3, v0, v1

    const/16 v1, 0x2a

    aput-object v3, v0, v1

    const/16 v1, 0x2b

    aput-object v3, v0, v1

    const/16 v1, 0x2c

    aput-object v3, v0, v1

    const/16 v1, 0x2d

    aput-object v3, v0, v1

    const/16 v1, 0x2e

    aput-object v3, v0, v1

    const/16 v1, 0x2f

    aput-object v3, v0, v1

    const/16 v1, 0x30

    aput-object v3, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "DEFAULT"

    aput-object v1, v0, v4

    const-string v1, "INCOMMENT"

    aput-object v1, v0, v5

    const-string v1, "NESTED_COMMENT"

    aput-object v1, v0, v6

    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->lexStateNames:[Ljava/lang/String;

    const/16 v0, 0x31

    new-array v0, v0, [I

    fill-array-data v0, :array_16e

    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I

    new-array v0, v5, [J

    const-wide v1, 0x400fffffffffL

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoToken:[J

    new-array v0, v5, [J

    const-wide v1, 0x5000000000L

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoSkip:[J

    new-array v0, v5, [J

    const-wide v1, 0x1000000000L

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoSpecial:[J

    new-array v0, v5, [J

    const-wide v1, 0x3fa000000000L

    aput-wide v1, v0, v4

    sput-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoMore:[J

    return-void

    nop

    :array_15a
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_16e
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
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
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->debugStream:Ljava/io/PrintStream;

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjrounds:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    iput v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    iput v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->defaultLexState:I

    iput-object p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;I)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;)V

    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method private final ReInitRounds()V
    .registers 4

    const v0, -0x7fffffff

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    const/4 v0, 0x4

    :goto_6
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_12

    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjrounds:[I

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
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    sget-object v2, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnextStates:[I

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

    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjrounds:[I

    aget v0, v0, p1

    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    aput p1, v0, v1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjrounds:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    aput v1, v0, p1

    :cond_18
    return-void
.end method

.method private final jjCheckNAddStates(I)V
    .registers 4

    sget-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnextStates:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    sget-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnextStates:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    return-void
.end method

.method private final jjCheckNAddStates(II)V
    .registers 4

    :goto_0
    sget-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnextStates:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    add-int/lit8 v0, p1, 0x1

    if-ne p1, p2, :cond_c

    return-void

    :cond_c
    move p1, v0

    goto :goto_0
.end method

.method private final jjCheckNAddTwoStates(II)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    invoke-direct {p0, p2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    return-void
.end method

.method private final jjMoveNfa_0(II)I
    .registers 12

    const/4 v2, 0x0

    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    const/4 v3, 0x0

    aput p1, v0, v3

    const v0, 0x7fffffff

    :goto_d
    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_1b

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->ReInitRounds()V

    :cond_1b
    iget-char v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v4, 0x40

    if-ge v3, v4, :cond_a9

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    shl-long/2addr v3, v5

    :cond_26
    iget-object v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v5, v5, v1

    packed-switch v5, :pswitch_data_f6

    :cond_2f
    :goto_2f
    :pswitch_2f
    if-ne v1, v2, :cond_26

    :goto_31
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_3d

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    iput p2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    const v0, 0x7fffffff

    :cond_3d
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    iput v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v2, v2, 0x4

    if-ne v1, v2, :cond_e9

    :goto_47
    return p2

    :pswitch_48
    const-wide/high16 v5, 0x3ff

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_5c

    const/16 v5, 0x2e

    if-le v0, v5, :cond_57

    const/16 v0, 0x2e

    :cond_57
    const/4 v5, 0x3

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_2f

    :cond_5c
    const-wide v5, 0x100000200L

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_73

    const/16 v5, 0x24

    if-le v0, v5, :cond_6e

    const/16 v0, 0x24

    :cond_6e
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_2f

    :cond_73
    const-wide v5, 0x280000000000L

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2f

    const/16 v5, 0x18

    if-le v0, v5, :cond_2f

    const/16 v0, 0x18

    goto :goto_2f

    :pswitch_86
    const-wide v5, 0x100000200L

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2f

    const/16 v0, 0x24

    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_2f

    :pswitch_99
    const-wide/high16 v5, 0x3ff

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2f

    const/16 v0, 0x2e

    const/4 v5, 0x3

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_2f

    :cond_a9
    iget-char v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v4, 0x80

    if-ge v3, v4, :cond_d2

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit8 v5, v5, 0x3f

    shl-long/2addr v3, v5

    :cond_b6
    iget-object v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v5, v5, v1

    packed-switch v5, :pswitch_data_102

    :cond_bf
    :goto_bf
    if-ne v1, v2, :cond_b6

    goto/16 :goto_31

    :pswitch_c3
    const-wide v5, 0x7fffbfe07fffbfeL

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_bf

    const/16 v0, 0x23

    goto :goto_bf

    :cond_d2
    iget-char v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x6

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit8 v5, v5, 0x3f

    shl-long/2addr v3, v5

    :cond_df
    iget-object v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v3, v1

    if-ne v1, v2, :cond_df

    goto/16 :goto_31

    :cond_e9
    :try_start_e9
    iget-object v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v3

    iput-char v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_f1} :catch_f3

    goto/16 :goto_d

    :catch_f3
    move-exception v0

    goto/16 :goto_47

    :pswitch_data_f6
    .packed-switch 0x0
        :pswitch_48
        :pswitch_2f
        :pswitch_86
        :pswitch_99
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_c3
    .end packed-switch
.end method

.method private final jjMoveNfa_1(II)I
    .registers 13

    const/4 v2, 0x0

    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    const/4 v3, 0x0

    aput p1, v0, v3

    const v0, 0x7fffffff

    :goto_d
    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_1b

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->ReInitRounds()V

    :cond_1b
    iget-char v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v4, 0x40

    if-ge v3, v4, :cond_56

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    shl-long/2addr v3, v5

    :cond_26
    iget-object v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v3, v1

    packed-switch v3, :pswitch_data_e0

    :cond_2f
    :goto_2f
    if-ne v1, v2, :cond_26

    :goto_31
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_3d

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    iput p2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    const v0, 0x7fffffff

    :cond_3d
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    iput v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v2, v2, 0x3

    if-ne v1, v2, :cond_d2

    :goto_47
    return p2

    :pswitch_48
    const/16 v3, 0x29

    if-le v0, v3, :cond_2f

    const/16 v0, 0x29

    goto :goto_2f

    :pswitch_4f
    const/16 v3, 0x27

    if-le v0, v3, :cond_2f

    const/16 v0, 0x27

    goto :goto_2f

    :cond_56
    iget-char v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v4, 0x80

    if-ge v3, v4, :cond_95

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit8 v5, v5, 0x3f

    shl-long/2addr v3, v5

    :cond_63
    iget-object v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v3, v1

    packed-switch v3, :pswitch_data_e8

    :cond_6c
    :goto_6c
    if-ne v1, v2, :cond_63

    goto :goto_31

    :pswitch_6f
    const/16 v3, 0x29

    if-le v0, v3, :cond_75

    const/16 v0, 0x29

    :cond_75
    iget-char v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_6c

    iget-object v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    iget v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    const/4 v5, 0x1

    aput v5, v3, v4

    goto :goto_6c

    :pswitch_87
    const/16 v3, 0x27

    if-le v0, v3, :cond_6c

    const/16 v0, 0x27

    goto :goto_6c

    :pswitch_8e
    const/16 v3, 0x29

    if-le v0, v3, :cond_6c

    const/16 v0, 0x29

    goto :goto_6c

    :cond_95
    iget-char v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x6

    const-wide/16 v4, 0x1

    iget-char v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit8 v6, v6, 0x3f

    shl-long/2addr v4, v6

    :cond_a2
    iget-object v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v6, v6, v1

    packed-switch v6, :pswitch_data_f2

    :cond_ab
    :goto_ab
    if-ne v1, v2, :cond_a2

    goto :goto_31

    :pswitch_ae
    sget-object v6, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjbitVec0:[J

    aget-wide v6, v6, v3

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_ab

    const/16 v6, 0x29

    if-le v0, v6, :cond_ab

    const/16 v0, 0x29

    goto :goto_ab

    :pswitch_c0
    sget-object v6, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjbitVec0:[J

    aget-wide v6, v6, v3

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_ab

    const/16 v6, 0x27

    if-le v0, v6, :cond_ab

    const/16 v0, 0x27

    goto :goto_ab

    :cond_d2
    :try_start_d2
    iget-object v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v3

    iput-char v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
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

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    const/4 v3, 0x0

    aput p1, v0, v3

    const v0, 0x7fffffff

    :goto_d
    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjround:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_1b

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->ReInitRounds()V

    :cond_1b
    iget-char v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v4, 0x40

    if-ge v3, v4, :cond_56

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    shl-long/2addr v3, v5

    :cond_26
    iget-object v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v3, v1

    packed-switch v3, :pswitch_data_e0

    :cond_2f
    :goto_2f
    if-ne v1, v2, :cond_26

    :goto_31
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_3d

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    iput p2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    const v0, 0x7fffffff

    :cond_3d
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    iput v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v2, v2, 0x3

    if-ne v1, v2, :cond_d2

    :goto_47
    return p2

    :pswitch_48
    const/16 v3, 0x2d

    if-le v0, v3, :cond_2f

    const/16 v0, 0x2d

    goto :goto_2f

    :pswitch_4f
    const/16 v3, 0x2a

    if-le v0, v3, :cond_2f

    const/16 v0, 0x2a

    goto :goto_2f

    :cond_56
    iget-char v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v4, 0x80

    if-ge v3, v4, :cond_95

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit8 v5, v5, 0x3f

    shl-long/2addr v3, v5

    :cond_63
    iget-object v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v3, v1

    packed-switch v3, :pswitch_data_e8

    :cond_6c
    :goto_6c
    if-ne v1, v2, :cond_63

    goto :goto_31

    :pswitch_6f
    const/16 v3, 0x2d

    if-le v0, v3, :cond_75

    const/16 v0, 0x2d

    :cond_75
    iget-char v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_6c

    iget-object v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    iget v4, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    const/4 v5, 0x1

    aput v5, v3, v4

    goto :goto_6c

    :pswitch_87
    const/16 v3, 0x2a

    if-le v0, v3, :cond_6c

    const/16 v0, 0x2a

    goto :goto_6c

    :pswitch_8e
    const/16 v3, 0x2d

    if-le v0, v3, :cond_6c

    const/16 v0, 0x2d

    goto :goto_6c

    :cond_95
    iget-char v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x6

    const-wide/16 v4, 0x1

    iget-char v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    and-int/lit8 v6, v6, 0x3f

    shl-long/2addr v4, v6

    :cond_a2
    iget-object v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v6, v6, v1

    packed-switch v6, :pswitch_data_f2

    :cond_ab
    :goto_ab
    if-ne v1, v2, :cond_a2

    goto :goto_31

    :pswitch_ae
    sget-object v6, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjbitVec0:[J

    aget-wide v6, v6, v3

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_ab

    const/16 v6, 0x2d

    if-le v0, v6, :cond_ab

    const/16 v0, 0x2d

    goto :goto_ab

    :pswitch_c0
    sget-object v6, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjbitVec0:[J

    aget-wide v6, v6, v3

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_ab

    const/16 v6, 0x2a

    if-le v0, v6, :cond_ab

    const/16 v0, 0x2a

    goto :goto_ab

    :cond_d2
    :try_start_d2
    iget-object v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v3

    iput-char v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
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

.method private final jjMoveStringLiteralDfa0_0()I
    .registers 3

    const/4 v1, 0x0

    iget-char v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_a8

    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    :goto_a
    return v0

    :sswitch_b
    const/4 v0, 0x2

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_a

    :sswitch_11
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_a

    :sswitch_17
    const/16 v0, 0x25

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_a

    :sswitch_1e
    const/4 v0, 0x3

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_a

    :sswitch_24
    const/16 v0, 0x17

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_a

    :sswitch_2b
    const-wide/32 v0, 0x44000

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_a

    :sswitch_33
    const-wide/32 v0, 0x60000000

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_a

    :sswitch_3b
    const-wide/32 v0, 0x400000

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_a

    :sswitch_43
    const-wide/32 v0, 0x18000000

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_a

    :sswitch_4b
    const-wide/16 v0, 0x1100

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_a

    :sswitch_52
    const-wide/32 v0, 0x4000000

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_a

    :sswitch_5a
    const-wide/32 v0, 0x30800

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_a

    :sswitch_62
    const-wide v0, 0x18000a010L

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_a

    :sswitch_6c
    const-wide/32 v0, 0x200000

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_a

    :sswitch_74
    const-wide/32 v0, 0x100000

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_a

    :sswitch_7c
    const-wide v0, 0x600000000L

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto :goto_a

    :sswitch_86
    const-wide/32 v0, 0x80600

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto/16 :goto_a

    :sswitch_8f
    const-wide/16 v0, 0xa0

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto/16 :goto_a

    :sswitch_97
    const-wide/32 v0, 0x2000000

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto/16 :goto_a

    :sswitch_a0
    const-wide/16 v0, 0x40

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa1_0(J)I

    move-result v0

    goto/16 :goto_a

    :sswitch_data_a8
    .sparse-switch
        0xa -> :sswitch_b
        0xd -> :sswitch_11
        0x28 -> :sswitch_17
        0x2c -> :sswitch_1e
        0x3a -> :sswitch_24
        0x41 -> :sswitch_2b
        0x43 -> :sswitch_33
        0x44 -> :sswitch_3b
        0x45 -> :sswitch_43
        0x46 -> :sswitch_4b
        0x47 -> :sswitch_52
        0x4a -> :sswitch_5a
        0x4d -> :sswitch_62
        0x4e -> :sswitch_6c
        0x4f -> :sswitch_74
        0x50 -> :sswitch_7c
        0x53 -> :sswitch_86
        0x54 -> :sswitch_8f
        0x55 -> :sswitch_97
        0x57 -> :sswitch_a0
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa0_1()I
    .registers 3

    const/4 v1, 0x0

    iget-char v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_1a

    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    :goto_a
    return v0

    :pswitch_b
    const/16 v0, 0x28

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_a

    :pswitch_12
    const/16 v0, 0x26

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

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

    iget-char v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_1a

    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    :goto_a
    return v0

    :pswitch_b
    const/16 v0, 0x2b

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_a

    :pswitch_12
    const/16 v0, 0x2c

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_a

    nop

    :pswitch_data_1a
    .packed-switch 0x28
        :pswitch_b
        :pswitch_12
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa1_0(J)I
    .registers 9

    const/4 v0, 0x1

    const/4 v5, 0x0

    :try_start_2
    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_a} :catch_14

    iget-char v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    sparse-switch v1, :sswitch_data_84

    :cond_f
    invoke-direct {p0, v5, p1, p2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStartNfa_0(IJ)I

    move-result v0

    :goto_13
    return v0

    :catch_14
    move-exception v1

    invoke-direct {p0, v5, p1, p2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    goto :goto_13

    :sswitch_19
    const-wide v0, 0x550000000L

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v0

    goto :goto_13

    :sswitch_23
    const-wide/32 v0, 0x4000000

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v0

    goto :goto_13

    :sswitch_2b
    const-wide v0, 0x2a8000000L

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v0

    goto :goto_13

    :sswitch_35
    const-wide/32 v1, 0x2000000

    and-long/2addr v1, p1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_f

    const/16 v1, 0x19

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_13

    :sswitch_46
    const-wide/32 v0, 0xaa00

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v0

    goto :goto_13

    :sswitch_4e
    const-wide/32 v0, 0x100000

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v0

    goto :goto_13

    :sswitch_56
    const-wide/32 v0, 0x481040

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v0

    goto :goto_13

    :sswitch_5e
    const-wide/16 v0, 0x80

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v0

    goto :goto_13

    :sswitch_65
    const-wide/32 v0, 0x200010

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v0

    goto :goto_13

    :sswitch_6d
    const-wide/16 v0, 0x4000

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v0

    goto :goto_13

    :sswitch_74
    const-wide/16 v0, 0x100

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v0

    goto :goto_13

    :sswitch_7b
    const-wide/32 v0, 0x70420

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa2_0(JJ)I

    move-result v0

    goto :goto_13

    nop

    :sswitch_data_84
    .sparse-switch
        0x44 -> :sswitch_19
        0x4d -> :sswitch_23
        0x53 -> :sswitch_2b
        0x54 -> :sswitch_35
        0x61 -> :sswitch_46
        0x63 -> :sswitch_4e
        0x65 -> :sswitch_56
        0x68 -> :sswitch_5e
        0x6f -> :sswitch_65
        0x70 -> :sswitch_6d
        0x72 -> :sswitch_74
        0x75 -> :sswitch_7b
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa2_0(JJ)I
    .registers 13

    const/4 v7, 0x1

    const-wide/16 v5, 0x0

    const/4 v0, 0x2

    and-long v1, p3, p1

    cmp-long v3, v1, v5

    if-nez v3, :cond_10

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStartNfa_0(IJ)I

    move-result v0

    :goto_f
    return v0

    :cond_10
    :try_start_10
    iget-object v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v3

    iput-char v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_18} :catch_22

    iget-char v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    sparse-switch v3, :sswitch_data_1da

    :cond_1d
    invoke-direct {p0, v7, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStartNfa_0(IJ)I

    move-result v0

    goto :goto_f

    :catch_22
    move-exception v3

    invoke-direct {p0, v7, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    goto :goto_f

    :sswitch_27
    const-wide/32 v3, 0x4000000

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_36

    const/16 v1, 0x1a

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_f

    :cond_36
    const-wide/32 v3, 0x8000000

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_45

    const/16 v1, 0x1b

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_f

    :cond_45
    const-wide/32 v3, 0x10000000

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_54

    const/16 v1, 0x1c

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_f

    :cond_54
    const-wide/32 v3, 0x20000000

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_63

    const/16 v1, 0x1d

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_f

    :cond_63
    const-wide/32 v3, 0x40000000

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_72

    const/16 v1, 0x1e

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_f

    :cond_72
    const-wide v3, 0x80000000L

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_83

    const/16 v1, 0x1f

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_f

    :cond_83
    const-wide v3, 0x100000000L

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_95

    const/16 v1, 0x20

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_f

    :cond_95
    const-wide v3, 0x200000000L

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_a7

    const/16 v1, 0x21

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_f

    :cond_a7
    const-wide v3, 0x400000000L

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1d

    const/16 v1, 0x22

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_f

    :sswitch_b9
    const-wide/16 v3, 0x1000

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1d

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_f

    :sswitch_c8
    const-wide/32 v3, 0x400000

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1d

    const/16 v1, 0x16

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_f

    :sswitch_d8
    const-wide/16 v3, 0x40

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1d

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_f

    :sswitch_e6
    const-wide/16 v3, 0x20

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1d

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_f

    :sswitch_f4
    const-wide/32 v3, 0x40000

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1d

    const/16 v1, 0x12

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_f

    :sswitch_104
    const-wide/16 v3, 0x100

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1d

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_f

    :sswitch_113
    const-wide/32 v3, 0x20000

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1d

    const/16 v1, 0x11

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_f

    :sswitch_123
    const-wide/16 v3, 0x10

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_131

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_f

    :cond_131
    const-wide/16 v3, 0x400

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_140

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_f

    :cond_140
    const-wide/16 v3, 0x800

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_14f

    const/16 v1, 0xb

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_f

    :cond_14f
    const-wide/32 v3, 0x10000

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1d

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_f

    :sswitch_15f
    const-wide/32 v3, 0x80000

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1d

    const/16 v1, 0x13

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_f

    :sswitch_16f
    const-wide/16 v3, 0x2000

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_17e

    const/16 v1, 0xd

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_f

    :cond_17e
    const-wide/16 v3, 0x4000

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1d

    const/16 v1, 0xe

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_f

    :sswitch_18d
    const-wide/16 v3, 0x200

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_19c

    const/16 v1, 0x9

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_f

    :cond_19c
    const-wide/32 v3, 0x100000

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1d

    const/16 v1, 0x14

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_f

    :sswitch_1ac
    const-wide/16 v3, 0x80

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1d

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_f

    :sswitch_1ba
    const-wide/32 v3, 0x200000

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1d

    const/16 v1, 0x15

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_f

    :sswitch_1ca
    const-wide/32 v3, 0x8000

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1d

    const/16 v1, 0xf

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto/16 :goto_f

    :sswitch_data_1da
    .sparse-switch
        0x54 -> :sswitch_27
        0x62 -> :sswitch_b9
        0x63 -> :sswitch_c8
        0x64 -> :sswitch_d8
        0x65 -> :sswitch_e6
        0x67 -> :sswitch_f4
        0x69 -> :sswitch_104
        0x6c -> :sswitch_113
        0x6e -> :sswitch_123
        0x70 -> :sswitch_15f
        0x72 -> :sswitch_16f
        0x74 -> :sswitch_18d
        0x75 -> :sswitch_1ac
        0x76 -> :sswitch_1ba
        0x79 -> :sswitch_1ca
    .end sparse-switch
.end method

.method private final jjStartNfaWithStates_0(III)I
    .registers 5

    iput p2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    :try_start_4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_13

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p3, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_0(II)I

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

    iput p2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    :try_start_4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_13

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p3, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_1(II)I

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

    iput p2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    :try_start_4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_13

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p3, v0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_2(II)I

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

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_1(IJ)I
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_2(IJ)I
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjStopStringLiteralDfa_2(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    return v0
.end method

.method private final jjStopAtPos(II)I
    .registers 4

    iput p2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_0(IJ)I
    .registers 10

    const-wide v0, 0x7fe7cf7f0L

    const-wide/16 v4, 0x0

    const/16 v3, 0x23

    const/4 v2, -0x1

    packed-switch p1, :pswitch_data_26

    :cond_d
    :goto_d
    return v2

    :pswitch_e
    and-long/2addr v0, p2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_d

    iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    goto :goto_d

    :pswitch_16
    and-long/2addr v0, p2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_d

    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    if-nez v0, :cond_d

    iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    goto :goto_d

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_e
        :pswitch_16
    .end packed-switch
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


# virtual methods
.method MoreLexicalActions()V
    .registers 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    iget v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->lengthOfMatch:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_cc

    :cond_12
    :goto_12
    :pswitch_12
    return-void

    :pswitch_13
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_1e
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_12

    :pswitch_3b
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_46

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_46
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    sput v4, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->commentNest:I

    goto :goto_12

    :pswitch_58
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_63

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_63
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_12

    :pswitch_80
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_8b

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_8b
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    sget v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->commentNest:I

    goto/16 :goto_12

    :pswitch_a2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_ad

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_ad
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    sget v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->commentNest:I

    sget v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->commentNest:I

    if-nez v0, :cond_12

    invoke-virtual {p0, v4}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->SwitchTo(I)V

    goto/16 :goto_12

    nop

    :pswitch_data_cc
    .packed-switch 0x27
        :pswitch_13
        :pswitch_3b
        :pswitch_12
        :pswitch_58
        :pswitch_80
        :pswitch_a2
    .end packed-switch
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewStateCnt:I

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->defaultLexState:I

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    iput-object p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->ReInitRounds()V

    return-void
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;I)V
    .registers 3

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;)V

    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method public SwitchTo(I)V
    .registers 5

    const/4 v0, 0x3

    if-ge p1, v0, :cond_5

    if-gez p1, :cond_25

    :cond_5
    new-instance v0, Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError;

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

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_25
    iput p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    return-void
.end method

.method public getNextToken()Lorg/apache/james/mime4j/field/datetime/parser/Token;
    .registers 13

    const/4 v5, 0x0

    const/4 v11, -0x1

    const v10, 0x7fffffff

    const/4 v6, 0x1

    const/4 v7, 0x0

    move v0, v7

    move-object v1, v5

    :goto_9
    :try_start_9
    iget-object v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->BeginToken()C

    move-result v2

    iput-char v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_11} :catch_5d

    iput-object v5, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->image:Ljava/lang/StringBuffer;

    iput v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjimageLen:I

    :goto_15
    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    packed-switch v2, :pswitch_data_152

    move v2, v0

    :goto_1b
    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    if-eq v0, v10, :cond_f2

    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v0, v0, 0x1

    if-ge v0, v2, :cond_30

    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    sub-int v3, v2, v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->backup(I)V

    :cond_30
    sget-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoToken:[J

    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v3, v0, v3

    const-wide/16 v8, 0x1

    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v8, v0

    and-long/2addr v3, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v3, v8

    if-eqz v0, :cond_85

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v0

    iput-object v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    sget-object v1, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I

    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v2

    if-eq v1, v11, :cond_5c

    sget-object v1, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I

    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v2

    iput v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    :cond_5c
    :goto_5c
    return-object v0

    :catch_5d
    move-exception v0

    iput v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v0

    iput-object v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_5c

    :pswitch_67
    iput v10, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa0_0()I

    move-result v0

    move v2, v0

    goto :goto_1b

    :pswitch_71
    iput v10, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa0_1()I

    move-result v0

    move v2, v0

    goto :goto_1b

    :pswitch_7b
    iput v10, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedPos:I

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjMoveStringLiteralDfa0_2()I

    move-result v0

    move v2, v0

    goto :goto_1b

    :cond_85
    sget-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoSkip:[J

    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v3, v0, v3

    const-wide/16 v8, 0x1

    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v8, v0

    and-long/2addr v3, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v3, v8

    if-eqz v0, :cond_d0

    sget-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjtoSpecial:[J

    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v3, v3, 0x6

    aget-wide v3, v0, v3

    const-wide/16 v8, 0x1

    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v0, v0, 0x3f

    shl-long/2addr v8, v0

    and-long/2addr v3, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v3, v8

    if-eqz v0, :cond_14a

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v0

    if-nez v1, :cond_cb

    :goto_b7
    sget-object v1, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I

    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    if-eq v1, v11, :cond_14d

    sget-object v1, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I

    iget v3, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v3

    iput v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    move-object v1, v0

    move v0, v2

    goto/16 :goto_9

    :cond_cb
    iput-object v1, v0, Lorg/apache/james/mime4j/field/datetime/parser/Token;->specialToken:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    iput-object v0, v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;->next:Lorg/apache/james/mime4j/field/datetime/parser/Token;

    goto :goto_b7

    :cond_d0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->MoreLexicalActions()V

    sget-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I

    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v2

    if-eq v0, v11, :cond_e3

    sget-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjnewLexState:[I

    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v2

    iput v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    :cond_e3
    iput v10, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    :try_start_e5
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C
    :try_end_ed
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_ed} :catch_f0

    move v0, v7

    goto/16 :goto_15

    :catch_f0
    move-exception v0

    move v2, v7

    :cond_f2
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->getEndLine()I

    move-result v3

    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->getEndColumn()I

    move-result v4

    :try_start_fe
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->readChar()C

    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->backup(I)V
    :try_end_109
    .catch Ljava/io/IOException; {:try_start_fe .. :try_end_109} :catch_120

    move v1, v7

    :goto_10a
    if-nez v1, :cond_116

    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v0, v6}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->backup(I)V

    if-gt v2, v6, :cond_143

    const-string v0, ""

    :goto_115
    move-object v5, v0

    :cond_116
    new-instance v0, Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError;

    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curLexState:I

    iget-char v6, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    invoke-direct/range {v0 .. v7}, Lorg/apache/james/mime4j/field/datetime/parser/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v0

    :catch_120
    move-exception v0

    if-gt v2, v6, :cond_137

    const-string v0, ""

    :goto_125
    iget-char v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v5, 0xa

    if-eq v1, v5, :cond_131

    iget-char v1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->curChar:C

    const/16 v5, 0xd

    if-ne v1, v5, :cond_13e

    :cond_131
    add-int/lit8 v3, v3, 0x1

    move v1, v6

    move-object v5, v0

    move v4, v7

    goto :goto_10a

    :cond_137
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    goto :goto_125

    :cond_13e
    add-int/lit8 v4, v4, 0x1

    move v1, v6

    move-object v5, v0

    goto :goto_10a

    :cond_143
    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    goto :goto_115

    :cond_14a
    move-object v0, v1

    goto/16 :goto_b7

    :cond_14d
    move-object v1, v0

    move v0, v2

    goto/16 :goto_9

    nop

    :pswitch_data_152
    .packed-switch 0x0
        :pswitch_67
        :pswitch_71
        :pswitch_7b
    .end packed-switch
.end method

.method protected jjFillToken()Lorg/apache/james/mime4j/field/datetime/parser/Token;
    .registers 4

    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    invoke-static {v0}, Lorg/apache/james/mime4j/field/datetime/parser/Token;->newToken(I)Lorg/apache/james/mime4j/field/datetime/parser/Token;

    move-result-object v1

    iget v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    iput v0, v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;->kind:I

    sget-object v0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v2, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->jjmatchedKind:I

    aget-object v0, v0, v2

    if-nez v0, :cond_18

    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    :cond_18
    iput-object v0, v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;->image:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->getBeginLine()I

    move-result v0

    iput v0, v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;->beginLine:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->getBeginColumn()I

    move-result v0

    iput v0, v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;->beginColumn:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->getEndLine()I

    move-result v0

    iput v0, v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;->endLine:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/datetime/parser/SimpleCharStream;->getEndColumn()I

    move-result v0

    iput v0, v1, Lorg/apache/james/mime4j/field/datetime/parser/Token;->endColumn:I

    return-object v1
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/james/mime4j/field/datetime/parser/DateTimeParserTokenManager;->debugStream:Ljava/io/PrintStream;

    return-void
.end method
