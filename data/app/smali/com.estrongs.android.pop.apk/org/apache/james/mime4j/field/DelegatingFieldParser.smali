.class public Lorg/apache/james/mime4j/field/DelegatingFieldParser;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/james/mime4j/field/FieldParser;


# instance fields
.field private defaultParser:Lorg/apache/james/mime4j/field/FieldParser;

.field private parsers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/james/mime4j/field/FieldParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/james/mime4j/field/DelegatingFieldParser;->parsers:Ljava/util/Map;

    sget-object v0, Lorg/apache/james/mime4j/field/UnstructuredField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/DelegatingFieldParser;->defaultParser:Lorg/apache/james/mime4j/field/FieldParser;

    return-void
.end method


# virtual methods
.method public getParser(Ljava/lang/String;)Lorg/apache/james/mime4j/field/FieldParser;
    .registers 4

    iget-object v0, p0, Lorg/apache/james/mime4j/field/DelegatingFieldParser;->parsers:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/james/mime4j/field/FieldParser;

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/apache/james/mime4j/field/DelegatingFieldParser;->defaultParser:Lorg/apache/james/mime4j/field/FieldParser;

    :cond_10
    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)Lorg/apache/james/mime4j/field/ParsedField;
    .registers 5

    invoke-virtual {p0, p1}, Lorg/apache/james/mime4j/field/DelegatingFieldParser;->getParser(Ljava/lang/String;)Lorg/apache/james/mime4j/field/FieldParser;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/james/mime4j/field/FieldParser;->parse(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)Lorg/apache/james/mime4j/field/ParsedField;

    move-result-object v0

    return-object v0
.end method

.method public setFieldParser(Ljava/lang/String;Lorg/apache/james/mime4j/field/FieldParser;)V
    .registers 5

    iget-object v0, p0, Lorg/apache/james/mime4j/field/DelegatingFieldParser;->parsers:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
