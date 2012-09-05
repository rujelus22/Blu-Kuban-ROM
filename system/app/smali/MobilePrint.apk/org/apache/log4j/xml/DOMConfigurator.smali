.class public Lorg/apache/log4j/xml/DOMConfigurator;
.super Ljava/lang/Object;
.source "DOMConfigurator.java"

# interfaces
.implements Lorg/apache/log4j/spi/Configurator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;
    }
.end annotation


# static fields
.field static final ADDITIVITY_ATTR:Ljava/lang/String; = "additivity"

.field static final APPENDER_REF_TAG:Ljava/lang/String; = "appender-ref"

.field static final APPENDER_TAG:Ljava/lang/String; = "appender"

.field static final CATEGORY:Ljava/lang/String; = "category"

.field static final CATEGORY_FACTORY_TAG:Ljava/lang/String; = "categoryFactory"

.field static final CLASS_ATTR:Ljava/lang/String; = "class"

.field static final CONFIGURATION_TAG:Ljava/lang/String; = "log4j:configuration"

.field static final CONFIG_DEBUG_ATTR:Ljava/lang/String; = "configDebug"

.field static final EMPTY_STR:Ljava/lang/String; = ""

.field static final ERROR_HANDLER_TAG:Ljava/lang/String; = "errorHandler"

.field static final FILTER_TAG:Ljava/lang/String; = "filter"

.field static final INTERNAL_DEBUG_ATTR:Ljava/lang/String; = "debug"

.field static final LAYOUT_TAG:Ljava/lang/String; = "layout"

.field static final LEVEL_TAG:Ljava/lang/String; = "level"

.field static final LOGGER:Ljava/lang/String; = "logger"

.field static final LOGGER_REF:Ljava/lang/String; = "logger-ref"

.field static final NAME_ATTR:Ljava/lang/String; = "name"

.field static final OLD_CONFIGURATION_TAG:Ljava/lang/String; = "configuration"

