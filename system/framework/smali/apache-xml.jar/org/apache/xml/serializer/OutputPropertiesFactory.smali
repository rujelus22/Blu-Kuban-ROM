.class public final Lorg/apache/xml/serializer/OutputPropertiesFactory;
.super Ljava/lang/Object;
.source "OutputPropertiesFactory.java"


# static fields
.field private static final ACCESS_CONTROLLER_CLASS:Ljava/lang/Class; = null

.field private static final PROP_DIR:Ljava/lang/String; = null

.field private static final PROP_FILE_HTML:Ljava/lang/String; = "output_html.properties"

.field private static final PROP_FILE_TEXT:Ljava/lang/String; = "output_text.properties"

.field private static final PROP_FILE_UNKNOWN:Ljava/lang/String; = "output_unknown.properties"

.field private static final PROP_FILE_XML:Ljava/lang/String; = "output_xml.properties"

.field public static final S_BUILTIN_EXTENSIONS_UNIVERSAL:Ljava/lang/String; = "{http://xml.apache.org/xalan}"

.field private static final S_BUILTIN_EXTENSIONS_URL:Ljava/lang/String; = "http://xml.apache.org/xalan"

.field public static final S_BUILTIN_OLD_EXTENSIONS_UNIVERSAL:Ljava/lang/String; = "{http://xml.apache.org/xslt}"

#the value of this static final field might be set in the static constructor
.field public static final S_BUILTIN_OLD_EXTENSIONS_UNIVERSAL_LEN:I = 0x0

.field private static final S_BUILTIN_OLD_EXTENSIONS_URL:Ljava/lang/String; = "http://xml.apache.org/xslt"

.field public static final S_KEY_CONTENT_HANDLER:Ljava/lang/String; = "{http://xml.apache.org/xalan}content-handler"

.field public static final S_KEY_ENTITIES:Ljava/lang/String; = "{http://xml.apache.org/xalan}entities"

.field public static final S_KEY_INDENT_AMOUNT:Ljava/lang/String; = "{http://xml.apache.org/xalan}indent-amount"

.field public static final S_KEY_LINE_SEPARATOR:Ljava/lang/String; = "{http://xml.apache.org/xalan}line-separator"

.field public static final S_OMIT_META_TAG:Ljava/lang/String; = "{http://xml.apache.org/xalan}omit-meta-tag"

.field public static final S_USE_URL_ESCAPING:Ljava/lang/String; = "{http://xml.apache.org/xalan}use-url-escaping"

.field private static final S_XALAN_PREFIX:Ljava/lang/String; = "org.apache.xslt."

#the value of this static final field might be set in the static constructor
.field private static final S_XALAN_PREFIX_LEN:I = 0x0

.field private static final S_XSLT_PREFIX:Ljava/lang/String; = "xslt.output."

.field private static final S_XSLT_PREFIX_LEN:I

.field private static m_html_properties:Ljava/util/Properties;

.field private static m_synch_object:Ljava/lang/Integer;

.field private static m_text_properties:Ljava/util/Properties;

.field private static m_unknown_properties:Ljava/util/Properties;

