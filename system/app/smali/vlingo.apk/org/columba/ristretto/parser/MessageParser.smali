.class public Lorg/columba/ristretto/parser/MessageParser;
.super Ljava/lang/Object;
.source "MessageParser.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static parse(Lorg/columba/ristretto/io/Source;)Lorg/columba/ristretto/message/Message;
    .registers 6
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/columba/ristretto/parser/ParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-interface {p0}, Lorg/columba/ristretto/io/Source;->fromActualPosition()Lorg/columba/ristretto/io/Source;

    move-result-object v2

    .line 71
    .local v2, messageSource:Lorg/columba/ristretto/io/Source;
    invoke-static {p0}, Lorg/columba/ristretto/parser/HeaderParser;->parse(Lorg/columba/ristretto/io/Source;)Lorg/columba/ristretto/message/Header;

    move-result-object v1

    .line 72
    .local v1, header:Lorg/columba/ristretto/message/Header;
    new-instance v4, Lorg/columba/ristretto/message/MimeHeader;

    invoke-direct {v4, v1}, Lorg/columba/ristretto/message/MimeHeader;-><init>(Lorg/columba/ristretto/message/Header;)V

    invoke-static {v4, p0}, Lorg/columba/ristretto/parser/BodyParser;->parseMimePart(Lorg/columba/ristretto/message/MimeHeader;Lorg/columba/ristretto/io/Source;)Lorg/columba/ristretto/message/LocalMimePart;

    move-result-object v0

    .line 73
    .local v0, body:Lorg/columba/ristretto/message/LocalMimePart;
    invoke-virtual {v0, v2}, Lorg/columba/ristretto/message/LocalMimePart;->setSource(Lorg/columba/ristretto/io/Source;)V

    .line 75
    new-instance v3, Lorg/columba/ristretto/message/Message;

    invoke-direct {v3}, Lorg/columba/ristretto/message/Message;-><init>()V

    .line 76
    .local v3, result:Lorg/columba/ristretto/message/Message;
    invoke-virtual {v3, v1}, Lorg/columba/ristretto/message/Message;->setHeader(Lorg/columba/ristretto/message/Header;)V

    .line 77
    new-instance v4, Lorg/columba/ristretto/message/MimeTree;

    invoke-direct {v4, v0}, Lorg/columba/ristretto/message/MimeTree;-><init>(Lorg/columba/ristretto/message/MimePart;)V

    invoke-virtual {v3, v4}, Lorg/columba/ristretto/message/Message;->setMimePartTree(Lorg/columba/ristretto/message/MimeTree;)V

    .line 78
    invoke-virtual {v3, v2}, Lorg/columba/ristretto/message/Message;->setSource(Lorg/columba/ristretto/io/Source;)V

    .line 80
    return-object v3
.end method
