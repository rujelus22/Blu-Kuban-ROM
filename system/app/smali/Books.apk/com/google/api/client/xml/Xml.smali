.class public Lcom/google/api/client/xml/Xml;
.super Ljava/lang/Object;
.source "Xml.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/xml/Xml$CustomizeParser;
    }
.end annotation


# static fields
.field private static factory:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    return-void
.end method

.method public static createParser()Lorg/xmlpull/v1/XmlPullParser;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-static {}, Lcom/google/api/client/xml/Xml;->getParserFactory()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    return-object v0
.end method

.method public static createSerializer()Lorg/xmlpull/v1/XmlSerializer;
    .registers 2

    .prologue
    .line 69
    :try_start_0
    invoke-static {}, Lcom/google/api/client/xml/Xml;->getParserFactory()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    return-object v1

    .line 70
    :catch_9
    move-exception v0

    .line 71
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getFieldName(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "isAttribute"
    .parameter "alias"
    .parameter "namespace"
    .parameter "name"

    .prologue
    .line 518
    if-nez p0, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_9

    .line 528
    .end local p3
    :goto_8
    return-object p3

    .line 521
    .restart local p3
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 522
    .local v0, buf:Ljava/lang/StringBuilder;
    if-eqz p0, :cond_20

    .line 523
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 525
    :cond_20
    const-string v1, ""

    if-eq p1, v1, :cond_2d

    .line 526
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 528
    :cond_2d
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_8
.end method

.method private static declared-synchronized getParserFactory()Lorg/xmlpull/v1/XmlPullParserFactory;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 53
    const-class v1, Lcom/google/api/client/xml/Xml;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/api/client/xml/Xml;->factory:Lorg/xmlpull/v1/XmlPullParserFactory;

    if-nez v0, :cond_1a

    .line 54
    const-string v0, "org.xmlpull.v1.XmlPullParserFactory"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance(Ljava/lang/String;Ljava/lang/Class;)Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/xml/Xml;->factory:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 56
    sget-object v0, Lcom/google/api/client/xml/Xml;->factory:Lorg/xmlpull/v1/XmlPullParserFactory;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 58
    :cond_1a
    sget-object v0, Lcom/google/api/client/xml/Xml;->factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1e

    monitor-exit v1

    return-object v0

    .line 53
    :catchall_1e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static parseAttributeOrTextContent(Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/Object;Lcom/google/api/client/xml/GenericXml;Ljava/util/Map;Ljava/lang/String;)V
    .registers 14
    .parameter "stringValue"
    .parameter "field"
    .parameter "valueType"
    .parameter
    .parameter "destination"
    .parameter "genericXml"
    .parameter
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/api/client/xml/GenericXml;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 115
    .local p3, context:Ljava/util/List;,"Ljava/util/List<Ljava/lang/reflect/Type;>;"
    .local p6, destinationMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_6

    if-nez p5, :cond_6

    if-eqz p6, :cond_14

    .line 116
    :cond_6
    if-nez p1, :cond_15

    .line 117
    :goto_8
    invoke-static {p2, p3, p0}, Lcom/google/api/client/xml/Xml;->parseValue(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .local v0, value:Ljava/lang/Object;
    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    .line 118
    invoke-static/range {v0 .. v5}, Lcom/google/api/client/xml/Xml;->setValue(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;Lcom/google/api/client/xml/GenericXml;Ljava/util/Map;Ljava/lang/String;)V

    .line 120
    .end local v0           #value:Ljava/lang/Object;
    :cond_14
    return-void

    .line 116
    :cond_15
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object p2

    goto :goto_8
.end method

.method public static parseElement(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Lcom/google/api/client/xml/XmlNamespaceDictionary;Lcom/google/api/client/xml/Xml$CustomizeParser;)V
    .registers 10
    .parameter "parser"
    .parameter "destination"
    .parameter "namespaceDictionary"
    .parameter "customizeParser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 201
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v1, context:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/reflect/Type;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/api/client/xml/Xml;->parseElementInternal(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/api/client/xml/XmlNamespaceDictionary;Lcom/google/api/client/xml/Xml$CustomizeParser;)Z

    .line 204
    return-void
.end method

.method private static parseElementInternal(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/api/client/xml/XmlNamespaceDictionary;Lcom/google/api/client/xml/Xml$CustomizeParser;)Z
    .registers 27
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/api/client/xml/XmlNamespaceDictionary;",
            "Lcom/google/api/client/xml/Xml$CustomizeParser;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 219
    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/google/api/client/xml/GenericXml;

    if-eqz v2, :cond_55

    move-object/from16 v2, p2

    check-cast v2, Lcom/google/api/client/xml/GenericXml;

    move-object v7, v2

    .line 221
    :goto_b
    if-nez v7, :cond_57

    move-object/from16 v0, p2

    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_57

    const-class v2, Ljava/util/Map;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    move-object v8, v2

    .line 223
    :goto_1e
    if-nez v8, :cond_22

    if-nez p2, :cond_59

    :cond_22
    const/4 v2, 0x0

    move-object/from16 v16, v2

    .line 225
    :goto_25
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 226
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-nez v3, :cond_33

    .line 227
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 229
    :cond_33
    const/4 v3, 0x2

    if-eq v2, v3, :cond_64

    .line 230
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expected start of XML element, but got something else (event type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 219
    :cond_55
    const/4 v7, 0x0

    goto :goto_b

    .line 221
    :cond_57
    const/4 v8, 0x0

    goto :goto_1e

    .line 223
    :cond_59
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v2

    move-object/from16 v16, v2

    goto :goto_25

    .line 234
    :cond_64
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 235
    add-int/lit8 v2, v3, -0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v2

    .line 236
    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceCount(I)I

    move-result v6

    move v5, v2

    .line 237
    :goto_77
    if-ge v5, v6, :cond_b8

    .line 238
    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getNamespaceUri(I)Ljava/lang/String;

    move-result-object v9

    .line 240
    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->getAliasForUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_b4

    .line 241
    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v2

    .line 242
    if-nez v2, :cond_91

    const-string v2, ""

    .line 245
    :cond_91
    const/4 v3, 0x1

    move-object v4, v2

    .line 246
    :goto_93
    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->getUriForAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_af

    .line 247
    add-int/lit8 v3, v3, 0x1

    .line 248
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_93

    .line 250
    :cond_af
    move-object/from16 v0, p4

    invoke-virtual {v0, v4, v9}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/xml/XmlNamespaceDictionary;

    .line 237
    :cond_b4
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_77

    .line 254
    :cond_b8
    if-eqz v7, :cond_d4

    .line 255
    move-object/from16 v0, p4

    iput-object v0, v7, Lcom/google/api/client/xml/GenericXml;->namespaceDictionary:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    .line 256
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 257
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v3

    .line 258
    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->getAliasForUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 259
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_10d

    :goto_d2
    iput-object v2, v7, Lcom/google/api/client/xml/GenericXml;->name:Ljava/lang/String;

    .line 262
    :cond_d4
    if-eqz p2, :cond_133

    .line 263
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v11

    .line 264
    const/4 v2, 0x0

    move v10, v2

    :goto_dc
    if-ge v10, v11, :cond_133

    .line 266
    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 267
    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v4

    .line 268
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_125

    const-string v2, ""

    .line 271
    :goto_f2
    const/4 v5, 0x1

    invoke-static {v5, v2, v4, v3}, Lcom/google/api/client/xml/Xml;->getFieldName(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 272
    if-nez v16, :cond_12c

    const/4 v3, 0x0

    .line 273
    :goto_fa
    move-object/from16 v0, p0

    invoke-interface {v0, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, p3

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-static/range {v2 .. v9}, Lcom/google/api/client/xml/Xml;->parseAttributeOrTextContent(Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/Object;Lcom/google/api/client/xml/GenericXml;Ljava/util/Map;Ljava/lang/String;)V

    .line 264
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_dc

    .line 259
    :cond_10d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_d2

    .line 268
    :cond_125
    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->getAliasForUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_f2

    .line 272
    :cond_12c
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lcom/google/api/client/util/ClassInfo;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    goto :goto_fa

    .line 284
    :cond_133
    new-instance v17, Lcom/google/api/client/util/ArrayValueMap;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/google/api/client/util/ArrayValueMap;-><init>(Ljava/lang/Object;)V

    .line 285
    const/4 v2, 0x0

    move v10, v2

    .line 287
    :goto_13e
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 288
    packed-switch v2, :pswitch_data_3de

    :cond_145
    move v2, v10

    :goto_146
    move v10, v2

    .line 511
    goto :goto_13e

    .line 290
    :pswitch_148
    const/4 v2, 0x1

    .line 512
    :goto_149
    invoke-virtual/range {v17 .. v17}, Lcom/google/api/client/util/ArrayValueMap;->setValues()V

    .line 513
    return v2

    .line 293
    :pswitch_14d
    if-eqz p5, :cond_161

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3}, Lcom/google/api/client/xml/Xml$CustomizeParser;->stopAfterEndTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_161

    const/4 v2, 0x1

    goto :goto_149

    :cond_161
    const/4 v2, 0x0

    goto :goto_149

    .line 298
    :pswitch_163
    if-eqz p2, :cond_145

    .line 299
    if-nez v16, :cond_179

    const/4 v3, 0x0

    .line 300
    :goto_168
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    const-string v9, "text()"

    move-object/from16 v4, p3

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-static/range {v2 .. v9}, Lcom/google/api/client/xml/Xml;->parseAttributeOrTextContent(Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/Object;Lcom/google/api/client/xml/GenericXml;Ljava/util/Map;Ljava/lang/String;)V

    move v2, v10

    goto :goto_146

    .line 299
    :cond_179
    const-string v2, "text()"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/google/api/client/util/ClassInfo;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    goto :goto_168

    .line 311
    :pswitch_182
    if-eqz p5, :cond_196

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3}, Lcom/google/api/client/xml/Xml$CustomizeParser;->stopBeforeStartTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_196

    .line 313
    const/4 v2, 0x1

    .line 314
    goto :goto_149

    .line 316
    :cond_196
    if-nez p2, :cond_1ac

    .line 317
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v2, v3}, Lcom/google/api/client/xml/Xml;->parseTextContentForElement(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;ZLjava/lang/reflect/Type;)Ljava/lang/Object;

    .line 505
    :cond_1a1
    :goto_1a1
    if-nez v10, :cond_1aa

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_145

    .line 506
    :cond_1aa
    const/4 v2, 0x1

    .line 507
    goto :goto_149

    .line 320
    :cond_1ac
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    .line 321
    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->getAliasForUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 322
    const/4 v4, 0x0

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v2, v5}, Lcom/google/api/client/xml/Xml;->getFieldName(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 323
    if-nez v16, :cond_1ff

    const/4 v3, 0x0

    .line 324
    :goto_1c2
    if-nez v3, :cond_206

    move-object/from16 v2, p3

    .line 325
    :goto_1c6
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/api/client/util/Data;->resolveWildcardTypeOrTypeVariable(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v4

    .line 328
    instance-of v2, v4, Ljava/lang/Class;

    if-eqz v2, :cond_20b

    move-object v2, v4

    check-cast v2, Ljava/lang/Class;

    .line 329
    :goto_1d3
    instance-of v5, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_1de

    move-object v2, v4

    .line 330
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v2}, Lcom/google/api/client/util/Types;->getRawClass(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v2

    .line 332
    :cond_1de
    invoke-static {v4}, Lcom/google/api/client/util/Types;->isArray(Ljava/lang/reflect/Type;)Z

    move-result v6

    .line 334
    if-nez v3, :cond_20d

    if-nez v8, :cond_20d

    if-nez v7, :cond_20d

    const/4 v5, 0x1

    move v12, v5

    .line 335
    :goto_1ea
    if-nez v12, :cond_1f2

    invoke-static {v4}, Lcom/google/api/client/util/Data;->isPrimitive(Ljava/lang/reflect/Type;)Z

    move-result v5

    if-eqz v5, :cond_22c

    .line 336
    :cond_1f2
    const/4 v11, 0x1

    .line 337
    :goto_1f3
    if-eqz v11, :cond_1a1

    .line 338
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    packed-switch v2, :pswitch_data_3ea

    :cond_1fc
    :goto_1fc
    move v2, v11

    :goto_1fd
    move v11, v2

    .line 359
    goto :goto_1f3

    .line 323
    :cond_1ff
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lcom/google/api/client/util/ClassInfo;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    goto :goto_1c2

    .line 324
    :cond_206
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    goto :goto_1c6

    .line 328
    :cond_20b
    const/4 v2, 0x0

    goto :goto_1d3

    .line 334
    :cond_20d
    const/4 v5, 0x0

    move v12, v5

    goto :goto_1ea

    .line 340
    :pswitch_210
    const/4 v2, 0x1

    .line 341
    goto/16 :goto_149

    .line 343
    :pswitch_213
    add-int/lit8 v2, v11, 0x1

    .line 344
    goto :goto_1fd

    .line 346
    :pswitch_216
    add-int/lit8 v2, v11, -0x1

    .line 347
    goto :goto_1fd

    .line 349
    :pswitch_219
    if-nez v12, :cond_1fc

    const/4 v2, 0x1

    if-ne v11, v2, :cond_1fc

    .line 350
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, p3

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-static/range {v2 .. v9}, Lcom/google/api/client/xml/Xml;->parseAttributeOrTextContent(Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/Object;Lcom/google/api/client/xml/GenericXml;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_1fc

    .line 362
    :cond_22c
    if-eqz v4, :cond_238

    if-eqz v2, :cond_2cd

    const-class v5, Ljava/util/Map;

    invoke-static {v2, v5}, Lcom/google/api/client/util/Types;->isAssignableToOrFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2cd

    .line 365
    :cond_238
    invoke-static {v2}, Lcom/google/api/client/util/Data;->newMapInstance(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v12

    .line 366
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 367
    if-eqz v4, :cond_247

    .line 368
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    :cond_247
    if-eqz v4, :cond_286

    const-class v5, Ljava/util/Map;

    invoke-virtual {v5, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_286

    invoke-static {v4}, Lcom/google/api/client/util/Types;->getMapValueParameter(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v5

    .line 372
    :goto_255
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/google/api/client/util/Data;->resolveWildcardTypeOrTypeVariable(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v13

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    .line 373
    invoke-static/range {v10 .. v15}, Lcom/google/api/client/xml/Xml;->parseElementInternal(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/api/client/xml/XmlNamespaceDictionary;Lcom/google/api/client/xml/Xml$CustomizeParser;)Z

    move-result v10

    .line 379
    if-eqz v4, :cond_26e

    .line 380
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 382
    :cond_26e
    if-eqz v8, :cond_288

    .line 385
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 386
    if-nez v2, :cond_281

    .line 387
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 388
    invoke-interface {v8, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    :cond_281
    invoke-interface {v2, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1a1

    .line 370
    :cond_286
    const/4 v5, 0x0

    goto :goto_255

    .line 391
    :cond_288
    if-eqz v3, :cond_2b3

    .line 393
    invoke-static {v3}, Lcom/google/api/client/util/FieldInfo;->of(Ljava/lang/reflect/Field;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v3

    .line 394
    const-class v4, Ljava/lang/Object;

    if-ne v2, v4, :cond_2ac

    .line 397
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/google/api/client/util/FieldInfo;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 398
    if-nez v2, :cond_2a7

    .line 399
    new-instance v2, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 400
    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v2}, Lcom/google/api/client/util/FieldInfo;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 402
    :cond_2a7
    invoke-interface {v2, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1a1

    .line 405
    :cond_2ac
    move-object/from16 v0, p2

    invoke-virtual {v3, v0, v12}, Lcom/google/api/client/util/FieldInfo;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1a1

    :cond_2b3
    move-object/from16 v2, p2

    .line 409
    check-cast v2, Lcom/google/api/client/xml/GenericXml;

    .line 411
    invoke-virtual {v2, v9}, Lcom/google/api/client/xml/GenericXml;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 412
    if-nez v3, :cond_2c8

    .line 413
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 414
    invoke-virtual {v2, v9, v3}, Lcom/google/api/client/xml/GenericXml;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 416
    :cond_2c8
    invoke-interface {v3, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1a1

    .line 418
    :cond_2cd
    if-nez v6, :cond_2d7

    const-class v5, Ljava/util/Collection;

    invoke-static {v2, v5}, Lcom/google/api/client/util/Types;->isAssignableToOrFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3b4

    .line 420
    :cond_2d7
    invoke-static {v3}, Lcom/google/api/client/util/FieldInfo;->of(Ljava/lang/reflect/Field;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v18

    .line 422
    if-eqz v6, :cond_31b

    invoke-static {v4}, Lcom/google/api/client/util/Types;->getArrayComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 425
    :goto_2e1
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/api/client/util/Types;->getRawArrayComponentType(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v19

    .line 427
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/api/client/util/Data;->resolveWildcardTypeOrTypeVariable(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v5

    .line 428
    instance-of v2, v5, Ljava/lang/Class;

    if-eqz v2, :cond_320

    move-object v2, v5

    check-cast v2, Ljava/lang/Class;

    .line 430
    :goto_2f4
    instance-of v11, v5, Ljava/lang/reflect/ParameterizedType;

    if-eqz v11, :cond_2ff

    move-object v2, v5

    .line 431
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v2}, Lcom/google/api/client/util/Types;->getRawClass(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Class;

    move-result-object v2

    .line 433
    :cond_2ff
    invoke-static {v5}, Lcom/google/api/client/util/Data;->isPrimitive(Ljava/lang/reflect/Type;)Z

    move-result v11

    if-eqz v11, :cond_322

    .line 434
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v2, v5}, Lcom/google/api/client/xml/Xml;->parseTextContentForElement(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;ZLjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v12

    .line 467
    :cond_30e
    :goto_30e
    if-eqz v6, :cond_392

    .line 469
    if-nez v3, :cond_389

    .line 470
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v9, v1, v12}, Lcom/google/api/client/util/ArrayValueMap;->put(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_1a1

    .line 422
    :cond_31b
    invoke-static {v4}, Lcom/google/api/client/util/Types;->getIterableParameter(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    goto :goto_2e1

    .line 428
    :cond_320
    const/4 v2, 0x0

    goto :goto_2f4

    .line 435
    :cond_322
    if-eqz v5, :cond_32e

    if-eqz v2, :cond_369

    const-class v10, Ljava/util/Map;

    invoke-static {v2, v10}, Lcom/google/api/client/util/Types;->isAssignableToOrFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_369

    .line 437
    :cond_32e
    invoke-static {v2}, Lcom/google/api/client/util/Data;->newMapInstance(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v12

    .line 438
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 439
    if-eqz v5, :cond_33d

    .line 440
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    :cond_33d
    if-eqz v5, :cond_367

    const-class v10, Ljava/util/Map;

    invoke-virtual {v10, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_367

    invoke-static {v5}, Lcom/google/api/client/util/Types;->getMapValueParameter(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 445
    :goto_34b
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/api/client/util/Data;->resolveWildcardTypeOrTypeVariable(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v13

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    .line 446
    invoke-static/range {v10 .. v15}, Lcom/google/api/client/xml/Xml;->parseElementInternal(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/api/client/xml/XmlNamespaceDictionary;Lcom/google/api/client/xml/Xml$CustomizeParser;)Z

    move-result v10

    .line 452
    if-eqz v5, :cond_30e

    .line 453
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_30e

    .line 442
    :cond_367
    const/4 v2, 0x0

    goto :goto_34b

    .line 456
    :cond_369
    invoke-static/range {v19 .. v19}, Lcom/google/api/client/util/Types;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    .line 457
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 458
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    const/4 v13, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    invoke-static/range {v10 .. v15}, Lcom/google/api/client/xml/Xml;->parseElementInternal(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/api/client/xml/XmlNamespaceDictionary;Lcom/google/api/client/xml/Xml$CustomizeParser;)Z

    move-result v10

    .line 465
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_30e

    .line 472
    :cond_389
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1, v12}, Lcom/google/api/client/util/ArrayValueMap;->put(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Object;)V

    goto/16 :goto_1a1

    .line 477
    :cond_392
    if-nez v3, :cond_3ab

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_398
    check-cast v2, Ljava/util/Collection;

    .line 479
    if-nez v2, :cond_3dc

    .line 480
    invoke-static {v4}, Lcom/google/api/client/util/Data;->newCollectionInstance(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v4

    move-object v5, v3

    move-object/from16 v6, p2

    .line 481
    invoke-static/range {v4 .. v9}, Lcom/google/api/client/xml/Xml;->setValue(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;Lcom/google/api/client/xml/GenericXml;Ljava/util/Map;Ljava/lang/String;)V

    .line 488
    :goto_3a6
    invoke-interface {v4, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1a1

    .line 477
    :cond_3ab
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/api/client/util/FieldInfo;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_398

    .line 492
    :cond_3b4
    invoke-static {v2}, Lcom/google/api/client/util/Types;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    .line 493
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 494
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    const/4 v13, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    invoke-static/range {v10 .. v15}, Lcom/google/api/client/xml/Xml;->parseElementInternal(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/api/client/xml/XmlNamespaceDictionary;Lcom/google/api/client/xml/Xml$CustomizeParser;)Z

    move-result v10

    .line 501
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object v4, v12

    move-object v5, v3

    move-object/from16 v6, p2

    .line 502
    invoke-static/range {v4 .. v9}, Lcom/google/api/client/xml/Xml;->setValue(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;Lcom/google/api/client/xml/GenericXml;Ljava/util/Map;Ljava/lang/String;)V

    goto/16 :goto_1a1

    :cond_3dc
    move-object v4, v2

    goto :goto_3a6

    .line 288
    :pswitch_data_3de
    .packed-switch 0x1
        :pswitch_148
        :pswitch_182
        :pswitch_14d
        :pswitch_163
    .end packed-switch

    .line 338
    :pswitch_data_3ea
    .packed-switch 0x1
        :pswitch_210
        :pswitch_213
        :pswitch_216
        :pswitch_219
    .end packed-switch
.end method

.method private static parseTextContentForElement(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;ZLjava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 7
    .parameter "parser"
    .parameter
    .parameter "ignoreTextContent"
    .parameter "textContentType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;Z",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 534
    .local p1, context:Ljava/util/List;,"Ljava/util/List<Ljava/lang/reflect/Type;>;"
    const/4 v1, 0x0

    .line 535
    .local v1, result:Ljava/lang/Object;
    const/4 v0, 0x1

    .line 536
    .end local v1           #result:Ljava/lang/Object;
    .local v0, level:I
    :cond_2
    :goto_2
    if-eqz v0, :cond_22

    .line 537
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    packed-switch v2, :pswitch_data_24

    goto :goto_2

    .line 539
    :pswitch_c
    const/4 v0, 0x0

    .line 540
    goto :goto_2

    .line 542
    :pswitch_e
    add-int/lit8 v0, v0, 0x1

    .line 543
    goto :goto_2

    .line 545
    :pswitch_11
    add-int/lit8 v0, v0, -0x1

    .line 546
    goto :goto_2

    .line 548
    :pswitch_14
    if-nez p2, :cond_2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 549
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, p1, v2}, Lcom/google/api/client/xml/Xml;->parseValue(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .restart local v1       #result:Ljava/lang/Object;
    goto :goto_2

    .line 554
    .end local v1           #result:Ljava/lang/Object;
    :cond_22
    return-object v1

    .line 537
    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_c
        :pswitch_e
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method

.method private static parseValue(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 558
    invoke-static {p1, p0}, Lcom/google/api/client/util/Data;->resolveWildcardTypeOrTypeVariable(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 559
    const-class v1, Ljava/lang/Double;

    if-eq v0, v1, :cond_c

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_2c

    .line 560
    :cond_c
    const-string v1, "INF"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 561
    new-instance v0, Ljava/lang/Double;

    const-wide/high16 v1, 0x7ff0

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    .line 575
    :goto_1b
    return-object v0

    .line 563
    :cond_1c
    const-string v1, "-INF"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 564
    new-instance v0, Ljava/lang/Double;

    const-wide/high16 v1, -0x10

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    goto :goto_1b

    .line 567
    :cond_2c
    const-class v1, Ljava/lang/Float;

    if-eq v0, v1, :cond_34

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_52

    .line 568
    :cond_34
    const-string v1, "INF"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 569
    const/high16 v0, 0x7f80

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_1b

    .line 571
    :cond_43
    const-string v1, "-INF"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 572
    const/high16 v0, -0x80

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_1b

    .line 575
    :cond_52
    invoke-static {v0, p2}, Lcom/google/api/client/util/Data;->parsePrimitiveValue(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1b
.end method

.method private static setValue(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;Lcom/google/api/client/xml/GenericXml;Ljava/util/Map;Ljava/lang/String;)V
    .registers 6
    .parameter "value"
    .parameter "field"
    .parameter "destination"
    .parameter "genericXml"
    .parameter
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Object;",
            "Lcom/google/api/client/xml/GenericXml;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 138
    .local p4, destinationMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_6

    .line 139
    invoke-static {p1, p2, p0}, Lcom/google/api/client/util/FieldInfo;->setFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 145
    :goto_5
    return-void

    .line 140
    :cond_6
    if-eqz p3, :cond_c

    .line 141
    invoke-virtual {p3, p5, p0}, Lcom/google/api/client/xml/GenericXml;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    .line 143
    :cond_c
    invoke-interface {p4, p5, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5
.end method
