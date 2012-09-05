.class public Lorg/apache/log4j/xml/SAXErrorHandler;
.super Ljava/lang/Object;
.source "SAXErrorHandler.java"

# interfaces
.implements Lorg/xml/sax/ErrorHandler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static emitMessage(Ljava/lang/String;Lorg/xml/sax/SAXParseException;)V
    .registers 4
    .parameter "msg"
    .parameter "ex"

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " and column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    return-void
.end method


# virtual methods
.method public error(Lorg/xml/sax/SAXParseException;)V
    .registers 3
    .parameter "ex"

    .prologue
    .line 27
    const-string v0, "Continuable parsing error "

    invoke-static {v0, p1}, Lorg/apache/log4j/xml/SAXErrorHandler;->emitMessage(Ljava/lang/String;Lorg/xml/sax/SAXParseException;)V

    .line 28
    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .registers 3
    .parameter "ex"

    .prologue
    .line 32
    const-string v0, "Fatal parsing error "

    invoke-static {v0, p1}, Lorg/apache/log4j/xml/SAXErrorHandler;->emitMessage(Ljava/lang/String;Lorg/xml/sax/SAXParseException;)V

    .line 33
    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .registers 3
    .parameter "ex"

    .prologue
    .line 37
    const-string v0, "Parsing warning "

    invoke-static {v0, p1}, Lorg/apache/log4j/xml/SAXErrorHandler;->emitMessage(Ljava/lang/String;Lorg/xml/sax/SAXParseException;)V

    .line 38
    return-void
.end method
