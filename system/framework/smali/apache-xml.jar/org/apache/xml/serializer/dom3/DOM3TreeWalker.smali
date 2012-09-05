.class final Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;
.super Ljava/lang/Object;
.source "DOM3TreeWalker.java"


# static fields
.field private static final CANONICAL:I = 0x1

.field private static final CDATA:I = 0x2

.field private static final CHARNORMALIZE:I = 0x4

.field private static final COMMENTS:I = 0x8

.field private static final DISCARDDEFAULT:I = 0x8000

.field private static final DTNORMALIZE:I = 0x10

.field private static final ELEM_CONTENT_WHITESPACE:I = 0x20

.field private static final ENTITIES:I = 0x40

.field private static final IGNORE_CHAR_DENORMALIZE:I = 0x20000

.field private static final INFOSET:I = 0x80

.field private static final NAMESPACEDECLS:I = 0x200

.field private static final NAMESPACES:I = 0x100

.field private static final NORMALIZECHARS:I = 0x400

.field private static final PRETTY_PRINT:I = 0x10000

.field private static final SCHEMAVALIDATE:I = 0x2000

.field private static final SPLITCDATA:I = 0x800

.field private static final VALIDATE:I = 0x1000

.field private static final WELLFORMED:I = 0x4000

.field private static final XMLDECL:I = 0x40000

.field private static final XMLNS_PREFIX:Ljava/lang/String; = "xmlns"

.field private static final XMLNS_URI:Ljava/lang/String; = "http://www.w3.org/2000/xmlns/"

.field private static final XML_PREFIX:Ljava/lang/String; = "xml"

.field private static final XML_URI:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"

.field private static final s_propKeys:Ljava/util/Hashtable;


# instance fields
.field private fDOMConfigProperties:Ljava/util/Properties;

.field private fElementDepth:I

.field private fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

.field private fFeatures:I

.field private fFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

.field private fInEntityRef:Z

.field private fIsLevel3DOM:Z

.field private fIsXMLVersion11:Z

.field private fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

.field protected fLocalNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

.field private fLocator:Lorg/xml/sax/helpers/LocatorImpl;

.field protected fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

.field private fNewLine:Ljava/lang/String;

.field fNextIsRaw:Z

.field private fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

.field private fWhatToShowFilter:I

