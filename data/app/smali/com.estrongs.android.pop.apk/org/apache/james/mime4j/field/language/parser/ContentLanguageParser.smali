.class public Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserConstants;


# static fields
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

.field jj_input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

.field private jj_kind:I

.field private final jj_la1:[I

.field public jj_nt:Lorg/apache/james/mime4j/field/language/parser/Token;

.field private jj_ntk:I

.field private languages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public token:Lorg/apache/james/mime4j/field/language/parser/Token;

.field public token_source:Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    invoke-static {}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1_0()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 9

    const/4 v5, 0x3

    const/4 v0, 0x0

    const/4 v4, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->languages:Ljava/util/List;

    new-array v1, v5, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_expentries:Ljava/util/Vector;

    iput v4, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_kind:I

    :try_start_1a
    new-instance v1, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v1, p1, p2, v2, v3}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;II)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;
    :try_end_23
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1a .. :try_end_23} :catch_40

    new-instance v1, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    new-instance v1, Lorg/apache/james/mime4j/field/language/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/language/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    iput v4, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    :goto_37
    if-ge v0, v5, :cond_47

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    :catch_40
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_47
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 7

    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v3, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->languages:Ljava/util/List;

    new-array v1, v4, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_expentries:Ljava/util/Vector;

    iput v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_kind:I

    new-instance v1, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-direct {v1, p1, v2, v2}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;-><init>(Ljava/io/Reader;II)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    new-instance v1, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    new-instance v1, Lorg/apache/james/mime4j/field/language/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/language/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    iput v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    :goto_36
    if-ge v0, v4, :cond_3f

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    :cond_3f
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;)V
    .registers 6

    const/4 v3, 0x3

    const/4 v0, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->languages:Ljava/util/List;

    new-array v1, v3, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_expentries:Ljava/util/Vector;

    iput v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_kind:I

    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    new-instance v1, Lorg/apache/james/mime4j/field/language/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/language/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    iput v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    :goto_27
    if-ge v0, v3, :cond_30

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_30
    return-void
.end method

.method private final doParse()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->language()Ljava/lang/String;

    :goto_3
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_19

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk()I

    move-result v0

    :goto_c
    packed-switch v0, :pswitch_data_24

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    const/4 v1, 0x0

    iget v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    aput v2, v0, v1

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->languages:Ljava/util/List;

    return-object v0

    :cond_19
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    goto :goto_c

    :pswitch_1c
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/language/parser/Token;

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->language()Ljava/lang/String;

    goto :goto_3

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1c
    .end packed-switch
.end method

.method private final jj_consume_token(I)Lorg/apache/james/mime4j/field/language/parser/Token;
    .registers 5

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    iget-object v1, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->next:Lorg/apache/james/mime4j/field/language/parser/Token;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    iget-object v1, v1, Lorg/apache/james/mime4j/field/language/parser/Token;->next:Lorg/apache/james/mime4j/field/language/parser/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    :goto_c
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    iget v1, v1, Lorg/apache/james/mime4j/field/language/parser/Token;->kind:I

    if-ne v1, p1, :cond_2b

    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    return-object v0

    :cond_1e
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/language/parser/Token;

    move-result-object v2

    iput-object v2, v1, Lorg/apache/james/mime4j/field/language/parser/Token;->next:Lorg/apache/james/mime4j/field/language/parser/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    goto :goto_c

    :cond_2b
    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    iput p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_kind:I

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->generateParseException()Lorg/apache/james/mime4j/field/language/parser/ParseException;

    move-result-object v0

    throw v0
.end method

.method private static jj_la1_0()V
    .registers 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1_0:[I

    return-void

    nop

    :array_a
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x8t 0x0t
        0x4t 0x0t 0x8t 0x0t
    .end array-data
.end method

.method private final jj_ntk()I
    .registers 3

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->next:Lorg/apache/james/mime4j/field/language/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_nt:Lorg/apache/james/mime4j/field/language/parser/Token;

    if-nez v0, :cond_17

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/language/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->next:Lorg/apache/james/mime4j/field/language/parser/Token;

    iget v0, v1, Lorg/apache/james/mime4j/field/language/parser/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    :goto_16
    return v0

    :cond_17
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_nt:Lorg/apache/james/mime4j/field/language/parser/Token;

    iget v0, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    goto :goto_16
.end method


# virtual methods
.method public ReInit(Ljava/io/InputStream;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->ReInit(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x0

    const/4 v4, -0x1

    :try_start_2
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, p1, p2, v2, v3}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;II)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_9} :catch_25

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;)V

    new-instance v1, Lorg/apache/james/mime4j/field/language/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/language/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    iput v4, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    :goto_1b
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2c

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :catch_25
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2c
    return-void
.end method

.method public ReInit(Ljava/io/Reader;)V
    .registers 6

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v3, -0x1

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v1, p1, v2, v2}, Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;II)V

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_input_stream:Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/language/parser/SimpleCharStream;)V

    new-instance v1, Lorg/apache/james/mime4j/field/language/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/language/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    iput v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    :goto_1a
    const/4 v1, 0x3

    if-ge v0, v1, :cond_24

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    :cond_24
    return-void
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v2, -0x1

    iput-object p1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    new-instance v1, Lorg/apache/james/mime4j/field/language/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/language/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    iput v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    :goto_f
    const/4 v1, 0x3

    if-ge v0, v1, :cond_19

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

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

