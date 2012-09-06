.class public Lorg/apache/james/mime4j/field/address/parser/AddressListParser;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/james/mime4j/field/address/parser/AddressListParserConstants;
.implements Lorg/apache/james/mime4j/field/address/parser/AddressListParserTreeConstants;


# static fields
.field private static jj_la1_0:[I

.field private static jj_la1_1:[I


# instance fields
.field private final jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

.field private jj_endpos:I

.field private jj_expentries:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<[I>;"
        }
    .end annotation
.end field

.field private jj_expentry:[I

.field private jj_gc:I

.field private jj_gen:I

.field jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

.field private jj_kind:I

.field private jj_la:I

.field private final jj_la1:[I

.field private jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;

.field private jj_lasttokens:[I

.field private final jj_ls:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

.field public jj_nt:Lorg/apache/james/mime4j/field/address/parser/Token;

.field private jj_ntk:I

.field private jj_rescan:Z

.field private jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

.field private jj_semLA:Z

.field protected jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

.field public lookingAhead:Z

.field public token:Lorg/apache/james/mime4j/field/address/parser/Token;

.field public token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_0()V

    invoke-static {}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_1()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 9

    const/16 v5, 0x16

    const/4 v4, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->lookingAhead:Z

    new-array v1, v5, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;-><init>(Lorg/apache/james/mime4j/field/address/parser/AddressListParser$1;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ls:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    iput v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    const/16 v1, 0x64

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    :try_start_34
    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v1, p1, p2, v2, v3}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;II)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;
    :try_end_3d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_34 .. :try_end_3d} :catch_5b

    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    move v1, v0

    :goto_52
    if-ge v1, v5, :cond_62

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_52

    :catch_5b
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_62
    :goto_62
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    array-length v1, v1

    if-ge v0, v1, :cond_73

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_62

    :cond_73
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 8

    const/16 v5, 0x16

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->lookingAhead:Z

    new-array v1, v5, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;-><init>(Lorg/apache/james/mime4j/field/address/parser/AddressListParser$1;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ls:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    const/16 v1, 0x64

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-direct {v1, p1, v4, v4}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;-><init>(Ljava/io/Reader;II)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    move v1, v0

    :goto_51
    if-ge v1, v5, :cond_5a

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    :cond_5a
    :goto_5a
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    array-length v1, v1

    if-ge v0, v1, :cond_6b

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    :cond_6b
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;)V
    .registers 7

    const/16 v4, 0x16

    const/4 v3, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->lookingAhead:Z

    new-array v1, v4, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;-><init>(Lorg/apache/james/mime4j/field/address/parser/AddressListParser$1;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ls:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    const/16 v1, 0x64

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    move v1, v0

    :goto_42
    if-ge v1, v4, :cond_4b

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    :cond_4b
    :goto_4b
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    array-length v1, v1

    if-ge v0, v1, :cond_5c

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    :cond_5c
    return-void
.end method

.method private final jj_2_1(I)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    :try_start_a
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3_1()Z
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_1b
    .catch Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess; {:try_start_a .. :try_end_d} :catch_16

    move-result v2

    if-nez v2, :cond_14

    :goto_10
    invoke-direct {p0, v1, p1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save(II)V

    :goto_13
    return v0

    :cond_14
    move v0, v1

    goto :goto_10

    :catch_16
    move-exception v2

    invoke-direct {p0, v1, p1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save(II)V

    goto :goto_13

    :catchall_1b
    move-exception v0

    invoke-direct {p0, v1, p1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save(II)V

    throw v0
.end method

.method private final jj_2_2(I)Z
    .registers 4

    const/4 v1, 0x1

    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    :try_start_9
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3_2()Z
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_1c
    .catch Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess; {:try_start_9 .. :try_end_c} :catch_16

    move-result v0

    if-nez v0, :cond_14

    move v0, v1

    :goto_10
    invoke-direct {p0, v1, p1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save(II)V

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_10

    :catch_16
    move-exception v0

    invoke-direct {p0, v1, p1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save(II)V

    move v0, v1

    goto :goto_13

    :catchall_1c
    move-exception v0

    invoke-direct {p0, v1, p1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_save(II)V

    throw v0
.end method

.method private final jj_3R_10()Z
    .registers 3

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_12()Z

    move-result v1

    if-eqz v1, :cond_14

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private final jj_3R_11()Z
    .registers 3

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_c

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    :cond_c
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_22

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method private final jj_3R_12()Z
    .registers 3

    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_13()Z

    move-result v1

    if-eqz v1, :cond_a

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private final jj_3R_13()Z
    .registers 3

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_c

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    :cond_c
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private final jj_3R_8()Z
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_9()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_10()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3R_9()Z
    .registers 3

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_16

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scan_token(I)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_11()Z

    move-result v1

    if-eqz v1, :cond_16

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    const/4 v0, 0x0

    goto :goto_15
.end method

.method private final jj_3_1()Z
    .registers 2

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_8()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private final jj_3_2()Z
    .registers 2

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3R_8()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private jj_add_error_token(II)V
    .registers 10

    const/4 v1, 0x0

    const/16 v0, 0x64

    if-lt p2, v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    add-int/lit8 v0, v0, 0x1

    if-ne p2, v0, :cond_17

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    aput p1, v0, v1

    goto :goto_5

    :cond_17
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    move v0, v1

    :goto_22
    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    if-ge v0, v2, :cond_31

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    aget v3, v3, v0

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_31
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v4

    move v2, v1

    :goto_38
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    array-length v3, v0

    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    array-length v5, v5

    if-ne v3, v5, :cond_75

    const/4 v3, 0x1

    move v2, v1

    :goto_4e
    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    array-length v5, v5

    if-ge v2, v5, :cond_78

    aget v5, v0, v2

    iget-object v6, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    aget v6, v6, v2

    if-eq v5, v6, :cond_72

    move v0, v1

    :goto_5c
    if-eqz v0, :cond_76

    :goto_5e
    if-nez v0, :cond_67

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_67
    if-eqz p2, :cond_5

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lasttokens:[I

    iput p2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    add-int/lit8 v1, p2, -0x1

    aput p1, v0, v1

    goto :goto_5

    :cond_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    :cond_75
    move v0, v2

    :cond_76
    move v2, v0

    goto :goto_38

    :cond_78
    move v0, v3

    goto :goto_5c

    :cond_7a
    move v0, v2

    goto :goto_5e
.end method

.method private final jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v2, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v2, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    :goto_d
    const/4 v2, -0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget v2, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->kind:I

    if-ne v2, p1, :cond_52

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    const/16 v2, 0x64

    if-le v1, v2, :cond_4f

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gc:I

    :goto_28
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    array-length v1, v1

    if-ge v0, v1, :cond_4f

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    aget-object v1, v1, v0

    :goto_31
    if-eqz v1, :cond_4c

    iget v2, v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->gen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    if-ge v2, v3, :cond_3c

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->first:Lorg/apache/james/mime4j/field/address/parser/Token;

    :cond_3c
    iget-object v1, v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    goto :goto_31

    :cond_3f
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_d

    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    :cond_4f
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    return-object v0

    :cond_52
    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->generateParseException()Lorg/apache/james/mime4j/field/address/parser/ParseException;

    move-result-object v0

    throw v0
.end method

.method private static jj_la1_0()V
    .registers 1

    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_0:[I

    return-void

    :array_a
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x40t 0x40t 0x0t 0x80t
        0x8t 0x0t 0x0t 0x0t
        0x40t 0x40t 0x0t 0x80t
        0x50t 0x0t 0x0t 0x0t
        0x40t 0x40t 0x0t 0x80t
        0x40t 0x40t 0x0t 0x80t
        0x40t 0x40t 0x0t 0x80t
        0x8t 0x0t 0x0t 0x0t
        0x40t 0x40t 0x0t 0x80t
        0x0t 0x1t 0x0t 0x0t
        0x8t 0x1t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x0t 0x40t 0x0t 0x80t
        0x0t 0x40t 0x0t 0x80t
        0x0t 0x40t 0x0t 0x80t
        0x0t 0x42t 0x0t 0x80t
        0x0t 0x2t 0x0t 0x0t
        0x0t 0x40t 0x0t 0x80t
        0x0t 0x42t 0x0t 0x0t
        0x0t 0x2t 0x0t 0x0t
        0x0t 0x40t 0x4t 0x0t
    .end array-data
.end method

.method private static jj_la1_1()V
    .registers 1

    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_1:[I

    return-void

    :array_a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private final jj_ntk()I
    .registers 3

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_nt:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-nez v0, :cond_17

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget v0, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    :goto_16
    return v0

    :cond_17
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_nt:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget v0, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_16
.end method

.method private final jj_rescan_token()V
    .registers 6

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    move v1, v2

    :goto_5
    const/4 v0, 0x2

    if-ge v1, v0, :cond_31

    :try_start_8
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    aget-object v0, v0, v1

    :cond_c
    iget v3, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->gen:I

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    if-le v3, v4, :cond_1f

    iget v3, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->arg:I

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    iget-object v3, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->first:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    packed-switch v1, :pswitch_data_34

    :cond_1f
    :goto_1f
    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    if-nez v0, :cond_c

    :goto_23
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :pswitch_27
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3_1()Z

    goto :goto_1f

    :catch_2b
    move-exception v0

    goto :goto_23

    :pswitch_2d
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_3_2()Z
    :try_end_30
    .catch Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess; {:try_start_8 .. :try_end_30} :catch_2b

    goto :goto_1f

    :cond_31
    iput-boolean v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    return-void

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_27
        :pswitch_2d
    .end packed-switch
.end method

.method private final jj_save(II)V
    .registers 6

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    aget-object v0, v0, p1

    :goto_4
    iget v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->gen:I

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    if-le v1, v2, :cond_16

    iget-object v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    if-nez v1, :cond_25

    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V

    iput-object v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    move-object v0, v1

    :cond_16
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    add-int/2addr v1, p2

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->gen:I

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v1, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->first:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput p2, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->arg:I

    return-void

    :cond_25
    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;->next:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    goto :goto_4
.end method

.method private final jj_scan_token(I)Z
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-ne v1, v2, :cond_3c

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v1, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-nez v1, :cond_33

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v2

    iput-object v2, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    :goto_21
    iget-boolean v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan:Z

    if-eqz v1, :cond_48

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    move v2, v0

    :goto_28
    if-eqz v1, :cond_43

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-eq v1, v3, :cond_43

    add-int/lit8 v2, v2, 0x1

    iget-object v1, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_28

    :cond_33
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v1, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_21

    :cond_3c
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v1, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_21

    :cond_43
    if-eqz v1, :cond_48

    invoke-direct {p0, p1, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_add_error_token(II)V

    :cond_48
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget v1, v1, Lorg/apache/james/mime4j/field/address/parser/Token;->kind:I

    if-eq v1, p1, :cond_50

    const/4 v0, 0x1

    :cond_4f
    return v0

    :cond_50
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la:I

    if-nez v1, :cond_4f

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-ne v1, v2, :cond_4f

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ls:Lorg/apache/james/mime4j/field/address/parser/AddressListParser$LookaheadSuccess;

    throw v0
.end method

.method public static main([Ljava/lang/String;)V
    .registers 3

    :goto_0
    :try_start_0
    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;

    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->parseLine()V

    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->rootNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;

    const-string v1, "> "

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->dump(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_0

    :catch_18
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public ReInit(Ljava/io/InputStream;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->ReInit(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 8

    const/4 v4, -0x1

    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, p1, p2, v2, v3}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;II)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_9} :catch_2c

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;)V

    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->reset()V

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    move v1, v0

    :goto_21
    const/16 v2, 0x16

    if-ge v1, v2, :cond_33

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :catch_2c
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_33
    :goto_33
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    array-length v1, v1

    if-ge v0, v1, :cond_44

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    :cond_44
    return-void
.end method

.method public ReInit(Ljava/io/Reader;)V
    .registers 6

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1, p1, v2, v2}, Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;II)V

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/address/parser/SimpleCharStream;)V

    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->reset()V

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    move v1, v0

    :goto_20
    const/16 v2, 0x16

    if-ge v1, v2, :cond_2b

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_2b
    :goto_2b
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    array-length v1, v1

    if-ge v0, v1, :cond_3c

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    :cond_3c
    return-void
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;)V
    .registers 6

    const/4 v3, -0x1

    const/4 v0, 0x0

    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->reset()V

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    move v1, v0

    :goto_15
    const/16 v2, 0x16

    if-ge v1, v2, :cond_20

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_20
    :goto_20
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    array-length v1, v1

    if-ge v0, v1, :cond_31

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser$JJCalls;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_31
    return-void
.end method

.method public final addr_spec()V
    .registers 6

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;

    const/16 v0, 0x9

    invoke-direct {v3, v0}, Lorg/apache/james/mime4j/field/address/parser/ASTaddr_spec;-><init>(I)V

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v0, v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    invoke-virtual {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :try_start_10
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->local_part()V

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->domain()V
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_48
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_1b} :catch_24

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v0, v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    invoke-virtual {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    return-void

    :catch_24
    move-exception v0

    :try_start_25
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1, v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_48

    const/4 v1, 0x0

    :try_start_2b
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_3e

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_32

    :catchall_32
    move-exception v0

    :goto_33
    if-eqz v1, :cond_3d

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1, v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    invoke-virtual {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_3d
    throw v0

    :cond_3e
    :try_start_3e
    instance-of v4, v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v4, :cond_45

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    throw v0

    :cond_45
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_48
    .catchall {:try_start_3e .. :try_end_48} :catchall_32

    :catchall_48
    move-exception v0

    move v1, v2

    goto :goto_33
.end method

.method public final address()V
    .registers 6

    const/4 v2, 0x1

    const/4 v1, -0x1

    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ASTaddress;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Lorg/apache/james/mime4j/field/address/parser/ASTaddress;-><init>(I)V

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v0, v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    invoke-virtual {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    const v0, 0x7fffffff

    :try_start_13
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_1(I)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->addr_spec()V
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_62
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_1c} :catch_41

    :goto_1c
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v0, v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    invoke-virtual {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    return-void

    :cond_25
    :try_start_25
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v0, v1, :cond_5b

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v0

    :goto_2d
    sparse-switch v0, :sswitch_data_9a

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v1, 0x5

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v4, v0, v1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v0
    :try_end_41
    .catchall {:try_start_25 .. :try_end_41} :catchall_62
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_41} :catch_41

    :catch_41
    move-exception v0

    :try_start_42
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1, v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_62

    const/4 v1, 0x0

    :try_start_48
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_8f

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_4f
    .catchall {:try_start_48 .. :try_end_4f} :catchall_4f

    :catchall_4f
    move-exception v0

    :goto_50
    if-eqz v1, :cond_5a

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1, v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    invoke-virtual {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_5a
    throw v0

    :cond_5b
    :try_start_5b
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_2d

    :sswitch_5e
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->angle_addr()V

    goto :goto_1c

    :catchall_62
    move-exception v0

    move v1, v2

    goto :goto_50

    :sswitch_65
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->phrase()V

    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v0, v1, :cond_84

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v0

    :goto_70
    packed-switch v0, :pswitch_data_a8

    :pswitch_73
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v1, 0x4

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v4, v0, v1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v0

    :cond_84
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_70

    :pswitch_87
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->group_body()V

    goto :goto_1c

    :pswitch_8b
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->angle_addr()V
    :try_end_8e
    .catchall {:try_start_5b .. :try_end_8e} :catchall_62
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_8e} :catch_41

    goto :goto_1c

    :cond_8f
    :try_start_8f
    instance-of v4, v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v4, :cond_96

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    throw v0

    :cond_96
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_99
    .catchall {:try_start_8f .. :try_end_99} :catchall_4f

    nop

    :sswitch_data_9a
    .sparse-switch
        0x6 -> :sswitch_5e
        0xe -> :sswitch_65
        0x1f -> :sswitch_65
    .end sparse-switch

    :pswitch_data_a8
    .packed-switch 0x4
        :pswitch_87
        :pswitch_73
        :pswitch_8b
    .end packed-switch
.end method

.method public final address_list()V
    .registers 7

    const/4 v5, -0x1

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;

    invoke-direct {v3, v2}, Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;-><init>(I)V

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v0, v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    invoke-virtual {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :try_start_f
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v0, v5, :cond_3c

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v0

    :goto_17
    sparse-switch v0, :sswitch_data_8c

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v1, 0x1

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v4, v0, v1

    :goto_21
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v0, v5, :cond_5d

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v0

    :goto_29
    packed-switch v0, :pswitch_data_9a

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v1, 0x2

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v4, v0, v1
    :try_end_33
    .catchall {:try_start_f .. :try_end_33} :catchall_77
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_33} :catch_43

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v0, v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    invoke-virtual {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    return-void

    :cond_3c
    :try_start_3c
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_17

    :sswitch_3f
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->address()V
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_77
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_42} :catch_43

    goto :goto_21

    :catch_43
    move-exception v0

    :try_start_44
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1, v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
    :try_end_49
    .catchall {:try_start_44 .. :try_end_49} :catchall_77

    const/4 v1, 0x0

    :try_start_4a
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_81

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_51

    :catchall_51
    move-exception v0

    :goto_52
    if-eqz v1, :cond_5c

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1, v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    invoke-virtual {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_5c
    throw v0

    :cond_5d
    :try_start_5d
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_29

    :pswitch_60
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v0, v5, :cond_7a

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v0

    :goto_6c
    sparse-switch v0, :sswitch_data_a0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v1, 0x3

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v4, v0, v1

    goto :goto_21

    :catchall_77
    move-exception v0

    move v1, v2

    goto :goto_52

    :cond_7a
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_6c

    :sswitch_7d
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->address()V
    :try_end_80
    .catchall {:try_start_5d .. :try_end_80} :catchall_77
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_80} :catch_43

    goto :goto_21

    :cond_81
    :try_start_81
    instance-of v4, v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v4, :cond_88

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    throw v0

    :cond_88
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_8b
    .catchall {:try_start_81 .. :try_end_8b} :catchall_51

    nop

    :sswitch_data_8c
    .sparse-switch
        0x6 -> :sswitch_3f
        0xe -> :sswitch_3f
        0x1f -> :sswitch_3f
    .end sparse-switch

    :pswitch_data_9a
    .packed-switch 0x3
        :pswitch_60
    .end packed-switch

    :sswitch_data_a0
    .sparse-switch
        0x6 -> :sswitch_7d
        0xe -> :sswitch_7d
        0x1f -> :sswitch_7d
    .end sparse-switch
.end method

.method public final angle_addr()V
    .registers 6

    const/4 v0, 0x6

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;

    invoke-direct {v3, v0}, Lorg/apache/james/mime4j/field/address/parser/ASTangle_addr;-><init>(I)V

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v0, v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    invoke-virtual {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    const/4 v0, 0x6

    :try_start_10
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_37

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v0

    :goto_1c
    packed-switch v0, :pswitch_data_66

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v1, 0xa

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v4, v0, v1

    :goto_27
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->addr_spec()V

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
    :try_end_2e
    .catchall {:try_start_10 .. :try_end_2e} :catchall_62
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_2e} :catch_3e

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v0, v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    invoke-virtual {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    return-void

    :cond_37
    :try_start_37
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_1c

    :pswitch_3a
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->route()V
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_62
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_3d} :catch_3e

    goto :goto_27

    :catch_3e
    move-exception v0

    :try_start_3f
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1, v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_62

    const/4 v1, 0x0

    :try_start_45
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_58

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_4c

    :catchall_4c
    move-exception v0

    :goto_4d
    if-eqz v1, :cond_57

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1, v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    invoke-virtual {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_57
    throw v0

    :cond_58
    :try_start_58
    instance-of v4, v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v4, :cond_5f

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    throw v0

    :cond_5f
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_62
    .catchall {:try_start_58 .. :try_end_62} :catchall_4c

    :catchall_62
    move-exception v0

    move v1, v2

    goto :goto_4d

    nop

    :pswitch_data_66
    .packed-switch 0x8
        :pswitch_3a
    .end packed-switch
.end method

.method public final disable_tracing()V
    .registers 1

    return-void
.end method

.method public final domain()V
    .registers 8

    const/4 v6, 0x1

    const/4 v5, -0x1

    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ASTdomain;

    const/16 v0, 0xb

    invoke-direct {v2, v0}, Lorg/apache/james/mime4j/field/address/parser/ASTdomain;-><init>(I)V

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v0, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :try_start_11
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v0, v5, :cond_38

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v0

    :goto_19
    sparse-switch v0, :sswitch_data_a4

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v1, 0x15

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v3, v0, v1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v0
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception v0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1, v2, v6}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    throw v0

    :cond_38
    :try_start_38
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_19

    :sswitch_3b
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v0

    :goto_41
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v1, v5, :cond_5d

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v1

    :goto_49
    sparse-switch v1, :sswitch_data_ae

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v1, 0x13

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v3, v0, v1
    :try_end_54
    .catchall {:try_start_38 .. :try_end_54} :catchall_2e

    :goto_54
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v0, v2, v6}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    return-void

    :cond_5d
    :try_start_5d
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_49

    :sswitch_60
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v1, v5, :cond_8d

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v1

    :goto_68
    packed-switch v1, :pswitch_data_b8

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v3, 0x14

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v4, v1, v3

    :goto_73
    iget-object v1, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_97

    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    const-string v1, "Atoms in domain names must be separated by \'.\'"

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8d
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_68

    :pswitch_90
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v0

    goto :goto_73

    :cond_97
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v0

    goto :goto_41

    :sswitch_9e
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
    :try_end_a3
    .catchall {:try_start_5d .. :try_end_a3} :catchall_2e

    goto :goto_54

    :sswitch_data_a4
    .sparse-switch
        0xe -> :sswitch_3b
        0x12 -> :sswitch_9e
    .end sparse-switch

    :sswitch_data_ae
    .sparse-switch
        0x9 -> :sswitch_60
        0xe -> :sswitch_60
    .end sparse-switch

    :pswitch_data_b8
    .packed-switch 0x9
        :pswitch_90
    .end packed-switch
.end method

.method public final enable_tracing()V
    .registers 1

    return-void
.end method

.method public generateParseException()Lorg/apache/james/mime4j/field/address/parser/ParseException;
    .registers 9

    const/16 v7, 0x22

    const/4 v6, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    new-array v3, v7, [Z

    move v1, v0

    :goto_c
    if-ge v1, v7, :cond_13

    aput-boolean v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_13
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    if-ltz v1, :cond_1e

    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    aput-boolean v6, v3, v1

    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_kind:I

    :cond_1e
    move v2, v0

    :goto_1f
    const/16 v1, 0x16

    if-ge v2, v1, :cond_4f

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    aget v1, v1, v2

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    if-ne v1, v4, :cond_4b

    move v1, v0

    :goto_2c
    const/16 v4, 0x20

    if-ge v1, v4, :cond_4b

    sget-object v4, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_0:[I

    aget v4, v4, v2

    shl-int v5, v6, v1

    and-int/2addr v4, v5

    if-eqz v4, :cond_3b

    aput-boolean v6, v3, v1

    :cond_3b
    sget-object v4, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1_1:[I

    aget v4, v4, v2

    shl-int v5, v6, v1

    and-int/2addr v4, v5

    if-eqz v4, :cond_48

    add-int/lit8 v4, v1, 0x20

    aput-boolean v6, v3, v4

    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_4b
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1f

    :cond_4f
    move v1, v0

    :goto_50
    if-ge v1, v7, :cond_68

    aget-boolean v2, v3, v1

    if-eqz v2, :cond_65

    new-array v2, v6, [I

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    aput v1, v2, v0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentry:[I

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_65
    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    :cond_68
    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_endpos:I

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_rescan_token()V

    invoke-direct {p0, v0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_add_error_token(II)V

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v2, v1, [[I

    move v1, v0

    :goto_79
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_91

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_79

    :cond_91
    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    sget-object v3, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->tokenImage:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>(Lorg/apache/james/mime4j/field/address/parser/Token;[[I[Ljava/lang/String;)V

    return-object v0
.end method

.method public final getNextToken()Lorg/apache/james/mime4j/field/address/parser/Token;
    .registers 3

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    :goto_c
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    return-object v0

    :cond_18
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_c
.end method

.method public final getToken(I)Lorg/apache/james/mime4j/field/address/parser/Token;
    .registers 5

    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->lookingAhead:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/parser/Token;

    :goto_6
    const/4 v1, 0x0

    move-object v2, v0

    :goto_8
    if-ge v1, p1, :cond_20

    iget-object v0, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    if-eqz v0, :cond_17

    iget-object v0, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    :goto_10
    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_8

    :cond_14
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_6

    :cond_17
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v0

    iput-object v0, v2, Lorg/apache/james/mime4j/field/address/parser/Token;->next:Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_10

    :cond_20
    return-object v2
.end method

.method public final group_body()V
    .registers 7

    const/4 v0, 0x5

    const/4 v2, 0x1

    const/4 v5, -0x1

    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ASTgroup_body;

    invoke-direct {v3, v0}, Lorg/apache/james/mime4j/field/address/parser/ASTgroup_body;-><init>(I)V

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v0, v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    invoke-virtual {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    const/4 v0, 0x4

    :try_start_11
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v0, v5, :cond_46

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v0

    :goto_1c
    sparse-switch v0, :sswitch_data_96

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v1, 0x7

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v4, v0, v1

    :goto_26
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v0, v5, :cond_67

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v0

    :goto_2e
    packed-switch v0, :pswitch_data_a4

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v1, 0x8

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v4, v0, v1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
    :try_end_3d
    .catchall {:try_start_11 .. :try_end_3d} :catchall_82
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_3d} :catch_4d

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v0, v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    invoke-virtual {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    return-void

    :cond_46
    :try_start_46
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_1c

    :sswitch_49
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->mailbox()V
    :try_end_4c
    .catchall {:try_start_46 .. :try_end_4c} :catchall_82
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_4c} :catch_4d

    goto :goto_26

    :catch_4d
    move-exception v0

    :try_start_4e
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1, v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
    :try_end_53
    .catchall {:try_start_4e .. :try_end_53} :catchall_82

    const/4 v1, 0x0

    :try_start_54
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_8c

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_5b
    .catchall {:try_start_54 .. :try_end_5b} :catchall_5b

    :catchall_5b
    move-exception v0

    :goto_5c
    if-eqz v1, :cond_66

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1, v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    invoke-virtual {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_66
    throw v0

    :cond_67
    :try_start_67
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_2e

    :pswitch_6a
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v0, v5, :cond_85

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v0

    :goto_76
    sparse-switch v0, :sswitch_data_aa

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v1, 0x9

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v4, v0, v1

    goto :goto_26

    :catchall_82
    move-exception v0

    move v1, v2

    goto :goto_5c

    :cond_85
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_76

    :sswitch_88
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->mailbox()V
    :try_end_8b
    .catchall {:try_start_67 .. :try_end_8b} :catchall_82
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_8b} :catch_4d

    goto :goto_26

    :cond_8c
    :try_start_8c
    instance-of v4, v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v4, :cond_93

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    throw v0

    :cond_93
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_96
    .catchall {:try_start_8c .. :try_end_96} :catchall_5b

    :sswitch_data_96
    .sparse-switch
        0x6 -> :sswitch_49
        0xe -> :sswitch_49
        0x1f -> :sswitch_49
    .end sparse-switch

    :pswitch_data_a4
    .packed-switch 0x3
        :pswitch_6a
    .end packed-switch

    :sswitch_data_aa
    .sparse-switch
        0x6 -> :sswitch_88
        0xe -> :sswitch_88
        0x1f -> :sswitch_88
    .end sparse-switch
.end method

.method jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
    .registers 3

    check-cast p1, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->getToken(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->lastToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    return-void
.end method

.method jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
    .registers 3

    check-cast p1, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->getToken(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/james/mime4j/field/address/parser/SimpleNode;->firstToken:Lorg/apache/james/mime4j/field/address/parser/Token;

    return-void
.end method

.method public final local_part()V
    .registers 9

    const/4 v7, 0x1

    const/16 v6, 0x1f

    const/4 v5, -0x1

    new-instance v2, Lorg/apache/james/mime4j/field/address/parser/ASTlocal_part;

    const/16 v0, 0xa

    invoke-direct {v2, v0}, Lorg/apache/james/mime4j/field/address/parser/ASTlocal_part;-><init>(I)V

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v0, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :try_start_13
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v0, v5, :cond_3a

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v0

    :goto_1b
    sparse-switch v0, :sswitch_data_d4

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v1, 0xf

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v3, v0, v1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v0
    :try_end_30
    .catchall {:try_start_13 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception v0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1, v2, v7}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    throw v0

    :cond_3a
    :try_start_3a
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_1b

    :sswitch_3d
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v0

    :goto_43
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v1, v5, :cond_66

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v1

    :goto_4b
    sparse-switch v1, :sswitch_data_de

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v1, 0x10

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v3, v0, v1
    :try_end_56
    .catchall {:try_start_3a .. :try_end_56} :catchall_30

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v0, v2, v7}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    return-void

    :sswitch_5f
    const/16 v0, 0x1f

    :try_start_61
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v0

    goto :goto_43

    :cond_66
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_4b

    :sswitch_69
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v1, v5, :cond_9a

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v1

    :goto_71
    packed-switch v1, :pswitch_data_ec

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v3, 0x11

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v4, v1, v3

    :goto_7c
    iget v1, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->kind:I

    if-eq v1, v6, :cond_92

    iget-object v1, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_a4

    :cond_92
    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    const-string v1, "Words in local part must be separated by \'.\'"

    invoke-direct {v0, v1}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9a
    iget v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_71

    :pswitch_9d
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v0

    goto :goto_7c

    :cond_a4
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v0, v5, :cond_c1

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v0

    :goto_ac
    sparse-switch v0, :sswitch_data_f2

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v1, 0x12

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v3, v0, v1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v0

    :cond_c1
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_ac

    :sswitch_c4
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    move-result-object v0

    goto/16 :goto_43

    :sswitch_cc
    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
    :try_end_d1
    .catchall {:try_start_61 .. :try_end_d1} :catchall_30

    move-result-object v0

    goto/16 :goto_43

    :sswitch_data_d4
    .sparse-switch
        0xe -> :sswitch_3d
        0x1f -> :sswitch_5f
    .end sparse-switch

    :sswitch_data_de
    .sparse-switch
        0x9 -> :sswitch_69
        0xe -> :sswitch_69
        0x1f -> :sswitch_69
    .end sparse-switch

    :pswitch_data_ec
    .packed-switch 0x9
        :pswitch_9d
    .end packed-switch

    :sswitch_data_f2
    .sparse-switch
        0xe -> :sswitch_c4
        0x1f -> :sswitch_cc
    .end sparse-switch
.end method

.method public final mailbox()V
    .registers 6

    const/4 v1, -0x1

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;

    const/4 v0, 0x3

    invoke-direct {v3, v0}, Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;-><init>(I)V

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v0, v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    invoke-virtual {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    const v0, 0x7fffffff

    :try_start_13
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_2_2(I)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->addr_spec()V
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_62
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_1c} :catch_41

    :goto_1c
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v0, v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    invoke-virtual {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    return-void

    :cond_25
    :try_start_25
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v0, v1, :cond_5b

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v0

    :goto_2d
    sparse-switch v0, :sswitch_data_74

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v1, 0x6

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v4, v0, v1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v0
    :try_end_41
    .catchall {:try_start_25 .. :try_end_41} :catchall_62
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_41} :catch_41

    :catch_41
    move-exception v0

    :try_start_42
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1, v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_62

    const/4 v1, 0x0

    :try_start_48
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_69

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_4f
    .catchall {:try_start_48 .. :try_end_4f} :catchall_4f

    :catchall_4f
    move-exception v0

    :goto_50
    if-eqz v1, :cond_5a

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1, v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    invoke-virtual {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_5a
    throw v0

    :cond_5b
    :try_start_5b
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_2d

    :sswitch_5e
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->angle_addr()V

    goto :goto_1c

    :catchall_62
    move-exception v0

    move v1, v2

    goto :goto_50

    :sswitch_65
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->name_addr()V
    :try_end_68
    .catchall {:try_start_5b .. :try_end_68} :catchall_62
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_68} :catch_41

    goto :goto_1c

    :cond_69
    :try_start_69
    instance-of v4, v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v4, :cond_70

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    throw v0

    :cond_70
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_73
    .catchall {:try_start_69 .. :try_end_73} :catchall_4f

    nop

    :sswitch_data_74
    .sparse-switch
        0x6 -> :sswitch_5e
        0xe -> :sswitch_65
        0x1f -> :sswitch_65
    .end sparse-switch
.end method

.method public final name_addr()V
    .registers 6

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ASTname_addr;

    const/4 v0, 0x4

    invoke-direct {v3, v0}, Lorg/apache/james/mime4j/field/address/parser/ASTname_addr;-><init>(I)V

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v0, v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    invoke-virtual {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :try_start_f
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->phrase()V

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->angle_addr()V
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_42
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_15} :catch_1e

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v0, v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    invoke-virtual {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    return-void

    :catch_1e
    move-exception v0

    :try_start_1f
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1, v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_42

    const/4 v1, 0x0

    :try_start_25
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_38

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception v0

    :goto_2d
    if-eqz v1, :cond_37

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1, v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    invoke-virtual {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_37
    throw v0

    :cond_38
    :try_start_38
    instance-of v4, v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v4, :cond_3f

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    throw v0

    :cond_3f
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_42
    .catchall {:try_start_38 .. :try_end_42} :catchall_2c

    :catchall_42
    move-exception v0

    move v1, v2

    goto :goto_2d
.end method

.method public parseAddress()Lorg/apache/james/mime4j/field/address/parser/ASTaddress;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->parseAddress0()V

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->rootNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/ASTaddress;
    :try_end_b
    .catch Lorg/apache/james/mime4j/field/address/parser/TokenMgrError; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final parseAddress0()V
    .registers 2

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->address()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    return-void
.end method

.method public parseAddressList()Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->parseAddressList0()V

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->rootNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/ASTaddress_list;
    :try_end_b
    .catch Lorg/apache/james/mime4j/field/address/parser/TokenMgrError; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final parseAddressList0()V
    .registers 2

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->address_list()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    return-void
.end method

.method public final parseLine()V
    .registers 4

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->address_list()V

    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1b

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v0

    :goto_c
    packed-switch v0, :pswitch_data_24

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/4 v1, 0x0

    iget v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v2, v0, v1

    :goto_16
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    return-void

    :cond_1b
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_c

    :pswitch_1e
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_16

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1e
    .end packed-switch
.end method

.method public parseMailbox()Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->parseMailbox0()V

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->rootNode()Lorg/apache/james/mime4j/field/address/parser/Node;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/ASTmailbox;
    :try_end_b
    .catch Lorg/apache/james/mime4j/field/address/parser/TokenMgrError; {:try_start_0 .. :try_end_b} :catch_c

    return-object v0

    :catch_c
    move-exception v0

    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final parseMailbox0()V
    .registers 2

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->mailbox()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    return-void
.end method

.method public final phrase()V
    .registers 6

    const/4 v4, 0x1

    const/4 v2, -0x1

    new-instance v1, Lorg/apache/james/mime4j/field/address/parser/ASTphrase;

    const/16 v0, 0x8

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/field/address/parser/ASTphrase;-><init>(I)V

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v0, v1}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :sswitch_11
    :try_start_11
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v0, v2, :cond_38

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v0

    :goto_19
    sparse-switch v0, :sswitch_data_66

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v2, 0xd

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v3, v0, v2

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    new-instance v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/address/parser/ParseException;-><init>()V

    throw v0
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception v0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v2, v1, v4}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    throw v0

    :cond_38
    :try_start_38
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_19

    :sswitch_3b
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    :goto_40
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v0, v2, :cond_62

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v0

    :goto_48
    sparse-switch v0, :sswitch_data_70

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v2, 0xe

    iget v3, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v3, v0, v2
    :try_end_53
    .catchall {:try_start_38 .. :try_end_53} :catchall_2e

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v0, v1, v4}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    return-void

    :sswitch_5c
    const/16 v0, 0x1f

    :try_start_5e
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    goto :goto_40

    :cond_62
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
    :try_end_64
    .catchall {:try_start_5e .. :try_end_64} :catchall_2e

    goto :goto_48

    nop

    :sswitch_data_66
    .sparse-switch
        0xe -> :sswitch_3b
        0x1f -> :sswitch_5c
    .end sparse-switch

    :sswitch_data_70
    .sparse-switch
        0xe -> :sswitch_11
        0x1f -> :sswitch_11
    .end sparse-switch
.end method

.method public final route()V
    .registers 7

    const/4 v5, -0x1

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/james/mime4j/field/address/parser/ASTroute;

    const/4 v0, 0x7

    invoke-direct {v3, v0}, Lorg/apache/james/mime4j/field/address/parser/ASTroute;-><init>(I)V

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v0, v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    invoke-virtual {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    const/16 v0, 0x8

    :try_start_12
    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->domain()V

    :goto_18
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v0, v5, :cond_38

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v0

    :goto_20
    sparse-switch v0, :sswitch_data_86

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v1, 0xb

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v4, v0, v1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;
    :try_end_2f
    .catchall {:try_start_12 .. :try_end_2f} :catchall_82
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_2f} :catch_5b

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v0, v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    invoke-virtual {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    return-void

    :cond_38
    :try_start_38
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    goto :goto_20

    :pswitch_3b
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    :sswitch_3f
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I

    if-ne v0, v5, :cond_75

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk()I

    move-result v0

    :goto_47
    packed-switch v0, :pswitch_data_90

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_la1:[I

    const/16 v1, 0xc

    iget v4, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_gen:I

    aput v4, v0, v1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/parser/Token;

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->domain()V
    :try_end_5a
    .catchall {:try_start_38 .. :try_end_5a} :catchall_82
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_5a} :catch_5b

    goto :goto_18

    :catch_5b
    move-exception v0

    :try_start_5c
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1, v3}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V
    :try_end_61
    .catchall {:try_start_5c .. :try_end_61} :catchall_82

    const/4 v1, 0x0

    :try_start_62
    instance-of v4, v0, Ljava/lang/RuntimeException;

    if-eqz v4, :cond_78

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0
    :try_end_69
    .catchall {:try_start_62 .. :try_end_69} :catchall_69

    :catchall_69
    move-exception v0

    :goto_6a
    if-eqz v1, :cond_74

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;

    invoke-virtual {v1, v3, v2}, Lorg/apache/james/mime4j/field/address/parser/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;Z)V

    invoke-virtual {p0, v3}, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/parser/Node;)V

    :cond_74
    throw v0

    :cond_75
    :try_start_75
    iget v0, p0, Lorg/apache/james/mime4j/field/address/parser/AddressListParser;->jj_ntk:I
    :try_end_77
    .catchall {:try_start_75 .. :try_end_77} :catchall_82
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_77} :catch_5b

    goto :goto_47

    :cond_78
    :try_start_78
    instance-of v4, v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    if-eqz v4, :cond_7f

    check-cast v0, Lorg/apache/james/mime4j/field/address/parser/ParseException;

    throw v0

    :cond_7f
    check-cast v0, Ljava/lang/Error;

    throw v0
    :try_end_82
    .catchall {:try_start_78 .. :try_end_82} :catchall_69

    :catchall_82
    move-exception v0

    move v1, v2

    goto :goto_6a

    nop

    :sswitch_data_86
    .sparse-switch
        0x3 -> :sswitch_3f
        0x8 -> :sswitch_3f
    .end sparse-switch

    :pswitch_data_90
    .packed-switch 0x3
        :pswitch_3b
    .end packed-switch
.end method
