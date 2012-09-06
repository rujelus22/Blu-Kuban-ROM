.class Lorg/apache/james/mime4j/parser/RawField;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/james/mime4j/parser/Field;


# instance fields
.field private body:Ljava/lang/String;

.field private colonIdx:I

.field private name:Ljava/lang/String;

.field private final raw:Lorg/apache/james/mime4j/util/ByteSequence;


# direct methods
.method public constructor <init>(Lorg/apache/james/mime4j/util/ByteSequence;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/james/mime4j/parser/RawField;->raw:Lorg/apache/james/mime4j/util/ByteSequence;

    iput p2, p0, Lorg/apache/james/mime4j/parser/RawField;->colonIdx:I

    return-void
.end method

.method private parseBody()Ljava/lang/String;
    .registers 4

    iget v0, p0, Lorg/apache/james/mime4j/parser/RawField;->colonIdx:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lorg/apache/james/mime4j/parser/RawField;->raw:Lorg/apache/james/mime4j/util/ByteSequence;

    invoke-interface {v1}, Lorg/apache/james/mime4j/util/ByteSequence;->length()I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v2, p0, Lorg/apache/james/mime4j/parser/RawField;->raw:Lorg/apache/james/mime4j/util/ByteSequence;

    invoke-static {v2, v0, v1}, Lorg/apache/james/mime4j/util/ContentUtil;->decode(Lorg/apache/james/mime4j/util/ByteSequence;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseName()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/RawField;->raw:Lorg/apache/james/mime4j/util/ByteSequence;

    const/4 v1, 0x0

    iget v2, p0, Lorg/apache/james/mime4j/parser/RawField;->colonIdx:I

    invoke-static {v0, v1, v2}, Lorg/apache/james/mime4j/util/ContentUtil;->decode(Lorg/apache/james/mime4j/util/ByteSequence;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/RawField;->body:Ljava/lang/String;

    if-nez v0, :cond_a

    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/RawField;->parseBody()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/RawField;->body:Ljava/lang/String;

    :cond_a
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/RawField;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/RawField;->name:Ljava/lang/String;

    if-nez v0, :cond_a

    invoke-direct {p0}, Lorg/apache/james/mime4j/parser/RawField;->parseName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/parser/RawField;->name:Ljava/lang/String;

    :cond_a
    iget-object v0, p0, Lorg/apache/james/mime4j/parser/RawField;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRaw()Lorg/apache/james/mime4j/util/ByteSequence;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/parser/RawField;->raw:Lorg/apache/james/mime4j/util/ByteSequence;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/RawField;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/james/mime4j/parser/RawField;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
