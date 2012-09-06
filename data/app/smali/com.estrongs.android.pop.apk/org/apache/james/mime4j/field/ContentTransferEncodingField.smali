.class public Lorg/apache/james/mime4j/field/ContentTransferEncodingField;
.super Lorg/apache/james/mime4j/field/AbstractField;


# static fields
.field static final PARSER:Lorg/apache/james/mime4j/field/FieldParser;


# instance fields
.field private encoding:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/apache/james/mime4j/field/ContentTransferEncodingField$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/ContentTransferEncodingField$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/ContentTransferEncodingField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/ContentTransferEncodingField;->encoding:Ljava/lang/String;

    return-void
.end method

.method public static getEncoding(Lorg/apache/james/mime4j/field/ContentTransferEncodingField;)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentTransferEncodingField;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/ContentTransferEncodingField;->getEncoding()Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    const-string v0, "7bit"

    goto :goto_10
.end method


# virtual methods
.method public getEncoding()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/james/mime4j/field/ContentTransferEncodingField;->encoding:Ljava/lang/String;

    return-object v0
.end method
