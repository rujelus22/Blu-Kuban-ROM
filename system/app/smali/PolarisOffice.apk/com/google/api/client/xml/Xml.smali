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
.field public static parserFactory:Lcom/google/api/client/xml/XmlParserFactory;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    return-void
.end method

.method public static createParser()Lorg/xmlpull/v1/XmlPullParser;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {}, Lcom/google/api/client/xml/Xml;->getParserFactory()Lcom/google/api/client/xml/XmlParserFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/api/client/xml/XmlParserFactory;->createParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 59
    .local v0, result:Lorg/xmlpull/v1/XmlPullParser;
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 60
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "XML pull parser must have namespace-aware feature"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :cond_18
    return-object v0
.end method

.method public static createSerializer()Lorg/xmlpull/v1/XmlSerializer;
    .registers 2

    .prologue
    .line 50
    :try_start_0
    invoke-static {}, Lcom/google/api/client/xml/Xml;->getParserFactory()Lcom/google/api/client/xml/XmlParserFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/api/client/xml/XmlParserFactory;->createSerializer()Lorg/xmlpull/v1/XmlSerializer;
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    return-object v1

    .line 51
    :catch_9
    move-exception v0

    .line 52
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
    .line 367
    if-nez p1, :cond_4

    const-string p1, ""

    .line 368
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 369
    .local v0, buf:Ljava/lang/StringBuilder;
    if-eqz p0, :cond_1b

    .line 370
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 372
    :cond_1b
    const-string v1, ""

    if-eq p1, v1, :cond_28

    .line 373
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 375
    :cond_28
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getParserFactory()Lcom/google/api/client/xml/XmlParserFactory;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 35
    sget-object v0, Lcom/google/api/client/xml/Xml;->parserFactory:Lcom/google/api/client/xml/XmlParserFactory;

    .line 36
    .local v0, parserFactory:Lcom/google/api/client/xml/XmlParserFactory;
    if-nez v0, :cond_a

    .line 37
    invoke-static {}, Lcom/google/api/client/xml/DefaultXmlParserFactory;->getInstance()Lcom/google/api/client/xml/DefaultXmlParserFactory;

    move-result-object v0

    .end local v0           #parserFactory:Lcom/google/api/client/xml/XmlParserFactory;
    sput-object v0, Lcom/google/api/client/xml/Xml;->parserFactory:Lcom/google/api/client/xml/XmlParserFactory;

    .line 39
    .restart local v0       #parserFactory:Lcom/google/api/client/xml/XmlParserFactory;
    :cond_a
    return-object v0
.end method

.method public static parseElement(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Lcom/google/api/client/xml/XmlNamespaceDictionary;Lcom/google/api/client/xml/Xml$CustomizeParser;)V
    .registers 4
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
    .line 156
    invoke-static {p0, p1, p2, p3}, Lcom/google/api/client/xml/Xml;->parseElementInternal(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Lcom/google/api/client/xml/XmlNamespaceDictionary;Lcom/google/api/client/xml/Xml$CustomizeParser;)Z

    .line 158
    return-void
.end method

