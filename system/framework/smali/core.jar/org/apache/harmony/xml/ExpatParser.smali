.class Lorg/apache/harmony/xml/ExpatParser;
.super Ljava/lang/Object;
.source "ExpatParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xml/ExpatParser$1;,
        Lorg/apache/harmony/xml/ExpatParser$EntityParser;,
        Lorg/apache/harmony/xml/ExpatParser$ParseException;,
        Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;,
        Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;,
        Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x1fa0

.field static final CHARACTER_ENCODING:Ljava/lang/String; = "UTF-16"

.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final OUTSIDE_START_ELEMENT:Ljava/lang/String; = "Attributes can only be used within the scope of startElement()."

.field private static final TIMEOUT:I = 0x4e20


# instance fields
.field private attributeCount:I

.field private attributePointer:I

.field private final attributes:Lorg/apache/harmony/xml/ExpatAttributes;

.field private final encoding:Ljava/lang/String;

.field private inStartElement:Z

.field private final locator:Lorg/xml/sax/Locator;

.field private pointer:I

.field private final publicId:Ljava/lang/String;

.field private final systemId:Ljava/lang/String;

.field private final xmlReader:Lorg/apache/harmony/xml/ExpatReader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 576
    const-string v0, ""

    invoke-static {v0}, Lorg/apache/harmony/xml/ExpatParser;->staticInitialize(Ljava/lang/String;)V

    .line 577
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;ILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "encoding"
    .parameter "xmlReader"
    .parameter "pointer"
    .parameter "publicId"
    .parameter "systemId"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 104
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v1, p0, Lorg/apache/harmony/xml/ExpatParser;->inStartElement:Z

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    .line 51
    iput v1, p0, Lorg/apache/harmony/xml/ExpatParser;->attributePointer:I

    .line 53
    new-instance v0, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;

    invoke-direct {v0, p0, v2}, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;-><init>(Lorg/apache/harmony/xml/ExpatParser;Lorg/apache/harmony/xml/ExpatParser$1;)V

    iput-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    .line 62
    new-instance v0, Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;

    invoke-direct {v0, p0, v2}, Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;-><init>(Lorg/apache/harmony/xml/ExpatParser;Lorg/apache/harmony/xml/ExpatParser$1;)V

    iput-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributes:Lorg/apache/harmony/xml/ExpatAttributes;

    .line 105
    iput-object p1, p0, Lorg/apache/harmony/xml/ExpatParser;->encoding:Ljava/lang/String;

    .line 106
    iput-object p2, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    .line 107
    iput p3, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:I

    .line 108
    iput-object p5, p0, Lorg/apache/harmony/xml/ExpatParser;->systemId:Ljava/lang/String;

    .line 109
    iput-object p4, p0, Lorg/apache/harmony/xml/ExpatParser;->publicId:Ljava/lang/String;

    .line 110
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;ILjava/lang/String;Ljava/lang/String;Lorg/apache/harmony/xml/ExpatParser$1;)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p5}, Lorg/apache/harmony/xml/ExpatParser;-><init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "encoding"
    .parameter "xmlReader"
    .parameter "processNamespaces"
    .parameter "publicId"
    .parameter "systemId"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean v1, p0, Lorg/apache/harmony/xml/ExpatParser;->inStartElement:Z

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    .line 51
    iput v1, p0, Lorg/apache/harmony/xml/ExpatParser;->attributePointer:I

    .line 53
    new-instance v0, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;

    invoke-direct {v0, p0, v2}, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;-><init>(Lorg/apache/harmony/xml/ExpatParser;Lorg/apache/harmony/xml/ExpatParser$1;)V

    iput-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    .line 62
    new-instance v0, Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;

    invoke-direct {v0, p0, v2}, Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;-><init>(Lorg/apache/harmony/xml/ExpatParser;Lorg/apache/harmony/xml/ExpatParser$1;)V

    iput-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributes:Lorg/apache/harmony/xml/ExpatAttributes;

    .line 81
    iput-object p4, p0, Lorg/apache/harmony/xml/ExpatParser;->publicId:Ljava/lang/String;

    .line 82
    iput-object p5, p0, Lorg/apache/harmony/xml/ExpatParser;->systemId:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    .line 93
    if-nez p1, :cond_24

    const-string p1, "UTF-8"

    .end local p1
    :cond_24
    iput-object p1, p0, Lorg/apache/harmony/xml/ExpatParser;->encoding:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->encoding:Ljava/lang/String;

    invoke-direct {p0, v0, p3}, Lorg/apache/harmony/xml/ExpatParser;->initialize(Ljava/lang/String;Z)I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:I

    .line 98
    return-void
