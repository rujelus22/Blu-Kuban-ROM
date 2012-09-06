.class public Lorg/apache/james/mime4j/field/AddressListField;
.super Lorg/apache/james/mime4j/field/AbstractField;


# static fields
.field static final PARSER:Lorg/apache/james/mime4j/field/FieldParser;

.field private static log:Lorg/apache/commons/logging/Log;


# instance fields
.field private addressList:Lorg/apache/james/mime4j/field/address/AddressList;

.field private parseException:Lorg/apache/james/mime4j/field/address/parser/ParseException;

.field private parsed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lorg/apache/james/mime4j/field/AddressListField;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/field/AddressListField;->log:Lorg/apache/commons/logging/Log;

    new-instance v0, Lorg/apache/james/mime4j/field/AddressListField$1;

    invoke-direct {v0}, Lorg/apache/james/mime4j/field/AddressListField$1;-><init>()V

    sput-object v0, Lorg/apache/james/mime4j/field/AddressListField;->PARSER:Lorg/apache/james/mime4j/field/FieldParser;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/james/mime4j/field/AbstractField;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/james/mime4j/util/ByteSequence;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/AddressListField;->parsed:Z

    return-void
.end method

.method private parse()V
    .registers 6

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/AddressListField;->getBody()Ljava/lang/String;

    move-result-object v1

    :try_start_4
    invoke-static {v1}, Lorg/apache/james/mime4j/field/address/AddressList;->parse(Ljava/lang/String;)Lorg/apache/james/mime4j/field/address/AddressList;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/AddressListField;->addressList:Lorg/apache/james/mime4j/field/address/AddressList;
    :try_end_a
    .catch Lorg/apache/james/mime4j/field/address/parser/ParseException; {:try_start_4 .. :try_end_a} :catch_e

    :goto_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/james/mime4j/field/AddressListField;->parsed:Z

    return-void

    :catch_e
    move-exception v0

    sget-object v2, Lorg/apache/james/mime4j/field/AddressListField;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3d

    sget-object v2, Lorg/apache/james/mime4j/field/AddressListField;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parsing value \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\': "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/parser/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    :cond_3d
    iput-object v0, p0, Lorg/apache/james/mime4j/field/AddressListField;->parseException:Lorg/apache/james/mime4j/field/address/parser/ParseException;

    goto :goto_a
.end method


# virtual methods
.method public getAddressList()Lorg/apache/james/mime4j/field/address/AddressList;
    .registers 2

    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/AddressListField;->parsed:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/AddressListField;->parse()V

    :cond_7
    iget-object v0, p0, Lorg/apache/james/mime4j/field/AddressListField;->addressList:Lorg/apache/james/mime4j/field/address/AddressList;

    return-object v0
.end method

.method public bridge synthetic getParseException()Lorg/apache/james/mime4j/field/ParseException;
    .registers 2

    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/AddressListField;->getParseException()Lorg/apache/james/mime4j/field/address/parser/ParseException;

    move-result-object v0

    return-object v0
.end method

.method public getParseException()Lorg/apache/james/mime4j/field/address/parser/ParseException;
    .registers 2

    iget-boolean v0, p0, Lorg/apache/james/mime4j/field/AddressListField;->parsed:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/AddressListField;->parse()V

    :cond_7
    iget-object v0, p0, Lorg/apache/james/mime4j/field/AddressListField;->parseException:Lorg/apache/james/mime4j/field/address/parser/ParseException;

    return-object v0
.end method