.field static final ONE_STRING_PARAM:[Ljava/lang/Class; = null

.field static final PARAM_TAG:Ljava/lang/String; = "param"

.field static final PRIORITY_TAG:Ljava/lang/String; = "priority"

.field static final REF_ATTR:Ljava/lang/String; = "ref"

.field static final RENDERED_CLASS_ATTR:Ljava/lang/String; = "renderedClass"

.field static final RENDERER_TAG:Ljava/lang/String; = "renderer"

.field static final RENDERING_CLASS_ATTR:Ljava/lang/String; = "renderingClass"

.field static final ROOT_REF:Ljava/lang/String; = "root-ref"

.field static final ROOT_TAG:Ljava/lang/String; = "root"

.field static final THRESHOLD_ATTR:Ljava/lang/String; = "threshold"

.field static final VALUE_ATTR:Ljava/lang/String; = "value"

.field static class$java$lang$String:Ljava/lang/Class; = null

.field static class$org$apache$log4j$spi$ErrorHandler:Ljava/lang/Class; = null

.field static class$org$apache$log4j$spi$Filter:Ljava/lang/Class; = null

.field static class$org$apache$log4j$spi$LoggerFactory:Ljava/lang/Class; = null

.field static final dbfKey:Ljava/lang/String; = "javax.xml.parsers.DocumentBuilderFactory"


# instance fields
.field appenderBag:Ljava/util/Hashtable;

.field props:Ljava/util/Properties;

.field repository:Lorg/apache/log4j/spi/LoggerRepository;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 100
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v0, Lorg/apache/log4j/xml/DOMConfigurator;->class$java$lang$String:Ljava/lang/Class;

    if-nez v0, :cond_15

    const-string v0, "java.lang.String"

    invoke-static {v0}, Lorg/apache/log4j/xml/DOMConfigurator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/xml/DOMConfigurator;->class$java$lang$String:Ljava/lang/Class;

    :goto_10
    aput-object v0, v1, v2

    sput-object v1, Lorg/apache/log4j/xml/DOMConfigurator;->ONE_STRING_PARAM:[Ljava/lang/Class;

    return-void

    :cond_15
    sget-object v0, Lorg/apache/log4j/xml/DOMConfigurator;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_10
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 115
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/xml/DOMConfigurator;->appenderBag:Ljava/util/Hashtable;

    .line 117
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .parameter "x0"

    .prologue
    .line 69
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    :catch_5
    move-exception v0

    .local v0, x1:Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static configure(Ljava/lang/String;)V
    .registers 3
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 733
    new-instance v0, Lorg/apache/log4j/xml/DOMConfigurator;

    invoke-direct {v0}, Lorg/apache/log4j/xml/DOMConfigurator;-><init>()V

    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->doConfigure(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 735
    return-void
.end method

.method public static configure(Ljava/net/URL;)V
    .registers 3
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 743
    new-instance v0, Lorg/apache/log4j/xml/DOMConfigurator;

    invoke-direct {v0}, Lorg/apache/log4j/xml/DOMConfigurator;-><init>()V

    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->doConfigure(Ljava/net/URL;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 744
    return-void
.end method

.method public static configure(Lorg/w3c/dom/Element;)V
    .registers 3
    .parameter "element"

    .prologue
    .line 552
    new-instance v0, Lorg/apache/log4j/xml/DOMConfigurator;

    invoke-direct {v0}, Lorg/apache/log4j/xml/DOMConfigurator;-><init>()V

    .line 553
    .local v0, configurator:Lorg/apache/log4j/xml/DOMConfigurator;
    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->doConfigure(Lorg/w3c/dom/Element;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 554
    return-void
.end method

.method public static configureAndWatch(Ljava/lang/String;)V
    .registers 3
    .parameter "configFilename"

    .prologue
    .line 567
    const-wide/32 v0, 0xea60

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->configureAndWatch(Ljava/lang/String;J)V

    .line 568
    return-void
.end method

.method public static configureAndWatch(Ljava/lang/String;J)V
    .registers 4
    .parameter "configFilename"
    .parameter "delay"

    .prologue
    .line 584
    new-instance v0, Lorg/apache/log4j/xml/XMLWatchdog;

    invoke-direct {v0, p0}, Lorg/apache/log4j/xml/XMLWatchdog;-><init>(Ljava/lang/String;)V

    .line 585
    .local v0, xdog:Lorg/apache/log4j/xml/XMLWatchdog;
    invoke-virtual {v0, p1, p2}, Lorg/apache/log4j/helpers/FileWatchdog;->setDelay(J)V

    .line 586
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 587
    return-void
.end method

.method private final doConfigure(Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;Lorg/apache/log4j/spi/LoggerRepository;)V
    .registers 11
    .parameter "action"
    .parameter "repository"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 688
    const/4 v0, 0x0

    .line 689
    .local v0, dbf:Ljavax/xml/parsers/DocumentBuilderFactory;
    iput-object p2, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    .line 691
    :try_start_3
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "System property is :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "javax.xml.parsers.DocumentBuilderFactory"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lorg/apache/log4j/helpers/OptionConverter;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 694
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 695
    const-string v5, "Standard DocumentBuilderFactory search succeded."

    invoke-static {v5}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 696
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "DocumentBuilderFactory is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V
    :try_end_47
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_3 .. :try_end_47} :catch_6b

    .line 704
    const/4 v5, 0x1

    :try_start_48
    invoke-virtual {v0, v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    .line 706
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 708
    .local v2, docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v5, Lorg/apache/log4j/xml/SAXErrorHandler;

    invoke-direct {v5}, Lorg/apache/log4j/xml/SAXErrorHandler;-><init>()V

    invoke-virtual {v2, v5}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 709
    new-instance v5, Lorg/apache/log4j/xml/Log4jEntityResolver;

    invoke-direct {v5}, Lorg/apache/log4j/xml/Log4jEntityResolver;-><init>()V

    invoke-virtual {v2, v5}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 711
    invoke-interface {p1, v2}, Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;->parse(Ljavax/xml/parsers/DocumentBuilder;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 712
    .local v1, doc:Lorg/w3c/dom/Document;
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/apache/log4j/xml/DOMConfigurator;->parse(Lorg/w3c/dom/Element;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_6a} :catch_76

    .line 717
    .end local v1           #doc:Lorg/w3c/dom/Document;
    .end local v2           #docBuilder:Ljavax/xml/parsers/DocumentBuilder;
    :goto_6a
    return-void

    .line 698
    :catch_6b
    move-exception v4

    .local v4, fce:Ljavax/xml/parsers/FactoryConfigurationError;
    invoke-virtual {v4}, Ljavax/xml/parsers/FactoryConfigurationError;->getException()Ljava/lang/Exception;

    move-result-object v3

    .line 699
    .local v3, e:Ljava/lang/Exception;
    const-string v5, "Could not instantiate a DocumentBuilderFactory."

    invoke-static {v5, v3}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 700
    throw v4

    .line 715
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #fce:Ljavax/xml/parsers/FactoryConfigurationError;
    :catch_76
    move-exception v3

    .restart local v3       #e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Could not parse "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6a
.end method


# virtual methods
.method public doConfigure(Ljava/io/InputStream;Lorg/apache/log4j/spi/LoggerRepository;)V
    .registers 4
    .parameter "inputStream"
    .parameter "repository"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 629
    new-instance v0, Lorg/apache/log4j/xml/DOMConfigurator$3;

    invoke-direct {v0, p0, p1}, Lorg/apache/log4j/xml/DOMConfigurator$3;-><init>(Lorg/apache/log4j/xml/DOMConfigurator;Ljava/io/InputStream;)V

    .line 639
    .local v0, action:Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;
    invoke-direct {p0, v0, p2}, Lorg/apache/log4j/xml/DOMConfigurator;->doConfigure(Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 640
    return-void
.end method

.method public doConfigure(Ljava/io/Reader;Lorg/apache/log4j/spi/LoggerRepository;)V
    .registers 4
    .parameter "reader"
    .parameter "repository"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 650
    new-instance v0, Lorg/apache/log4j/xml/DOMConfigurator$4;

    invoke-direct {v0, p0, p1}, Lorg/apache/log4j/xml/DOMConfigurator$4;-><init>(Lorg/apache/log4j/xml/DOMConfigurator;Ljava/io/Reader;)V

    .line 660
    .local v0, action:Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;
    invoke-direct {p0, v0, p2}, Lorg/apache/log4j/xml/DOMConfigurator;->doConfigure(Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 661
    return-void
.end method

.method public doConfigure(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerRepository;)V
    .registers 4
    .parameter "filename"
    .parameter "repository"

    .prologue
    .line 596
    new-instance v0, Lorg/apache/log4j/xml/DOMConfigurator$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/log4j/xml/DOMConfigurator$1;-><init>(Lorg/apache/log4j/xml/DOMConfigurator;Ljava/lang/String;)V

    .line 604
    .local v0, action:Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;
    invoke-direct {p0, v0, p2}, Lorg/apache/log4j/xml/DOMConfigurator;->doConfigure(Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 605
    return-void
.end method

.method public doConfigure(Ljava/net/URL;Lorg/apache/log4j/spi/LoggerRepository;)V
    .registers 4
    .parameter "url"
    .parameter "repository"

    .prologue
    .line 610
    new-instance v0, Lorg/apache/log4j/xml/DOMConfigurator$2;

    invoke-direct {v0, p0, p1}, Lorg/apache/log4j/xml/DOMConfigurator$2;-><init>(Lorg/apache/log4j/xml/DOMConfigurator;Ljava/net/URL;)V

    .line 618
    .local v0, action:Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;
    invoke-direct {p0, v0, p2}, Lorg/apache/log4j/xml/DOMConfigurator;->doConfigure(Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 619
    return-void
.end method

.method public doConfigure(Lorg/w3c/dom/Element;Lorg/apache/log4j/spi/LoggerRepository;)V
    .registers 3
    .parameter "element"
    .parameter "repository"

    .prologue
    .line 723
    iput-object p2, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    .line 724
    invoke-virtual {p0, p1}, Lorg/apache/log4j/xml/DOMConfigurator;->parse(Lorg/w3c/dom/Element;)V

    .line 725
    return-void
.end method

.method protected doConfigure(Lorg/xml/sax/InputSource;Lorg/apache/log4j/spi/LoggerRepository;)V
    .registers 5
    .parameter "inputSource"
    .parameter "repository"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 671
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    .line 672
    const-string v1, "dummy://log4j.dtd"

    invoke-virtual {p1, v1}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 674
    :cond_b
    new-instance v0, Lorg/apache/log4j/xml/DOMConfigurator$5;

    invoke-direct {v0, p0, p1}, Lorg/apache/log4j/xml/DOMConfigurator$5;-><init>(Lorg/apache/log4j/xml/DOMConfigurator;Lorg/xml/sax/InputSource;)V

    .line 682
    .local v0, action:Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;
    invoke-direct {p0, v0, p2}, Lorg/apache/log4j/xml/DOMConfigurator;->doConfigure(Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 683
    return-void
.end method

.method protected findAppenderByName(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/apache/log4j/Appender;
    .registers 12
    .parameter "doc"
    .parameter "appenderName"

    .prologue
    .line 124
    iget-object v7, p0, Lorg/apache/log4j/xml/DOMConfigurator;->appenderBag:Ljava/util/Hashtable;

    invoke-virtual {v7, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/Appender;

    .line 126
    .local v0, appender:Lorg/apache/log4j/Appender;
    if-eqz v0, :cond_c

    move-object v7, v0

    .line 152
    :goto_b
    return-object v7

    .line 133
    :cond_c
    const/4 v2, 0x0

    .line 134
    .local v2, element:Lorg/w3c/dom/Element;
    const-string v7, "appender"

    invoke-interface {p1, v7}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 135
    .local v3, list:Lorg/w3c/dom/NodeList;
    const/4 v6, 0x0

    .local v6, t:I
    :goto_14
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-lt v6, v7, :cond_3a

    .line 146
    :goto_1a
    if-nez v2, :cond_59

    .line 147
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "No appender named ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "] could be found."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 148
    const/4 v7, 0x0

    goto :goto_b

    .line 136
    :cond_3a
    invoke-interface {v3, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 137
    .local v5, node:Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    .line 138
    .local v4, map:Lorg/w3c/dom/NamedNodeMap;
    const-string v7, "name"

    invoke-interface {v4, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 139
    .local v1, attrNode:Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_56

    move-object v2, v5

    .line 140
    check-cast v2, Lorg/w3c/dom/Element;

    .line 141
    goto :goto_1a

    .line 135
    :cond_56
    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    .line 150
    .end local v1           #attrNode:Lorg/w3c/dom/Node;
    .end local v4           #map:Lorg/w3c/dom/NamedNodeMap;
    .end local v5           #node:Lorg/w3c/dom/Node;
    :cond_59
    invoke-virtual {p0, v2}, Lorg/apache/log4j/xml/DOMConfigurator;->parseAppender(Lorg/w3c/dom/Element;)Lorg/apache/log4j/Appender;

    move-result-object v0

    .line 151
    iget-object v7, p0, Lorg/apache/log4j/xml/DOMConfigurator;->appenderBag:Ljava/util/Hashtable;

    invoke-virtual {v7, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v0

    .line 152
    goto :goto_b
.end method

.method protected findAppenderByReference(Lorg/w3c/dom/Element;)Lorg/apache/log4j/Appender;
    .registers 5
    .parameter "appenderRef"

    .prologue
    .line 161
    const-string v2, "ref"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, appenderName:Ljava/lang/String;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 163
    .local v1, doc:Lorg/w3c/dom/Document;
    invoke-virtual {p0, v1, v0}, Lorg/apache/log4j/xml/DOMConfigurator;->findAppenderByName(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/apache/log4j/Appender;

    move-result-object v2

    return-object v2
.end method

.method protected parse(Lorg/w3c/dom/Element;)V
    .registers 15
    .parameter "element"

    .prologue
    const/4 v12, 0x1

    .line 755
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v7

    .line 757
    .local v7, rootElementName:Ljava/lang/String;
    const-string v10, "log4j:configuration"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1f

    .line 758
    const-string v10, "configuration"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d4

    .line 759
    const-string v10, "The <configuration> element has been deprecated."

    invoke-static {v10}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 761
    const-string v10, "Use the <log4j:configuration> element instead."

    invoke-static {v10}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 768
    :cond_1f
    const-string v10, "debug"

    invoke-interface {p1, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 770
    .local v4, debugAttrib:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "debug attribute= \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "\"."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 773
    const-string v10, ""

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_da

    const-string v10, "null"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_da

    .line 774
    invoke-static {v4, v12}, Lorg/apache/log4j/helpers/OptionConverter;->toBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-static {v10}, Lorg/apache/log4j/helpers/LogLog;->setInternalDebugging(Z)V

    .line 780
    :goto_5c
    const-string v10, "configDebug"

    invoke-interface {p1, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 781
    .local v1, confDebug:Ljava/lang/String;
    const-string v10, ""

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_87

    const-string v10, "null"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_87

    .line 782
    const-string v10, "The \"configDebug\" attribute is deprecated."

    invoke-static {v10}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 783
    const-string v10, "Use the \"debug\" attribute instead."

    invoke-static {v10}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 784
    invoke-static {v1, v12}, Lorg/apache/log4j/helpers/OptionConverter;->toBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-static {v10}, Lorg/apache/log4j/helpers/LogLog;->setInternalDebugging(Z)V

    .line 787
    :cond_87
    const-string v10, "threshold"

    invoke-interface {p1, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 788
    .local v9, thresholdStr:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "Threshold =\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "\"."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 789
    const-string v10, ""

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c2

    const-string v10, "null"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c2

    .line 790
    iget-object v10, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    invoke-interface {v10, v9}, Lorg/apache/log4j/spi/LoggerRepository;->setThreshold(Ljava/lang/String;)V

    .line 802
    :cond_c2
    const/4 v8, 0x0

    .line 803
    .local v8, tagName:Ljava/lang/String;
    const/4 v2, 0x0

    .line 804
    .local v2, currentElement:Lorg/w3c/dom/Element;
    const/4 v3, 0x0

    .line 805
    .local v3, currentNode:Lorg/w3c/dom/Node;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 806
    .local v0, children:Lorg/w3c/dom/NodeList;
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    .line 808
    .local v5, length:I
    const/4 v6, 0x0

    .local v6, loop:I
    :goto_ce
    if-lt v6, v5, :cond_e1

    .line 820
    const/4 v6, 0x0

    :goto_d1
    if-lt v6, v5, :cond_100

    .line 835
    .end local v0           #children:Lorg/w3c/dom/NodeList;
    .end local v1           #confDebug:Ljava/lang/String;
    .end local v2           #currentElement:Lorg/w3c/dom/Element;
    .end local v3           #currentNode:Lorg/w3c/dom/Node;
    .end local v4           #debugAttrib:Ljava/lang/String;
    .end local v5           #length:I
    .end local v6           #loop:I
    .end local v8           #tagName:Ljava/lang/String;
    .end local v9           #thresholdStr:Ljava/lang/String;
    :goto_d3
    return-void

    .line 763
    :cond_d4
    const-string v10, "DOM element is - not a <log4j:configuration> element."

    invoke-static {v10}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    goto :goto_d3

    .line 776
    .restart local v4       #debugAttrib:Ljava/lang/String;
    :cond_da
    const-string v10, "Ignoring debug attribute."

    invoke-static {v10}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    goto/16 :goto_5c

    .line 809
    .restart local v0       #children:Lorg/w3c/dom/NodeList;
    .restart local v1       #confDebug:Ljava/lang/String;
    .restart local v2       #currentElement:Lorg/w3c/dom/Element;
    .restart local v3       #currentNode:Lorg/w3c/dom/Node;
    .restart local v5       #length:I
    .restart local v6       #loop:I
    .restart local v8       #tagName:Ljava/lang/String;
    .restart local v9       #thresholdStr:Ljava/lang/String;
    :cond_e1
    invoke-interface {v0, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 810
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    if-ne v10, v12, :cond_fd

    move-object v2, v3

    .line 811
    check-cast v2, Lorg/w3c/dom/Element;

    .line 812
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v8

    .line 814
    const-string v10, "categoryFactory"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_fd

    .line 815
    invoke-virtual {p0, v2}, Lorg/apache/log4j/xml/DOMConfigurator;->parseCategoryFactory(Lorg/w3c/dom/Element;)V

    .line 808
    :cond_fd
    add-int/lit8 v6, v6, 0x1

    goto :goto_ce

    .line 821
    :cond_100
    invoke-interface {v0, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 822
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    if-ne v10, v12, :cond_124

    move-object v2, v3

    .line 823
    check-cast v2, Lorg/w3c/dom/Element;

    .line 824
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v8

    .line 826
    const-string v10, "category"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_121

    const-string v10, "logger"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_127

    .line 827
    :cond_121
    invoke-virtual {p0, v2}, Lorg/apache/log4j/xml/DOMConfigurator;->parseCategory(Lorg/w3c/dom/Element;)V

    .line 820
    :cond_124
    :goto_124
    add-int/lit8 v6, v6, 0x1

    goto :goto_d1

    .line 828
    :cond_127
    const-string v10, "root"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_133

    .line 829
    invoke-virtual {p0, v2}, Lorg/apache/log4j/xml/DOMConfigurator;->parseRoot(Lorg/w3c/dom/Element;)V

    goto :goto_124

    .line 830
    :cond_133
    const-string v10, "renderer"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_124

    .line 831
    invoke-virtual {p0, v2}, Lorg/apache/log4j/xml/DOMConfigurator;->parseRenderer(Lorg/w3c/dom/Element;)V

    goto :goto_124
.end method

.method protected parseAppender(Lorg/w3c/dom/Element;)Lorg/apache/log4j/Appender;
    .registers 17
    .parameter "appenderElement"

    .prologue
    .line 171
    const-string v13, "class"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 172
    .local v4, className:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const-string v14, "Class name: ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const/16 v14, 0x5d

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 174
    :try_start_28
    invoke-static {v4}, Lorg/apache/log4j/helpers/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    .line 175
    .local v7, instance:Ljava/lang/Object;
    move-object v0, v7

    check-cast v0, Lorg/apache/log4j/Appender;

    move-object v2, v0

    .line 176
    .local v2, appender:Lorg/apache/log4j/Appender;
    new-instance v11, Lorg/apache/log4j/config/PropertySetter;

    invoke-direct {v11, v2}, Lorg/apache/log4j/config/PropertySetter;-><init>(Ljava/lang/Object;)V

    .line 178
    .local v11, propSetter:Lorg/apache/log4j/config/PropertySetter;
    const-string v13, "name"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2, v13}, Lorg/apache/log4j/Appender;->setName(Ljava/lang/String;)V

    .line 180
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 181
    .local v3, children:Lorg/w3c/dom/NodeList;
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    .line 183
    .local v8, length:I
    const/4 v9, 0x0

    .local v9, loop:I
    :goto_51
    if-lt v9, v8, :cond_57

    .line 220
    invoke-virtual {v11}, Lorg/apache/log4j/config/PropertySetter;->activate()V

    .line 228
    .end local v2           #appender:Lorg/apache/log4j/Appender;
    .end local v3           #children:Lorg/w3c/dom/NodeList;
    .end local v7           #instance:Ljava/lang/Object;
    .end local v8           #length:I
    .end local v9           #loop:I
    .end local v11           #propSetter:Lorg/apache/log4j/config/PropertySetter;
    :goto_56
    return-object v2

    .line 184
    .restart local v2       #appender:Lorg/apache/log4j/Appender;
    .restart local v3       #children:Lorg/w3c/dom/NodeList;
    .restart local v7       #instance:Ljava/lang/Object;
    .restart local v8       #length:I
    .restart local v9       #loop:I
    .restart local v11       #propSetter:Lorg/apache/log4j/config/PropertySetter;
    :cond_57
    invoke-interface {v3, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 187
    .local v6, currentNode:Lorg/w3c/dom/Node;
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_75

    .line 188
    move-object v0, v6

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v5, v0

    .line 191
    .local v5, currentElement:Lorg/w3c/dom/Element;
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "param"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_78

    .line 192
    invoke-virtual {p0, v5, v11}, Lorg/apache/log4j/xml/DOMConfigurator;->setParameter(Lorg/w3c/dom/Element;Lorg/apache/log4j/config/PropertySetter;)V

    .line 183
    .end local v5           #currentElement:Lorg/w3c/dom/Element;
    :cond_75
    :goto_75
    add-int/lit8 v9, v9, 0x1

    goto :goto_51

    .line 195
    .restart local v5       #currentElement:Lorg/w3c/dom/Element;
    :cond_78
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "layout"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_94

    .line 196
    invoke-virtual {p0, v5}, Lorg/apache/log4j/xml/DOMConfigurator;->parseLayout(Lorg/w3c/dom/Element;)Lorg/apache/log4j/Layout;

    move-result-object v13

    invoke-interface {v2, v13}, Lorg/apache/log4j/Appender;->setLayout(Lorg/apache/log4j/Layout;)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_8b} :catch_8c

    goto :goto_75

    .line 226
    .end local v2           #appender:Lorg/apache/log4j/Appender;
    .end local v3           #children:Lorg/w3c/dom/NodeList;
    .end local v5           #currentElement:Lorg/w3c/dom/Element;
    .end local v6           #currentNode:Lorg/w3c/dom/Node;
    .end local v7           #instance:Ljava/lang/Object;
    .end local v8           #length:I
    .end local v9           #loop:I
    .end local v11           #propSetter:Lorg/apache/log4j/config/PropertySetter;
    :catch_8c
    move-exception v10

    .local v10, oops:Ljava/lang/Exception;
    const-string v13, "Could not create an Appender. Reported error follows."

    invoke-static {v13, v10}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 228
    const/4 v2, 0x0

    goto :goto_56

    .line 199
    .end local v10           #oops:Ljava/lang/Exception;
    .restart local v2       #appender:Lorg/apache/log4j/Appender;
    .restart local v3       #children:Lorg/w3c/dom/NodeList;
    .restart local v5       #currentElement:Lorg/w3c/dom/Element;
    .restart local v6       #currentNode:Lorg/w3c/dom/Node;
    .restart local v7       #instance:Ljava/lang/Object;
    .restart local v8       #length:I
    .restart local v9       #loop:I
    .restart local v11       #propSetter:Lorg/apache/log4j/config/PropertySetter;
    :cond_94
    :try_start_94
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "filter"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a4

    .line 200
    invoke-virtual {p0, v5, v2}, Lorg/apache/log4j/xml/DOMConfigurator;->parseFilters(Lorg/w3c/dom/Element;Lorg/apache/log4j/Appender;)V

    goto :goto_75

    .line 202
    :cond_a4
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "errorHandler"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b4

    .line 203
    invoke-virtual {p0, v5, v2}, Lorg/apache/log4j/xml/DOMConfigurator;->parseErrorHandler(Lorg/w3c/dom/Element;Lorg/apache/log4j/Appender;)V

    goto :goto_75

    .line 205
    :cond_b4
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "appender-ref"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_75

    .line 206
    const-string v13, "ref"

    invoke-interface {v5, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v13}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 207
    .local v12, refName:Ljava/lang/String;
    instance-of v13, v2, Lorg/apache/log4j/spi/AppenderAttachable;

    if-eqz v13, :cond_105

    .line 208
    move-object v0, v2

    check-cast v0, Lorg/apache/log4j/spi/AppenderAttachable;

    move-object v1, v0

    .line 209
    .local v1, aa:Lorg/apache/log4j/spi/AppenderAttachable;
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const-string v14, "Attaching appender named ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, "] to appender named ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-interface {v2}, Lorg/apache/log4j/Appender;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, "]."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0, v5}, Lorg/apache/log4j/xml/DOMConfigurator;->findAppenderByReference(Lorg/w3c/dom/Element;)Lorg/apache/log4j/Appender;

    move-result-object v13

    invoke-interface {v1, v13}, Lorg/apache/log4j/spi/AppenderAttachable;->addAppender(Lorg/apache/log4j/Appender;)V

    goto/16 :goto_75

    .line 213
    .end local v1           #aa:Lorg/apache/log4j/spi/AppenderAttachable;
    :cond_105
    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const-string v14, "Requesting attachment of appender named ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, "] to appender named ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-interface {v2}, Lorg/apache/log4j/Appender;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, "] which does not implement org.apache.log4j.spi.AppenderAttachable."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_12f} :catch_8c

    goto/16 :goto_75
.end method

.method protected parseCategory(Lorg/w3c/dom/Element;)V
    .registers 12
    .parameter "loggerElement"

    .prologue
    .line 310
    const-string v7, "name"

    invoke-interface {p1, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, catName:Ljava/lang/String;
    const-string v7, "class"

    invoke-interface {p1, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 317
    .local v3, className:Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6a

    .line 318
    const-string v7, "Retreiving an instance of org.apache.log4j.Logger."

    invoke-static {v7}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 319
    iget-object v7, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    invoke-interface {v7, v2}, Lorg/apache/log4j/spi/LoggerRepository;->getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v1

    .line 338
    .local v1, cat:Lorg/apache/log4j/Logger;
    :goto_27
    monitor-enter v1

    .line 339
    :try_start_28
    const-string v7, "additivity"

    invoke-interface {p1, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lorg/apache/log4j/helpers/OptionConverter;->toBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 343
    .local v0, additivity:Z
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Setting ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v1}, Lorg/apache/log4j/Logger;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "] additivity to ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "]."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v1, v0}, Lorg/apache/log4j/Category;->setAdditivity(Z)V

    .line 345
    const/4 v7, 0x0

    invoke-virtual {p0, p1, v1, v7}, Lorg/apache/log4j/xml/DOMConfigurator;->parseChildrenOfLoggerElement(Lorg/w3c/dom/Element;Lorg/apache/log4j/Logger;Z)V

    .line 346
    monitor-exit v1
    :try_end_69
    .catchall {:try_start_28 .. :try_end_69} :catchall_be

    .line 347
    .end local v0           #additivity:Z
    .end local v1           #cat:Lorg/apache/log4j/Logger;
    :goto_69
    return-void

    .line 322
    :cond_6a
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Desired logger sub-class: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 324
    :try_start_86
    invoke-static {v3}, Lorg/apache/log4j/helpers/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 325
    .local v4, clazz:Ljava/lang/Class;
    const-string v7, "getLogger"

    sget-object v8, Lorg/apache/log4j/xml/DOMConfigurator;->ONE_STRING_PARAM:[Ljava/lang/Class;

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 327
    .local v5, getInstanceMethod:Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    invoke-virtual {v5, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/Logger;
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_9f} :catch_a0

    .restart local v1       #cat:Lorg/apache/log4j/Logger;
    goto :goto_27

    .line 329
    .end local v1           #cat:Lorg/apache/log4j/Logger;
    .end local v4           #clazz:Ljava/lang/Class;
    .end local v5           #getInstanceMethod:Ljava/lang/reflect/Method;
    :catch_a0
    move-exception v6

    .local v6, oops:Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Could not retrieve category ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "]. Reported error follows."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_69

    .line 346
    .end local v6           #oops:Ljava/lang/Exception;
    .restart local v1       #cat:Lorg/apache/log4j/Logger;
    :catchall_be
    move-exception v7

    monitor-exit v1

    throw v7
.end method

.method protected parseCategoryFactory(Lorg/w3c/dom/Element;)V
    .registers 12
    .parameter "factoryElement"

    .prologue
    .line 355
    const-string v8, "class"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, className:Ljava/lang/String;
    const-string v8, ""

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 358
    const-string v8, "Category Factory tag class attribute not found."

    invoke-static {v8}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 359
    const-string v8, "No Category Factory configured."

    invoke-static {v8}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 383
    :cond_1c
    return-void

    .line 362
    :cond_1d
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Desired category factory: ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const/16 v9, 0x5d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 363
    sget-object v8, Lorg/apache/log4j/xml/DOMConfigurator;->class$org$apache$log4j$spi$LoggerFactory:Ljava/lang/Class;

    if-nez v8, :cond_7c

    const-string v8, "org.apache.log4j.spi.LoggerFactory"

    invoke-static {v8}, Lorg/apache/log4j/xml/DOMConfigurator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sput-object v8, Lorg/apache/log4j/xml/DOMConfigurator;->class$org$apache$log4j$spi$LoggerFactory:Ljava/lang/Class;

    :goto_45
    const/4 v9, 0x0

    invoke-static {v2, v8, v9}, Lorg/apache/log4j/helpers/OptionConverter;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 366
    .local v0, catFactory:Ljava/lang/Object;
    new-instance v7, Lorg/apache/log4j/config/PropertySetter;

    invoke-direct {v7, v0}, Lorg/apache/log4j/config/PropertySetter;-><init>(Ljava/lang/Object;)V

    .line 368
    .local v7, propSetter:Lorg/apache/log4j/config/PropertySetter;
    const/4 v3, 0x0

    .line 369
    .local v3, currentElement:Lorg/w3c/dom/Element;
    const/4 v4, 0x0

    .line 370
    .local v4, currentNode:Lorg/w3c/dom/Node;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 371
    .local v1, children:Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    .line 373
    .local v5, length:I
    const/4 v6, 0x0

    .local v6, loop:I
    :goto_5a
    if-ge v6, v5, :cond_1c

    .line 374
    invoke-interface {v1, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 375
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_79

    move-object v3, v4

    .line 376
    check-cast v3, Lorg/w3c/dom/Element;

    .line 377
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "param"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_79

    .line 378
    invoke-virtual {p0, v3, v7}, Lorg/apache/log4j/xml/DOMConfigurator;->setParameter(Lorg/w3c/dom/Element;Lorg/apache/log4j/config/PropertySetter;)V

    .line 373
    :cond_79
    add-int/lit8 v6, v6, 0x1

    goto :goto_5a

    .line 363
    .end local v0           #catFactory:Ljava/lang/Object;
    .end local v1           #children:Lorg/w3c/dom/NodeList;
    .end local v3           #currentElement:Lorg/w3c/dom/Element;
    .end local v4           #currentNode:Lorg/w3c/dom/Node;
    .end local v5           #length:I
    .end local v6           #loop:I
    .end local v7           #propSetter:Lorg/apache/log4j/config/PropertySetter;
    :cond_7c
    sget-object v8, Lorg/apache/log4j/xml/DOMConfigurator;->class$org$apache$log4j$spi$LoggerFactory:Ljava/lang/Class;

    goto :goto_45
.end method

.method protected parseChildrenOfLoggerElement(Lorg/w3c/dom/Element;Lorg/apache/log4j/Logger;Z)V
    .registers 16
    .parameter "catElement"
    .parameter "cat"
    .parameter "isRoot"

    .prologue
    .line 406
    new-instance v7, Lorg/apache/log4j/config/PropertySetter;

    invoke-direct {v7, p2}, Lorg/apache/log4j/config/PropertySetter;-><init>(Ljava/lang/Object;)V

    .line 410
    .local v7, propSetter:Lorg/apache/log4j/config/PropertySetter;
    invoke-virtual {p2}, Lorg/apache/log4j/Category;->removeAllAppenders()V

    .line 413
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 414
    .local v2, children:Lorg/w3c/dom/NodeList;
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    .line 416
    .local v5, length:I
    const/4 v6, 0x0

    .local v6, loop:I
    :goto_11
    if-lt v6, v5, :cond_17

    .line 444
    invoke-virtual {v7}, Lorg/apache/log4j/config/PropertySetter;->activate()V

    .line 445
    return-void

    .line 417
    :cond_17
    invoke-interface {v2, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 419
    .local v4, currentNode:Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_71

    move-object v3, v4

    .line 420
    check-cast v3, Lorg/w3c/dom/Element;

    .line 421
    .local v3, currentElement:Lorg/w3c/dom/Element;
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v9

    .line 423
    .local v9, tagName:Ljava/lang/String;
    const-string v10, "appender-ref"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_91

    move-object v1, v4

    .line 424
    check-cast v1, Lorg/w3c/dom/Element;

    .line 425
    .local v1, appenderRef:Lorg/w3c/dom/Element;
    invoke-virtual {p0, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->findAppenderByReference(Lorg/w3c/dom/Element;)Lorg/apache/log4j/Appender;

    move-result-object v0

    .line 426
    .local v0, appender:Lorg/apache/log4j/Appender;
    const-string v10, "ref"

    invoke-interface {v1, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 427
    .local v8, refName:Ljava/lang/String;
    if-eqz v0, :cond_74

    .line 428
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "Adding appender named ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "] to category ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {p2}, Lorg/apache/log4j/Logger;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "]."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 433
    :goto_6e
    invoke-virtual {p2, v0}, Lorg/apache/log4j/Category;->addAppender(Lorg/apache/log4j/Appender;)V

    .line 416
    .end local v0           #appender:Lorg/apache/log4j/Appender;
    .end local v1           #appenderRef:Lorg/w3c/dom/Element;
    .end local v3           #currentElement:Lorg/w3c/dom/Element;
    .end local v8           #refName:Ljava/lang/String;
    .end local v9           #tagName:Ljava/lang/String;
    :cond_71
    :goto_71
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 431
    .restart local v0       #appender:Lorg/apache/log4j/Appender;
    .restart local v1       #appenderRef:Lorg/w3c/dom/Element;
    .restart local v3       #currentElement:Lorg/w3c/dom/Element;
    .restart local v8       #refName:Ljava/lang/String;
    .restart local v9       #tagName:Ljava/lang/String;
    :cond_74
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    const-string v11, "Appender named ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "] not found."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    goto :goto_6e

    .line 435
    .end local v0           #appender:Lorg/apache/log4j/Appender;
    .end local v1           #appenderRef:Lorg/w3c/dom/Element;
    .end local v8           #refName:Ljava/lang/String;
    :cond_91
    const-string v10, "level"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9d

    .line 436
    invoke-virtual {p0, v3, p2, p3}, Lorg/apache/log4j/xml/DOMConfigurator;->parseLevel(Lorg/w3c/dom/Element;Lorg/apache/log4j/Logger;Z)V

    goto :goto_71

    .line 437
    :cond_9d
    const-string v10, "priority"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a9

    .line 438
    invoke-virtual {p0, v3, p2, p3}, Lorg/apache/log4j/xml/DOMConfigurator;->parseLevel(Lorg/w3c/dom/Element;Lorg/apache/log4j/Logger;Z)V

    goto :goto_71

    .line 439
    :cond_a9
    const-string v10, "param"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_71

    .line 440
    invoke-virtual {p0, v3, v7}, Lorg/apache/log4j/xml/DOMConfigurator;->setParameter(Lorg/w3c/dom/Element;Lorg/apache/log4j/config/PropertySetter;)V

    goto :goto_71
.end method

.method protected parseErrorHandler(Lorg/w3c/dom/Element;Lorg/apache/log4j/Appender;)V
    .registers 18
    .parameter "element"
    .parameter "appender"

    .prologue
    .line 237
    const-string v12, "class"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget-object v12, Lorg/apache/log4j/xml/DOMConfigurator;->class$org$apache$log4j$spi$ErrorHandler:Ljava/lang/Class;

    if-nez v12, :cond_3f

    const-string v12, "org.apache.log4j.spi.ErrorHandler"

    invoke-static {v12}, Lorg/apache/log4j/xml/DOMConfigurator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    sput-object v12, Lorg/apache/log4j/xml/DOMConfigurator;->class$org$apache$log4j$spi$ErrorHandler:Ljava/lang/Class;

    :goto_18
    const/4 v14, 0x0

    invoke-static {v13, v12, v14}, Lorg/apache/log4j/helpers/OptionConverter;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/log4j/spi/ErrorHandler;

    .line 242
    .local v4, eh:Lorg/apache/log4j/spi/ErrorHandler;
    if-eqz v4, :cond_3e

    .line 243
    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Lorg/apache/log4j/spi/ErrorHandler;->setAppender(Lorg/apache/log4j/Appender;)V

    .line 245
    new-instance v9, Lorg/apache/log4j/config/PropertySetter;

    invoke-direct {v9, v4}, Lorg/apache/log4j/config/PropertySetter;-><init>(Ljava/lang/Object;)V

    .line 246
    .local v9, propSetter:Lorg/apache/log4j/config/PropertySetter;
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 247
    .local v1, children:Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    .line 249
    .local v5, length:I
    const/4 v8, 0x0

    .local v8, loop:I
    :goto_34
    if-lt v8, v5, :cond_42

    .line 268
    invoke-virtual {v9}, Lorg/apache/log4j/config/PropertySetter;->activate()V

    .line 269
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lorg/apache/log4j/Appender;->setErrorHandler(Lorg/apache/log4j/spi/ErrorHandler;)V

    .line 271
    .end local v1           #children:Lorg/w3c/dom/NodeList;
    .end local v5           #length:I
    .end local v8           #loop:I
    .end local v9           #propSetter:Lorg/apache/log4j/config/PropertySetter;
    :cond_3e
    return-void

    .line 237
    .end local v4           #eh:Lorg/apache/log4j/spi/ErrorHandler;
    :cond_3f
    sget-object v12, Lorg/apache/log4j/xml/DOMConfigurator;->class$org$apache$log4j$spi$ErrorHandler:Ljava/lang/Class;

    goto :goto_18

    .line 250
    .restart local v1       #children:Lorg/w3c/dom/NodeList;
    .restart local v4       #eh:Lorg/apache/log4j/spi/ErrorHandler;
    .restart local v5       #length:I
    .restart local v8       #loop:I
    .restart local v9       #propSetter:Lorg/apache/log4j/config/PropertySetter;
    :cond_42
    invoke-interface {v1, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 251
    .local v3, currentNode:Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5f

    move-object v2, v3

    .line 252
    check-cast v2, Lorg/w3c/dom/Element;

    .line 253
    .local v2, currentElement:Lorg/w3c/dom/Element;
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v11

    .line 254
    .local v11, tagName:Ljava/lang/String;
    const-string v12, "param"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_62

    .line 255
    invoke-virtual {p0, v2, v9}, Lorg/apache/log4j/xml/DOMConfigurator;->setParameter(Lorg/w3c/dom/Element;Lorg/apache/log4j/config/PropertySetter;)V

    .line 249
    .end local v2           #currentElement:Lorg/w3c/dom/Element;
    .end local v11           #tagName:Ljava/lang/String;
    :cond_5f
    :goto_5f
    add-int/lit8 v8, v8, 0x1

    goto :goto_34

    .line 256
    .restart local v2       #currentElement:Lorg/w3c/dom/Element;
    .restart local v11       #tagName:Ljava/lang/String;
    :cond_62
    const-string v12, "appender-ref"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_72

    .line 257
    invoke-virtual {p0, v2}, Lorg/apache/log4j/xml/DOMConfigurator;->findAppenderByReference(Lorg/w3c/dom/Element;)Lorg/apache/log4j/Appender;

    move-result-object v12

    invoke-interface {v4, v12}, Lorg/apache/log4j/spi/ErrorHandler;->setBackupAppender(Lorg/apache/log4j/Appender;)V

    goto :goto_5f

    .line 258
    :cond_72
    const-string v12, "logger-ref"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8a

    .line 259
    const-string v12, "ref"

    invoke-interface {v2, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 260
    .local v7, loggerName:Ljava/lang/String;
    iget-object v12, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    invoke-interface {v12, v7}, Lorg/apache/log4j/spi/LoggerRepository;->getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v6

    .line 261
    .local v6, logger:Lorg/apache/log4j/Logger;
    invoke-interface {v4, v6}, Lorg/apache/log4j/spi/ErrorHandler;->setLogger(Lorg/apache/log4j/Logger;)V

    goto :goto_5f

    .line 262
    .end local v6           #logger:Lorg/apache/log4j/Logger;
    .end local v7           #loggerName:Ljava/lang/String;
    :cond_8a
    const-string v12, "root-ref"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5f

    .line 263
    iget-object v12, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    invoke-interface {v12}, Lorg/apache/log4j/spi/LoggerRepository;->getRootLogger()Lorg/apache/log4j/Logger;

    move-result-object v10

    .line 264
    .local v10, root:Lorg/apache/log4j/Logger;
    invoke-interface {v4, v10}, Lorg/apache/log4j/spi/ErrorHandler;->setLogger(Lorg/apache/log4j/Logger;)V

    goto :goto_5f
.end method

.method protected parseFilters(Lorg/w3c/dom/Element;Lorg/apache/log4j/Appender;)V
    .registers 14
    .parameter "element"
    .parameter "appender"

    .prologue
    .line 278
    const-string v9, "class"

    invoke-interface {p1, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, clazz:Ljava/lang/String;
    sget-object v9, Lorg/apache/log4j/xml/DOMConfigurator;->class$org$apache$log4j$spi$Filter:Ljava/lang/Class;

    if-nez v9, :cond_64

    const-string v9, "org.apache.log4j.spi.Filter"

    invoke-static {v9}, Lorg/apache/log4j/xml/DOMConfigurator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    sput-object v9, Lorg/apache/log4j/xml/DOMConfigurator;->class$org$apache$log4j$spi$Filter:Ljava/lang/Class;

    :goto_16
    const/4 v10, 0x0

    invoke-static {v1, v9, v10}, Lorg/apache/log4j/helpers/OptionConverter;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/log4j/spi/Filter;

    .line 282
    .local v4, filter:Lorg/apache/log4j/spi/Filter;
    if-eqz v4, :cond_63

    .line 283
    new-instance v7, Lorg/apache/log4j/config/PropertySetter;

    invoke-direct {v7, v4}, Lorg/apache/log4j/config/PropertySetter;-><init>(Ljava/lang/Object;)V

    .line 284
    .local v7, propSetter:Lorg/apache/log4j/config/PropertySetter;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 285
    .local v0, children:Lorg/w3c/dom/NodeList;
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    .line 287
    .local v5, length:I
    const/4 v6, 0x0

    .local v6, loop:I
    :goto_2d
    if-lt v6, v5, :cond_67

    .line 297
    invoke-virtual {v7}, Lorg/apache/log4j/config/PropertySetter;->activate()V

    .line 298
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Adding filter of type ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "] to appender named ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-interface {p2}, Lorg/apache/log4j/Appender;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "]."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 300
    invoke-interface {p2, v4}, Lorg/apache/log4j/Appender;->addFilter(Lorg/apache/log4j/spi/Filter;)V

    .line 302
    .end local v0           #children:Lorg/w3c/dom/NodeList;
    .end local v5           #length:I
    .end local v6           #loop:I
    .end local v7           #propSetter:Lorg/apache/log4j/config/PropertySetter;
    :cond_63
    return-void

    .line 279
    .end local v4           #filter:Lorg/apache/log4j/spi/Filter;
    :cond_64
    sget-object v9, Lorg/apache/log4j/xml/DOMConfigurator;->class$org$apache$log4j$spi$Filter:Ljava/lang/Class;

    goto :goto_16

    .line 288
    .restart local v0       #children:Lorg/w3c/dom/NodeList;
    .restart local v4       #filter:Lorg/apache/log4j/spi/Filter;
    .restart local v5       #length:I
    .restart local v6       #loop:I
    .restart local v7       #propSetter:Lorg/apache/log4j/config/PropertySetter;
    :cond_67
    invoke-interface {v0, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 289
    .local v3, currentNode:Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_84

    move-object v2, v3

    .line 290
    check-cast v2, Lorg/w3c/dom/Element;

    .line 291
    .local v2, currentElement:Lorg/w3c/dom/Element;
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v8

    .line 292
    .local v8, tagName:Ljava/lang/String;
    const-string v9, "param"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_84

    .line 293
    invoke-virtual {p0, v2, v7}, Lorg/apache/log4j/xml/DOMConfigurator;->setParameter(Lorg/w3c/dom/Element;Lorg/apache/log4j/config/PropertySetter;)V

    .line 287
    .end local v2           #currentElement:Lorg/w3c/dom/Element;
    .end local v8           #tagName:Ljava/lang/String;
    :cond_84
    add-int/lit8 v6, v6, 0x1

    goto :goto_2d
.end method

.method protected parseLayout(Lorg/w3c/dom/Element;)Lorg/apache/log4j/Layout;
    .registers 16
    .parameter "layout_element"

    .prologue
    .line 452
    const-string v12, "class"

    invoke-interface {p1, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 453
    .local v1, className:Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "Parsing layout of class: \""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 455
    :try_start_26
    invoke-static {v1}, Lorg/apache/log4j/helpers/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .line 456
    .local v4, instance:Ljava/lang/Object;
    move-object v0, v4

    check-cast v0, Lorg/apache/log4j/Layout;

    move-object v5, v0

    .line 457
    .local v5, layout:Lorg/apache/log4j/Layout;
    new-instance v10, Lorg/apache/log4j/config/PropertySetter;

    invoke-direct {v10, v5}, Lorg/apache/log4j/config/PropertySetter;-><init>(Ljava/lang/Object;)V

    .line 459
    .local v10, propSetter:Lorg/apache/log4j/config/PropertySetter;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 460
    .local v9, params:Lorg/w3c/dom/NodeList;
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    .line 462
    .local v6, length:I
    const/4 v7, 0x0

    .local v7, loop:I
    :goto_40
    if-lt v7, v6, :cond_46

    .line 473
    invoke-virtual {v10}, Lorg/apache/log4j/config/PropertySetter;->activate()V

    .line 479
    .end local v4           #instance:Ljava/lang/Object;
    .end local v5           #layout:Lorg/apache/log4j/Layout;
    .end local v6           #length:I
    .end local v7           #loop:I
    .end local v9           #params:Lorg/w3c/dom/NodeList;
    .end local v10           #propSetter:Lorg/apache/log4j/config/PropertySetter;
    :goto_45
    return-object v5

    .line 463
    .restart local v4       #instance:Ljava/lang/Object;
    .restart local v5       #layout:Lorg/apache/log4j/Layout;
    .restart local v6       #length:I
    .restart local v7       #loop:I
    .restart local v9       #params:Lorg/w3c/dom/NodeList;
    .restart local v10       #propSetter:Lorg/apache/log4j/config/PropertySetter;
    :cond_46
    invoke-interface {v9, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 464
    .local v3, currentNode:Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_64

    .line 465
    move-object v0, v3

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v2, v0

    .line 466
    .local v2, currentElement:Lorg/w3c/dom/Element;
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v11

    .line 467
    .local v11, tagName:Ljava/lang/String;
    const-string v12, "param"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_64

    .line 468
    invoke-virtual {p0, v2, v10}, Lorg/apache/log4j/xml/DOMConfigurator;->setParameter(Lorg/w3c/dom/Element;Lorg/apache/log4j/config/PropertySetter;)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_64} :catch_67

    .line 462
    .end local v2           #currentElement:Lorg/w3c/dom/Element;
    .end local v11           #tagName:Ljava/lang/String;
    :cond_64
    add-int/lit8 v7, v7, 0x1

    goto :goto_40

    .line 477
    .end local v3           #currentNode:Lorg/w3c/dom/Node;
    .end local v4           #instance:Ljava/lang/Object;
    .end local v5           #layout:Lorg/apache/log4j/Layout;
    .end local v6           #length:I
    .end local v7           #loop:I
    .end local v9           #params:Lorg/w3c/dom/NodeList;
    .end local v10           #propSetter:Lorg/apache/log4j/config/PropertySetter;
    :catch_67
    move-exception v8

    .local v8, oops:Ljava/lang/Exception;
    const-string v12, "Could not create the Layout. Reported error follows."

    invoke-static {v12, v8}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 479
    const/4 v5, 0x0

    goto :goto_45
.end method

.method protected parseLevel(Lorg/w3c/dom/Element;Lorg/apache/log4j/Logger;Z)V
    .registers 14
    .parameter "element"
    .parameter "logger"
    .parameter "isRoot"

    .prologue
    const/4 v9, 0x0

    .line 498
    invoke-virtual {p2}, Lorg/apache/log4j/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, catName:Ljava/lang/String;
    if-eqz p3, :cond_9

    .line 500
    const-string v0, "root"

    .line 503
    :cond_9
    const-string v7, "value"

    invoke-interface {p1, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 504
    .local v5, priStr:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Level value for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " is  ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "]."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 506
    const-string v7, "inherited"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_49

    const-string v7, "null"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_73

    .line 507
    :cond_49
    if-eqz p3, :cond_6f

    .line 508
    const-string v7, "Root level cannot be inherited. Ignoring directive."

    invoke-static {v7}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 532
    :goto_50
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " level set to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {p2}, Lorg/apache/log4j/Logger;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 533
    :goto_6e
    return-void

    .line 510
    :cond_6f
    invoke-virtual {p2, v9}, Lorg/apache/log4j/Logger;->setLevel(Lorg/apache/log4j/Level;)V

    goto :goto_50

    .line 513
    :cond_73
    const-string v7, "class"

    invoke-interface {p1, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 514
    .local v1, className:Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8f

    .line 515
    sget-object v7, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {v5, v7}, Lorg/apache/log4j/helpers/OptionConverter;->toLevel(Ljava/lang/String;Lorg/apache/log4j/Level;)Lorg/apache/log4j/Level;

    move-result-object v7

    invoke-virtual {p2, v7}, Lorg/apache/log4j/Logger;->setLevel(Lorg/apache/log4j/Level;)V

    goto :goto_50

    .line 517
    :cond_8f
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Desired Level sub-class: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 519
    :try_start_ab
    invoke-static {v1}, Lorg/apache/log4j/helpers/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 520
    .local v2, clazz:Ljava/lang/Class;
    const-string v7, "toLevel"

    sget-object v8, Lorg/apache/log4j/xml/DOMConfigurator;->ONE_STRING_PARAM:[Ljava/lang/Class;

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 522
    .local v6, toLevelMethod:Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/log4j/Level;

    .line 524
    .local v4, pri:Lorg/apache/log4j/Level;
    invoke-virtual {p2, v4}, Lorg/apache/log4j/Logger;->setLevel(Lorg/apache/log4j/Level;)V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_c7} :catch_c8

    goto :goto_50

    .line 526
    .end local v2           #clazz:Ljava/lang/Class;
    .end local v4           #pri:Lorg/apache/log4j/Level;
    .end local v6           #toLevelMethod:Ljava/lang/reflect/Method;
    :catch_c8
    move-exception v3

    .local v3, oops:Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Could not create level ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "]. Reported error follows."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6e
.end method

.method protected parseRenderer(Lorg/w3c/dom/Element;)V
    .registers 5
    .parameter "element"

    .prologue
    .line 485
    const-string v2, "renderingClass"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 486
    .local v1, renderingClass:Ljava/lang/String;
    const-string v2, "renderedClass"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, renderedClass:Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    instance-of v2, v2, Lorg/apache/log4j/spi/RendererSupport;

    if-eqz v2, :cond_21

    .line 488
    iget-object v2, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    check-cast v2, Lorg/apache/log4j/spi/RendererSupport;

    invoke-static {v2, v0, v1}, Lorg/apache/log4j/or/RendererMap;->addRenderer(Lorg/apache/log4j/spi/RendererSupport;Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    :cond_21
    return-void
.end method

.method protected parseRoot(Lorg/w3c/dom/Element;)V
    .registers 4
    .parameter "rootElement"

    .prologue
    .line 391
    iget-object v1, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    invoke-interface {v1}, Lorg/apache/log4j/spi/LoggerRepository;->getRootLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    .line 393
    .local v0, root:Lorg/apache/log4j/Logger;
    monitor-enter v0

    .line 394
    const/4 v1, 0x1

    :try_start_8
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->parseChildrenOfLoggerElement(Lorg/w3c/dom/Element;Lorg/apache/log4j/Logger;Z)V

    .line 395
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_d

    .line 396
    return-void

    .line 395
    :catchall_d
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected setParameter(Lorg/w3c/dom/Element;Lorg/apache/log4j/config/PropertySetter;)V
    .registers 6
    .parameter "elem"
    .parameter "propSetter"

    .prologue
    .line 537
    const-string v2, "name"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, name:Ljava/lang/String;
    const-string v2, "value"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 539
    .local v1, value:Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/log4j/helpers/OptionConverter;->convertSpecialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 540
    invoke-virtual {p2, v0, v1}, Lorg/apache/log4j/config/PropertySetter;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    return-void
.end method

.method protected subst(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "value"

    .prologue
    .line 841
    :try_start_0
    iget-object v1, p0, Lorg/apache/log4j/xml/DOMConfigurator;->props:Ljava/util/Properties;

    invoke-static {p1, v1}, Lorg/apache/log4j/helpers/OptionConverter;->substVars(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object p1

    .line 844
    .end local p1
    :goto_6
    return-object p1

    .line 843
    .restart local p1
    :catch_7
    move-exception v0

    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "Could not perform variable substitution."

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method