.field private fXMLVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .prologue
    .line 1956
    new-instance v10, Ljava/util/Hashtable;

    invoke-direct {v10}, Ljava/util/Hashtable;-><init>()V

    sput-object v10, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    .line 1964
    const/4 v0, 0x2

    .line 1965
    .local v0, i:I
    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 1966
    .local v9, val:Ljava/lang/Integer;
    sget-object v10, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    const-string v11, "{http://www.w3.org/TR/DOM-Level-3-LS}cdata-sections"

    invoke-virtual {v10, v11, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1971
    const/16 v1, 0x8

    .line 1972
    .local v1, i1:I
    new-instance v9, Ljava/lang/Integer;

    .end local v9           #val:Ljava/lang/Integer;
    invoke-direct {v9, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 1973
    .restart local v9       #val:Ljava/lang/Integer;
    sget-object v10, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    const-string v11, "{http://www.w3.org/TR/DOM-Level-3-LS}comments"

    invoke-virtual {v10, v11, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1978
    const/16 v2, 0x20

    .line 1979
    .local v2, i2:I
    new-instance v9, Ljava/lang/Integer;

    .end local v9           #val:Ljava/lang/Integer;
    invoke-direct {v9, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 1980
    .restart local v9       #val:Ljava/lang/Integer;
    sget-object v10, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    const-string v11, "{http://www.w3.org/TR/DOM-Level-3-LS}element-content-whitespace"

    invoke-virtual {v10, v11, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1984
    const/16 v3, 0x40

    .line 1987
    .local v3, i3:I
    new-instance v9, Ljava/lang/Integer;

    .end local v9           #val:Ljava/lang/Integer;
    invoke-direct {v9, v3}, Ljava/lang/Integer;-><init>(I)V

    .line 1988
    .restart local v9       #val:Ljava/lang/Integer;
    sget-object v10, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    const-string v11, "{http://www.w3.org/TR/DOM-Level-3-LS}entities"

    invoke-virtual {v10, v11, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1993
    const/16 v4, 0x100

    .line 1994
    .local v4, i4:I
    new-instance v9, Ljava/lang/Integer;

    .end local v9           #val:Ljava/lang/Integer;
    invoke-direct {v9, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 1995
    .restart local v9       #val:Ljava/lang/Integer;
    sget-object v10, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    const-string v11, "{http://www.w3.org/TR/DOM-Level-3-LS}namespaces"

    invoke-virtual {v10, v11, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2000
    const/16 v5, 0x200

    .line 2001
    .local v5, i5:I
    new-instance v9, Ljava/lang/Integer;

    .end local v9           #val:Ljava/lang/Integer;
    invoke-direct {v9, v5}, Ljava/lang/Integer;-><init>(I)V

    .line 2002
    .restart local v9       #val:Ljava/lang/Integer;
    sget-object v10, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    const-string v11, "{http://www.w3.org/TR/DOM-Level-3-LS}namespace-declarations"

    invoke-virtual {v10, v11, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2008
    const/16 v6, 0x800

    .line 2009
    .local v6, i6:I
    new-instance v9, Ljava/lang/Integer;

    .end local v9           #val:Ljava/lang/Integer;
    invoke-direct {v9, v6}, Ljava/lang/Integer;-><init>(I)V

    .line 2010
    .restart local v9       #val:Ljava/lang/Integer;
    sget-object v10, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    const-string v11, "{http://www.w3.org/TR/DOM-Level-3-LS}split-cdata-sections"

    invoke-virtual {v10, v11, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2015
    const/16 v7, 0x4000

    .line 2016
    .local v7, i7:I
    new-instance v9, Ljava/lang/Integer;

    .end local v9           #val:Ljava/lang/Integer;
    invoke-direct {v9, v7}, Ljava/lang/Integer;-><init>(I)V

    .line 2017
    .restart local v9       #val:Ljava/lang/Integer;
    sget-object v10, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    const-string v11, "{http://www.w3.org/TR/DOM-Level-3-LS}well-formed"

    invoke-virtual {v10, v11, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2022
    const v8, 0x8000

    .line 2023
    .local v8, i8:I
    new-instance v9, Ljava/lang/Integer;

    .end local v9           #val:Ljava/lang/Integer;
    invoke-direct {v9, v8}, Ljava/lang/Integer;-><init>(I)V

    .line 2024
    .restart local v9       #val:Ljava/lang/Integer;
    sget-object v10, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    const-string v11, "{http://www.w3.org/TR/DOM-Level-3-LS}discard-default-content"

    invoke-virtual {v10, v11, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2031
    sget-object v10, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    const-string v11, "{http://www.w3.org/TR/DOM-Level-3-LS}format-pretty-print"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2035
    sget-object v10, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    const-string v11, "omit-xml-declaration"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2036
    sget-object v10, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    const-string v11, "{http://xml.apache.org/xerces-2j}xml-version"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2039
    sget-object v10, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    const-string v11, "encoding"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2040
    sget-object v10, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    const-string v11, "{http://xml.apache.org/xerces-2j}entities"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2041
    return-void
.end method

.method constructor <init>(Lorg/apache/xml/serializer/SerializationHandler;Lorg/w3c/dom/DOMErrorHandler;Lorg/w3c/dom/ls/LSSerializerFilter;Ljava/lang/String;)V
    .registers 8
    .parameter "serialHandler"
    .parameter "errHandler"
    .parameter "filter"
    .parameter "newLine"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 208
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    .line 80
    new-instance v0, Lorg/xml/sax/helpers/LocatorImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocator:Lorg/xml/sax/helpers/LocatorImpl;

    .line 83
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    .line 86
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    .line 89
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 94
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNewLine:Ljava/lang/String;

    .line 97
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fDOMConfigProperties:Ljava/util/Properties;

    .line 100
    iput-boolean v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fInEntityRef:Z

    .line 103
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fXMLVersion:Ljava/lang/String;

    .line 106
    iput-boolean v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsXMLVersion11:Z

    .line 109
    iput-boolean v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsLevel3DOM:Z

    .line 112
    iput v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    .line 115
    iput-boolean v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNextIsRaw:Z

    .line 136
    iput v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fElementDepth:I

    .line 209
    iput-object p1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    .line 211
    iput-object p2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    .line 212
    iput-object p3, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    .line 213
    iput-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 214
    iput-object p4, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNewLine:Ljava/lang/String;

    .line 216
    new-instance v0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-direct {v0}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    .line 217
    new-instance v0, Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-direct {v0}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;-><init>()V

    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocalNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    .line 219
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/apache/xml/serializer/SerializationHandler;->getOutputFormat()Ljava/util/Properties;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fDOMConfigProperties:Ljava/util/Properties;

    .line 220
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-interface {v0, v1}, Lorg/apache/xml/serializer/SerializationHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 221
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fDOMConfigProperties:Ljava/util/Properties;

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->initProperties(Ljava/util/Properties;)V

    .line 225
    :try_start_52
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocator:Lorg/xml/sax/helpers/LocatorImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user.dir"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dummy.xsl"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V
    :try_end_76
    .catch Ljava/lang/SecurityException; {:try_start_52 .. :try_end_76} :catch_77

    .line 230
    :goto_76
    return-void

    .line 227
    :catch_77
    move-exception v0

    goto :goto_76
.end method

.method private final dispatachChars(Lorg/w3c/dom/Node;)V
    .registers 7
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 380
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    if-eqz v1, :cond_a

    .line 381
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v1, p1}, Lorg/apache/xml/serializer/SerializationHandler;->characters(Lorg/w3c/dom/Node;)V

    .line 386
    .end local p1
    :goto_9
    return-void

    .line 383
    .restart local p1
    :cond_a
    check-cast p1, Lorg/w3c/dom/Text;

    .end local p1
    invoke-interface {p1}, Lorg/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, data:Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lorg/apache/xml/serializer/SerializationHandler;->characters([CII)V

    goto :goto_9
.end method


# virtual methods
.method protected applyFilter(Lorg/w3c/dom/Node;I)Z
    .registers 5
    .parameter "node"
    .parameter "nodeType"

    .prologue
    .line 477
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    if-eqz v1, :cond_12

    iget v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fWhatToShowFilter:I

    and-int/2addr v1, p2

    if-eqz v1, :cond_12

    .line 479
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v1, p1}, Lorg/w3c/dom/ls/LSSerializerFilter;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result v0

    .line 480
    .local v0, code:S
    packed-switch v0, :pswitch_data_16

    .line 487
    .end local v0           #code:S
    :cond_12
    const/4 v1, 0x1

    :goto_13
    return v1

    .line 483
    .restart local v0       #code:S
    :pswitch_14
    const/4 v1, 0x0

    goto :goto_13

    .line 480
    :pswitch_data_16
    .packed-switch 0x2
        :pswitch_14
        :pswitch_14
    .end packed-switch
.end method

.method protected checkUnboundPrefixInEntRef(Lorg/w3c/dom/Node;)V
    .registers 16
    .parameter "node"

    .prologue
    .line 1751
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v9

    .local v9, child:Lorg/w3c/dom/Node;
    :goto_4
    if-eqz v9, :cond_af

    .line 1752
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v11

    .line 1754
    .local v11, next:Lorg/w3c/dom/Node;
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a3

    .line 1758
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v12

    .line 1759
    .local v12, prefix:Ljava/lang/String;
    if-eqz v12, :cond_4f

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {v0, v12}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4f

    .line 1761
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v1, "unbound-prefix-in-entity-reference"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v12, v3, v4

    invoke-virtual {v0, v1, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1769
    .local v2, msg:Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_4f

    .line 1770
    iget-object v13, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v1, 0x3

    const-string v3, "unbound-prefix-in-entity-reference"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {v13, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    .line 1781
    .end local v2           #msg:Ljava/lang/String;
    :cond_4f
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    .line 1783
    .local v8, attrs:Lorg/w3c/dom/NamedNodeMap;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_54
    invoke-interface {v8}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    if-ge v10, v0, :cond_a3

    .line 1784
    invoke-interface {v8, v10}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v7

    .line 1785
    .local v7, attrPrefix:Ljava/lang/String;
    if-eqz v7, :cond_a0

    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {v0, v7}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a0

    .line 1787
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v1, "unbound-prefix-in-entity-reference"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-interface {v8, v10}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1795
    .restart local v2       #msg:Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_a0

    .line 1796
    iget-object v13, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v1, 0x3

    const-string v3, "unbound-prefix-in-entity-reference"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {v13, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    .line 1783
    .end local v2           #msg:Ljava/lang/String;
    :cond_a0
    add-int/lit8 v10, v10, 0x1

    goto :goto_54

    .line 1809
    .end local v7           #attrPrefix:Ljava/lang/String;
    .end local v8           #attrs:Lorg/w3c/dom/NamedNodeMap;
    .end local v10           #i:I
    .end local v12           #prefix:Ljava/lang/String;
    :cond_a3
    invoke-interface {v9}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 1810
    invoke-virtual {p0, v9}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->checkUnboundPrefixInEntRef(Lorg/w3c/dom/Node;)V

    .line 1751
    :cond_ac
    move-object v9, v11

    goto/16 :goto_4

    .line 1813
    .end local v11           #next:Lorg/w3c/dom/Node;
    :cond_af
    return-void
.end method

.method protected endNode(Lorg/w3c/dom/Node;)V
    .registers 4
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 448
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    packed-switch v0, :pswitch_data_1c

    .line 464
    .end local p1
    :goto_8
    :pswitch_8
    return-void

    .line 452
    .restart local p1
    :pswitch_9
    check-cast p1, Lorg/w3c/dom/DocumentType;

    .end local p1
    invoke-virtual {p0, p1, v1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->serializeDocType(Lorg/w3c/dom/DocumentType;Z)V

    goto :goto_8

    .line 455
    .restart local p1
    :pswitch_f
    check-cast p1, Lorg/w3c/dom/Element;

    .end local p1
    invoke-virtual {p0, p1, v1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->serializeElement(Lorg/w3c/dom/Element;Z)V

    goto :goto_8

    .line 460
    .restart local p1
    :pswitch_15
    check-cast p1, Lorg/w3c/dom/EntityReference;

    .end local p1
    invoke-virtual {p0, p1, v1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->serializeEntityReference(Lorg/w3c/dom/EntityReference;Z)V

    goto :goto_8

    .line 448
    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_f
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_15
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected fixupElementNS(Lorg/w3c/dom/Node;)V
    .registers 14
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1887
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v9

    .local v9, namespaceURI:Ljava/lang/String;
    move-object v0, p1

    .line 1888
    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getPrefix()Ljava/lang/String;

    move-result-object v10

    .local v10, prefix:Ljava/lang/String;
    move-object v0, p1

    .line 1889
    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v8

    .line 1891
    .local v8, localName:Ljava/lang/String;
    if-eqz v9, :cond_70

    .line 1894
    if-nez v10, :cond_1c

    const-string v10, ""

    .line 1895
    :cond_1c
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {v0, v10}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1897
    .local v7, inScopeNamespaceURI:Ljava/lang/String;
    if-eqz v7, :cond_2b

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1949
    .end local v7           #inScopeNamespaceURI:Ljava/lang/String;
    .end local p1
    :cond_2a
    :goto_2a
    return-void

    .line 1909
    .restart local v7       #inScopeNamespaceURI:Ljava/lang/String;
    .restart local p1
    :cond_2b
    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_4a

    .line 1910
    const-string v0, ""

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    const-string v0, ""

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1911
    :cond_41
    check-cast p1, Lorg/w3c/dom/Element;

    .end local p1
    const-string v0, "http://www.w3.org/2000/xmlns/"

    const-string v1, "xmlns"

    invoke-interface {p1, v0, v1, v9}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1916
    :cond_4a
    :goto_4a
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocalNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {v0, v10, v9}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1917
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {v0, v10, v9}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2a

    .line 1913
    .restart local p1
    :cond_55
    check-cast p1, Lorg/w3c/dom/Element;

    .end local p1
    const-string v0, "http://www.w3.org/2000/xmlns/"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "xmlns:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1, v9}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a

    .line 1923
    .end local v7           #inScopeNamespaceURI:Ljava/lang/String;
    .restart local p1
    :cond_70
    if-eqz v8, :cond_7a

    const-string v0, ""

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 1925
    :cond_7a
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v1, "ER_NULL_LOCAL_ELEMENT_NAME"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {v0, v1, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1930
    .local v2, msg:Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_2a

    .line 1931
    iget-object v11, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v1, 0x2

    const-string v3, "ER_NULL_LOCAL_ELEMENT_NAME"

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {v11, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    goto :goto_2a

    .line 1941
    .end local v2           #msg:Ljava/lang/String;
    :cond_a0
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1942
    if-eqz v9, :cond_2a

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2a

    .line 1943
    check-cast p1, Lorg/w3c/dom/Element;

    .end local p1
    const-string v0, "http://www.w3.org/2000/xmlns/"

    const-string v1, "xmlns"

    const-string v3, ""

    invoke-interface {p1, v0, v1, v3}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1944
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocalNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    const-string v1, ""

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1945
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    const-string v1, ""

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2a
.end method

.method protected initProperties(Ljava/util/Properties;)V
    .registers 12
    .parameter "properties"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2051
    invoke-virtual {p1}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v4

    .local v4, keys:Ljava/util/Enumeration;
    :cond_6
    :goto_6
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_e1

    .line 2053
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2064
    .local v3, key:Ljava/lang/String;
    sget-object v6, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->s_propKeys:Ljava/util/Hashtable;

    invoke-virtual {v6, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 2065
    .local v2, iobj:Ljava/lang/Object;
    if-eqz v2, :cond_6

    .line 2066
    instance-of v6, v2, Ljava/lang/Integer;

    if-eqz v6, :cond_3e

    .line 2079
    check-cast v2, Ljava/lang/Integer;

    .end local v2           #iobj:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2080
    .local v0, BITFLAG:I
    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "yes"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 2081
    iget v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    or-int/2addr v6, v0

    iput v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    goto :goto_6

    .line 2083
    :cond_36
    iget v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    xor-int/lit8 v7, v0, -0x1

    and-int/2addr v6, v7

    iput v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    goto :goto_6

    .line 2089
    .end local v0           #BITFLAG:I
    .restart local v2       #iobj:Ljava/lang/Object;
    :cond_3e
    const-string v6, "{http://www.w3.org/TR/DOM-Level-3-LS}format-pretty-print"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_64

    .line 2093
    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "yes"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 2094
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v6, v8}, Lorg/apache/xml/serializer/SerializationHandler;->setIndent(Z)V

    .line 2095
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    const/4 v7, 0x3

    invoke-interface {v6, v7}, Lorg/apache/xml/serializer/SerializationHandler;->setIndentAmount(I)V

    goto :goto_6

    .line 2097
    :cond_5e
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v6, v9}, Lorg/apache/xml/serializer/SerializationHandler;->setIndent(Z)V

    goto :goto_6

    .line 2099
    :cond_64
    const-string v6, "omit-xml-declaration"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_84

    .line 2103
    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "yes"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7e

    .line 2104
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v6, v8}, Lorg/apache/xml/serializer/SerializationHandler;->setOmitXMLDeclaration(Z)V

    goto :goto_6

    .line 2106
    :cond_7e
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v6, v9}, Lorg/apache/xml/serializer/SerializationHandler;->setOmitXMLDeclaration(Z)V

    goto :goto_6

    .line 2108
    :cond_84
    const-string v6, "{http://xml.apache.org/xerces-2j}xml-version"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_aa

    .line 2114
    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2115
    .local v5, version:Ljava/lang/String;
    const-string v6, "1.1"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a1

    .line 2116
    iput-boolean v8, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsXMLVersion11:Z

    .line 2117
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v6, v5}, Lorg/apache/xml/serializer/SerializationHandler;->setVersion(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2119
    :cond_a1
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    const-string v7, "1.0"

    invoke-interface {v6, v7}, Lorg/apache/xml/serializer/SerializationHandler;->setVersion(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2121
    .end local v5           #version:Ljava/lang/String;
    :cond_aa
    const-string v6, "encoding"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bf

    .line 2124
    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2125
    .local v1, encoding:Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 2126
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v6, v1}, Lorg/apache/xml/serializer/SerializationHandler;->setEncoding(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2128
    .end local v1           #encoding:Ljava/lang/String;
    :cond_bf
    const-string v6, "{http://xml.apache.org/xerces-2j}entities"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2131
    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "yes"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_da

    .line 2132
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v6, v9}, Lorg/apache/xml/serializer/SerializationHandler;->setDTDEntityExpansion(Z)V

    goto/16 :goto_6

    .line 2135
    :cond_da
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v6, v8}, Lorg/apache/xml/serializer/SerializationHandler;->setDTDEntityExpansion(Z)V

    goto/16 :goto_6

    .line 2144
    .end local v2           #iobj:Ljava/lang/Object;
    .end local v3           #key:Ljava/lang/String;
    :cond_e1
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNewLine:Ljava/lang/String;

    if-eqz v6, :cond_ee

    .line 2145
    iget-object v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    const-string v7, "{http://xml.apache.org/xalan}line-separator"

    iget-object v8, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNewLine:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Lorg/apache/xml/serializer/SerializationHandler;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2147
    :cond_ee
    return-void
.end method

.method protected isAttributeWellFormed(Lorg/w3c/dom/Node;)V
    .registers 15
    .parameter "node"

    .prologue
    .line 1436
    const/4 v10, 0x0

    .line 1437
    .local v10, isNameWF:Z
    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_96

    .line 1438
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v3, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsXMLVersion11:Z

    invoke-virtual {p0, v0, v1, v3}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isValidQName(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    .line 1447
    :goto_15
    if-nez v10, :cond_42

    .line 1448
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v1, "wf-invalid-character-in-node-name"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Attr"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1453
    .local v2, msg:Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_42

    .line 1454
    iget-object v12, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v1, 0x3

    const-string v3, "wf-invalid-character-in-node-name"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {v12, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    .line 1467
    .end local v2           #msg:Ljava/lang/String;
    :cond_42
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    .line 1468
    .local v11, value:Ljava/lang/String;
    const/16 v0, 0x3c

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_82

    .line 1469
    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v3, "ER_WF_LT_IN_ATTVAL"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Attr;

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v1, v3, v4}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1476
    .restart local v2       #msg:Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_82

    .line 1477
    iget-object v12, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v1, 0x3

    const-string v3, "ER_WF_LT_IN_ATTVAL"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {v12, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    .line 1490
    .end local v2           #msg:Ljava/lang/String;
    :cond_82
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 1491
    .local v8, children:Lorg/w3c/dom/NodeList;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_87
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v9, v0, :cond_b6

    .line 1492
    invoke-interface {v8, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 1500
    .local v7, child:Lorg/w3c/dom/Node;
    if-nez v7, :cond_a2

    .line 1491
    .end local v7           #child:Lorg/w3c/dom/Node;
    :goto_93
    add-int/lit8 v9, v9, 0x1

    goto :goto_87

    .line 1444
    .end local v8           #children:Lorg/w3c/dom/NodeList;
    .end local v9           #i:I
    .end local v11           #value:Ljava/lang/String;
    :cond_96
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsXMLVersion11:Z

    invoke-virtual {p0, v0, v1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isXMLName(Ljava/lang/String;Z)Z

    move-result v10

    goto/16 :goto_15

    .line 1504
    .restart local v7       #child:Lorg/w3c/dom/Node;
    .restart local v8       #children:Lorg/w3c/dom/NodeList;
    .restart local v9       #i:I
    .restart local v11       #value:Ljava/lang/String;
    :cond_a2
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    packed-switch v0, :pswitch_data_b8

    :pswitch_a9
    goto :goto_93

    .line 1506
    :pswitch_aa
    check-cast v7, Lorg/w3c/dom/Text;

    .end local v7           #child:Lorg/w3c/dom/Node;
    invoke-virtual {p0, v7}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isTextWellFormed(Lorg/w3c/dom/Text;)V

    goto :goto_93

    .line 1509
    .restart local v7       #child:Lorg/w3c/dom/Node;
    :pswitch_b0
    check-cast v7, Lorg/w3c/dom/EntityReference;

    .end local v7           #child:Lorg/w3c/dom/Node;
    invoke-virtual {p0, v7}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isEntityReferneceWellFormed(Lorg/w3c/dom/EntityReference;)V

    goto :goto_93

    .line 1522
    :cond_b6
    return-void

    .line 1504
    nop

    :pswitch_data_b8
    .packed-switch 0x3
        :pswitch_aa
        :pswitch_a9
        :pswitch_b0
    .end packed-switch
.end method

.method protected isCDATASectionWellFormed(Lorg/w3c/dom/CDATASection;)V
    .registers 11
    .parameter "node"

    .prologue
    const/4 v4, 0x0

    .line 1583
    invoke-interface {p1}, Lorg/w3c/dom/CDATASection;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isWFXMLChar(Ljava/lang/String;)Ljava/lang/Character;

    move-result-object v7

    .line 1585
    .local v7, invalidChar:Ljava/lang/Character;
    if-eqz v7, :cond_38

    .line 1586
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v1, "ER_WF_INVALID_CHARACTER_IN_CDATA"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v7}, Ljava/lang/Character;->charValue()C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {v0, v1, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1591
    .local v2, msg:Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_38

    .line 1592
    iget-object v8, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v1, 0x3

    const-string v3, "wf-invalid-character"

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {v8, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    .line 1602
    .end local v2           #msg:Ljava/lang/String;
    :cond_38
    return-void
.end method

.method protected isCommentWellFormed(Ljava/lang/String;)V
    .registers 16
    .parameter "data"

    .prologue
    .line 1282
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 1388
    :cond_8
    :goto_8
    return-void

    .line 1286
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    .line 1287
    .local v9, dataarray:[C
    array-length v10, v9

    .line 1290
    .local v10, datalength:I
    iget-boolean v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsXMLVersion11:Z

    if-eqz v0, :cond_93

    .line 1292
    const/4 v11, 0x0

    .local v11, i:I
    move v12, v11

    .line 1293
    .end local v11           #i:I
    .local v12, i:I
    :cond_14
    :goto_14
    if-ge v12, v10, :cond_90

    .line 1294
    add-int/lit8 v11, v12, 0x1

    .end local v12           #i:I
    .restart local v11       #i:I
    aget-char v7, v9, v12

    .line 1295
    .local v7, c:C
    invoke-static {v7}, Lorg/apache/xml/serializer/utils/XML11Char;->isXML11Invalid(I)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 1297
    invoke-static {v7}, Lorg/apache/xml/serializer/utils/XMLChar;->isHighSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_3d

    if-ge v11, v10, :cond_3d

    .line 1298
    add-int/lit8 v12, v11, 0x1

    .end local v11           #i:I
    .restart local v12       #i:I
    aget-char v8, v9, v11

    .line 1299
    .local v8, c2:C
    invoke-static {v8}, Lorg/apache/xml/serializer/utils/XMLChar;->isLowSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-static {v7, v8}, Lorg/apache/xml/serializer/utils/XMLChar;->supplemental(CC)I

    move-result v0

    invoke-static {v0}, Lorg/apache/xml/serializer/utils/XMLChar;->isSupplemental(I)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_3c
    move v11, v12

    .line 1305
    .end local v8           #c2:C
    .end local v12           #i:I
    .restart local v11       #i:I
    :cond_3d
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v1, "ER_WF_INVALID_CHARACTER_IN_COMMENT"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Character;

    invoke-direct {v5, v7}, Ljava/lang/Character;-><init>(C)V

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1310
    .local v2, msg:Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_64

    .line 1311
    iget-object v13, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v1, 0x3

    const-string v3, "wf-invalid-character"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {v13, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    .end local v2           #msg:Ljava/lang/String;
    :cond_64
    :goto_64
    move v12, v11

    .line 1337
    .end local v11           #i:I
    .restart local v12       #i:I
    goto :goto_14

    .line 1320
    .end local v12           #i:I
    .restart local v11       #i:I
    :cond_66
    const/16 v0, 0x2d

    if-ne v7, v0, :cond_64

    if-ge v11, v10, :cond_64

    aget-char v0, v9, v11

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_64

    .line 1321
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v1, "ER_WF_DASH_IN_COMMENT"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1326
    .restart local v2       #msg:Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_64

    .line 1327
    iget-object v13, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v1, 0x3

    const-string v3, "wf-invalid-character"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {v13, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    goto :goto_64

    .end local v2           #msg:Ljava/lang/String;
    .end local v7           #c:C
    .end local v11           #i:I
    .restart local v12       #i:I
    :cond_90
    move v11, v12

    .line 1338
    .end local v12           #i:I
    .restart local v11       #i:I
    goto/16 :goto_8

    .line 1341
    .end local v11           #i:I
    :cond_93
    const/4 v11, 0x0

    .restart local v11       #i:I
    move v12, v11

    .line 1342
    .end local v11           #i:I
    .restart local v12       #i:I
    :cond_95
    :goto_95
    if-ge v12, v10, :cond_111

    .line 1343
    add-int/lit8 v11, v12, 0x1

    .end local v12           #i:I
    .restart local v11       #i:I
    aget-char v7, v9, v12

    .line 1344
    .restart local v7       #c:C
    invoke-static {v7}, Lorg/apache/xml/serializer/utils/XMLChar;->isInvalid(I)Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 1346
    invoke-static {v7}, Lorg/apache/xml/serializer/utils/XMLChar;->isHighSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_be

    if-ge v11, v10, :cond_be

    .line 1347
    add-int/lit8 v12, v11, 0x1

    .end local v11           #i:I
    .restart local v12       #i:I
    aget-char v8, v9, v11

    .line 1348
    .restart local v8       #c2:C
    invoke-static {v8}, Lorg/apache/xml/serializer/utils/XMLChar;->isLowSurrogate(I)Z

    move-result v0

    if-eqz v0, :cond_bd

    invoke-static {v7, v8}, Lorg/apache/xml/serializer/utils/XMLChar;->supplemental(CC)I

    move-result v0

    invoke-static {v0}, Lorg/apache/xml/serializer/utils/XMLChar;->isSupplemental(I)Z

    move-result v0

    if-nez v0, :cond_95

    :cond_bd
    move v11, v12

    .line 1354
    .end local v8           #c2:C
    .end local v12           #i:I
    .restart local v11       #i:I
    :cond_be
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v1, "ER_WF_INVALID_CHARACTER_IN_COMMENT"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Character;

    invoke-direct {v5, v7}, Ljava/lang/Character;-><init>(C)V

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1359
    .restart local v2       #msg:Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_e5

    .line 1360
    iget-object v13, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v1, 0x3

    const-string v3, "wf-invalid-character"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {v13, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    .end local v2           #msg:Ljava/lang/String;
    :cond_e5
    :goto_e5
    move v12, v11

    .line 1386
    .end local v11           #i:I
    .restart local v12       #i:I
    goto :goto_95

    .line 1369
    .end local v12           #i:I
    .restart local v11       #i:I
    :cond_e7
    const/16 v0, 0x2d

    if-ne v7, v0, :cond_e5

    if-ge v11, v10, :cond_e5

    aget-char v0, v9, v11

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_e5

    .line 1370
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v1, "ER_WF_DASH_IN_COMMENT"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1375
    .restart local v2       #msg:Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_e5

    .line 1376
    iget-object v13, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v1, 0x3

    const-string v3, "wf-invalid-character"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {v13, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    goto :goto_e5

    .end local v2           #msg:Ljava/lang/String;
    .end local v7           #c:C
    .end local v11           #i:I
    .restart local v12       #i:I
    :cond_111
    move v11, v12

    .end local v12           #i:I
    .restart local v11       #i:I
    goto/16 :goto_8
.end method

.method protected isElementWellFormed(Lorg/w3c/dom/Node;)V
    .registers 11
    .parameter "node"

    .prologue
    const/4 v4, 0x0

    .line 1398
    const/4 v7, 0x0

    .line 1399
    .local v7, isNameWF:Z
    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_43

    .line 1400
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v3, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsXMLVersion11:Z

    invoke-virtual {p0, v0, v1, v3}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isValidQName(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    .line 1409
    :goto_16
    if-nez v7, :cond_42

    .line 1410
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v1, "wf-invalid-character-in-node-name"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "Element"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {v0, v1, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1415
    .local v2, msg:Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_42

    .line 1416
    iget-object v8, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v1, 0x3

    const-string v3, "wf-invalid-character-in-node-name"

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {v8, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    .line 1426
    .end local v2           #msg:Ljava/lang/String;
    :cond_42
    return-void

    .line 1406
    :cond_43
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsXMLVersion11:Z

    invoke-virtual {p0, v0, v1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isXMLName(Ljava/lang/String;Z)Z

    move-result v7

    goto :goto_16
.end method

.method protected isEntityReferneceWellFormed(Lorg/w3c/dom/EntityReference;)V
    .registers 20
    .parameter "node"

    .prologue
    .line 1643
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsXMLVersion11:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isXMLName(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_43

    .line 1644
    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v2, "wf-invalid-character-in-node-name"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "EntityReference"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1649
    .local v3, msg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v1, :cond_43

    .line 1650
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object/from16 v17, v0

    new-instance v1, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v2, 0x3

    const-string v4, "wf-invalid-character-in-node-name"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    .line 1662
    .end local v3           #msg:Ljava/lang/String;
    :cond_43
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/EntityReference;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v16

    .line 1667
    .local v16, parent:Lorg/w3c/dom/Node;
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/EntityReference;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v8

    .line 1668
    .local v8, docType:Lorg/w3c/dom/DocumentType;
    if-eqz v8, :cond_138

    .line 1669
    invoke-interface {v8}, Lorg/w3c/dom/DocumentType;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v12

    .line 1670
    .local v12, entities:Lorg/w3c/dom/NamedNodeMap;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_56
    invoke-interface {v12}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    if-ge v13, v1, :cond_138

    .line 1671
    invoke-interface {v12, v13}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Entity;

    .line 1673
    .local v9, ent:Lorg/w3c/dom/Entity;
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_120

    const-string v14, ""

    .line 1675
    .local v14, nodeName:Ljava/lang/String;
    :goto_6a
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/EntityReference;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_126

    const-string v15, ""

    .line 1679
    .local v15, nodeNamespaceURI:Ljava/lang/String;
    :goto_72
    invoke-interface {v9}, Lorg/w3c/dom/Entity;->getNodeName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_12c

    const-string v10, ""

    .line 1681
    .local v10, entName:Ljava/lang/String;
    :goto_7a
    invoke-interface {v9}, Lorg/w3c/dom/Entity;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_132

    const-string v11, ""

    .line 1685
    .local v11, entNamespaceURI:Ljava/lang/String;
    :goto_82
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c9

    .line 1686
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c9

    .line 1689
    invoke-interface {v9}, Lorg/w3c/dom/Entity;->getNotationName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c9

    .line 1690
    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v2, "ER_WF_REF_TO_UNPARSED_ENT"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1695
    .restart local v3       #msg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v1, :cond_c9

    .line 1696
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object/from16 v17, v0

    new-instance v1, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v2, 0x3

    const-string v4, "ER_WF_REF_TO_UNPARSED_ENT"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    .line 1711
    .end local v3           #msg:Ljava/lang/String;
    :cond_c9
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_11c

    .line 1712
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11c

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11c

    .line 1715
    invoke-interface {v9}, Lorg/w3c/dom/Entity;->getPublicId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_ee

    invoke-interface {v9}, Lorg/w3c/dom/Entity;->getSystemId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_ee

    invoke-interface {v9}, Lorg/w3c/dom/Entity;->getNotationName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11c

    .line 1718
    :cond_ee
    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v2, "ER_WF_REF_TO_EXTERNAL_ENT"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1723
    .restart local v3       #msg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v1, :cond_11c

    .line 1724
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object/from16 v17, v0

    new-instance v1, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v2, 0x3

    const-string v4, "ER_WF_REF_TO_EXTERNAL_ENT"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    .line 1670
    .end local v3           #msg:Ljava/lang/String;
    :cond_11c
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_56

    .line 1673
    .end local v10           #entName:Ljava/lang/String;
    .end local v11           #entNamespaceURI:Ljava/lang/String;
    .end local v14           #nodeName:Ljava/lang/String;
    .end local v15           #nodeNamespaceURI:Ljava/lang/String;
    :cond_120
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_6a

    .line 1675
    .restart local v14       #nodeName:Ljava/lang/String;
    :cond_126
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/EntityReference;->getNamespaceURI()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_72

    .line 1679
    .restart local v15       #nodeNamespaceURI:Ljava/lang/String;
    :cond_12c
    invoke-interface {v9}, Lorg/w3c/dom/Entity;->getNodeName()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_7a

    .line 1681
    .restart local v10       #entName:Ljava/lang/String;
    :cond_132
    invoke-interface {v9}, Lorg/w3c/dom/Entity;->getNamespaceURI()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_82

    .line 1738
    .end local v9           #ent:Lorg/w3c/dom/Entity;
    .end local v10           #entName:Ljava/lang/String;
    .end local v12           #entities:Lorg/w3c/dom/NamedNodeMap;
    .end local v13           #i:I
    .end local v14           #nodeName:Ljava/lang/String;
    .end local v15           #nodeNamespaceURI:Ljava/lang/String;
    :cond_138
    return-void
.end method

.method protected isPIWellFormed(Lorg/w3c/dom/ProcessingInstruction;)V
    .registers 13
    .parameter "node"

    .prologue
    const/4 v1, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 1532
    invoke-interface {p1}, Lorg/w3c/dom/ProcessingInstruction;->getNodeName()Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsXMLVersion11:Z

    invoke-virtual {p0, v0, v3}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isXMLName(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_37

    .line 1533
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v3, "wf-invalid-character-in-node-name"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "ProcessingInstruction"

    aput-object v6, v5, v9

    invoke-interface {p1}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {v0, v3, v5}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1538
    .local v2, msg:Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_37

    .line 1539
    iget-object v8, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const-string v3, "wf-invalid-character-in-node-name"

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {v8, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    .line 1553
    .end local v2           #msg:Ljava/lang/String;
    :cond_37
    invoke-interface {p1}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isWFXMLChar(Ljava/lang/String;)Ljava/lang/Character;

    move-result-object v7

    .line 1554
    .local v7, invalidChar:Ljava/lang/Character;
    if-eqz v7, :cond_6b

    .line 1555
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v3, "ER_WF_INVALID_CHARACTER_IN_PI"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Character;->charValue()C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v0, v3, v5}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1560
    .restart local v2       #msg:Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_6b

    .line 1561
    iget-object v8, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const-string v3, "wf-invalid-character"

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {v8, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    .line 1571
    .end local v2           #msg:Ljava/lang/String;
    :cond_6b
    return-void
.end method

.method protected isTextWellFormed(Lorg/w3c/dom/Text;)V
    .registers 11
    .parameter "node"

    .prologue
    const/4 v4, 0x0

    .line 1612
    invoke-interface {p1}, Lorg/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isWFXMLChar(Ljava/lang/String;)Ljava/lang/Character;

    move-result-object v7

    .line 1613
    .local v7, invalidChar:Ljava/lang/Character;
    if-eqz v7, :cond_38

    .line 1614
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v1, "ER_WF_INVALID_CHARACTER_IN_TEXT"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v7}, Ljava/lang/Character;->charValue()C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {v0, v1, v3}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1619
    .local v2, msg:Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_38

    .line 1620
    iget-object v8, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v1, 0x3

    const-string v3, "wf-invalid-character"

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {v8, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    .line 1630
    .end local v2           #msg:Ljava/lang/String;
    :cond_38
    return-void
.end method

.method protected isValidQName(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 8
    .parameter "prefix"
    .parameter "local"
    .parameter "xml11Version"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1134
    if-nez p2, :cond_5

    .line 1148
    :goto_4
    return v2

    .line 1136
    :cond_5
    const/4 v0, 0x0

    .line 1138
    .local v0, validNCName:Z
    if-nez p3, :cond_1b

    .line 1139
    if-eqz p1, :cond_10

    invoke-static {p1}, Lorg/apache/xml/serializer/utils/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    :cond_10
    invoke-static {p2}, Lorg/apache/xml/serializer/utils/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    move v0, v1

    :goto_17
    move v2, v0

    .line 1148
    goto :goto_4

    :cond_19
    move v0, v2

    .line 1139
    goto :goto_17

    .line 1143
    :cond_1b
    if-eqz p1, :cond_23

    invoke-static {p1}, Lorg/apache/xml/serializer/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    :cond_23
    invoke-static {p2}, Lorg/apache/xml/serializer/utils/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    move v0, v1

    :goto_2a
    goto :goto_17

    :cond_2b
    move v0, v2

    goto :goto_2a
.end method

.method protected isWFXMLChar(Ljava/lang/String;)Ljava/lang/Character;
    .registers 10
    .parameter "chardata"

    .prologue
    const/4 v6, 0x0

    .line 1221
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_a

    .line 1272
    :cond_9
    :goto_9
    return-object v6

    .line 1225
    :cond_a
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 1226
    .local v2, dataarray:[C
    array-length v3, v2

    .line 1229
    .local v3, datalength:I
    iget-boolean v7, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsXMLVersion11:Z

    if-eqz v7, :cond_4a

    .line 1231
    const/4 v4, 0x0

    .local v4, i:I
    move v5, v4

    .line 1232
    .end local v4           #i:I
    .local v5, i:I
    :cond_15
    :goto_15
    if-ge v5, v3, :cond_48

    .line 1233
    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    aget-char v7, v2, v5

    invoke-static {v7}, Lorg/apache/xml/serializer/utils/XML11Char;->isXML11Invalid(I)Z

    move-result v7

    if-eqz v7, :cond_83

    .line 1235
    add-int/lit8 v7, v4, -0x1

    aget-char v0, v2, v7

    .line 1236
    .local v0, ch:C
    invoke-static {v0}, Lorg/apache/xml/serializer/utils/XMLChar;->isHighSurrogate(I)Z

    move-result v7

    if-eqz v7, :cond_42

    if-ge v4, v3, :cond_42

    .line 1237
    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    aget-char v1, v2, v4

    .line 1238
    .local v1, ch2:C
    invoke-static {v1}, Lorg/apache/xml/serializer/utils/XMLChar;->isLowSurrogate(I)Z

    move-result v7

    if-eqz v7, :cond_41

    invoke-static {v0, v1}, Lorg/apache/xml/serializer/utils/XMLChar;->supplemental(CC)I

    move-result v7

    invoke-static {v7}, Lorg/apache/xml/serializer/utils/XMLChar;->isSupplemental(I)Z

    move-result v7

    if-nez v7, :cond_15

    :cond_41
    move v4, v5

    .line 1245
    .end local v1           #ch2:C
    .end local v5           #i:I
    .restart local v4       #i:I
    :cond_42
    new-instance v6, Ljava/lang/Character;

    invoke-direct {v6, v0}, Ljava/lang/Character;-><init>(C)V

    .line 1246
    .local v6, refInvalidChar:Ljava/lang/Character;
    goto :goto_9

    .end local v0           #ch:C
    .end local v4           #i:I
    .end local v6           #refInvalidChar:Ljava/lang/Character;
    .restart local v5       #i:I
    :cond_48
    move v4, v5

    .line 1249
    .end local v5           #i:I
    .restart local v4       #i:I
    goto :goto_9

    .line 1252
    .end local v4           #i:I
    :cond_4a
    const/4 v4, 0x0

    .restart local v4       #i:I
    move v5, v4

    .line 1253
    .end local v4           #i:I
    .restart local v5       #i:I
    :cond_4c
    :goto_4c
    if-ge v5, v3, :cond_81

    .line 1254
    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    aget-char v7, v2, v5

    invoke-static {v7}, Lorg/apache/xml/serializer/utils/XMLChar;->isInvalid(I)Z

    move-result v7

    if-eqz v7, :cond_7f

    .line 1256
    add-int/lit8 v7, v4, -0x1

    aget-char v0, v2, v7

    .line 1257
    .restart local v0       #ch:C
    invoke-static {v0}, Lorg/apache/xml/serializer/utils/XMLChar;->isHighSurrogate(I)Z

    move-result v7

    if-eqz v7, :cond_79

    if-ge v4, v3, :cond_79

    .line 1258
    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    aget-char v1, v2, v4

    .line 1259
    .restart local v1       #ch2:C
    invoke-static {v1}, Lorg/apache/xml/serializer/utils/XMLChar;->isLowSurrogate(I)Z

    move-result v7

    if-eqz v7, :cond_78

    invoke-static {v0, v1}, Lorg/apache/xml/serializer/utils/XMLChar;->supplemental(CC)I

    move-result v7

    invoke-static {v7}, Lorg/apache/xml/serializer/utils/XMLChar;->isSupplemental(I)Z

    move-result v7

    if-nez v7, :cond_4c

    :cond_78
    move v4, v5

    .line 1266
    .end local v1           #ch2:C
    .end local v5           #i:I
    .restart local v4       #i:I
    :cond_79
    new-instance v6, Ljava/lang/Character;

    invoke-direct {v6, v0}, Ljava/lang/Character;-><init>(C)V

    .line 1267
    .restart local v6       #refInvalidChar:Ljava/lang/Character;
    goto :goto_9

    .end local v0           #ch:C
    .end local v6           #refInvalidChar:Ljava/lang/Character;
    :cond_7f
    move v5, v4

    .end local v4           #i:I
    .restart local v5       #i:I
    goto :goto_4c

    :cond_81
    move v4, v5

    .end local v5           #i:I
    .restart local v4       #i:I
    goto :goto_9

    :cond_83
    move v5, v4

    .end local v4           #i:I
    .restart local v5       #i:I
    goto :goto_15
.end method

.method protected isWFXMLChar(Ljava/lang/String;Ljava/lang/Character;)Z
    .registers 12
    .parameter "chardata"
    .parameter "refInvalidChar"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1158
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_c

    :cond_a
    move v6, v7

    .line 1209
    :goto_b
    return v6

    .line 1162
    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 1163
    .local v2, dataarray:[C
    array-length v3, v2

    .line 1166
    .local v3, datalength:I
    iget-boolean v8, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsXMLVersion11:Z

    if-eqz v8, :cond_4d

    .line 1168
    const/4 v4, 0x0

    .local v4, i:I
    move v5, v4

    .line 1169
    .end local v4           #i:I
    .local v5, i:I
    :cond_17
    :goto_17
    if-ge v5, v3, :cond_4a

    .line 1170
    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    aget-char v8, v2, v5

    invoke-static {v8}, Lorg/apache/xml/serializer/utils/XML11Char;->isXML11Invalid(I)Z

    move-result v8

    if-eqz v8, :cond_86

    .line 1172
    add-int/lit8 v8, v4, -0x1

    aget-char v0, v2, v8

    .line 1173
    .local v0, ch:C
    invoke-static {v0}, Lorg/apache/xml/serializer/utils/XMLChar;->isHighSurrogate(I)Z

    move-result v8

    if-eqz v8, :cond_44

    if-ge v4, v3, :cond_44

    .line 1174
    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    aget-char v1, v2, v4

    .line 1175
    .local v1, ch2:C
    invoke-static {v1}, Lorg/apache/xml/serializer/utils/XMLChar;->isLowSurrogate(I)Z

    move-result v8

    if-eqz v8, :cond_43

    invoke-static {v0, v1}, Lorg/apache/xml/serializer/utils/XMLChar;->supplemental(CC)I

    move-result v8

    invoke-static {v8}, Lorg/apache/xml/serializer/utils/XMLChar;->isSupplemental(I)Z

    move-result v8

    if-nez v8, :cond_17

    :cond_43
    move v4, v5

    .line 1182
    .end local v1           #ch2:C
    .end local v5           #i:I
    .restart local v4       #i:I
    :cond_44
    new-instance p2, Ljava/lang/Character;

    .end local p2
    invoke-direct {p2, v0}, Ljava/lang/Character;-><init>(C)V

    .line 1183
    .restart local p2
    goto :goto_b

    .end local v0           #ch:C
    .end local v4           #i:I
    .restart local v5       #i:I
    :cond_4a
    move v4, v5

    .end local v5           #i:I
    .restart local v4       #i:I
    :goto_4b
    move v6, v7

    .line 1209
    goto :goto_b

    .line 1189
    .end local v4           #i:I
    :cond_4d
    const/4 v4, 0x0

    .restart local v4       #i:I
    move v5, v4

    .line 1190
    .end local v4           #i:I
    .restart local v5       #i:I
    :cond_4f
    :goto_4f
    if-ge v5, v3, :cond_84

    .line 1191
    add-int/lit8 v4, v5, 0x1

    .end local v5           #i:I
    .restart local v4       #i:I
    aget-char v8, v2, v5

    invoke-static {v8}, Lorg/apache/xml/serializer/utils/XMLChar;->isInvalid(I)Z

    move-result v8

    if-eqz v8, :cond_82

    .line 1193
    add-int/lit8 v8, v4, -0x1

    aget-char v0, v2, v8

    .line 1194
    .restart local v0       #ch:C
    invoke-static {v0}, Lorg/apache/xml/serializer/utils/XMLChar;->isHighSurrogate(I)Z

    move-result v8

    if-eqz v8, :cond_7c

    if-ge v4, v3, :cond_7c

    .line 1195
    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .restart local v5       #i:I
    aget-char v1, v2, v4

    .line 1196
    .restart local v1       #ch2:C
    invoke-static {v1}, Lorg/apache/xml/serializer/utils/XMLChar;->isLowSurrogate(I)Z

    move-result v8

    if-eqz v8, :cond_7b

    invoke-static {v0, v1}, Lorg/apache/xml/serializer/utils/XMLChar;->supplemental(CC)I

    move-result v8

    invoke-static {v8}, Lorg/apache/xml/serializer/utils/XMLChar;->isSupplemental(I)Z

    move-result v8

    if-nez v8, :cond_4f

    :cond_7b
    move v4, v5

    .line 1203
    .end local v1           #ch2:C
    .end local v5           #i:I
    .restart local v4       #i:I
    :cond_7c
    new-instance p2, Ljava/lang/Character;

    .end local p2
    invoke-direct {p2, v0}, Ljava/lang/Character;-><init>(C)V

    .line 1204
    .restart local p2
    goto :goto_b

    .end local v0           #ch:C
    :cond_82
    move v5, v4

    .end local v4           #i:I
    .restart local v5       #i:I
    goto :goto_4f

    :cond_84
    move v4, v5

    .end local v5           #i:I
    .restart local v4       #i:I
    goto :goto_4b

    :cond_86
    move v5, v4

    .end local v4           #i:I
    .restart local v5       #i:I
    goto :goto_17
.end method

.method protected isXMLName(Ljava/lang/String;Z)Z
    .registers 4
    .parameter "s"
    .parameter "xml11Version"

    .prologue
    .line 1110
    if-nez p1, :cond_4

    .line 1111
    const/4 v0, 0x0

    .line 1116
    :goto_3
    return v0

    .line 1113
    :cond_4
    if-nez p2, :cond_b

    .line 1114
    invoke-static {p1}, Lorg/apache/xml/serializer/utils/XMLChar;->isValidName(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    .line 1116
    :cond_b
    invoke-static {p1}, Lorg/apache/xml/serializer/utils/XML11Char;->isXML11ValidName(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method protected recordLocalNSDecl(Lorg/w3c/dom/Node;)V
    .registers 19
    .parameter "node"

    .prologue
    .line 1824
    check-cast p1, Lorg/w3c/dom/Element;

    .end local p1
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v12

    .line 1825
    .local v12, atts:Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v12}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v14

    .line 1827
    .local v14, length:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_b
    if-ge v13, v14, :cond_9b

    .line 1828
    invoke-interface {v12, v13}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 1830
    .local v8, attr:Lorg/w3c/dom/Node;
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v15

    .line 1831
    .local v15, localName:Ljava/lang/String;
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v10

    .line 1832
    .local v10, attrPrefix:Ljava/lang/String;
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    .line 1833
    .local v11, attrValue:Ljava/lang/String;
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v9

    .line 1835
    .local v9, attrNS:Ljava/lang/String;
    if-eqz v15, :cond_2b

    const-string v1, "xmlns"

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    :cond_2b
    const-string v15, ""

    .line 1838
    :cond_2d
    if-nez v10, :cond_31

    const-string v10, ""

    .line 1839
    :cond_31
    if-nez v11, :cond_35

    const-string v11, ""

    .line 1840
    :cond_35
    if-nez v9, :cond_39

    const-string v9, ""

    .line 1843
    :cond_39
    const-string v1, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 1846
    const-string v1, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 1847
    sget-object v1, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v2, "ER_NS_PREFIX_CANNOT_BE_BOUND"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    const/4 v5, 0x1

    const-string v6, "http://www.w3.org/2000/xmlns/"

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1852
    .local v3, msg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v1, :cond_78

    .line 1853
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object/from16 v16, v0

    new-instance v1, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v2, 0x2

    const-string v4, "ER_NS_PREFIX_CANNOT_BE_BOUND"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    .line 1827
    .end local v3           #msg:Ljava/lang/String;
    :cond_78
    :goto_78
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    .line 1864
    :cond_7b
    const-string v1, "xmlns"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 1866
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_78

    .line 1867
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {v1, v15, v11}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_78

    .line 1873
    :cond_91
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    const-string v2, ""

    invoke-virtual {v1, v2, v11}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_78

    .line 1879
    .end local v8           #attr:Lorg/w3c/dom/Node;
    .end local v9           #attrNS:Ljava/lang/String;
    .end local v10           #attrPrefix:Ljava/lang/String;
    .end local v11           #attrValue:Ljava/lang/String;
    .end local v15           #localName:Ljava/lang/String;
    :cond_9b
    return-void
.end method

.method protected serializeAttList(Lorg/w3c/dom/Element;)V
    .registers 36
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 664
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v21

    .line 665
    .local v21, atts:Lorg/w3c/dom/NamedNodeMap;
    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v31

    .line 667
    .local v31, nAttrs:I
    const/16 v27, 0x0

    .local v27, i:I
    :goto_a
    move/from16 v0, v27

    move/from16 v1, v31

    if-ge v0, v1, :cond_2bd

    .line 668
    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    .line 670
    .local v19, attr:Lorg/w3c/dom/Node;
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v30

    .line 671
    .local v30, localName:Ljava/lang/String;
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v14

    .line 672
    .local v14, attrName:Ljava/lang/String;
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_17a

    const-string v4, ""

    .line 673
    .local v4, attrPrefix:Ljava/lang/String;
    :goto_28
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v16

    .line 676
    .local v16, attrValue:Ljava/lang/String;
    const/4 v15, 0x0

    .line 677
    .local v15, type:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsLevel3DOM:Z

    if-eqz v2, :cond_3f

    move-object/from16 v2, v19

    .line 678
    check-cast v2, Lorg/w3c/dom/Attr;

    invoke-interface {v2}, Lorg/w3c/dom/Attr;->getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/TypeInfo;->getTypeName()Ljava/lang/String;

    move-result-object v15

    .line 680
    :cond_3f
    if-nez v15, :cond_43

    const-string v15, "CDATA"

    .line 682
    :cond_43
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    .line 683
    .local v7, attrNS:Ljava/lang/String;
    if-eqz v7, :cond_2be

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2be

    .line 684
    const/4 v7, 0x0

    .line 686
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v20, v14

    .end local v14           #attrName:Ljava/lang/String;
    .local v20, attrName:Ljava/lang/String;
    :goto_56
    move-object/from16 v2, v19

    .line 689
    check-cast v2, Lorg/w3c/dom/Attr;

    invoke-interface {v2}, Lorg/w3c/dom/Attr;->getSpecified()Z

    move-result v29

    .line 690
    .local v29, isSpecified:Z
    const/16 v17, 0x1

    .line 691
    .local v17, addAttr:Z
    const/16 v18, 0x0

    .line 692
    .local v18, applyFilter:Z
    const-string v2, "xmlns"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_76

    const-string v2, "xmlns:"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_180

    :cond_76
    const/16 v33, 0x1

    .line 696
    .local v33, xmlnsAttr:Z
    :goto_78
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_87

    .line 697
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isAttributeWellFormed(Lorg/w3c/dom/Node;)V

    .line 705
    :cond_87
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_282

    if-nez v33, :cond_282

    .line 708
    if-eqz v7, :cond_25a

    .line 709
    if-nez v4, :cond_97

    const-string v4, ""

    .line 711
    :cond_97
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {v2, v7}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 712
    .local v26, declAttrPrefix:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {v2, v4}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 720
    .local v25, declAttrNS:Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c1

    const-string v2, ""

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c1

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_282

    .line 725
    :cond_c1
    if-eqz v26, :cond_188

    const-string v2, ""

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_188

    .line 728
    move-object/from16 v4, v26

    .line 730
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_184

    .line 731
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 805
    .end local v20           #attrName:Ljava/lang/String;
    .end local v25           #declAttrNS:Ljava/lang/String;
    .end local v26           #declAttrPrefix:Ljava/lang/String;
    .restart local v14       #attrName:Ljava/lang/String;
    :cond_f0
    :goto_f0
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    const v3, 0x8000

    and-int/2addr v2, v3

    if-eqz v2, :cond_fc

    if-nez v29, :cond_106

    :cond_fc
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    const v3, 0x8000

    and-int/2addr v2, v3

    if-nez v2, :cond_286

    .line 807
    :cond_106
    const/16 v18, 0x1

    .line 812
    :goto_108
    if-eqz v18, :cond_12b

    .line 815
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    if-eqz v2, :cond_12b

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v2}, Lorg/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_12b

    .line 819
    if-nez v33, :cond_12b

    .line 820
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    move-object/from16 v0, v19

    invoke-interface {v2, v0}, Lorg/w3c/dom/ls/LSSerializerFilter;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result v22

    .line 821
    .local v22, code:S
    packed-switch v22, :pswitch_data_2c2

    .line 833
    .end local v22           #code:S
    :cond_12b
    :goto_12b
    if-eqz v17, :cond_28e

    if-eqz v33, :cond_28e

    .line 835
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_14d

    .line 837
    if-eqz v30, :cond_14d

    const-string v2, ""

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14d

    .line 838
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    move-object v12, v7

    move-object/from16 v13, v30

    invoke-interface/range {v11 .. v16}, Lorg/apache/xml/serializer/SerializationHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    :cond_14d
    :goto_14d
    if-eqz v33, :cond_176

    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_176

    .line 869
    const-string v2, ":"

    invoke-virtual {v14, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v28

    .local v28, index:I
    if-gez v28, :cond_2b5

    const-string v32, ""

    .line 874
    .local v32, prefix:Ljava/lang/String;
    :goto_161
    const-string v2, ""

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_176

    .line 875
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-interface {v2, v0, v1}, Lorg/apache/xml/serializer/SerializationHandler;->namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    .end local v28           #index:I
    .end local v32           #prefix:Ljava/lang/String;
    :cond_176
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_a

    .line 672
    .end local v4           #attrPrefix:Ljava/lang/String;
    .end local v7           #attrNS:Ljava/lang/String;
    .end local v15           #type:Ljava/lang/String;
    .end local v16           #attrValue:Ljava/lang/String;
    .end local v17           #addAttr:Z
    .end local v18           #applyFilter:Z
    .end local v29           #isSpecified:Z
    .end local v33           #xmlnsAttr:Z
    :cond_17a
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_28

    .line 692
    .end local v14           #attrName:Ljava/lang/String;
    .restart local v4       #attrPrefix:Ljava/lang/String;
    .restart local v7       #attrNS:Ljava/lang/String;
    .restart local v15       #type:Ljava/lang/String;
    .restart local v16       #attrValue:Ljava/lang/String;
    .restart local v17       #addAttr:Z
    .restart local v18       #applyFilter:Z
    .restart local v20       #attrName:Ljava/lang/String;
    .restart local v29       #isSpecified:Z
    :cond_180
    const/16 v33, 0x0

    goto/16 :goto_78

    .line 733
    .restart local v25       #declAttrNS:Ljava/lang/String;
    .restart local v26       #declAttrPrefix:Ljava/lang/String;
    .restart local v33       #xmlnsAttr:Z
    :cond_184
    move-object/from16 v14, v30

    .end local v20           #attrName:Ljava/lang/String;
    .restart local v14       #attrName:Ljava/lang/String;
    goto/16 :goto_f0

    .line 738
    .end local v14           #attrName:Ljava/lang/String;
    .restart local v20       #attrName:Ljava/lang/String;
    :cond_188
    if-eqz v4, :cond_1cc

    const-string v2, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1cc

    if-nez v25, :cond_1cc

    .line 741
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_282

    .line 742
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    const-string v3, "http://www.w3.org/2000/xmlns/"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "xmlns:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CDATA"

    invoke-interface/range {v2 .. v7}, Lorg/apache/xml/serializer/SerializationHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {v2, v4, v7}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 746
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocalNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {v2, v4, v7}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v14, v20

    .end local v20           #attrName:Ljava/lang/String;
    .restart local v14       #attrName:Ljava/lang/String;
    goto/16 :goto_f0

    .line 753
    .end local v14           #attrName:Ljava/lang/String;
    .restart local v20       #attrName:Ljava/lang/String;
    :cond_1cc
    const/16 v23, 0x1

    .line 754
    .local v23, counter:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v24, v23, 0x1

    .end local v23           #counter:I
    .local v24, counter:I
    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move/from16 v23, v24

    .line 756
    .end local v24           #counter:I
    .restart local v23       #counter:I
    :goto_1e7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocalNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {v2, v4}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_20b

    .line 757
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v24, v23, 0x1

    .end local v23           #counter:I
    .restart local v24       #counter:I
    move/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move/from16 v23, v24

    .end local v24           #counter:I
    .restart local v23       #counter:I
    goto :goto_1e7

    .line 760
    :cond_20b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 764
    .end local v20           #attrName:Ljava/lang/String;
    .restart local v14       #attrName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_f0

    .line 766
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    const-string v3, "http://www.w3.org/2000/xmlns/"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "xmlns:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CDATA"

    invoke-interface/range {v2 .. v7}, Lorg/apache/xml/serializer/SerializationHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {v2, v4, v7}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    .line 770
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocalNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {v2, v4, v7}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_f0

    .line 778
    .end local v14           #attrName:Ljava/lang/String;
    .end local v23           #counter:I
    .end local v25           #declAttrNS:Ljava/lang/String;
    .end local v26           #declAttrPrefix:Ljava/lang/String;
    .restart local v20       #attrName:Ljava/lang/String;
    :cond_25a
    if-nez v30, :cond_282

    .line 780
    sget-object v2, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v3, "ER_NULL_LOCAL_ELEMENT_NAME"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v20, v5, v6

    invoke-virtual {v2, v3, v5}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 784
    .local v10, msg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v2, :cond_282

    .line 785
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    new-instance v8, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v9, 0x2

    const-string v11, "ER_NULL_LOCAL_ELEMENT_NAME"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v8 .. v14}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {v2, v8}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    .end local v10           #msg:Ljava/lang/String;
    :cond_282
    move-object/from16 v14, v20

    .end local v20           #attrName:Ljava/lang/String;
    .restart local v14       #attrName:Ljava/lang/String;
    goto/16 :goto_f0

    .line 809
    :cond_286
    const/16 v17, 0x0

    goto/16 :goto_108

    .line 824
    .restart local v22       #code:S
    :pswitch_28a
    const/16 v17, 0x0

    .line 825
    goto/16 :goto_12b

    .line 841
    .end local v22           #code:S
    :cond_28e
    if-eqz v17, :cond_14d

    if-nez v33, :cond_14d

    .line 846
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_2a8

    if-eqz v7, :cond_2a8

    .line 847
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    move-object v12, v7

    move-object/from16 v13, v30

    invoke-interface/range {v11 .. v16}, Lorg/apache/xml/serializer/SerializationHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14d

    .line 854
    :cond_2a8
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    const-string v12, ""

    move-object/from16 v13, v30

    invoke-interface/range {v11 .. v16}, Lorg/apache/xml/serializer/SerializationHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14d

    .line 869
    .restart local v28       #index:I
    :cond_2b5
    add-int/lit8 v2, v28, 0x1

    invoke-virtual {v14, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v32

    goto/16 :goto_161

    .line 880
    .end local v4           #attrPrefix:Ljava/lang/String;
    .end local v7           #attrNS:Ljava/lang/String;
    .end local v14           #attrName:Ljava/lang/String;
    .end local v15           #type:Ljava/lang/String;
    .end local v16           #attrValue:Ljava/lang/String;
    .end local v17           #addAttr:Z
    .end local v18           #applyFilter:Z
    .end local v19           #attr:Lorg/w3c/dom/Node;
    .end local v28           #index:I
    .end local v29           #isSpecified:Z
    .end local v30           #localName:Ljava/lang/String;
    .end local v33           #xmlnsAttr:Z
    :cond_2bd
    return-void

    .restart local v4       #attrPrefix:Ljava/lang/String;
    .restart local v7       #attrNS:Ljava/lang/String;
    .restart local v14       #attrName:Ljava/lang/String;
    .restart local v15       #type:Ljava/lang/String;
    .restart local v16       #attrValue:Ljava/lang/String;
    .restart local v19       #attr:Lorg/w3c/dom/Node;
    .restart local v30       #localName:Ljava/lang/String;
    :cond_2be
    move-object/from16 v20, v14

    .end local v14           #attrName:Ljava/lang/String;
    .restart local v20       #attrName:Ljava/lang/String;
    goto/16 :goto_56

    .line 821
    :pswitch_data_2c2
    .packed-switch 0x2
        :pswitch_28a
        :pswitch_28a
    .end packed-switch
.end method

.method protected serializeCDATASection(Lorg/w3c/dom/CDATASection;)V
    .registers 12
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 918
    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_b

    .line 919
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isCDATASectionWellFormed(Lorg/w3c/dom/CDATASection;)V

    .line 923
    :cond_b
    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_84

    .line 930
    invoke-interface {p1}, Lorg/w3c/dom/CDATASection;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    .line 931
    .local v8, nodeValue:Ljava/lang/String;
    const-string v0, "]]>"

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 932
    .local v7, endIndex:I
    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_4c

    .line 933
    if-ltz v7, :cond_43

    .line 935
    add-int/lit8 v0, v7, 0x2

    invoke-virtual {v8, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 937
    .local v5, relatedData:Ljava/lang/String;
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v1, "cdata-sections-splitted"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 942
    .local v2, msg:Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_43

    .line 943
    iget-object v9, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    new-instance v0, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v1, 0x1

    const-string v3, "cdata-sections-splitted"

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Lorg/apache/xml/serializer/dom3/DOMLocatorImpl;)V

    invoke-interface {v9, v0}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    .line 976
    .end local v2           #msg:Ljava/lang/String;
    .end local v5           #relatedData:Ljava/lang/String;
    :cond_43
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->applyFilter(Lorg/w3c/dom/Node;I)Z

    move-result v0

    if-nez v0, :cond_6e

    .line 991
    .end local v7           #endIndex:I
    .end local v8           #nodeValue:Ljava/lang/String;
    :cond_4b
    :goto_4b
    return-void

    .line 954
    .restart local v7       #endIndex:I
    .restart local v8       #nodeValue:Ljava/lang/String;
    :cond_4c
    if-ltz v7, :cond_43

    .line 956
    add-int/lit8 v0, v7, 0x2

    invoke-virtual {v8, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 958
    .restart local v5       #relatedData:Ljava/lang/String;
    sget-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v1, "cdata-sections-splitted"

    invoke-virtual {v0, v1, v4}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 963
    .restart local v2       #msg:Ljava/lang/String;
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_4b

    .line 964
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    new-instance v1, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;

    const/4 v3, 0x2

    const-string v4, "cdata-sections-splitted"

    invoke-direct {v1, v3, v2, v4}, Lorg/apache/xml/serializer/dom3/DOMErrorImpl;-><init>(SLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    goto :goto_4b

    .line 981
    .end local v2           #msg:Ljava/lang/String;
    .end local v5           #relatedData:Ljava/lang/String;
    :cond_6e
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_77

    .line 982
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    .line 984
    :cond_77
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->dispatachChars(Lorg/w3c/dom/Node;)V

    .line 985
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_4b

    .line 986
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    goto :goto_4b

    .line 989
    .end local v7           #endIndex:I
    .end local v8           #nodeValue:Ljava/lang/String;
    :cond_84
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->dispatachChars(Lorg/w3c/dom/Node;)V

    goto :goto_4b
.end method

.method protected serializeComment(Lorg/w3c/dom/Comment;)V
    .registers 7
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 572
    iget v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1f

    .line 573
    invoke-interface {p1}, Lorg/w3c/dom/Comment;->getData()Ljava/lang/String;

    move-result-object v0

    .line 576
    .local v0, data:Ljava/lang/String;
    iget v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_13

    .line 577
    invoke-virtual {p0, v0}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isCommentWellFormed(Ljava/lang/String;)V

    .line 580
    :cond_13
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v1, :cond_1f

    .line 583
    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->applyFilter(Lorg/w3c/dom/Node;I)Z

    move-result v1

    if-nez v1, :cond_20

    .line 590
    .end local v0           #data:Ljava/lang/String;
    :cond_1f
    :goto_1f
    return-void

    .line 587
    .restart local v0       #data:Ljava/lang/String;
    :cond_20
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    goto :goto_1f
.end method

.method protected serializeDocType(Lorg/w3c/dom/DocumentType;Z)V
    .registers 14
    .parameter "node"
    .parameter "bStart"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 500
    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, docTypeName:Ljava/lang/String;
    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v4

    .line 502
    .local v4, publicId:Ljava/lang/String;
    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v5

    .line 503
    .local v5, systemId:Ljava/lang/String;
    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getInternalSubset()Ljava/lang/String;

    move-result-object v3

    .line 507
    .local v3, internalSubset:Ljava/lang/String;
    if-eqz v3, :cond_8c

    const-string v7, ""

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8c

    .line 509
    if-eqz p2, :cond_75

    .line 514
    :try_start_1c
    iget-object v7, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v7}, Lorg/apache/xml/serializer/SerializationHandler;->getWriter()Ljava/io/Writer;

    move-result-object v6

    .line 515
    .local v6, writer:Ljava/io/Writer;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 517
    .local v1, dtd:Ljava/lang/StringBuffer;
    const-string v7, "<!DOCTYPE "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 518
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 519
    if-eqz v4, :cond_3e

    .line 520
    const-string v7, " PUBLIC \""

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 521
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 522
    const/16 v7, 0x22

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 525
    :cond_3e
    if-eqz v5, :cond_4f

    .line 526
    if-nez v4, :cond_76

    .line 527
    const-string v7, " SYSTEM \""

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 531
    :goto_47
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 532
    const/16 v7, 0x22

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 535
    :cond_4f
    const-string v7, " [ "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 537
    iget-object v7, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNewLine:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 538
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 539
    const-string v7, "]>"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 540
    new-instance v7, Ljava/lang/String;

    iget-object v8, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNewLine:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 542
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 543
    invoke-virtual {v6}, Ljava/io/Writer;->flush()V

    .line 563
    .end local v1           #dtd:Ljava/lang/StringBuffer;
    .end local v6           #writer:Ljava/io/Writer;
    :cond_75
    :goto_75
    return-void

    .line 529
    .restart local v1       #dtd:Ljava/lang/StringBuffer;
    .restart local v6       #writer:Ljava/io/Writer;
    :cond_76
    const-string v7, " \""

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_7b} :catch_7c

    goto :goto_47

    .line 545
    .end local v1           #dtd:Ljava/lang/StringBuffer;
    .end local v6           #writer:Ljava/io/Writer;
    :catch_7c
    move-exception v2

    .line 546
    .local v2, e:Ljava/io/IOException;
    new-instance v7, Lorg/xml/sax/SAXException;

    sget-object v8, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    const-string v9, "ER_WRITING_INTERNAL_SUBSET"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lorg/apache/xml/serializer/utils/Messages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    .line 553
    .end local v2           #e:Ljava/io/IOException;
    :cond_8c
    if-eqz p2, :cond_98

    .line 554
    iget-object v7, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v7, :cond_75

    .line 555
    iget-object v7, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v7, v0, v4, v5}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_75

    .line 558
    :cond_98
    iget-object v7, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v7, :cond_75

    .line 559
    iget-object v7, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v7}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V

    goto :goto_75
.end method

.method protected serializeElement(Lorg/w3c/dom/Element;Z)V
    .registers 7
    .parameter "node"
    .parameter "bStart"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 600
    if-eqz p2, :cond_44

    .line 601
    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fElementDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fElementDepth:I

    .line 609
    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_12

    .line 610
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isElementWellFormed(Lorg/w3c/dom/Node;)V

    .line 615
    :cond_12
    invoke-virtual {p0, p1, v1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->applyFilter(Lorg/w3c/dom/Node;I)Z

    move-result v0

    if-nez v0, :cond_19

    .line 656
    :cond_18
    :goto_18
    return-void

    .line 620
    :cond_19
    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2f

    .line 621
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {v0}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->pushContext()V

    .line 622
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocalNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {v0}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->reset()V

    .line 624
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->recordLocalNSDecl(Lorg/w3c/dom/Node;)V

    .line 625
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fixupElementNS(Lorg/w3c/dom/Node;)V

    .line 629
    :cond_2f
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/xml/serializer/SerializationHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->serializeAttList(Lorg/w3c/dom/Element;)V

    goto :goto_18

    .line 637
    :cond_44
    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fElementDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fElementDepth:I

    .line 640
    invoke-virtual {p0, p1, v1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->applyFilter(Lorg/w3c/dom/Node;I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 644
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/xml/serializer/SerializationHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    iget v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_18

    .line 652
    iget-object v0, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNSBinder:Lorg/apache/xml/serializer/dom3/NamespaceSupport;

    invoke-virtual {v0}, Lorg/apache/xml/serializer/dom3/NamespaceSupport;->popContext()V

    goto :goto_18
.end method

.method protected serializeEntityReference(Lorg/w3c/dom/EntityReference;Z)V
    .registers 6
    .parameter "node"
    .parameter "bStart"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1055
    if-eqz p2, :cond_29

    .line 1056
    move-object v0, p1

    .line 1058
    .local v0, eref:Lorg/w3c/dom/EntityReference;
    iget v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_1b

    .line 1064
    iget v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_12

    .line 1065
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isEntityReferneceWellFormed(Lorg/w3c/dom/EntityReference;)V

    .line 1070
    :cond_12
    iget v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_1b

    .line 1071
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->checkUnboundPrefixInEntRef(Lorg/w3c/dom/Node;)V

    .line 1079
    :cond_1b
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v1, :cond_28

    .line 1085
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    .line 1095
    :cond_28
    :goto_28
    return-void

    .line 1089
    .end local v0           #eref:Lorg/w3c/dom/EntityReference;
    :cond_29
    move-object v0, p1

    .line 1091
    .restart local v0       #eref:Lorg/w3c/dom/EntityReference;
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v1, :cond_28

    .line 1092
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/w3c/dom/EntityReference;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

    goto :goto_28
.end method

.method protected serializePI(Lorg/w3c/dom/ProcessingInstruction;)V
    .registers 6
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 889
    move-object v1, p1

    .line 890
    .local v1, pi:Lorg/w3c/dom/ProcessingInstruction;
    invoke-interface {v1}, Lorg/w3c/dom/ProcessingInstruction;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 893
    .local v0, name:Ljava/lang/String;
    iget v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_e

    .line 894
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isPIWellFormed(Lorg/w3c/dom/ProcessingInstruction;)V

    .line 898
    :cond_e
    const/16 v2, 0x40

    invoke-virtual {p0, p1, v2}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->applyFilter(Lorg/w3c/dom/Node;I)Z

    move-result v2

    if-nez v2, :cond_17

    .line 908
    :goto_16
    return-void

    .line 903
    :cond_17
    const-string v2, "xslt-next-is-raw"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 904
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNextIsRaw:Z

    goto :goto_16

    .line 906
    :cond_23
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v1}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lorg/apache/xml/serializer/SerializationHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16
.end method

.method protected serializeText(Lorg/w3c/dom/Text;)V
    .registers 7
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 999
    iget-boolean v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNextIsRaw:Z

    if-eqz v2, :cond_1d

    .line 1000
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fNextIsRaw:Z

    .line 1001
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    const-string v3, "javax.xml.transform.disable-output-escaping"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Lorg/apache/xml/serializer/SerializationHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->dispatachChars(Lorg/w3c/dom/Node;)V

    .line 1005
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    const-string v3, "javax.xml.transform.enable-output-escaping"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Lorg/apache/xml/serializer/SerializationHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    :cond_1c
    :goto_1c
    return-void

    .line 1010
    :cond_1d
    const/4 v0, 0x0

    .line 1013
    .local v0, bDispatch:Z
    iget v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_27

    .line 1014
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->isTextWellFormed(Lorg/w3c/dom/Text;)V

    .line 1019
    :cond_27
    const/4 v1, 0x0

    .line 1020
    .local v1, isElementContentWhitespace:Z
    iget-boolean v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsLevel3DOM:Z

    if-eqz v2, :cond_30

    .line 1021
    invoke-interface {p1}, Lorg/w3c/dom/Text;->isElementContentWhitespace()Z

    move-result v1

    .line 1025
    :cond_30
    if-eqz v1, :cond_46

    .line 1027
    iget v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFeatures:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_39

    .line 1028
    const/4 v0, 0x1

    .line 1035
    :cond_39
    :goto_39
    const/4 v2, 0x4

    invoke-virtual {p0, p1, v2}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->applyFilter(Lorg/w3c/dom/Node;I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1039
    if-eqz v0, :cond_1c

    .line 1040
    invoke-direct {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->dispatachChars(Lorg/w3c/dom/Node;)V

    goto :goto_1c

    .line 1031
    :cond_46
    const/4 v0, 0x1

    goto :goto_39
.end method

.method protected startNode(Lorg/w3c/dom/Node;)V
    .registers 6
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 396
    instance-of v1, p1, Lorg/xml/sax/Locator;

    if-eqz v1, :cond_35

    move-object v0, p1

    .line 397
    check-cast v0, Lorg/xml/sax/Locator;

    .line 398
    .local v0, loc:Lorg/xml/sax/Locator;
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    .line 399
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    .line 400
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    .line 401
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-interface {v0}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    .line 407
    .end local v0           #loc:Lorg/xml/sax/Locator;
    :goto_2d
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    packed-switch v1, :pswitch_data_6a

    .line 436
    .end local p1
    :goto_34
    :pswitch_34
    return-void

    .line 403
    .restart local p1
    :cond_35
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-virtual {v1, v2}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    .line 404
    iget-object v1, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLocator:Lorg/xml/sax/helpers/LocatorImpl;

    invoke-virtual {v1, v2}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    goto :goto_2d

    .line 409
    :pswitch_40
    check-cast p1, Lorg/w3c/dom/DocumentType;

    .end local p1
    invoke-virtual {p0, p1, v3}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->serializeDocType(Lorg/w3c/dom/DocumentType;Z)V

    goto :goto_34

    .line 412
    .restart local p1
    :pswitch_46
    check-cast p1, Lorg/w3c/dom/Comment;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->serializeComment(Lorg/w3c/dom/Comment;)V

    goto :goto_34

    .line 420
    .restart local p1
    :pswitch_4c
    check-cast p1, Lorg/w3c/dom/Element;

    .end local p1
    invoke-virtual {p0, p1, v3}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->serializeElement(Lorg/w3c/dom/Element;Z)V

    goto :goto_34

    .line 423
    .restart local p1
    :pswitch_52
    check-cast p1, Lorg/w3c/dom/ProcessingInstruction;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->serializePI(Lorg/w3c/dom/ProcessingInstruction;)V

    goto :goto_34

    .line 426
    .restart local p1
    :pswitch_58
    check-cast p1, Lorg/w3c/dom/CDATASection;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->serializeCDATASection(Lorg/w3c/dom/CDATASection;)V

    goto :goto_34

    .line 429
    .restart local p1
    :pswitch_5e
    check-cast p1, Lorg/w3c/dom/Text;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->serializeText(Lorg/w3c/dom/Text;)V

    goto :goto_34

    .line 432
    .restart local p1
    :pswitch_64
    check-cast p1, Lorg/w3c/dom/EntityReference;

    .end local p1
    invoke-virtual {p0, p1, v3}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->serializeEntityReference(Lorg/w3c/dom/EntityReference;Z)V

    goto :goto_34

    .line 407
    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_34
        :pswitch_5e
        :pswitch_58
        :pswitch_64
        :pswitch_34
        :pswitch_52
        :pswitch_46
        :pswitch_34
        :pswitch_40
        :pswitch_34
    .end packed-switch
.end method

.method public traverse(Lorg/w3c/dom/Node;)V
    .registers 9
    .parameter "pos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 245
    iget-object v3, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v3}, Lorg/apache/xml/serializer/SerializationHandler;->startDocument()V

    .line 248
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_52

    .line 249
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 250
    .local v1, ownerDoc:Lorg/w3c/dom/Document;
    if-eqz v1, :cond_24

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v3

    const-string v4, "Core"

    const-string v5, "3.0"

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 252
    iput-boolean v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsLevel3DOM:Z

    .line 262
    .end local v1           #ownerDoc:Lorg/w3c/dom/Document;
    :cond_24
    :goto_24
    iget-object v3, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    instance-of v3, v3, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v3, :cond_2e

    .line 263
    iget-object v3, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    iput-object v3, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 266
    :cond_2e
    iget-object v3, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    if-eqz v3, :cond_3a

    .line 267
    iget-object v3, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v3}, Lorg/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v3

    iput v3, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fWhatToShowFilter:I

    .line 269
    :cond_3a
    move-object v2, p1

    .line 271
    .local v2, top:Lorg/w3c/dom/Node;
    :goto_3b
    if-eqz p1, :cond_7f

    .line 272
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->startNode(Lorg/w3c/dom/Node;)V

    .line 274
    const/4 v0, 0x0

    .line 276
    .local v0, nextNode:Lorg/w3c/dom/Node;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 278
    :cond_45
    if-nez v0, :cond_50

    .line 279
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->endNode(Lorg/w3c/dom/Node;)V

    .line 281
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 300
    :cond_50
    :goto_50
    move-object p1, v0

    .line 301
    goto :goto_3b

    .end local v0           #nextNode:Lorg/w3c/dom/Node;
    .end local v2           #top:Lorg/w3c/dom/Node;
    :cond_52
    move-object v3, p1

    .line 255
    check-cast v3, Lorg/w3c/dom/Document;

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v3

    const-string v4, "Core"

    const-string v5, "3.0"

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 258
    iput-boolean v6, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsLevel3DOM:Z

    goto :goto_24

    .line 284
    .restart local v0       #nextNode:Lorg/w3c/dom/Node;
    .restart local v2       #top:Lorg/w3c/dom/Node;
    :cond_66
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 286
    if-nez v0, :cond_45

    .line 287
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    .line 289
    if-eqz p1, :cond_78

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 290
    :cond_78
    if-eqz p1, :cond_7d

    .line 291
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->endNode(Lorg/w3c/dom/Node;)V

    .line 293
    :cond_7d
    const/4 v0, 0x0

    .line 295
    goto :goto_50

    .line 302
    .end local v0           #nextNode:Lorg/w3c/dom/Node;
    :cond_7f
    iget-object v3, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v3}, Lorg/apache/xml/serializer/SerializationHandler;->endDocument()V

    .line 303
    return-void
.end method

.method public traverse(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V
    .registers 9
    .parameter "pos"
    .parameter "top"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 320
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v2}, Lorg/apache/xml/serializer/SerializationHandler;->startDocument()V

    .line 323
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_53

    .line 324
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    .line 325
    .local v1, ownerDoc:Lorg/w3c/dom/Document;
    if-eqz v1, :cond_24

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v2

    const-string v3, "Core"

    const-string v4, "3.0"

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 327
    iput-boolean v5, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsLevel3DOM:Z

    .line 337
    .end local v1           #ownerDoc:Lorg/w3c/dom/Document;
    :cond_24
    :goto_24
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    instance-of v2, v2, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v2, :cond_2e

    .line 338
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    iput-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    .line 341
    :cond_2e
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    if-eqz v2, :cond_3a

    .line 342
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fFilter:Lorg/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v2}, Lorg/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v2

    iput v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fWhatToShowFilter:I

    .line 344
    :cond_3a
    :goto_3a
    if-eqz p1, :cond_7d

    .line 345
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->startNode(Lorg/w3c/dom/Node;)V

    .line 347
    const/4 v0, 0x0

    .line 349
    .local v0, nextNode:Lorg/w3c/dom/Node;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 351
    :cond_44
    if-nez v0, :cond_51

    .line 352
    invoke-virtual {p0, p1}, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->endNode(Lorg/w3c/dom/Node;)V

    .line 354
    if-eqz p2, :cond_67

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 370
    :cond_51
    :goto_51
    move-object p1, v0

    .line 371
    goto :goto_3a

    .end local v0           #nextNode:Lorg/w3c/dom/Node;
    :cond_53
    move-object v2, p1

    .line 330
    check-cast v2, Lorg/w3c/dom/Document;

    invoke-interface {v2}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v2

    const-string v3, "Core"

    const-string v4, "3.0"

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 333
    iput-boolean v5, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fIsLevel3DOM:Z

    goto :goto_24

    .line 357
    .restart local v0       #nextNode:Lorg/w3c/dom/Node;
    :cond_67
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 359
    if-nez v0, :cond_44

    .line 360
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    .line 362
    if-eqz p1, :cond_7b

    if-eqz p2, :cond_44

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 363
    :cond_7b
    const/4 v0, 0x0

    .line 365
    goto :goto_51

    .line 372
    .end local v0           #nextNode:Lorg/w3c/dom/Node;
    :cond_7d
    iget-object v2, p0, Lorg/apache/xml/serializer/dom3/DOM3TreeWalker;->fSerializer:Lorg/apache/xml/serializer/SerializationHandler;

    invoke-interface {v2}, Lorg/apache/xml/serializer/SerializationHandler;->endDocument()V

    .line 373
    return-void
.end method