.method public generateParseException()Lorg/apache/james/mime4j/field/language/parser/ParseException;
    .registers 9

    const/16 v7, 0x17

    const/4 v6, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    new-array v3, v7, [Z

    move v1, v0

    :goto_c
    if-ge v1, v7, :cond_13

    aput-boolean v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_13
    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_kind:I

    if-ltz v1, :cond_1e

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_kind:I

    aput-boolean v6, v3, v1

    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_kind:I

    :cond_1e
    move v2, v0

    :goto_1f
    const/4 v1, 0x3

    if-ge v2, v1, :cond_41

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    aget v1, v1, v2

    iget v4, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    if-ne v1, v4, :cond_3d

    move v1, v0

    :goto_2b
    const/16 v4, 0x20

    if-ge v1, v4, :cond_3d

    sget-object v4, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1_0:[I

    aget v4, v4, v2

    shl-int v5, v6, v1

    and-int/2addr v4, v5

    if-eqz v4, :cond_3a

    aput-boolean v6, v3, v1

    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_3d
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1f

    :cond_41
    move v1, v0

    :goto_42
    if-ge v1, v7, :cond_5a

    aget-boolean v2, v3, v1

    if-eqz v2, :cond_57

    new-array v2, v6, [I

    iput-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_expentry:[I

    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_expentry:[I

    aput v1, v2, v0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_expentries:Ljava/util/Vector;

    iget-object v4, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_expentry:[I

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    :cond_5a
    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v2, v1, [[I

    move v1, v0

    :goto_63
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_7b

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_expentries:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_63

    :cond_7b
    new-instance v0, Lorg/apache/james/mime4j/field/language/parser/ParseException;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    sget-object v3, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->tokenImage:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/james/mime4j/field/language/parser/ParseException;-><init>(Lorg/apache/james/mime4j/field/language/parser/Token;[[I[Ljava/lang/String;)V

    return-object v0
.end method

.method public final getNextToken()Lorg/apache/james/mime4j/field/language/parser/Token;
    .registers 3

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->next:Lorg/apache/james/mime4j/field/language/parser/Token;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->next:Lorg/apache/james/mime4j/field/language/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    :goto_c
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    return-object v0

    :cond_18
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/language/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->next:Lorg/apache/james/mime4j/field/language/parser/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    goto :goto_c
.end method

.method public final getToken(I)Lorg/apache/james/mime4j/field/language/parser/Token;
    .registers 5

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token:Lorg/apache/james/mime4j/field/language/parser/Token;

    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_5
    if-ge v1, p1, :cond_1a

    iget-object v0, v2, Lorg/apache/james/mime4j/field/language/parser/Token;->next:Lorg/apache/james/mime4j/field/language/parser/Token;

    if-eqz v0, :cond_11

    iget-object v0, v2, Lorg/apache/james/mime4j/field/language/parser/Token;->next:Lorg/apache/james/mime4j/field/language/parser/Token;

    :goto_d
    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_5

    :cond_11
    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->token_source:Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/language/parser/Token;

    move-result-object v0

    iput-object v0, v2, Lorg/apache/james/mime4j/field/language/parser/Token;->next:Lorg/apache/james/mime4j/field/language/parser/Token;

    goto :goto_d

    :cond_1a
    return-object v2
.end method

.method public final language()Ljava/lang/String;
    .registers 7

    const/16 v5, 0x2d

    const/16 v4, 0x12

    const/4 v3, 0x2

    const/4 v2, -0x1

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/language/parser/Token;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_14
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    if-ne v0, v2, :cond_30

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk()I

    move-result v0

    :goto_1c
    sparse-switch v0, :sswitch_data_70

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    const/4 v2, 0x1

    iget v3, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    aput v3, v0, v2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->languages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_30
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    goto :goto_1c

    :sswitch_33
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    if-ne v0, v2, :cond_4d

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk()I

    move-result v0

    :goto_3b
    sparse-switch v0, :sswitch_data_7a

    iget-object v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_la1:[I

    iget v1, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_gen:I

    aput v1, v0, v3

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/language/parser/Token;

    new-instance v0, Lorg/apache/james/mime4j/field/language/parser/ParseException;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/language/parser/ParseException;-><init>()V

    throw v0

    :cond_4d
    iget v0, p0, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_ntk:I

    goto :goto_3b

    :sswitch_50
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/language/parser/Token;

    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/language/parser/Token;

    move-result-object v0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_14

    :sswitch_60
    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/language/parser/Token;

    move-result-object v0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/language/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_14

    nop

    :sswitch_data_70
    .sparse-switch
        0x2 -> :sswitch_33
        0x13 -> :sswitch_33
    .end sparse-switch

    :sswitch_data_7a
    .sparse-switch
        0x2 -> :sswitch_50
        0x13 -> :sswitch_60
    .end sparse-switch
.end method

.method public parse()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/language/parser/ContentLanguageParser;->doParse()Ljava/util/List;
    :try_end_3
    .catch Lorg/apache/james/mime4j/field/language/parser/TokenMgrError; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Lorg/apache/james/mime4j/field/language/parser/ParseException;

    invoke-direct {v1, v0}, Lorg/apache/james/mime4j/field/language/parser/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
