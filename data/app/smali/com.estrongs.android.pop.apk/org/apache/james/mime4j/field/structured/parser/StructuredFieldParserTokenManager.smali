.class public Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserConstants;


# static fields
.field static final jjbitVec0:[J

.field public static final jjnewLexState:[I

.field static final jjnextStates:[I

.field public static final jjstrLiteralImages:[Ljava/lang/String;

.field static final jjtoMore:[J

.field static final jjtoSkip:[J

.field static final jjtoToken:[J

.field public static final lexStateNames:[Ljava/lang/String;


# instance fields
.field commentNest:I

.field protected curChar:C

.field curLexState:I

.field public debugStream:Ljava/io/PrintStream;

.field defaultLexState:I

.field image:Ljava/lang/StringBuffer;

.field protected input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

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
    .registers 7

    const/4 v6, 0x2

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    new-array v0, v5, [J

    fill-array-data v0, :array_8c

    sput-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjbitVec0:[J

    new-array v0, v3, [I

    sput-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnextStates:[I

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    aput-object v2, v0, v4

    aput-object v2, v0, v6

    const/4 v1, 0x3

    aput-object v2, v0, v1

    aput-object v2, v0, v5

    const/4 v1, 0x5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    aput-object v2, v0, v1

    const/16 v1, 0xb

    aput-object v2, v0, v1

    const/16 v1, 0xc

    aput-object v2, v0, v1

    const/16 v1, 0xd

    aput-object v2, v0, v1

    const/16 v1, 0xe

    aput-object v2, v0, v1

    const/16 v1, 0xf

    aput-object v2, v0, v1

    const/16 v1, 0x10

    aput-object v2, v0, v1

    const/16 v1, 0x11

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "DEFAULT"

    aput-object v1, v0, v3

    const-string v1, "INCOMMENT"

    aput-object v1, v0, v4

    const-string v1, "NESTED_COMMENT"

    aput-object v1, v0, v6

    const/4 v1, 0x3

    const-string v2, "INQUOTEDSTRING"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->lexStateNames:[Ljava/lang/String;

    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_a0

    sput-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewLexState:[I

    new-array v0, v4, [J

    const-wide/32 v1, 0xf801

    aput-wide v1, v0, v3

    sput-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjtoToken:[J

    new-array v0, v4, [J

    const-wide/16 v1, 0x3fe

    aput-wide v1, v0, v3

    sput-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjtoSkip:[J

    new-array v0, v4, [J

    const-wide/16 v1, 0x400

    aput-wide v1, v0, v3

    sput-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjtoMore:[J

    return-void

    :array_8c
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_a0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x3t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->debugStream:Ljava/io/PrintStream;

    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjrounds:[I

    const/16 v0, 0xc

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    iput v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curLexState:I

    iput v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->defaultLexState:I

    iput-object p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;I)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;)V

    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method private final ReInitRounds()V
    .registers 4

    const v0, -0x7fffffff

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjround:I

    const/4 v0, 0x6

    :goto_6
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_12

    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjrounds:[I

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
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    sget-object v2, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnextStates:[I

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

    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjrounds:[I

    aget v0, v0, p1

    iget v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjround:I

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    aput p1, v0, v1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjrounds:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjround:I

    aput v1, v0, p1

    :cond_18
    return-void
.end method

.method private final jjCheckNAddStates(I)V
    .registers 4

    sget-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnextStates:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    sget-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnextStates:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    return-void
.end method

.method private final jjCheckNAddStates(II)V
    .registers 4

    :goto_0
    sget-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnextStates:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    add-int/lit8 v0, p1, 0x1

    if-ne p1, p2, :cond_c

    return-void

    :cond_c
    move p1, v0

    goto :goto_0
.end method

.method private final jjCheckNAddTwoStates(II)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    invoke-direct {p0, p2}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    return-void
.end method

.method private final jjMoveNfa_0(II)I
    .registers 13

    const/4 v2, 0x0

    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    const/4 v3, 0x0

    aput p1, v0, v3

    const v0, 0x7fffffff

    :goto_d
    iget v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjround:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjround:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_1b

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->ReInitRounds()V

    :cond_1b
    iget-char v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v4, 0x40

    if-ge v3, v4, :cond_9c

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    shl-long/2addr v3, v5

    :cond_26
    iget-object v5, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v5, v5, v1

    packed-switch v5, :pswitch_data_fa

    :cond_2f
    :goto_2f
    if-ne v1, v2, :cond_26

    :goto_31
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_3d

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    iput p2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    const v0, 0x7fffffff

    :cond_3d
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    iput v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v2, v2, 0x2

    if-ne v1, v2, :cond_ed

    :goto_47
    return p2

    :pswitch_48
    const-wide v5, -0x10500002601L

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_5f

    const/16 v5, 0xf

    if-le v0, v5, :cond_5a

    const/16 v0, 0xf

    :cond_5a
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_2f

    :cond_5f
    const-wide v5, 0x100002600L

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2f

    const/16 v5, 0xe

    if-le v0, v5, :cond_71

    const/16 v0, 0xe

    :cond_71
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_2f

    :pswitch_76
    const-wide v5, 0x100002600L

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2f

    const/16 v0, 0xe

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_2f

    :pswitch_89
    const-wide v5, -0x10500002601L

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2f

    const/16 v0, 0xf

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_2f

    :cond_9c
    iget-char v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v4, 0x80

    if-ge v3, v4, :cond_bd

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    and-int/lit8 v5, v5, 0x3f

    shl-long/2addr v3, v5

    :cond_a9
    iget-object v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v3, v1

    packed-switch v3, :pswitch_data_104

    :goto_b2
    if-ne v1, v2, :cond_a9

    goto/16 :goto_31

    :pswitch_b6
    const/16 v0, 0xf

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_b2

    :cond_bd
    iget-char v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x6

    const-wide/16 v4, 0x1

    iget-char v6, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    and-int/lit8 v6, v6, 0x3f

    shl-long/2addr v4, v6

    :cond_ca
    iget-object v6, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v6, v6, v1

    packed-switch v6, :pswitch_data_10c

    :cond_d3
    :goto_d3
    if-ne v1, v2, :cond_ca

    goto/16 :goto_31

    :pswitch_d7
    sget-object v6, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjbitVec0:[J

    aget-wide v6, v6, v3

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_d3

    const/16 v6, 0xf

    if-le v0, v6, :cond_e8

    const/16 v0, 0xf

    :cond_e8
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_d3

    :cond_ed
    :try_start_ed
    iget-object v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->readChar()C

    move-result v3

    iput-char v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C
    :try_end_f5
    .catch Ljava/io/IOException; {:try_start_ed .. :try_end_f5} :catch_f7

    goto/16 :goto_d

    :catch_f7
    move-exception v0

    goto/16 :goto_47

    :pswitch_data_fa
    .packed-switch 0x0
        :pswitch_76
        :pswitch_89
        :pswitch_48
    .end packed-switch

    :pswitch_data_104
    .packed-switch 0x1
        :pswitch_b6
        :pswitch_b6
    .end packed-switch

    :pswitch_data_10c
    .packed-switch 0x1
        :pswitch_d7
        :pswitch_d7
    .end packed-switch
.end method

.method private final jjMoveNfa_1(II)I
    .registers 13

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    const/4 v3, 0x0

    aput p1, v0, v3

    const v0, 0x7fffffff

    :goto_d
    iget v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjround:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjround:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_1b

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->ReInitRounds()V

    :cond_1b
    iget-char v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v4, 0x40

    if-ge v3, v4, :cond_56

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    shl-long/2addr v3, v5

    :cond_26
    iget-object v5, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v5, v5, v1

    packed-switch v5, :pswitch_data_a6

    :cond_2f
    :goto_2f
    if-ne v1, v2, :cond_26

    :goto_31
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_3d

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    iput p2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    const v0, 0x7fffffff

    :cond_3d
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    iput v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v2, v2, 0x1

    if-ne v1, v2, :cond_9a

    :goto_47
    return p2

    :pswitch_48
    const-wide v5, -0x30000000001L

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2f

    const/4 v0, 0x4

    goto :goto_2f

    :cond_56
    iget-char v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v4, 0x80

    if-ge v3, v4, :cond_71

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    and-int/lit8 v5, v5, 0x3f

    shl-long/2addr v3, v5

    :cond_63
    iget-object v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v3, v1

    packed-switch v3, :pswitch_data_ac

    :goto_6c
    if-ne v1, v2, :cond_63

    goto :goto_31

    :pswitch_6f
    const/4 v0, 0x4

    goto :goto_6c

    :cond_71
    iget-char v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x6

    const-wide/16 v4, 0x1

    iget-char v6, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    and-int/lit8 v6, v6, 0x3f

    shl-long/2addr v4, v6

    :cond_7e
    iget-object v6, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v6, v6, v1

    packed-switch v6, :pswitch_data_b2

    :cond_87
    :goto_87
    if-ne v1, v2, :cond_7e

    goto :goto_31

    :pswitch_8a
    sget-object v6, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjbitVec0:[J

    aget-wide v6, v6, v3

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_87

    const/4 v6, 0x4

    if-le v0, v6, :cond_87

    const/4 v0, 0x4

    goto :goto_87

    :cond_9a
    :try_start_9a
    iget-object v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->readChar()C

    move-result v3

    iput-char v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_a2} :catch_a4

    goto/16 :goto_d

    :catch_a4
    move-exception v0

    goto :goto_47

    :pswitch_data_a6
    .packed-switch 0x0
        :pswitch_48
    .end packed-switch

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_6f
    .end packed-switch

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_8a
    .end packed-switch
.end method

.method private final jjMoveNfa_2(II)I
    .registers 13

    const/4 v2, 0x0

    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    const/4 v3, 0x0

    aput p1, v0, v3

    const v0, 0x7fffffff

    :goto_d
    iget v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjround:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjround:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_1b

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->ReInitRounds()V

    :cond_1b
    iget-char v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v4, 0x40

    if-ge v3, v4, :cond_6b

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    shl-long/2addr v3, v5

    :cond_26
    iget-object v5, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v5, v5, v1

    packed-switch v5, :pswitch_data_fa

    :cond_2f
    :goto_2f
    if-ne v1, v2, :cond_26

    :goto_31
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_3d

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    iput p2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    const v0, 0x7fffffff

    :cond_3d
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    iput v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v2, v2, 0x3

    if-ne v1, v2, :cond_ec

    :goto_47
    return p2

    :pswitch_48
    const-wide v5, -0x30000000001L

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2f

    const/16 v5, 0x8

    if-le v0, v5, :cond_2f

    const/16 v0, 0x8

    goto :goto_2f

    :pswitch_5b
    const/4 v5, 0x7

    if-le v0, v5, :cond_5f

    const/4 v0, 0x7

    :cond_5f
    iget-object v5, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    iget v6, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    const/4 v7, 0x1

    aput v7, v5, v6

    goto :goto_2f

    :cond_6b
    iget-char v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v4, 0x80

    if-ge v3, v4, :cond_a5

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    and-int/lit8 v5, v5, 0x3f

    shl-long/2addr v3, v5

    :cond_78
    iget-object v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v3, v3, v1

    packed-switch v3, :pswitch_data_102

    :cond_81
    :goto_81
    if-ne v1, v2, :cond_78

    goto :goto_31

    :pswitch_84
    const/16 v3, 0x8

    if-le v0, v3, :cond_8a

    const/16 v0, 0x8

    :cond_8a
    iget-char v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_81

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_81

    :pswitch_95
    const/4 v3, 0x7

    if-le v0, v3, :cond_99

    const/4 v0, 0x7

    :cond_99
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_81

    :pswitch_9e
    const/16 v3, 0x8

    if-le v0, v3, :cond_81

    const/16 v0, 0x8

    goto :goto_81

    :cond_a5
    iget-char v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x6

    const-wide/16 v4, 0x1

    iget-char v6, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    and-int/lit8 v6, v6, 0x3f

    shl-long/2addr v4, v6

    :cond_b2
    iget-object v6, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v6, v6, v1

    packed-switch v6, :pswitch_data_10c

    :cond_bb
    :goto_bb
    if-ne v1, v2, :cond_b2

    goto/16 :goto_31

    :pswitch_bf
    sget-object v6, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjbitVec0:[J

    aget-wide v6, v6, v3

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_bb

    const/16 v6, 0x8

    if-le v0, v6, :cond_bb

    const/16 v0, 0x8

    goto :goto_bb

    :pswitch_d1
    sget-object v6, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjbitVec0:[J

    aget-wide v6, v6, v3

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_bb

    const/4 v6, 0x7

    if-le v0, v6, :cond_e0

    const/4 v0, 0x7

    :cond_e0
    iget-object v6, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    iget v7, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    const/4 v8, 0x1

    aput v8, v6, v7

    goto :goto_bb

    :cond_ec
    :try_start_ec
    iget-object v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->readChar()C

    move-result v3

    iput-char v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C
    :try_end_f4
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_f4} :catch_f6

    goto/16 :goto_d

    :catch_f6
    move-exception v0

    goto/16 :goto_47

    nop

    :pswitch_data_fa
    .packed-switch 0x0
        :pswitch_48
        :pswitch_5b
    .end packed-switch

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_84
        :pswitch_95
        :pswitch_9e
    .end packed-switch

    :pswitch_data_10c
    .packed-switch 0x0
        :pswitch_bf
        :pswitch_d1
    .end packed-switch
.end method

.method private final jjMoveNfa_3(II)I
    .registers 13

    const/4 v2, 0x0

    const/4 v0, 0x6

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    const/4 v3, 0x0

    aput p1, v0, v3

    const v0, 0x7fffffff

    :goto_d
    iget v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjround:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjround:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_1b

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->ReInitRounds()V

    :cond_1b
    iget-char v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v4, 0x40

    if-ge v3, v4, :cond_d6

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    shl-long/2addr v3, v5

    :cond_26
    iget-object v5, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v5, v5, v1

    packed-switch v5, :pswitch_data_18a

    :cond_2f
    :goto_2f
    if-ne v1, v2, :cond_26

    :goto_31
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_3d

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    iput p2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    const v0, 0x7fffffff

    :cond_3d
    add-int/lit8 p2, p2, 0x1

    iget v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    iput v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v2, v2, 0x6

    if-ne v1, v2, :cond_17d

    :goto_47
    return p2

    :pswitch_48
    const-wide v5, -0x400002001L

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_5f

    const/16 v5, 0xb

    if-le v0, v5, :cond_5a

    const/16 v0, 0xb

    :cond_5a
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_2f

    :cond_5f
    iget-char v5, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v6, 0xd

    if-ne v5, v6, :cond_2f

    iget-object v5, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    iget v6, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    const/4 v7, 0x3

    aput v7, v5, v6

    goto :goto_2f

    :pswitch_71
    const/16 v5, 0xa

    if-le v0, v5, :cond_77

    const/16 v0, 0xa

    :cond_77
    iget-object v5, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    iget v6, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    const/4 v7, 0x1

    aput v7, v5, v6

    goto :goto_2f

    :pswitch_83
    const-wide v5, -0x400002001L

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2f

    const/16 v5, 0xb

    if-le v0, v5, :cond_95

    const/16 v0, 0xb

    :cond_95
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_2f

    :pswitch_9a
    iget-char v5, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v6, 0xa

    if-ne v5, v6, :cond_2f

    const/16 v5, 0xc

    if-le v0, v5, :cond_a6

    const/16 v0, 0xc

    :cond_a6
    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_2f

    :pswitch_ab
    const-wide v5, 0x100000200L

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2f

    const/16 v5, 0xc

    if-le v0, v5, :cond_bd

    const/16 v0, 0xc

    :cond_bd
    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto/16 :goto_2f

    :pswitch_c3
    iget-char v5, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v6, 0xd

    if-ne v5, v6, :cond_2f

    iget-object v5, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    iget v6, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    const/4 v7, 0x3

    aput v7, v5, v6

    goto/16 :goto_2f

    :cond_d6
    iget-char v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v4, 0x80

    if-ge v3, v4, :cond_130

    const-wide/16 v3, 0x1

    iget-char v5, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    and-int/lit8 v5, v5, 0x3f

    shl-long/2addr v3, v5

    :cond_e3
    iget-object v5, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v5, v5, v1

    packed-switch v5, :pswitch_data_19a

    :cond_ec
    :goto_ec
    if-ne v1, v2, :cond_e3

    goto/16 :goto_31

    :pswitch_f0
    const-wide/32 v5, -0x10000001

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_105

    const/16 v5, 0xb

    if-le v0, v5, :cond_100

    const/16 v0, 0xb

    :cond_100
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_ec

    :cond_105
    iget-char v5, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_ec

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_ec

    :pswitch_110
    const/16 v5, 0xa

    if-le v0, v5, :cond_116

    const/16 v0, 0xa

    :cond_116
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_ec

    :pswitch_11b
    const-wide/32 v5, -0x10000001

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_ec

    const/16 v5, 0xb

    if-le v0, v5, :cond_12b

    const/16 v0, 0xb

    :cond_12b
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_ec

    :cond_130
    iget-char v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x6

    const-wide/16 v4, 0x1

    iget-char v6, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    and-int/lit8 v6, v6, 0x3f

    shl-long/2addr v4, v6

    :cond_13d
    iget-object v6, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    add-int/lit8 v1, v1, -0x1

    aget v6, v6, v1

    packed-switch v6, :pswitch_data_1a4

    :cond_146
    :goto_146
    if-ne v1, v2, :cond_13d

    goto/16 :goto_31

    :pswitch_14a
    sget-object v6, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjbitVec0:[J

    aget-wide v6, v6, v3

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_146

    const/16 v6, 0xb

    if-le v0, v6, :cond_15b

    const/16 v0, 0xb

    :cond_15b
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjCheckNAdd(I)V

    goto :goto_146

    :pswitch_160
    sget-object v6, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjbitVec0:[J

    aget-wide v6, v6, v3

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_146

    const/16 v6, 0xa

    if-le v0, v6, :cond_171

    const/16 v0, 0xa

    :cond_171
    iget-object v6, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstateSet:[I

    iget v7, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    const/4 v8, 0x1

    aput v8, v6, v7

    goto :goto_146

    :cond_17d
    :try_start_17d
    iget-object v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->readChar()C

    move-result v3

    iput-char v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C
    :try_end_185
    .catch Ljava/io/IOException; {:try_start_17d .. :try_end_185} :catch_187

    goto/16 :goto_d

    :catch_187
    move-exception v0

    goto/16 :goto_47

    :pswitch_data_18a
    .packed-switch 0x0
        :pswitch_48
        :pswitch_71
        :pswitch_83
        :pswitch_9a
        :pswitch_ab
        :pswitch_c3
    .end packed-switch

    :pswitch_data_19a
    .packed-switch 0x0
        :pswitch_f0
        :pswitch_110
        :pswitch_11b
    .end packed-switch

    :pswitch_data_1a4
    .packed-switch 0x0
        :pswitch_14a
        :pswitch_160
        :pswitch_14a
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa0_0()I
    .registers 3

    const/4 v1, 0x0

    iget-char v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    sparse-switch v0, :sswitch_data_1a

    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    :goto_b
    return v0

    :sswitch_c
    const/16 v0, 0x9

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_b

    :sswitch_13
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_b

    nop

    :sswitch_data_1a
    .sparse-switch
        0x22 -> :sswitch_c
        0x28 -> :sswitch_13
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa0_1()I
    .registers 3

    const/4 v1, 0x0

    iget-char v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_18

    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    :goto_a
    return v0

    :pswitch_b
    const/4 v0, 0x3

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_a

    :pswitch_11
    const/4 v0, 0x2

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjStopAtPos(II)I

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

    iget-char v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_18

    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    :goto_a
    return v0

    :pswitch_b
    const/4 v0, 0x5

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_a

    :pswitch_11
    const/4 v0, 0x6

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_a

    nop

    :pswitch_data_18
    .packed-switch 0x28
        :pswitch_b
        :pswitch_11
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa0_3()I
    .registers 3

    const/4 v1, 0x0

    iget-char v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    packed-switch v0, :pswitch_data_12

    invoke-direct {p0, v1, v1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    :goto_a
    return v0

    :pswitch_b
    const/16 v0, 0xd

    invoke-direct {p0, v1, v0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    goto :goto_a

    :pswitch_data_12
    .packed-switch 0x22
        :pswitch_b
    .end packed-switch
.end method

.method private final jjStartNfaWithStates_0(III)I
    .registers 5

    iput p2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    :try_start_4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_13

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p3, v0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveNfa_0(II)I

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

    iput p2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    :try_start_4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_13

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p3, v0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveNfa_1(II)I

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

    iput p2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    :try_start_4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_13

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p3, v0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveNfa_2(II)I

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

    iput p2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    :try_start_4
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_c} :catch_13

    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p3, v0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveNfa_3(II)I

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

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjStopStringLiteralDfa_0(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_1(IJ)I
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjStopStringLiteralDfa_1(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveNfa_1(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_2(IJ)I
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjStopStringLiteralDfa_2(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveNfa_2(II)I

    move-result v0

    return v0
.end method

.method private final jjStartNfa_3(IJ)I
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjStopStringLiteralDfa_3(IJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveNfa_3(II)I

    move-result v0

    return v0
.end method

.method private final jjStopAtPos(II)I
    .registers 4

    iput p2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    iput p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

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
    .registers 4

    iget v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjimageLen:I

    iget v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->lengthOfMatch:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjimageLen:I

    iget v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_3a

    :goto_10
    return-void

    :pswitch_11
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_1c
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjimageLen:I

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjimageLen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_10

    :pswitch_data_3a
    .packed-switch 0xa
        :pswitch_11
    .end packed-switch
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewStateCnt:I

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    iget v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->defaultLexState:I

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curLexState:I

    iput-object p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->ReInitRounds()V

    return-void
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;I)V
    .registers 3

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;)V

    invoke-virtual {p0, p2}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method SkipLexicalActions(Lorg/apache/james/mime4j/field/structured/parser/Token;)V
    .registers 7

    const/4 v4, 0x1

    iget v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_e0

    :cond_6
    :goto_6
    :pswitch_6
    return-void

    :pswitch_7
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_12
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iput v4, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->commentNest:I

    goto :goto_6

    :pswitch_29
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_34

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_34
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->commentNest:I

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+++ COMMENT NEST="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->commentNest:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_69
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_74

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_74
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->commentNest:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->commentNest:I

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+++ COMMENT NEST="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->commentNest:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->commentNest:I

    if-nez v0, :cond_6

    invoke-virtual {p0, v4}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->SwitchTo(I)V

    goto/16 :goto_6

    :pswitch_b1
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_bc

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_bc
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto/16 :goto_6

    nop

    :pswitch_data_e0
    .packed-switch 0x3
        :pswitch_7
        :pswitch_6
        :pswitch_29
        :pswitch_69
        :pswitch_b1
    .end packed-switch
.end method

.method public SwitchTo(I)V
    .registers 5

    const/4 v0, 0x4

    if-ge p1, v0, :cond_5

    if-gez p1, :cond_25

    :cond_5
    new-instance v0, Lorg/apache/james/mime4j/field/structured/parser/TokenMgrError;

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

    invoke-direct {v0, v1, v2}, Lorg/apache/james/mime4j/field/structured/parser/TokenMgrError;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_25
    iput p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curLexState:I

    return-void
.end method

.method TokenLexicalActions(Lorg/apache/james/mime4j/field/structured/parser/Token;)V
    .registers 6

    iget v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    packed-switch v0, :pswitch_data_38

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    :cond_11
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    iget v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjimageLen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->lengthOfMatch:I

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->GetSuffix(I)[C

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/james/mime4j/field/structured/parser/Token;->image:Ljava/lang/String;

    goto :goto_5

    nop

    :pswitch_data_38
    .packed-switch 0xd
        :pswitch_6
    .end packed-switch
.end method

.method public getNextToken()Lorg/apache/james/mime4j/field/structured/parser/Token;
    .registers 12

    const/4 v1, 0x0

    const/4 v10, -0x1

    const/4 v2, 0x1

    const v9, 0x7fffffff

    const/4 v7, 0x0

    move v0, v7

    :cond_8
    :goto_8
    :try_start_8
    iget-object v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->BeginToken()C

    move-result v3

    iput-char v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_10} :catch_5c

    iput-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->image:Ljava/lang/StringBuffer;

    iput v7, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjimageLen:I

    :goto_14
    iget v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curLexState:I

    packed-switch v3, :pswitch_data_12e

    :goto_19
    iget v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    if-eq v3, v9, :cond_d5

    iget v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v3, v3, 0x1

    if-ge v3, v0, :cond_2e

    iget-object v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    iget v4, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    sub-int v4, v0, v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->backup(I)V

    :cond_2e
    sget-object v3, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjtoToken:[J

    iget v4, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v4, v4, 0x6

    aget-wide v3, v3, v4

    const-wide/16 v5, 0x1

    iget v8, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v8, v8, 0x3f

    shl-long/2addr v5, v8

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_88

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/structured/parser/Token;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->TokenLexicalActions(Lorg/apache/james/mime4j/field/structured/parser/Token;)V

    sget-object v1, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewLexState:[I

    iget v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v2

    if-eq v1, v10, :cond_5b

    sget-object v1, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewLexState:[I

    iget v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    aget v1, v1, v2

    iput v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curLexState:I

    :cond_5b
    :goto_5b
    return-object v0

    :catch_5c
    move-exception v0

    iput v7, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjFillToken()Lorg/apache/james/mime4j/field/structured/parser/Token;

    move-result-object v0

    goto :goto_5b

    :pswitch_64
    iput v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveStringLiteralDfa0_0()I

    move-result v0

    goto :goto_19

    :pswitch_6d
    iput v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveStringLiteralDfa0_1()I

    move-result v0

    goto :goto_19

    :pswitch_76
    iput v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveStringLiteralDfa0_2()I

    move-result v0

    goto :goto_19

    :pswitch_7f
    iput v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    iput v7, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedPos:I

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjMoveStringLiteralDfa0_3()I

    move-result v0

    goto :goto_19

    :cond_88
    sget-object v3, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjtoSkip:[J

    iget v4, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v4, v4, 0x6

    aget-wide v3, v3, v4

    const-wide/16 v5, 0x1

    iget v8, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    and-int/lit8 v8, v8, 0x3f

    shl-long/2addr v5, v8

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_b3

    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->SkipLexicalActions(Lorg/apache/james/mime4j/field/structured/parser/Token;)V

    sget-object v3, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewLexState:[I

    iget v4, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    aget v3, v3, v4

    if-eq v3, v10, :cond_8

    sget-object v3, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewLexState:[I

    iget v4, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    aget v3, v3, v4

    iput v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curLexState:I

    goto/16 :goto_8

    :cond_b3
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->MoreLexicalActions()V

    sget-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewLexState:[I

    iget v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v3

    if-eq v0, v10, :cond_c6

    sget-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjnewLexState:[I

    iget v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    aget v0, v0, v3

    iput v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curLexState:I

    :cond_c6
    iput v9, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    :try_start_c8
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_d0} :catch_d3

    move v0, v7

    goto/16 :goto_14

    :catch_d3
    move-exception v0

    move v0, v7

    :cond_d5
    iget-object v3, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->getEndLine()I

    move-result v3

    iget-object v4, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->getEndColumn()I

    move-result v4

    :try_start_e1
    iget-object v5, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v5}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->readChar()C

    iget-object v5, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->backup(I)V
    :try_end_ec
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_ec} :catch_104

    move-object v5, v1

    move v1, v7

    :goto_ee
    if-nez v1, :cond_fa

    iget-object v5, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v5, v2}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->backup(I)V

    if-gt v0, v2, :cond_127

    const-string v0, ""

    :goto_f9
    move-object v5, v0

    :cond_fa
    new-instance v0, Lorg/apache/james/mime4j/field/structured/parser/TokenMgrError;

    iget v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curLexState:I

    iget-char v6, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    invoke-direct/range {v0 .. v7}, Lorg/apache/james/mime4j/field/structured/parser/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v0

    :catch_104
    move-exception v1

    if-gt v0, v2, :cond_11b

    const-string v1, ""

    :goto_109
    iget-char v5, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v6, 0xa

    if-eq v5, v6, :cond_115

    iget-char v5, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->curChar:C

    const/16 v6, 0xd

    if-ne v5, v6, :cond_122

    :cond_115
    add-int/lit8 v3, v3, 0x1

    move-object v5, v1

    move v4, v7

    move v1, v2

    goto :goto_ee

    :cond_11b
    iget-object v1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v1

    goto :goto_109

    :cond_122
    add-int/lit8 v4, v4, 0x1

    move-object v5, v1

    move v1, v2

    goto :goto_ee

    :cond_127
    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    goto :goto_f9

    :pswitch_data_12e
    .packed-switch 0x0
        :pswitch_64
        :pswitch_6d
        :pswitch_76
        :pswitch_7f
    .end packed-switch
.end method

.method protected jjFillToken()Lorg/apache/james/mime4j/field/structured/parser/Token;
    .registers 4

    iget v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    invoke-static {v0}, Lorg/apache/james/mime4j/field/structured/parser/Token;->newToken(I)Lorg/apache/james/mime4j/field/structured/parser/Token;

    move-result-object v1

    iget v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    iput v0, v1, Lorg/apache/james/mime4j/field/structured/parser/Token;->kind:I

    sget-object v0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v2, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->jjmatchedKind:I

    aget-object v0, v0, v2

    if-nez v0, :cond_18

    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    :cond_18
    iput-object v0, v1, Lorg/apache/james/mime4j/field/structured/parser/Token;->image:Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->getBeginLine()I

    move-result v0

    iput v0, v1, Lorg/apache/james/mime4j/field/structured/parser/Token;->beginLine:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->getBeginColumn()I

    move-result v0

    iput v0, v1, Lorg/apache/james/mime4j/field/structured/parser/Token;->beginColumn:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->getEndLine()I

    move-result v0

    iput v0, v1, Lorg/apache/james/mime4j/field/structured/parser/Token;->endLine:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->input_stream:Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/structured/parser/SimpleCharStream;->getEndColumn()I

    move-result v0

    iput v0, v1, Lorg/apache/james/mime4j/field/structured/parser/Token;->endColumn:I

    return-object v1
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/james/mime4j/field/structured/parser/StructuredFieldParserTokenManager;->debugStream:Ljava/io/PrintStream;

    return-void
.end method