.end method

.method static synthetic access$1000(Lorg/apache/harmony/xml/ExpatParser;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:I

    return v0
.end method

.method static synthetic access$1100(Lorg/apache/harmony/xml/ExpatParser;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lorg/apache/harmony/xml/ExpatParser;->inStartElement:Z

    return v0
.end method

.method static synthetic access$1200(Lorg/apache/harmony/xml/ExpatParser;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributePointer:I

    return v0
.end method

.method static synthetic access$1300(Lorg/apache/harmony/xml/ExpatParser;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    return v0
.end method

.method static synthetic access$600(Lorg/apache/harmony/xml/ExpatParser;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->publicId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/harmony/xml/ExpatParser;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser;->systemId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/harmony/xml/ExpatParser;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/apache/harmony/xml/ExpatParser;->line()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lorg/apache/harmony/xml/ExpatParser;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/apache/harmony/xml/ExpatParser;->column()I

    move-result v0

    return v0
.end method

.method private native appendBytes(I[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Lorg/apache/harmony/xml/ExpatException;
        }
    .end annotation
.end method

.method private native appendChars(I[CII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Lorg/apache/harmony/xml/ExpatException;
        }
    .end annotation
.end method

.method private native appendString(ILjava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Lorg/apache/harmony/xml/ExpatException;
        }
    .end annotation
.end method

.method private static native cloneAttributes(II)I
.end method

.method private column()I
    .registers 2

    .prologue
    .line 592
    iget v0, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:I

    invoke-static {v0}, Lorg/apache/harmony/xml/ExpatParser;->column(I)I

    move-result v0

    return v0
.end method

.method private static native column(I)I
.end method

.method private static native createEntityParser(ILjava/lang/String;)I
.end method

.method private endDocument()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 530
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 531
    .local v0, contentHandler:Lorg/xml/sax/ContentHandler;
    if-eqz v0, :cond_9

    .line 532
    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 534
    :cond_9
    return-void
.end method

.method private native initialize(Ljava/lang/String;Z)I
.end method

.method private line()I
    .registers 2

    .prologue
    .line 583
    iget v0, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:I

    invoke-static {v0}, Lorg/apache/harmony/xml/ExpatParser;->line(I)I

    move-result v0

    return v0
.end method

.method private static native line(I)I
.end method

.method static openUrl(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 6
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 748
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 749
    .local v2, urlConnection:Ljava/net/URLConnection;
    const/16 v3, 0x4e20

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 750
    const/16 v3, 0x4e20

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 751
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setDoInput(Z)V

    .line 752
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 753
    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_20

    move-result-object v3

    return-object v3

    .line 754
    .end local v2           #urlConnection:Ljava/net/URLConnection;
    :catch_20
    move-exception v0

    .line 755
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t open "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 756
    .local v1, ioe:Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 757
    throw v1
.end method

.method private parseExternalEntity(Lorg/apache/harmony/xml/ExpatParser;Lorg/xml/sax/InputSource;)V
    .registers 10
    .parameter "entityParser"
    .parameter "inputSource"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 341
    invoke-virtual {p2}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v1

    .line 342
    .local v1, reader:Ljava/io/Reader;
    if-eqz v1, :cond_1c

    .line 344
    :try_start_6
    const-string v3, "<externalEntity>"

    invoke-virtual {p1, v3}, Lorg/apache/harmony/xml/ExpatParser;->append(Ljava/lang/String;)V

    .line 345
    invoke-direct {p1, v1}, Lorg/apache/harmony/xml/ExpatParser;->parseFragment(Ljava/io/Reader;)V

    .line 346
    const-string v3, "</externalEntity>"

    invoke-virtual {p1, v3}, Lorg/apache/harmony/xml/ExpatParser;->append(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_17

    .line 348
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 386
    :goto_16
    return-void

    .line 348
    :catchall_17
    move-exception v3

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3

    .line 354
    :cond_1c
    invoke-virtual {p2}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v0

    .line 355
    .local v0, in:Ljava/io/InputStream;
    if-eqz v0, :cond_44

    .line 357
    :try_start_22
    const-string v3, "<externalEntity>"

    iget-object v4, p1, Lorg/apache/harmony/xml/ExpatParser;->encoding:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/harmony/xml/ExpatParser;->append([B)V

    .line 359
    invoke-direct {p1, v0}, Lorg/apache/harmony/xml/ExpatParser;->parseFragment(Ljava/io/InputStream;)V

    .line 360
    const-string v3, "</externalEntity>"

    iget-object v4, p1, Lorg/apache/harmony/xml/ExpatParser;->encoding:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/harmony/xml/ExpatParser;->append([B)V
    :try_end_3b
    .catchall {:try_start_22 .. :try_end_3b} :catchall_3f

    .line 363
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_16

    :catchall_3f
    move-exception v3

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3

    .line 369
    :cond_44
    invoke-virtual {p2}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    .line 370
    .local v2, systemId:Ljava/lang/String;
    if-nez v2, :cond_55

    .line 372
    new-instance v3, Lorg/apache/harmony/xml/ExpatParser$ParseException;

    const-string v4, "No input specified."

    iget-object v5, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/harmony/xml/ExpatParser$ParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Lorg/apache/harmony/xml/ExpatParser$1;)V

    throw v3

    .line 376
    :cond_55
    invoke-static {v2}, Lorg/apache/harmony/xml/ExpatParser;->openUrl(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 378
    :try_start_59
    const-string v3, "<externalEntity>"

    iget-object v4, p1, Lorg/apache/harmony/xml/ExpatParser;->encoding:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/harmony/xml/ExpatParser;->append([B)V

    .line 380
    invoke-direct {p1, v0}, Lorg/apache/harmony/xml/ExpatParser;->parseFragment(Ljava/io/InputStream;)V

    .line 381
    const-string v3, "</externalEntity>"

    iget-object v4, p1, Lorg/apache/harmony/xml/ExpatParser;->encoding:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/apache/harmony/xml/ExpatParser;->append([B)V
    :try_end_72
    .catchall {:try_start_59 .. :try_end_72} :catchall_76

    .line 384
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_16

    :catchall_76
    move-exception v3

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3
.end method

.method private parseFragment(Ljava/io/InputStream;)V
    .registers 9
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 509
    const/16 v3, 0x1fa0

    new-array v0, v3, [B

    .line 511
    .local v0, buffer:[B
    :goto_4
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, length:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_20

    .line 513
    :try_start_b
    iget v3, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:I

    const/4 v4, 0x0

    invoke-direct {p0, v3, v0, v4, v2}, Lorg/apache/harmony/xml/ExpatParser;->appendBytes(I[BII)V
    :try_end_11
    .catch Lorg/apache/harmony/xml/ExpatException; {:try_start_b .. :try_end_11} :catch_12

    goto :goto_4

    .line 514
    :catch_12
    move-exception v1

    .line 515
    .local v1, e:Lorg/apache/harmony/xml/ExpatException;
    new-instance v3, Lorg/apache/harmony/xml/ExpatParser$ParseException;

    invoke-virtual {v1}, Lorg/apache/harmony/xml/ExpatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/harmony/xml/ExpatParser$ParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Lorg/apache/harmony/xml/ExpatParser$1;)V

    throw v3

    .line 518
    .end local v1           #e:Lorg/apache/harmony/xml/ExpatException;
    :cond_20
    return-void
.end method

.method private parseFragment(Ljava/io/Reader;)V
    .registers 9
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 493
    const/16 v3, 0xfd0

    new-array v0, v3, [C

    .line 495
    .local v0, buffer:[C
    :goto_4
    invoke-virtual {p1, v0}, Ljava/io/Reader;->read([C)I

    move-result v2

    .local v2, length:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_20

    .line 497
    :try_start_b
    iget v3, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:I

    const/4 v4, 0x0

    invoke-direct {p0, v3, v0, v4, v2}, Lorg/apache/harmony/xml/ExpatParser;->appendChars(I[CII)V
    :try_end_11
    .catch Lorg/apache/harmony/xml/ExpatException; {:try_start_b .. :try_end_11} :catch_12

    goto :goto_4

    .line 498
    :catch_12
    move-exception v1

    .line 499
    .local v1, e:Lorg/apache/harmony/xml/ExpatException;
    new-instance v3, Lorg/apache/harmony/xml/ExpatParser$ParseException;

    invoke-virtual {v1}, Lorg/apache/harmony/xml/ExpatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/harmony/xml/ExpatParser$ParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Lorg/apache/harmony/xml/ExpatParser$1;)V

    throw v3

    .line 502
    .end local v1           #e:Lorg/apache/harmony/xml/ExpatException;
    :cond_20
    return-void
.end method

.method private pickEncoding(Lorg/xml/sax/InputSource;)Ljava/lang/String;
    .registers 4
    .parameter "inputSource"

    .prologue
    .line 321
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v1

    .line 322
    .local v1, reader:Ljava/io/Reader;
    if-eqz v1, :cond_9

    .line 323
    const-string v0, "UTF-16"

    .line 327
    :cond_8
    :goto_8
    return-object v0

    .line 326
    :cond_9
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, encoding:Ljava/lang/String;
    if-nez v0, :cond_8

    const-string v0, "UTF-8"

    goto :goto_8
.end method

.method private native release(I)V
.end method

.method private static native releaseParser(I)V
.end method

.method private startDocument()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 521
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 522
    .local v0, contentHandler:Lorg/xml/sax/ContentHandler;
    if-eqz v0, :cond_e

    .line 523
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    invoke-interface {v0, v1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 524
    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 526
    :cond_e
    return-void
.end method

.method private static native staticInitialize(Ljava/lang/String;)V
.end method


# virtual methods
.method append(Ljava/lang/String;)V
    .registers 7
    .parameter "xml"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 406
    :try_start_0
    iget v1, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2}, Lorg/apache/harmony/xml/ExpatParser;->appendString(ILjava/lang/String;Z)V
    :try_end_6
    .catch Lorg/apache/harmony/xml/ExpatException; {:try_start_0 .. :try_end_6} :catch_7

    .line 410
    return-void

    .line 407
    :catch_7
    move-exception v0

    .line 408
    .local v0, e:Lorg/apache/harmony/xml/ExpatException;
    new-instance v1, Lorg/apache/harmony/xml/ExpatParser$ParseException;

    invoke-virtual {v0}, Lorg/apache/harmony/xml/ExpatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/harmony/xml/ExpatParser$ParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Lorg/apache/harmony/xml/ExpatParser$1;)V

    throw v1
.end method

.method append([B)V
    .registers 4
    .parameter "xml"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 444
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/harmony/xml/ExpatParser;->append([BII)V

    .line 445
    return-void
.end method

.method append([BII)V
    .registers 9
    .parameter "xml"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 459
    :try_start_0
    iget v1, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:I

    invoke-direct {p0, v1, p1, p2, p3}, Lorg/apache/harmony/xml/ExpatParser;->appendBytes(I[BII)V
    :try_end_5
    .catch Lorg/apache/harmony/xml/ExpatException; {:try_start_0 .. :try_end_5} :catch_6

    .line 463
    return-void

    .line 460
    :catch_6
    move-exception v0

    .line 461
    .local v0, e:Lorg/apache/harmony/xml/ExpatException;
    new-instance v1, Lorg/apache/harmony/xml/ExpatParser$ParseException;

    invoke-virtual {v0}, Lorg/apache/harmony/xml/ExpatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/harmony/xml/ExpatParser$ParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Lorg/apache/harmony/xml/ExpatParser$1;)V

    throw v1
.end method

.method append([CII)V
    .registers 9
    .parameter "xml"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 427
    :try_start_0
    iget v1, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:I

    invoke-direct {p0, v1, p1, p2, p3}, Lorg/apache/harmony/xml/ExpatParser;->appendChars(I[CII)V
    :try_end_5
    .catch Lorg/apache/harmony/xml/ExpatException; {:try_start_0 .. :try_end_5} :catch_6

    .line 431
    return-void

    .line 428
    :catch_6
    move-exception v0

    .line 429
    .local v0, e:Lorg/apache/harmony/xml/ExpatException;
    new-instance v1, Lorg/apache/harmony/xml/ExpatParser$ParseException;

    invoke-virtual {v0}, Lorg/apache/harmony/xml/ExpatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/harmony/xml/ExpatParser$ParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Lorg/apache/harmony/xml/ExpatParser$1;)V

    throw v1
.end method

.method cloneAttributes()Lorg/xml/sax/Attributes;
    .registers 6

    .prologue
    .line 602
    iget-boolean v1, p0, Lorg/apache/harmony/xml/ExpatParser;->inStartElement:Z

    if-nez v1, :cond_c

    .line 603
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Attributes can only be used within the scope of startElement()."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 606
    :cond_c
    iget v1, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    if-nez v1, :cond_15

    .line 607
    invoke-static {}, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->access$400()Lorg/xml/sax/Attributes;

    move-result-object v1

    .line 612
    :goto_14
    return-object v1

    .line 610
    :cond_15
    iget v1, p0, Lorg/apache/harmony/xml/ExpatParser;->attributePointer:I

    iget v2, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    invoke-static {v1, v2}, Lorg/apache/harmony/xml/ExpatParser;->cloneAttributes(II)I

    move-result v0

    .line 612
    .local v0, clonePointer:I
    new-instance v1, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;

    iget v2, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:I

    iget v3, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    const/4 v4, 0x0

    invoke-direct {v1, v2, v0, v3, v4}, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;-><init>(IIILorg/apache/harmony/xml/ExpatParser$1;)V

    goto :goto_14
.end method

.method comment([CI)V
    .registers 5
    .parameter "text"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 168
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 169
    .local v0, lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;
    if-eqz v0, :cond_a

    .line 170
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    .line 172
    :cond_a
    return-void
.end method

.method endCdata()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 182
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 183
    .local v0, lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;
    if-eqz v0, :cond_9

    .line 184
    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    .line 186
    :cond_9
    return-void
.end method

.method endDtd()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 212
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 213
    .local v0, lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;
    if-eqz v0, :cond_9

    .line 214
    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V

    .line 216
    :cond_9
    return-void
.end method

.method endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 154
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 155
    .local v0, contentHandler:Lorg/xml/sax/ContentHandler;
    if-eqz v0, :cond_9

    .line 156
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_9
    return-void
.end method

.method endNamespace(Ljava/lang/String;)V
    .registers 4
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 197
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 198
    .local v0, contentHandler:Lorg/xml/sax/ContentHandler;
    if-eqz v0, :cond_9

    .line 199
    invoke-interface {v0, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    .line 201
    :cond_9
    return-void
.end method

.method protected declared-synchronized finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 551
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:I

    if-eqz v0, :cond_d

    .line 552
    iget v0, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:I

    invoke-direct {p0, v0}, Lorg/apache/harmony/xml/ExpatParser;->release(I)V

    .line 553
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:I
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_12

    .line 556
    :cond_d
    :try_start_d
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_17

    .line 558
    monitor-exit p0

    return-void

    .line 556
    :catchall_12
    move-exception v0

    :try_start_13
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
    :try_end_17
    .catchall {:try_start_13 .. :try_end_17} :catchall_17

    .line 551
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method finish()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 543
    :try_start_0
    iget v1, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:I

    const-string v2, ""

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/harmony/xml/ExpatParser;->appendString(ILjava/lang/String;Z)V
    :try_end_8
    .catch Lorg/apache/harmony/xml/ExpatException; {:try_start_0 .. :try_end_8} :catch_9

    .line 547
    return-void

    .line 544
    :catch_9
    move-exception v0

    .line 545
    .local v0, e:Lorg/apache/harmony/xml/ExpatException;
    new-instance v1, Lorg/apache/harmony/xml/ExpatParser$ParseException;

    invoke-virtual {v0}, Lorg/apache/harmony/xml/ExpatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/harmony/xml/ExpatParser$ParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Lorg/apache/harmony/xml/ExpatParser$1;)V

    throw v1
.end method

.method handleExternalEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .parameter "context"
    .parameter "publicId"
    .parameter "systemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    iget-object v2, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v9, v2, Lorg/apache/harmony/xml/ExpatReader;->entityResolver:Lorg/xml/sax/EntityResolver;

    .line 250
    .local v9, entityResolver:Lorg/xml/sax/EntityResolver;
    if-nez v9, :cond_7

    .line 315
    :cond_6
    :goto_6
    return-void

    .line 266
    :cond_7
    iget-object v2, p0, Lorg/apache/harmony/xml/ExpatParser;->systemId:Ljava/lang/String;

    if-eqz v2, :cond_2b

    .line 268
    :try_start_b
    new-instance v11, Ljava/net/URI;

    invoke-direct {v11, p3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 269
    .local v11, systemUri:Ljava/net/URI;
    invoke-virtual {v11}, Ljava/net/URI;->isAbsolute()Z

    move-result v2

    if-nez v2, :cond_2b

    invoke-virtual {v11}, Ljava/net/URI;->isOpaque()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 271
    new-instance v7, Ljava/net/URI;

    iget-object v2, p0, Lorg/apache/harmony/xml/ExpatParser;->systemId:Ljava/lang/String;

    invoke-direct {v7, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 272
    .local v7, baseUri:Ljava/net/URI;
    invoke-virtual {v7, v11}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v11

    .line 275
    invoke-virtual {v11}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2a} :catch_52

    move-result-object p3

    .line 283
    .end local v7           #baseUri:Ljava/net/URI;
    .end local v11           #systemUri:Ljava/net/URI;
    :cond_2b
    :goto_2b
    invoke-interface {v9, p2, p3}, Lorg/xml/sax/EntityResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object v10

    .line 285
    .local v10, inputSource:Lorg/xml/sax/InputSource;
    if-eqz v10, :cond_6

    .line 304
    invoke-direct {p0, v10}, Lorg/apache/harmony/xml/ExpatParser;->pickEncoding(Lorg/xml/sax/InputSource;)Ljava/lang/String;

    move-result-object v1

    .line 305
    .local v1, encoding:Ljava/lang/String;
    iget v2, p0, Lorg/apache/harmony/xml/ExpatParser;->pointer:I

    invoke-static {v2, p1}, Lorg/apache/harmony/xml/ExpatParser;->createEntityParser(ILjava/lang/String;)I

    move-result v3

    .line 307
    .local v3, pointer:I
    :try_start_3b
    new-instance v0, Lorg/apache/harmony/xml/ExpatParser$EntityParser;

    iget-object v2, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    invoke-virtual {v10}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/apache/harmony/xml/ExpatParser$EntityParser;-><init>(Ljava/lang/String;Lorg/apache/harmony/xml/ExpatReader;ILjava/lang/String;Ljava/lang/String;Lorg/apache/harmony/xml/ExpatParser$1;)V

    .line 311
    .local v0, entityParser:Lorg/apache/harmony/xml/ExpatParser$EntityParser;
    invoke-direct {p0, v0, v10}, Lorg/apache/harmony/xml/ExpatParser;->parseExternalEntity(Lorg/apache/harmony/xml/ExpatParser;Lorg/xml/sax/InputSource;)V
    :try_end_4e
    .catchall {:try_start_3b .. :try_end_4e} :catchall_88

    .line 313
    invoke-static {v3}, Lorg/apache/harmony/xml/ExpatParser;->releaseParser(I)V

    goto :goto_6

    .line 277
    .end local v0           #entityParser:Lorg/apache/harmony/xml/ExpatParser$EntityParser;
    .end local v1           #encoding:Ljava/lang/String;
    .end local v3           #pointer:I
    .end local v10           #inputSource:Lorg/xml/sax/InputSource;
    :catch_52
    move-exception v8

    .line 278
    .local v8, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not resolve \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\' relative to"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lorg/apache/harmony/xml/ExpatParser;->systemId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\' at "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lorg/apache/harmony/xml/ExpatParser;->locator:Lorg/xml/sax/Locator;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v8}, Ljava/lang/System;->logI(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2b

    .line 313
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v1       #encoding:Ljava/lang/String;
    .restart local v3       #pointer:I
    .restart local v10       #inputSource:Lorg/xml/sax/InputSource;
    :catchall_88
    move-exception v2

    invoke-static {v3}, Lorg/apache/harmony/xml/ExpatParser;->releaseParser(I)V

    throw v2
.end method

.method notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "name"
    .parameter "publicId"
    .parameter "systemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 227
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->dtdHandler:Lorg/xml/sax/DTDHandler;

    .line 228
    .local v0, dtdHandler:Lorg/xml/sax/DTDHandler;
    if-eqz v0, :cond_9

    .line 229
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/DTDHandler;->notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_9
    return-void
.end method

.method parseDocument(Ljava/io/InputStream;)V
    .registers 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 473
    invoke-direct {p0}, Lorg/apache/harmony/xml/ExpatParser;->startDocument()V

    .line 474
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/ExpatParser;->parseFragment(Ljava/io/InputStream;)V

    .line 475
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatParser;->finish()V

    .line 476
    invoke-direct {p0}, Lorg/apache/harmony/xml/ExpatParser;->endDocument()V

    .line 477
    return-void
.end method

.method parseDocument(Ljava/io/Reader;)V
    .registers 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 483
    invoke-direct {p0}, Lorg/apache/harmony/xml/ExpatParser;->startDocument()V

    .line 484
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/ExpatParser;->parseFragment(Ljava/io/Reader;)V

    .line 485
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatParser;->finish()V

    .line 486
    invoke-direct {p0}, Lorg/apache/harmony/xml/ExpatParser;->endDocument()V

    .line 487
    return-void
.end method

.method processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "target"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 220
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 221
    .local v0, contentHandler:Lorg/xml/sax/ContentHandler;
    if-eqz v0, :cond_9

    .line 222
    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_9
    return-void
.end method

.method startCdata()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 176
    .local v0, lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;
    if-eqz v0, :cond_9

    .line 177
    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    .line 179
    :cond_9
    return-void
.end method

.method startDtd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "name"
    .parameter "publicId"
    .parameter "systemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 205
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 206
    .local v0, lexicalHandler:Lorg/xml/sax/ext/LexicalHandler;
    if-eqz v0, :cond_9

    .line 207
    invoke-interface {v0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_9
    return-void
.end method

.method startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 10
    .parameter "uri"
    .parameter "localName"
    .parameter "qName"
    .parameter "attributePointer"
    .parameter "attributeCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 133
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 134
    .local v0, contentHandler:Lorg/xml/sax/ContentHandler;
    if-nez v0, :cond_9

    .line 150
    :goto_8
    return-void

    .line 139
    :cond_9
    const/4 v1, 0x1

    :try_start_a
    iput-boolean v1, p0, Lorg/apache/harmony/xml/ExpatParser;->inStartElement:Z

    .line 140
    iput p4, p0, Lorg/apache/harmony/xml/ExpatParser;->attributePointer:I

    .line 141
    iput p5, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    .line 143
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->attributes:Lorg/apache/harmony/xml/ExpatAttributes;

    invoke-interface {v0, p1, p2, p3, v1}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_1c

    .line 146
    iput-boolean v2, p0, Lorg/apache/harmony/xml/ExpatParser;->inStartElement:Z

    .line 147
    iput v3, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    .line 148
    iput v2, p0, Lorg/apache/harmony/xml/ExpatParser;->attributePointer:I

    goto :goto_8

    .line 146
    :catchall_1c
    move-exception v1

    iput-boolean v2, p0, Lorg/apache/harmony/xml/ExpatParser;->inStartElement:Z

    .line 147
    iput v3, p0, Lorg/apache/harmony/xml/ExpatParser;->attributeCount:I

    .line 148
    iput v2, p0, Lorg/apache/harmony/xml/ExpatParser;->attributePointer:I

    throw v1
.end method

.method startNamespace(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "prefix"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 191
    .local v0, contentHandler:Lorg/xml/sax/ContentHandler;
    if-eqz v0, :cond_9

    .line 192
    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_9
    return-void
.end method

.method text([CI)V
    .registers 5
    .parameter "text"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 162
    .local v0, contentHandler:Lorg/xml/sax/ContentHandler;
    if-eqz v0, :cond_a

    .line 163
    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 165
    :cond_a
    return-void
.end method

.method unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter "name"
    .parameter "publicId"
    .parameter "systemId"
    .parameter "notationName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 234
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser;->xmlReader:Lorg/apache/harmony/xml/ExpatReader;

    iget-object v0, v1, Lorg/apache/harmony/xml/ExpatReader;->dtdHandler:Lorg/xml/sax/DTDHandler;

    .line 235
    .local v0, dtdHandler:Lorg/xml/sax/DTDHandler;
    if-eqz v0, :cond_9

    .line 236
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/xml/sax/DTDHandler;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_9
    return-void
.end method