.field private static m_xml_properties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 173
    const-string v0, "{http://xml.apache.org/xslt}"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->S_BUILTIN_OLD_EXTENSIONS_UNIVERSAL_LEN:I

    .line 181
    const-string v0, "xslt.output."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->S_XSLT_PREFIX_LEN:I

    .line 183
    const-string v0, "org.apache.xslt."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->S_XALAN_PREFIX_LEN:I

    .line 186
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_synch_object:Ljava/lang/Integer;

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/xml/serializer/SerializerBase;->PKG_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->PROP_DIR:Ljava/lang/String;

    .line 204
    sput-object v2, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_xml_properties:Ljava/util/Properties;

    .line 207
    sput-object v2, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_html_properties:Ljava/util/Properties;

    .line 210
    sput-object v2, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_text_properties:Ljava/util/Properties;

    .line 213
    sput-object v2, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_unknown_properties:Ljava/util/Properties;

    .line 216
    invoke-static {}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->findAccessControllerClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->ACCESS_CONTROLLER_CLASS:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findAccessControllerClass()Ljava/lang/Class;
    .registers 1

    .prologue
    .line 228
    :try_start_0
    const-string v0, "java.security.AccessController"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    .line 236
    :goto_6
    return-object v0

    .line 230
    :catch_7
    move-exception v0

    .line 236
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private static fixupPropertyString(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 6
    .parameter "s"
    .parameter "doClipping"

    .prologue
    .line 497
    if-eqz p1, :cond_10

    const-string v2, "xslt.output."

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 499
    sget v2, Lorg/apache/xml/serializer/OutputPropertiesFactory;->S_XSLT_PREFIX_LEN:I

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 501
    :cond_10
    const-string v2, "org.apache.xslt."

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 503
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{http://xml.apache.org/xalan}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lorg/apache/xml/serializer/OutputPropertiesFactory;->S_XALAN_PREFIX_LEN:I

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 507
    :cond_31
    const-string v2, "\\u003a"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .local v0, index:I
    if-lez v0, :cond_5b

    .line 509
    add-int/lit8 v2, v0, 0x6

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 510
    .local v1, temp:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 513
    .end local v1           #temp:Ljava/lang/String;
    :cond_5b
    return-object p0
.end method

.method public static final getDefaultMethodProperties(Ljava/lang/String;)Ljava/util/Properties;
    .registers 10
    .parameter "method"

    .prologue
    .line 254
    const/4 v1, 0x0

    .line 255
    .local v1, fileName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 260
    .local v0, defaultProperties:Ljava/util/Properties;
    :try_start_2
    sget-object v5, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_synch_object:Ljava/lang/Integer;

    monitor-enter v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_26

    .line 262
    :try_start_5
    sget-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_xml_properties:Ljava/util/Properties;

    if-nez v4, :cond_12

    .line 264
    const-string v1, "output_xml.properties"

    .line 265
    const/4 v4, 0x0

    invoke-static {v1, v4}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->loadPropertiesFile(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v4

    sput-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_xml_properties:Ljava/util/Properties;

    .line 267
    :cond_12
    monitor-exit v5
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_23

    .line 269
    :try_start_13
    const-string v4, "xml"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 271
    sget-object v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_xml_properties:Ljava/util/Properties;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1d} :catch_26

    .line 330
    :goto_1d
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4, v0}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    return-object v4

    .line 267
    :catchall_23
    move-exception v4

    :try_start_24
    monitor-exit v5
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    :try_start_25
    throw v4
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_26} :catch_26

    .line 320
    :catch_26
    move-exception v2

    .line 322
    .local v2, ioe:Ljava/io/IOException;
    new-instance v4, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;

    sget-object v5, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v6, "ER_COULD_NOT_LOAD_METHOD_PROPERTY"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v8, 0x1

    aput-object p0, v7, v8

    invoke-virtual {v5, v6, v7}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 273
    .end local v2           #ioe:Ljava/io/IOException;
    :cond_3e
    :try_start_3e
    const-string v4, "html"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 275
    sget-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_html_properties:Ljava/util/Properties;

    if-nez v4, :cond_54

    .line 277
    const-string v1, "output_html.properties"

    .line 278
    sget-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_xml_properties:Ljava/util/Properties;

    invoke-static {v1, v4}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->loadPropertiesFile(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v4

    sput-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_html_properties:Ljava/util/Properties;

    .line 282
    :cond_54
    sget-object v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_html_properties:Ljava/util/Properties;

    goto :goto_1d

    .line 284
    :cond_57
    const-string v4, "text"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_86

    .line 286
    sget-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_text_properties:Ljava/util/Properties;

    if-nez v4, :cond_83

    .line 288
    const-string v1, "output_text.properties"

    .line 289
    sget-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_xml_properties:Ljava/util/Properties;

    invoke-static {v1, v4}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->loadPropertiesFile(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v4

    sput-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_text_properties:Ljava/util/Properties;

    .line 291
    sget-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_text_properties:Ljava/util/Properties;

    const-string v5, "encoding"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_83

    .line 294
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/apache/xml/serializer/Encodings;->getMimeEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 295
    .local v3, mimeEncoding:Ljava/lang/String;
    sget-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_text_properties:Ljava/util/Properties;

    const-string v5, "encoding"

    invoke-virtual {v4, v5, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .end local v3           #mimeEncoding:Ljava/lang/String;
    :cond_83
    sget-object v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_text_properties:Ljava/util/Properties;

    goto :goto_1d

    .line 303
    :cond_86
    const-string v4, ""

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a0

    .line 305
    sget-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_unknown_properties:Ljava/util/Properties;

    if-nez v4, :cond_9c

    .line 307
    const-string v1, "output_unknown.properties"

    .line 308
    sget-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_xml_properties:Ljava/util/Properties;

    invoke-static {v1, v4}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->loadPropertiesFile(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v4

    sput-object v4, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_unknown_properties:Ljava/util/Properties;

    .line 312
    :cond_9c
    sget-object v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_unknown_properties:Ljava/util/Properties;

    goto/16 :goto_1d

    .line 317
    :cond_a0
    sget-object v0, Lorg/apache/xml/serializer/OutputPropertiesFactory;->m_xml_properties:Ljava/util/Properties;
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_a2} :catch_26

    goto/16 :goto_1d
.end method

.method private static loadPropertiesFile(Ljava/lang/String;Ljava/util/Properties;)Ljava/util/Properties;
    .registers 19
    .parameter "resourceName"
    .parameter "defaults"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 355
    new-instance v9, Ljava/util/Properties;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    .line 357
    .local v9, props:Ljava/util/Properties;
    const/4 v4, 0x0

    .line 358
    .local v4, is:Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 362
    .local v1, bis:Ljava/io/BufferedInputStream;
    :try_start_9
    sget-object v12, Lorg/apache/xml/serializer/OutputPropertiesFactory;->ACCESS_CONTROLLER_CLASS:Ljava/lang/Class;

    if-eqz v12, :cond_6d

    .line 364
    new-instance v12, Lorg/apache/xml/serializer/OutputPropertiesFactory$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lorg/apache/xml/serializer/OutputPropertiesFactory$1;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/io/InputStream;

    move-object v4, v0

    .line 380
    :goto_1c
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_7a
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_21} :catch_76
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_21} :catch_9b

    .line 381
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .local v2, bis:Ljava/io/BufferedInputStream;
    :try_start_21
    invoke-virtual {v9, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_bf
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_c5
    .catch Ljava/lang/SecurityException; {:try_start_21 .. :try_end_24} :catch_c2

    .line 418
    if-eqz v2, :cond_29

    .line 420
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    .line 422
    :cond_29
    if-eqz v4, :cond_2e

    .line 424
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 442
    :cond_2e
    invoke-virtual {v9}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Properties;

    invoke-virtual {v12}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v6

    .line 443
    .local v6, keys:Ljava/util/Enumeration;
    :cond_38
    :goto_38
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v12

    if-eqz v12, :cond_be

    .line 445
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 449
    .local v5, key:Ljava/lang/String;
    const/4 v11, 0x0

    .line 452
    .local v11, value:Ljava/lang/String;
    :try_start_45
    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_48
    .catch Ljava/lang/SecurityException; {:try_start_45 .. :try_end_48} :catch_ba

    move-result-object v11

    .line 458
    :goto_49
    if-nez v11, :cond_51

    .line 459
    invoke-virtual {v9, v5}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #value:Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 461
    .restart local v11       #value:Ljava/lang/String;
    :cond_51
    const/4 v12, 0x1

    invoke-static {v5, v12}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->fixupPropertyString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 462
    .local v7, newKey:Ljava/lang/String;
    const/4 v8, 0x0

    .line 465
    .local v8, newValue:Ljava/lang/String;
    :try_start_57
    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5a
    .catch Ljava/lang/SecurityException; {:try_start_57 .. :try_end_5a} :catch_bc

    move-result-object v8

    .line 471
    :goto_5b
    if-nez v8, :cond_b4

    .line 472
    const/4 v12, 0x0

    invoke-static {v11, v12}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->fixupPropertyString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 476
    :goto_62
    if-ne v5, v7, :cond_66

    if-eq v11, v8, :cond_38

    .line 478
    :cond_66
    invoke-virtual {v9, v5}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    invoke-virtual {v9, v7, v8}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38

    .line 376
    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #key:Ljava/lang/String;
    .end local v6           #keys:Ljava/util/Enumeration;
    .end local v7           #newKey:Ljava/lang/String;
    .end local v8           #newValue:Ljava/lang/String;
    .end local v11           #value:Ljava/lang/String;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    :cond_6d
    :try_start_6d
    const-class v12, Lorg/apache/xml/serializer/OutputPropertiesFactory;

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_74
    .catchall {:try_start_6d .. :try_end_74} :catchall_7a
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_74} :catch_76
    .catch Ljava/lang/SecurityException; {:try_start_6d .. :try_end_74} :catch_9b

    move-result-object v4

    goto :goto_1c

    .line 383
    :catch_76
    move-exception v3

    .line 385
    .local v3, ioe:Ljava/io/IOException;
    :goto_77
    if-nez p1, :cond_86

    .line 387
    :try_start_79
    throw v3
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_7a

    .line 418
    .end local v3           #ioe:Ljava/io/IOException;
    :catchall_7a
    move-exception v12

    :goto_7b
    if-eqz v1, :cond_80

    .line 420
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 422
    :cond_80
    if-eqz v4, :cond_85

    .line 424
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_85
    throw v12

    .line 391
    .restart local v3       #ioe:Ljava/io/IOException;
    :cond_86
    :try_start_86
    new-instance v12, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;

    sget-object v13, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v14, "ER_COULD_NOT_LOAD_RESOURCE"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object p0, v15, v16

    invoke-virtual {v13, v14, v15}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v3}, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v12

    .line 399
    .end local v3           #ioe:Ljava/io/IOException;
    :catch_9b
    move-exception v10

    .line 402
    .local v10, se:Ljava/lang/SecurityException;
    :goto_9c
    if-nez p1, :cond_9f

    .line 404
    throw v10

    .line 408
    :cond_9f
    new-instance v12, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;

    sget-object v13, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v14, "ER_COULD_NOT_LOAD_RESOURCE"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object p0, v15, v16

    invoke-virtual {v13, v14, v15}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v10}, Lorg/apache/xml/serializer/utils/WrappedRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v12
    :try_end_b4
    .catchall {:try_start_86 .. :try_end_b4} :catchall_7a

    .line 474
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v10           #se:Ljava/lang/SecurityException;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #key:Ljava/lang/String;
    .restart local v6       #keys:Ljava/util/Enumeration;
    .restart local v7       #newKey:Ljava/lang/String;
    .restart local v8       #newValue:Ljava/lang/String;
    .restart local v11       #value:Ljava/lang/String;
    :cond_b4
    const/4 v12, 0x0

    invoke-static {v8, v12}, Lorg/apache/xml/serializer/OutputPropertiesFactory;->fixupPropertyString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    goto :goto_62

    .line 454
    .end local v7           #newKey:Ljava/lang/String;
    .end local v8           #newValue:Ljava/lang/String;
    :catch_ba
    move-exception v12

    goto :goto_49

    .line 467
    .restart local v7       #newKey:Ljava/lang/String;
    .restart local v8       #newValue:Ljava/lang/String;
    :catch_bc
    move-exception v12

    goto :goto_5b

    .line 484
    .end local v5           #key:Ljava/lang/String;
    .end local v7           #newKey:Ljava/lang/String;
    .end local v8           #newValue:Ljava/lang/String;
    .end local v11           #value:Ljava/lang/String;
    :cond_be
    return-object v9

    .line 418
    .end local v6           #keys:Ljava/util/Enumeration;
    :catchall_bf
    move-exception v12

    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    goto :goto_7b

    .line 399
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    :catch_c2
    move-exception v10

    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    goto :goto_9c

    .line 383
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    :catch_c5
    move-exception v3

    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    goto :goto_77
.end method
