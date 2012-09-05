.class public Lorg/snmp4j/util/ArgumentParser$ArgumentParseException;
.super Ljava/text/ParseException;
.source "ArgumentParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/snmp4j/util/ArgumentParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArgumentParseException"
.end annotation


# instance fields
.field private parameterFormat:Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;

.field private parameterFormatDetail:Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;)V
    .registers 7
    .parameter "position"
    .parameter "value"
    .parameter "parameterFormat"
    .parameter "parameterFormatDetail"

    .prologue
    .line 417
    if-eqz p2, :cond_29

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Invalid value \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\' at position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1f
    invoke-direct {p0, v0, p1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 421
    iput-object p3, p0, Lorg/snmp4j/util/ArgumentParser$ArgumentParseException;->parameterFormat:Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;

    .line 422
    iput-object p4, p0, Lorg/snmp4j/util/ArgumentParser$ArgumentParseException;->parameterFormatDetail:Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;

    .line 423
    iput-object p2, p0, Lorg/snmp4j/util/ArgumentParser$ArgumentParseException;->value:Ljava/lang/String;

    .line 424
    return-void

    .line 417
    :cond_29
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Mandatory parameter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p3}, Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;->getOption()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p4}, Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ") not specified"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1f
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;)V
    .registers 6
    .parameter "message"
    .parameter "position"
    .parameter "value"
    .parameter "parameterFormat"
    .parameter "parameterFormatDetail"

    .prologue
    .line 431
    invoke-direct {p0, p1, p2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .line 432
    iput-object p4, p0, Lorg/snmp4j/util/ArgumentParser$ArgumentParseException;->parameterFormat:Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;

    .line 433
    iput-object p5, p0, Lorg/snmp4j/util/ArgumentParser$ArgumentParseException;->parameterFormatDetail:Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;

    .line 434
    iput-object p3, p0, Lorg/snmp4j/util/ArgumentParser$ArgumentParseException;->value:Ljava/lang/String;

    .line 435
    return-void
.end method


# virtual methods
.method public getParameterFormat()Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;
    .registers 2

    .prologue
    .line 442
    iget-object v0, p0, Lorg/snmp4j/util/ArgumentParser$ArgumentParseException;->parameterFormat:Lorg/snmp4j/util/ArgumentParser$ArgumentFormat;

    return-object v0
.end method

.method public getParameterFormatDetail()Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;
    .registers 2

    .prologue
    .line 438
    iget-object v0, p0, Lorg/snmp4j/util/ArgumentParser$ArgumentParseException;->parameterFormatDetail:Lorg/snmp4j/util/ArgumentParser$ArgumentParameter;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 446
    iget-object v0, p0, Lorg/snmp4j/util/ArgumentParser$ArgumentParseException;->value:Ljava/lang/String;

    return-object v0
.end method