.method private static parseElementInternal(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Lcom/google/api/client/xml/XmlNamespaceDictionary;Lcom/google/api/client/xml/Xml$CustomizeParser;)Z
    .registers 43
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
    .line 170
    if-nez p1, :cond_54

    const/16 v24, 0x0

    .line 172
    .local v24, destinationClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_4
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/google/api/client/xml/GenericXml;

    if-eqz v4, :cond_59

    move-object/from16 v4, p1

    check-cast v4, Lcom/google/api/client/xml/GenericXml;

    move-object v7, v4

    .line 174
    .local v7, genericXml:Lcom/google/api/client/xml/GenericXml;
    :goto_f
    if-nez v7, :cond_5b

    move-object/from16 v0, p1

    instance-of v4, v0, Ljava/util/Map;

    if-eqz v4, :cond_5b

    const/16 v30, 0x1

    .line 176
    .local v30, isMap:Z
    :goto_19
    if-eqz v30, :cond_5e

    move-object/from16 v4, p1

    check-cast v4, Ljava/util/Map;

    move-object v8, v4

    .line 178
    .local v8, destinationMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_20
    if-nez v30, :cond_24

    if-nez p1, :cond_60

    :cond_24
    const/16 v22, 0x0

    .line 180
    .local v22, classInfo:Lcom/google/api/client/util/ClassInfo;
    :goto_26
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v27

    .line 181
    .local v27, eventType:I
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    if-nez v4, :cond_34

    .line 182
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v27

    .line 184
    :cond_34
    const/4 v4, 0x2

    move/from16 v0, v27

    if-eq v0, v4, :cond_65

    .line 185
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "wrong event type: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 170
    .end local v7           #genericXml:Lcom/google/api/client/xml/GenericXml;
    .end local v8           #destinationMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v22           #classInfo:Lcom/google/api/client/util/ClassInfo;
    .end local v24           #destinationClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v27           #eventType:I
    .end local v30           #isMap:Z
    :cond_54
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    goto :goto_4

    .line 172
    .restart local v24       #destinationClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_59
    const/4 v7, 0x0

    goto :goto_f

    .line 174
    .restart local v7       #genericXml:Lcom/google/api/client/xml/GenericXml;
    :cond_5b
    const/16 v30, 0x0

    goto :goto_19

    .line 176
    .restart local v30       #isMap:Z
    :cond_5e
    const/4 v8, 0x0

    goto :goto_20

    .line 178
    .restart local v8       #destinationMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_60
    invoke-static/range {v24 .. v24}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v22

    goto :goto_26

    .line 188
    .restart local v22       #classInfo:Lcom/google/api/client/util/ClassInfo;
    .restart local v27       #eventType:I
    :cond_65
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v36

    .line 189
    .local v36, prefix:Ljava/lang/String;
    if-nez v36, :cond_d7

    const-string v16, ""

    .line 190
    .local v16, alias:Ljava/lang/String;
    :goto_6d
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v4}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->addNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    if-eqz v7, :cond_88

    .line 193
    move-object/from16 v0, p2

    iput-object v0, v7, Lcom/google/api/client/xml/GenericXml;->namespaceDictionary:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    .line 194
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v35

    .line 195
    .local v35, name:Ljava/lang/String;
    if-nez v36, :cond_da

    .end local v35           #name:Ljava/lang/String;
    :goto_84
    move-object/from16 v0, v35

    iput-object v0, v7, Lcom/google/api/client/xml/GenericXml;->name:Ljava/lang/String;

    .line 198
    :cond_88
    if-eqz p1, :cond_fd

    .line 199
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v18

    .line 200
    .local v18, attributeCount:I
    const/16 v29, 0x0

    .local v29, i:I
    :goto_90
    move/from16 v0, v29

    move/from16 v1, v18

    if-ge v0, v1, :cond_fd

    .line 201
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    .line 202
    .local v19, attributeName:Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v21

    .line 203
    .local v21, attributePrefix:Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v20

    .line 204
    .local v20, attributeNamespace:Ljava/lang/String;
    if-eqz v21, :cond_b9

    .line 205
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->addNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_b9
    const/4 v4, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-static {v4, v0, v1, v2}, Lcom/google/api/client/xml/Xml;->getFieldName(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 210
    .local v9, fieldName:Ljava/lang/String;
    if-eqz v30, :cond_f6

    const/4 v5, 0x0

    .line 211
    .local v5, field:Ljava/lang/reflect/Field;
    :goto_c7
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v6, p1

    invoke-static/range {v4 .. v9}, Lcom/google/api/client/xml/Xml;->parseValue(Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/Object;Lcom/google/api/client/xml/GenericXml;Ljava/util/Map;Ljava/lang/String;)V

    .line 200
    add-int/lit8 v29, v29, 0x1

    goto :goto_90

    .end local v5           #field:Ljava/lang/reflect/Field;
    .end local v9           #fieldName:Ljava/lang/String;
    .end local v16           #alias:Ljava/lang/String;
    .end local v18           #attributeCount:I
    .end local v19           #attributeName:Ljava/lang/String;
    .end local v20           #attributeNamespace:Ljava/lang/String;
    .end local v21           #attributePrefix:Ljava/lang/String;
    .end local v29           #i:I
    :cond_d7
    move-object/from16 v16, v36

    .line 189
    goto :goto_6d

    .line 195
    .restart local v16       #alias:Ljava/lang/String;
    .restart local v35       #name:Ljava/lang/String;
    :cond_da
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    goto :goto_84

    .line 210
    .end local v35           #name:Ljava/lang/String;
    .restart local v9       #fieldName:Ljava/lang/String;
    .restart local v18       #attributeCount:I
    .restart local v19       #attributeName:Ljava/lang/String;
    .restart local v20       #attributeNamespace:Ljava/lang/String;
    .restart local v21       #attributePrefix:Ljava/lang/String;
    .restart local v29       #i:I
    :cond_f6
    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/google/api/client/util/ClassInfo;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    goto :goto_c7

    .line 217
    .end local v9           #fieldName:Ljava/lang/String;
    .end local v18           #attributeCount:I
    .end local v19           #attributeName:Ljava/lang/String;
    .end local v20           #attributeNamespace:Ljava/lang/String;
    .end local v21           #attributePrefix:Ljava/lang/String;
    .end local v29           #i:I
    :cond_fd
    :goto_fd
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v26

    .line 218
    .local v26, event:I
    packed-switch v26, :pswitch_data_2a6

    goto :goto_fd

    .line 220
    :pswitch_105
    const/4 v4, 0x1

    .line 358
    :goto_106
    return v4

    .line 222
    :pswitch_107
    if-eqz p3, :cond_11b

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v6}, Lcom/google/api/client/xml/Xml$CustomizeParser;->stopAfterEndTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11b

    const/4 v4, 0x1

    goto :goto_106

    :cond_11b
    const/4 v4, 0x0

    goto :goto_106

    .line 227
    :pswitch_11d
    if-eqz p1, :cond_fd

    .line 228
    const-string v15, "text()"

    .line 229
    .local v15, textFieldName:Ljava/lang/String;
    if-eqz v30, :cond_131

    const/4 v5, 0x0

    .line 230
    .restart local v5       #field:Ljava/lang/reflect/Field;
    :goto_124
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v10

    move-object v11, v5

    move-object/from16 v12, p1

    move-object v13, v7

    move-object v14, v8

    invoke-static/range {v10 .. v15}, Lcom/google/api/client/xml/Xml;->parseValue(Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/Object;Lcom/google/api/client/xml/GenericXml;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_fd

    .line 229
    .end local v5           #field:Ljava/lang/reflect/Field;
    :cond_131
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/google/api/client/util/ClassInfo;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    goto :goto_124

    .line 235
    .end local v15           #textFieldName:Ljava/lang/String;
    :pswitch_138
    if-eqz p3, :cond_14c

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v6}, Lcom/google/api/client/xml/Xml$CustomizeParser;->stopBeforeStartTag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14c

    .line 238
    const/4 v4, 0x1

    goto :goto_106

    .line 240
    :cond_14c
    if-nez p1, :cond_162

    .line 241
    const/16 v32, 0x1

    .line 242
    .local v32, level:I
    :goto_150
    if-eqz v32, :cond_fd

    .line 243
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    packed-switch v4, :pswitch_data_2b2

    goto :goto_150

    .line 245
    :pswitch_15a
    const/4 v4, 0x1

    goto :goto_106

    .line 247
    :pswitch_15c
    add-int/lit8 v32, v32, 0x1

    .line 248
    goto :goto_150

    .line 250
    :pswitch_15f
    add-int/lit8 v32, v32, -0x1

    goto :goto_150

    .line 257
    .end local v32           #level:I
    :cond_162
    const/4 v4, 0x0

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v10

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v6, v10, v11}, Lcom/google/api/client/xml/Xml;->getFieldName(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 260
    .restart local v9       #fieldName:Ljava/lang/String;
    if-eqz v30, :cond_199

    const/4 v5, 0x0

    .line 261
    .restart local v5       #field:Ljava/lang/reflect/Field;
    :goto_176
    if-nez v5, :cond_1a0

    const/16 v28, 0x0

    .line 262
    .local v28, fieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_17a
    const/16 v31, 0x0

    .line 263
    .local v31, isStopped:Z
    if-nez v5, :cond_182

    if-nez v30, :cond_182

    if-eqz v7, :cond_18a

    :cond_182
    if-eqz v5, :cond_1ba

    invoke-static/range {v28 .. v28}, Lcom/google/api/client/util/FieldInfo;->isPrimitive(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1ba

    .line 265
    :cond_18a
    const/16 v32, 0x1

    .line 266
    .restart local v32       #level:I
    :cond_18c
    :goto_18c
    if-eqz v32, :cond_1f0

    .line 267
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    packed-switch v4, :pswitch_data_2bc

    goto :goto_18c

    .line 269
    :pswitch_196
    const/4 v4, 0x1

    goto/16 :goto_106

    .line 260
    .end local v5           #field:Ljava/lang/reflect/Field;
    .end local v28           #fieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v31           #isStopped:Z
    .end local v32           #level:I
    :cond_199
    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/google/api/client/util/ClassInfo;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    goto :goto_176

    .line 261
    .restart local v5       #field:Ljava/lang/reflect/Field;
    :cond_1a0
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v28

    goto :goto_17a

    .line 271
    .restart local v28       #fieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v31       #isStopped:Z
    .restart local v32       #level:I
    :pswitch_1a5
    add-int/lit8 v32, v32, 0x1

    .line 272
    goto :goto_18c

    .line 274
    :pswitch_1a8
    add-int/lit8 v32, v32, -0x1

    .line 275
    goto :goto_18c

    .line 277
    :pswitch_1ab
    const/4 v4, 0x1

    move/from16 v0, v32

    if-ne v0, v4, :cond_18c

    .line 278
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v6, p1

    invoke-static/range {v4 .. v9}, Lcom/google/api/client/xml/Xml;->parseValue(Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/Object;Lcom/google/api/client/xml/GenericXml;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_18c

    .line 284
    .end local v32           #level:I
    :cond_1ba
    if-eqz v5, :cond_1c6

    const-class v4, Ljava/util/Map;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_220

    .line 286
    :cond_1c6
    invoke-static/range {v28 .. v28}, Lcom/google/api/client/util/ClassInfo;->newMapInstance(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v34

    .line 287
    .local v34, mapValue:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/google/api/client/xml/Xml;->parseElementInternal(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Lcom/google/api/client/xml/XmlNamespaceDictionary;Lcom/google/api/client/xml/Xml$CustomizeParser;)Z

    move-result v31

    .line 290
    if-eqz v30, :cond_1f5

    .line 292
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/util/List;

    .line 293
    .local v33, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    if-nez v33, :cond_1ed

    .line 294
    new-instance v33, Ljava/util/ArrayList;

    .end local v33           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v4, 0x1

    move-object/from16 v0, v33

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 295
    .restart local v33       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    move-object/from16 v0, v33

    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :cond_1ed
    invoke-interface/range {v33 .. v34}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    .end local v33           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    .end local v34           #mapValue:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1f0
    :goto_1f0
    if-eqz v31, :cond_fd

    .line 358
    const/4 v4, 0x1

    goto/16 :goto_106

    .line 298
    .restart local v34       #mapValue:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1f5
    if-eqz v5, :cond_1ff

    .line 299
    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-static {v5, v0, v1}, Lcom/google/api/client/util/FieldInfo;->setFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1f0

    :cond_1ff
    move-object/from16 v17, p1

    .line 301
    check-cast v17, Lcom/google/api/client/xml/GenericXml;

    .line 303
    .local v17, atom:Lcom/google/api/client/xml/GenericXml;
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/google/api/client/xml/GenericXml;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/util/List;

    .line 304
    .restart local v33       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    if-nez v33, :cond_21c

    .line 305
    new-instance v33, Ljava/util/ArrayList;

    .end local v33           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v4, 0x1

    move-object/from16 v0, v33

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 306
    .restart local v33       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v9, v1}, Lcom/google/api/client/xml/GenericXml;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 308
    :cond_21c
    invoke-interface/range {v33 .. v34}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f0

    .line 310
    .end local v17           #atom:Lcom/google/api/client/xml/GenericXml;
    .end local v33           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    .end local v34           #mapValue:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_220
    const-class v4, Ljava/util/Collection;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_28d

    .line 312
    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/google/api/client/util/FieldInfo;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Collection;

    .line 315
    .local v23, collectionValue:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    if-nez v23, :cond_23f

    .line 316
    invoke-static/range {v28 .. v28}, Lcom/google/api/client/util/ClassInfo;->newCollectionInstance(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v23

    .line 317
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v5, v0, v1}, Lcom/google/api/client/util/FieldInfo;->setFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 319
    :cond_23f
    const/16 v25, 0x0

    .line 322
    .local v25, elementValue:Ljava/lang/Object;
    invoke-static {v5}, Lcom/google/api/client/util/ClassInfo;->getCollectionParameter(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object v37

    .line 323
    .local v37, subFieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v37, :cond_24d

    invoke-static/range {v37 .. v37}, Lcom/google/api/client/util/FieldInfo;->isPrimitive(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_274

    .line 324
    :cond_24d
    const/16 v32, 0x1

    .line 325
    .end local v25           #elementValue:Ljava/lang/Object;
    .restart local v32       #level:I
    :cond_24f
    :goto_24f
    if-eqz v32, :cond_284

    .line 326
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    packed-switch v4, :pswitch_data_2c8

    goto :goto_24f

    .line 328
    :pswitch_259
    const/4 v4, 0x1

    goto/16 :goto_106

    .line 330
    :pswitch_25c
    add-int/lit8 v32, v32, 0x1

    .line 331
    goto :goto_24f

    .line 333
    :pswitch_25f
    add-int/lit8 v32, v32, -0x1

    .line 334
    goto :goto_24f

    .line 336
    :pswitch_262
    const/4 v4, 0x1

    move/from16 v0, v32

    if-ne v0, v4, :cond_24f

    if-eqz v37, :cond_24f

    .line 337
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-static {v4, v0}, Lcom/google/api/client/xml/Xml;->parseValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v25

    .restart local v25       #elementValue:Ljava/lang/Object;
    goto :goto_24f

    .line 344
    .end local v32           #level:I
    :cond_274
    invoke-static/range {v37 .. v37}, Lcom/google/api/client/util/ClassInfo;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v25

    .line 345
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/google/api/client/xml/Xml;->parseElementInternal(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Lcom/google/api/client/xml/XmlNamespaceDictionary;Lcom/google/api/client/xml/Xml$CustomizeParser;)Z

    move-result v31

    .line 349
    .end local v25           #elementValue:Ljava/lang/Object;
    :cond_284
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1f0

    .line 351
    .end local v23           #collectionValue:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v37           #subFieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_28d
    invoke-static/range {v28 .. v28}, Lcom/google/api/client/util/ClassInfo;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v38

    .line 352
    .local v38, value:Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/google/api/client/xml/Xml;->parseElementInternal(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Object;Lcom/google/api/client/xml/XmlNamespaceDictionary;Lcom/google/api/client/xml/Xml$CustomizeParser;)Z

    move-result v31

    .line 355
    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-static {v5, v0, v1}, Lcom/google/api/client/util/FieldInfo;->setFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1f0

    .line 218
    :pswitch_data_2a6
    .packed-switch 0x1
        :pswitch_105
        :pswitch_138
        :pswitch_107
        :pswitch_11d
    .end packed-switch

    .line 243
    :pswitch_data_2b2
    .packed-switch 0x1
        :pswitch_15a
        :pswitch_15c
        :pswitch_15f
    .end packed-switch

    .line 267
    :pswitch_data_2bc
    .packed-switch 0x1
        :pswitch_196
        :pswitch_1a5
        :pswitch_1a8
        :pswitch_1ab
    .end packed-switch

    .line 326
    :pswitch_data_2c8
    .packed-switch 0x1
        :pswitch_259
        :pswitch_25c
        :pswitch_25f
        :pswitch_262
    .end packed-switch
.end method

.method private static parseValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .parameter "stringValue"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 379
    .local p1, fieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz p1, :cond_6

    const-class v0, Ljava/lang/String;

    if-ne p1, v0, :cond_8

    :cond_6
    move-object v0, p0

    .line 429
    :goto_7
    return-object v0

    .line 382
    :cond_8
    const-class v0, Ljava/lang/Integer;

    if-eq p1, v0, :cond_10

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_16

    .line 383
    :cond_10
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    goto :goto_7

    .line 385
    :cond_16
    const-class v0, Ljava/lang/Short;

    if-eq p1, v0, :cond_1e

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_24

    .line 386
    :cond_1e
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, p0}, Ljava/lang/Short;-><init>(Ljava/lang/String;)V

    goto :goto_7

    .line 388
    :cond_24
    const-class v0, Ljava/lang/Byte;

    if-eq p1, v0, :cond_2c

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_32

    .line 389
    :cond_2c
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, p0}, Ljava/lang/Byte;-><init>(Ljava/lang/String;)V

    goto :goto_7

    .line 391
    :cond_32
    const-class v0, Ljava/lang/Long;

    if-eq p1, v0, :cond_3a

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_40

    .line 392
    :cond_3a
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    goto :goto_7

    .line 394
    :cond_40
    const-class v0, Ljava/lang/Double;

    if-eq p1, v0, :cond_48

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_6e

    .line 395
    :cond_48
    const-string v0, "INF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 396
    new-instance v0, Ljava/lang/Double;

    const-wide/high16 v1, 0x7ff0

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    goto :goto_7

    .line 398
    :cond_58
    const-string v0, "-INF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 399
    new-instance v0, Ljava/lang/Double;

    const-wide/high16 v1, -0x10

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    goto :goto_7

    .line 401
    :cond_68
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p0}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    goto :goto_7

    .line 403
    :cond_6e
    const-class v0, Ljava/lang/Character;

    if-eq p1, v0, :cond_76

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_a1

    .line 404
    :cond_76
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_96

    .line 405
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected type Character/char but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_96
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto/16 :goto_7

    .line 410
    :cond_a1
    const-class v0, Ljava/math/BigInteger;

    if-ne p1, v0, :cond_ac

    .line 411
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 413
    :cond_ac
    const-class v0, Ljava/math/BigDecimal;

    if-ne p1, v0, :cond_b7

    .line 414
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 416
    :cond_b7
    const-class v0, Lcom/google/api/client/util/DateTime;

    if-ne p1, v0, :cond_c1

    .line 417
    invoke-static {p0}, Lcom/google/api/client/util/DateTime;->parseRfc3339(Ljava/lang/String;)Lcom/google/api/client/util/DateTime;

    move-result-object v0

    goto/16 :goto_7

    .line 419
    :cond_c1
    const-class v0, Ljava/lang/Boolean;

    if-eq p1, v0, :cond_c9

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_d9

    .line 420
    :cond_c9
    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d5

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_7

    :cond_d5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_7

    .line 422
    :cond_d9
    const-class v0, Ljava/lang/Float;

    if-eq p1, v0, :cond_e1

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_107

    .line 423
    :cond_e1
    const-string v0, "INF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 424
    const/high16 v0, 0x7f80

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto/16 :goto_7

    .line 426
    :cond_f1
    const-string v0, "-INF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_101

    .line 427
    const/high16 v0, -0x80

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto/16 :goto_7

    .line 429
    :cond_101
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    goto/16 :goto_7

    .line 431
    :cond_107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseValue(Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/Object;Lcom/google/api/client/xml/GenericXml;Ljava/util/Map;Ljava/lang/String;)V
    .registers 10
    .parameter "stringValue"
    .parameter "field"
    .parameter "destination"
    .parameter "genericXml"
    .parameter
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .local p4, destinationMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 85
    if-nez p1, :cond_17

    .line 86
    if-eqz p3, :cond_d

    .line 87
    invoke-static {p0, v2}, Lcom/google/api/client/xml/Xml;->parseValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3, p5, v2}, Lcom/google/api/client/xml/GenericXml;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    :cond_c
    :goto_c
    return-void

    .line 88
    :cond_d
    if-eqz p4, :cond_c

    .line 89
    invoke-static {p0, v2}, Lcom/google/api/client/xml/Xml;->parseValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p4, p5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 92
    :cond_17
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 93
    .local v0, fieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-static {v0}, Lcom/google/api/client/util/FieldInfo;->isPrimitive(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 95
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "final sub-element fields are not supported"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    :cond_33
    invoke-static {p0, v0}, Lcom/google/api/client/xml/Xml;->parseValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 99
    .local v1, fieldValue:Ljava/lang/Object;
    invoke-static {p1, p2, v1}, Lcom/google/api/client/util/FieldInfo;->setFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_c
.end method

.method public static toStringOf(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .parameter "element"

    .prologue
    .line 79
    new-instance v0, Lcom/google/api/client/xml/XmlNamespaceDictionary;

    invoke-direct {v0}, Lcom/google/api/client/xml/XmlNamespaceDictionary;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->toStringOf(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
