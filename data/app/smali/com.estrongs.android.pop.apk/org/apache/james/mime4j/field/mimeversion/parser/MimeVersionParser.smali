.class public Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserConstants;


# static fields
.field public static final INITIAL_VERSION_VALUE:I = -0x1

.field private static jj_la1_0:[I


# instance fields
.field private jj_expentries:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<[I>;"
        }
    .end annotation
.end field

.field private jj_expentry:[I

.field private jj_gen:I

.field jj_input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

.field private jj_kind:I

.field private final jj_la1:[I

.field public jj_nt:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

.field private jj_ntk:I

.field private major:I

.field private minor:I

.field public token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

.field public token_source:Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_la1_0()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 9

    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->major:I

    iput v4, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->minor:I

    new-array v1, v5, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_la1:[I

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_expentries:Ljava/util/Vector;

    iput v4, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_kind:I

    :try_start_17
    new-instance v1, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v1, p1, p2, v2, v3}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;II)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;
    :try_end_20
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_17 .. :try_end_20} :catch_3d

    new-instance v1, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token_source:Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;

    new-instance v1, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iput v4, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_ntk:I

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_gen:I

    :goto_34
    if-ge v0, v5, :cond_44

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_la1:[I

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    :catch_3d
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_44
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 7

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->major:I

    iput v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->minor:I

    new-array v1, v4, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_la1:[I

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_expentries:Ljava/util/Vector;

    iput v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_kind:I

    new-instance v1, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-direct {v1, p1, v4, v4}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;-><init>(Ljava/io/Reader;II)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    new-instance v1, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token_source:Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;

    new-instance v1, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iput v3, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_ntk:I

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_gen:I

    :goto_32
    if-ge v0, v4, :cond_3b

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_la1:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    :cond_3b
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;)V
    .registers 6

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->major:I

    iput v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->minor:I

    new-array v1, v3, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_la1:[I

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_expentries:Ljava/util/Vector;

    iput v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_kind:I

    iput-object p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token_source:Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;

    new-instance v1, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iput v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_ntk:I

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_gen:I

    :goto_24
    if-ge v0, v3, :cond_2d

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_la1:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_2d
    return-void
.end method

.method private final jj_consume_token(I)Lorg/apache/james/mime4j/field/mimeversion/parser/Token;
    .registers 5

    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iget-object v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iget-object v1, v1, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    :goto_c
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_ntk:I

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iget v1, v1, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->kind:I

    if-ne v1, p1, :cond_2b

    iget v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_gen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_gen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    return-object v0

    :cond_1e
    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token_source:Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    move-result-object v2

    iput-object v2, v1, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    goto :goto_c

    :cond_2b
    iput-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iput p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_kind:I

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->generateParseException()Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;

    move-result-object v0

    throw v0
.end method

.method private static jj_la1_0()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    sput-object v0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_la1_0:[I

    return-void
.end method

.method private final jj_ntk()I
    .registers 3

    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_nt:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    if-nez v0, :cond_17

    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token_source:Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iget v0, v1, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_ntk:I

    :goto_16
    return v0

    :cond_17
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_nt:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iget v0, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_ntk:I

    goto :goto_16
.end method


# virtual methods
.method public ReInit(Ljava/io/InputStream;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->ReInit(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 9

    const/4 v0, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    :try_start_3
    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, p1, p2, v2, v3}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;II)V
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_a} :catch_25

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token_source:Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;)V

    new-instance v1, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iput v5, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_ntk:I

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_gen:I

    :goto_1c
    if-ge v0, v4, :cond_2c

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_la1:[I

    aput v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :catch_25
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2c
    return-void
.end method

.method public ReInit(Ljava/io/Reader;)V
    .registers 7

    const/4 v0, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v1, p1, v3, v3}, Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;II)V

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token_source:Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_input_stream:Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/mimeversion/parser/SimpleCharStream;)V

    new-instance v1, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iput v4, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_ntk:I

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_gen:I

    :goto_1a
    if-ge v0, v3, :cond_23

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_la1:[I

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_23
    return-void
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v2, -0x1

    iput-object p1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token_source:Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;

    new-instance v1, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iput v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_ntk:I

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_gen:I

    :goto_f
    const/4 v1, 0x1

    if-ge v0, v1, :cond_19

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_la1:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_19
    return-void
.end method

.method public final disable_tracing()V
    .registers 1

    return-void
.end method

.method public final enable_tracing()V
    .registers 1

    return-void
.end method

.method public generateParseException()Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;
    .registers 9

    const/16 v7, 0x15

    const/4 v6, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    new-array v3, v7, [Z

    move v1, v0

    :goto_c
    if-ge v1, v7, :cond_13

    aput-boolean v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_13
    iget v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_kind:I

    if-ltz v1, :cond_1e

    iget v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_kind:I

    aput-boolean v6, v3, v1

    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_kind:I

    :cond_1e
    move v2, v0

    :goto_1f
    if-ge v2, v6, :cond_40

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_la1:[I

    aget v1, v1, v2

    iget v4, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_gen:I

    if-ne v1, v4, :cond_3c

    move v1, v0

    :goto_2a
    const/16 v4, 0x20

    if-ge v1, v4, :cond_3c

    sget-object v4, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_la1_0:[I

    aget v4, v4, v2

    shl-int v5, v6, v1

    and-int/2addr v4, v5

    if-eqz v4, :cond_39

    aput-boolean v6, v3, v1

    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_3c
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1f

    :cond_40
    move v1, v0

    :goto_41
    if-ge v1, v7, :cond_59

    aget-boolean v2, v3, v1

    if-eqz v2, :cond_56

    new-array v2, v6, [I

    iput-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_expentry:[I

    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_expentry:[I

    aput v1, v2, v0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_expentries:Ljava/util/Vector;

    iget-object v4, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_expentry:[I

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    :cond_59
    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v2, v1, [[I

    move v1, v0

    :goto_62
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_7a

    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_62

    :cond_7a
    new-instance v0, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    sget-object v3, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->tokenImage:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;-><init>(Lorg/apache/james/mime4j/field/mimeversion/parser/Token;[[I[Ljava/lang/String;)V

    return-object v0
.end method

.method public getMajorVersion()I
    .registers 2

    iget v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->major:I

    return v0
.end method

.method public getMinorVersion()I
    .registers 2

    iget v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->minor:I

    return v0
.end method

.method public final getNextToken()Lorg/apache/james/mime4j/field/mimeversion/parser/Token;
    .registers 3

    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    :goto_c
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_ntk:I

    iget v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_gen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_gen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    return-object v0

    :cond_18
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token_source:Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    goto :goto_c
.end method

.method public final getToken(I)Lorg/apache/james/mime4j/field/mimeversion/parser/Token;
    .registers 5

    iget-object v1, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_5
    if-ge v1, p1, :cond_1a

    iget-object v0, v2, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    if-eqz v0, :cond_11

    iget-object v0, v2, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    :goto_d
    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_5

    :cond_11
    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->token_source:Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    move-result-object v0

    iput-object v0, v2, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->next:Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    goto :goto_d

    :cond_1a
    return-object v2
.end method

.method public final parse()V
    .registers 4

    const/16 v2, 0x11

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    move-result-object v0

    const/16 v1, 0x12

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    move-result-object v1

    :try_start_f
    iget-object v0, v0, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->image:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->major:I

    iget-object v0, v1, Lorg/apache/james/mime4j/field/mimeversion/parser/Token;->image:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->minor:I
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_1f} :catch_20

    return-void

    :catch_20
    move-exception v0

    new-instance v1, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final parseAll()V
    .registers 2

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->parse()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    return-void
.end method

.method public final parseLine()V
    .registers 4

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->parse()V

    iget v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1b

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_ntk()I

    move-result v0

    :goto_c
    packed-switch v0, :pswitch_data_24

    iget-object v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_la1:[I

    const/4 v1, 0x0

    iget v2, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_gen:I

    aput v2, v0, v1

    :goto_16
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    return-void

    :cond_1b
    iget v0, p0, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_ntk:I

    goto :goto_c

    :pswitch_1e
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/mimeversion/parser/MimeVersionParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/mimeversion/parser/Token;

    goto :goto_16

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1e
    .end packed-switch
.end method
