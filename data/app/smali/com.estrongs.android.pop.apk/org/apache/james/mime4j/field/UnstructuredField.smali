.class public Lorg/apache/james/mime4j/field/UnstructuredField;
.super Lorg/apache/james/mime4j/field/AbstractField;


# static fields
.field static final PARSER:Lorg/apache/james/mime4j/field/FieldParser;


# instance fields
.field private parsed:Z

.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/james/mime4j/field/UnstructuredField$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/UnstructuredField$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/UnstructuredField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/UnstructuredField;->parsed:Z

    return-void
.end method

.method private parse()V
    .registers 2

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/UnstructuredField;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/james/mime4j/codec/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/UnstructuredField;->value:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/UnstructuredField;->parsed:Z

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .registers 2

    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/UnstructuredField;->parsed:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/UnstructuredField;->parse()V

    :cond_7
    iget-object v0, p0, Lorg/apache/james/mime4j/field/UnstructuredField;->value:Ljava/lang/String;

    return-object v0
.end method
