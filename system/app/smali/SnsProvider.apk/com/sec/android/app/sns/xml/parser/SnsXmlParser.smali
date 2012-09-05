.class public Lcom/sec/android/app/sns/xml/parser/SnsXmlParser;
.super Ljava/lang/Object;
.source "SnsXmlParser.java"


# instance fields
.field private final XML_DOC_START:Ljava/lang/String;

.field mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "<?xml"

    iput-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParser;->XML_DOC_START:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getResultData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParser;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    return-object v0
.end method

.method public parse(ILjava/lang/String;)Z
    .registers 16
    .parameter "reqType"
    .parameter "content"

    .prologue
    const/4 v10, 0x0

    const/4 v12, -0x1

    .line 51
    const/4 v0, 0x1

    .line 53
    .local v0, bSuccess:Z
    const-string v11, "<?xml"

    invoke-virtual {p2, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-ne v11, v12, :cond_c

    .line 119
    :cond_b
    :goto_b
    return v10

    .line 58
    :cond_c
    const-string v11, "<79"

    invoke-virtual {p2, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-ne v11, v12, :cond_b

    .line 62
    const/4 v1, 0x0

    .line 64
    .local v1, bais:Ljava/io/ByteArrayInputStream;
    :try_start_15
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string v10, "UTF-8"

    invoke-virtual {p2, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_cb
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_15 .. :try_end_20} :catch_50
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_15 .. :try_end_20} :catch_67
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_20} :catch_7b
    .catch Lorg/xml/sax/SAXException; {:try_start_15 .. :try_end_20} :catch_8f
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_20} :catch_a3
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_20} :catch_b7

    .line 66
    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .local v2, bais:Ljava/io/ByteArrayInputStream;
    :try_start_20
    new-instance v5, Lorg/xml/sax/InputSource;

    invoke-direct {v5, v2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 68
    .local v5, input:Lorg/xml/sax/InputSource;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v7

    .line 69
    .local v7, saxParserFactory:Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v7}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v6

    .line 70
    .local v6, saxParser:Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v9

    .line 72
    .local v9, xmlReader:Lorg/xml/sax/XMLReader;
    new-instance v3, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandlerFactory;

    invoke-direct {v3}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandlerFactory;-><init>()V

    .line 73
    .local v3, contentHandlerFactory:Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandlerFactory;
    invoke-virtual {v3, p1}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandlerFactory;->newContentHandler(I)Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;

    move-result-object v8

    .line 76
    .local v8, snsContentHandler:Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;
    if-eqz v8, :cond_48

    .line 77
    invoke-interface {v9, v8}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 78
    invoke-interface {v9, v5}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 81
    invoke-virtual {v8}, Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;->getParsedData()Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/app/sns/xml/parser/SnsXmlParser;->mParsedData:Lcom/sec/android/app/sns/xml/parser/data/SnsXmlParsedData;
    :try_end_48
    .catchall {:try_start_20 .. :try_end_48} :catchall_dd
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_20 .. :try_end_48} :catch_f0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_20 .. :try_end_48} :catch_ec
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_48} :catch_e9
    .catch Lorg/xml/sax/SAXException; {:try_start_20 .. :try_end_48} :catch_e6
    .catch Ljava/lang/NullPointerException; {:try_start_20 .. :try_end_48} :catch_e3
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_48} :catch_e0

    .line 110
    :cond_48
    if-eqz v2, :cond_4d

    .line 112
    :try_start_4a
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_d7

    :cond_4d
    :goto_4d
    move-object v1, v2

    .end local v2           #bais:Ljava/io/ByteArrayInputStream;
    .end local v3           #contentHandlerFactory:Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandlerFactory;
    .end local v5           #input:Lorg/xml/sax/InputSource;
    .end local v6           #saxParser:Ljavax/xml/parsers/SAXParser;
    .end local v7           #saxParserFactory:Ljavax/xml/parsers/SAXParserFactory;
    .end local v8           #snsContentHandler:Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;
    .end local v9           #xmlReader:Lorg/xml/sax/XMLReader;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    :cond_4e
    :goto_4e
    move v10, v0

    .line 119
    goto :goto_b

    .line 83
    :catch_50
    move-exception v4

    .line 84
    .local v4, e:Ljava/io/UnsupportedEncodingException;
    :goto_51
    :try_start_51
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 85
    const-string v10, "SNS_PARSER"

    const-string v11, "SnsXmlParser : parse() : UnsupportedEncodingException occur !!!"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5b
    .catchall {:try_start_51 .. :try_end_5b} :catchall_cb

    .line 86
    const/4 v0, 0x0

    .line 110
    if-eqz v1, :cond_4e

    .line 112
    :try_start_5e
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62

    goto :goto_4e

    .line 113
    :catch_62
    move-exception v4

    .line 114
    .local v4, e:Ljava/io/IOException;
    :goto_63
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4e

    .line 87
    .end local v4           #e:Ljava/io/IOException;
    :catch_67
    move-exception v4

    .line 88
    .local v4, e:Ljavax/xml/parsers/ParserConfigurationException;
    :goto_68
    :try_start_68
    invoke-virtual {v4}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 89
    const-string v10, "SNS_PARSER"

    const-string v11, "SnsXmlParser : saxParserFactory.newSAXParser() || saxParser.getXMLReader() : ParserConfigurationException occur !!!"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_72
    .catchall {:try_start_68 .. :try_end_72} :catchall_cb

    .line 92
    const/4 v0, 0x0

    .line 110
    if-eqz v1, :cond_4e

    .line 112
    :try_start_75
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_79

    goto :goto_4e

    .line 113
    :catch_79
    move-exception v4

    goto :goto_63

    .line 93
    .end local v4           #e:Ljavax/xml/parsers/ParserConfigurationException;
    :catch_7b
    move-exception v4

    .line 94
    .local v4, e:Ljava/io/IOException;
    :goto_7c
    :try_start_7c
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 95
    const-string v10, "SNS_PARSER"

    const-string v11, "SnsXmlParser : xmlReader.parse() : IOException occur !!!"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_86
    .catchall {:try_start_7c .. :try_end_86} :catchall_cb

    .line 96
    const/4 v0, 0x0

    .line 110
    if-eqz v1, :cond_4e

    .line 112
    :try_start_89
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_8d

    goto :goto_4e

    .line 113
    :catch_8d
    move-exception v4

    goto :goto_63

    .line 97
    .end local v4           #e:Ljava/io/IOException;
    :catch_8f
    move-exception v4

    .line 98
    .local v4, e:Lorg/xml/sax/SAXException;
    :goto_90
    :try_start_90
    invoke-virtual {v4}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 99
    const-string v10, "SNS_PARSER"

    const-string v11, "SnsXmlParser : xmlReader.parse() : SAXException occur !!!"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9a
    .catchall {:try_start_90 .. :try_end_9a} :catchall_cb

    .line 100
    const/4 v0, 0x0

    .line 110
    if-eqz v1, :cond_4e

    .line 112
    :try_start_9d
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a0} :catch_a1

    goto :goto_4e

    .line 113
    :catch_a1
    move-exception v4

    goto :goto_63

    .line 101
    .end local v4           #e:Lorg/xml/sax/SAXException;
    :catch_a3
    move-exception v4

    .line 102
    .local v4, e:Ljava/lang/NullPointerException;
    :goto_a4
    :try_start_a4
    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 103
    const-string v10, "SNS_PARSER"

    const-string v11, "SnsXmlParser : xmlReader.parse() : NullPointerException occur !!!"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ae
    .catchall {:try_start_a4 .. :try_end_ae} :catchall_cb

    .line 104
    const/4 v0, 0x0

    .line 110
    if-eqz v1, :cond_4e

    .line 112
    :try_start_b1
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_b4
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b4} :catch_b5

    goto :goto_4e

    .line 113
    :catch_b5
    move-exception v4

    goto :goto_63

    .line 105
    .end local v4           #e:Ljava/lang/NullPointerException;
    :catch_b7
    move-exception v4

    .line 106
    .local v4, e:Ljava/lang/Exception;
    :goto_b8
    :try_start_b8
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 107
    const-string v10, "SNS_PARSER"

    const-string v11, "SnsXmlParser : xmlReader.parse() : Exception occur !!!"

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c2
    .catchall {:try_start_b8 .. :try_end_c2} :catchall_cb

    .line 108
    const/4 v0, 0x0

    .line 110
    if-eqz v1, :cond_4e

    .line 112
    :try_start_c5
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_c8} :catch_c9

    goto :goto_4e

    .line 113
    :catch_c9
    move-exception v4

    goto :goto_63

    .line 110
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_cb
    move-exception v10

    :goto_cc
    if-eqz v1, :cond_d1

    .line 112
    :try_start_ce
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_d1} :catch_d2

    .line 110
    :cond_d1
    :goto_d1
    throw v10

    .line 113
    :catch_d2
    move-exception v4

    .line 114
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d1

    .line 113
    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .end local v4           #e:Ljava/io/IOException;
    .restart local v2       #bais:Ljava/io/ByteArrayInputStream;
    .restart local v3       #contentHandlerFactory:Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandlerFactory;
    .restart local v5       #input:Lorg/xml/sax/InputSource;
    .restart local v6       #saxParser:Ljavax/xml/parsers/SAXParser;
    .restart local v7       #saxParserFactory:Ljavax/xml/parsers/SAXParserFactory;
    .restart local v8       #snsContentHandler:Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;
    .restart local v9       #xmlReader:Lorg/xml/sax/XMLReader;
    :catch_d7
    move-exception v4

    .line 114
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4d

    .line 110
    .end local v3           #contentHandlerFactory:Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandlerFactory;
    .end local v4           #e:Ljava/io/IOException;
    .end local v5           #input:Lorg/xml/sax/InputSource;
    .end local v6           #saxParser:Ljavax/xml/parsers/SAXParser;
    .end local v7           #saxParserFactory:Ljavax/xml/parsers/SAXParserFactory;
    .end local v8           #snsContentHandler:Lcom/sec/android/app/sns/xml/parser/SnsXmlParserContentHandler;
    .end local v9           #xmlReader:Lorg/xml/sax/XMLReader;
    :catchall_dd
    move-exception v10

    move-object v1, v2

    .end local v2           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_cc

    .line 105
    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v2       #bais:Ljava/io/ByteArrayInputStream;
    :catch_e0
    move-exception v4

    move-object v1, v2

    .end local v2           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_b8

    .line 101
    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v2       #bais:Ljava/io/ByteArrayInputStream;
    :catch_e3
    move-exception v4

    move-object v1, v2

    .end local v2           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_a4

    .line 97
    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v2       #bais:Ljava/io/ByteArrayInputStream;
    :catch_e6
    move-exception v4

    move-object v1, v2

    .end local v2           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_90

    .line 93
    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v2       #bais:Ljava/io/ByteArrayInputStream;
    :catch_e9
    move-exception v4

    move-object v1, v2

    .end local v2           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    goto :goto_7c

    .line 87
    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v2       #bais:Ljava/io/ByteArrayInputStream;
    :catch_ec
    move-exception v4

    move-object v1, v2

    .end local v2           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    goto/16 :goto_68

    .line 83
    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v2       #bais:Ljava/io/ByteArrayInputStream;
    :catch_f0
    move-exception v4

    move-object v1, v2

    .end local v2           #bais:Ljava/io/ByteArrayInputStream;
    .restart local v1       #bais:Ljava/io/ByteArrayInputStream;
    goto/16 :goto_51
.end method
