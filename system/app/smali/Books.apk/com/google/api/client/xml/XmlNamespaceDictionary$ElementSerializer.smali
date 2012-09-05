.class Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;
.super Ljava/lang/Object;
.source "XmlNamespaceDictionary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/xml/XmlNamespaceDictionary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ElementSerializer"
.end annotation


# instance fields
.field final attributeNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final attributeValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final errorOnUnknown:Z

.field final subElementNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final subElementValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field textValue:Ljava/lang/Object;

.field final synthetic this$0:Lcom/google/api/client/xml/XmlNamespaceDictionary;


# direct methods
.method constructor <init>(Lcom/google/api/client/xml/XmlNamespaceDictionary;Ljava/lang/Object;Z)V
    .registers 11
    .parameter
    .parameter "elementValue"
    .parameter "errorOnUnknown"

    .prologue
    .line 309
    iput-object p1, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->this$0:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->textValue:Ljava/lang/Object;

    .line 304
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->attributeNames:Ljava/util/List;

    .line 305
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->attributeValues:Ljava/util/List;

    .line 306
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->subElementNames:Ljava/util/List;

    .line 307
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->subElementValues:Ljava/util/List;

    .line 310
    iput-boolean p3, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->errorOnUnknown:Z

    .line 311
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 312
    .local v4, valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v4}, Lcom/google/api/client/util/Data;->isPrimitive(Ljava/lang/reflect/Type;)Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-static {p2}, Lcom/google/api/client/util/Data;->isNull(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_39

    .line 313
    iput-object p2, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->textValue:Ljava/lang/Object;

    .line 331
    :cond_38
    return-void

    .line 315
    :cond_39
    invoke-static {p2}, Lcom/google/api/client/util/Data;->mapOf(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_45
    :goto_45
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 316
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 317
    .local v2, fieldValue:Ljava/lang/Object;
    if-eqz v2, :cond_45

    invoke-static {v2}, Lcom/google/api/client/util/Data;->isNull(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_45

    .line 318
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 319
    .local v1, fieldName:Ljava/lang/String;
    const-string v5, "text()"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 320
    iput-object v2, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->textValue:Ljava/lang/Object;

    goto :goto_45

    .line 321
    :cond_6e
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x40

    if-ne v5, v6, :cond_87

    .line 322
    iget-object v5, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->attributeNames:Ljava/util/List;

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    iget-object v5, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->attributeValues:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 325
    :cond_87
    iget-object v5, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->subElementNames:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    iget-object v5, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->subElementValues:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_45
.end method


# virtual methods
.method serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .registers 9
    .parameter "serializer"
    .parameter "elementName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    const/4 v2, 0x0

    .line 335
    .local v2, elementLocalName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 336
    .local v3, elementNamespaceUri:Ljava/lang/String;
    if-eqz p2, :cond_1d

    .line 337
    const/16 v4, 0x3a

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 338
    .local v1, colon:I
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 339
    const/4 v4, -0x1

    if-ne v1, v4, :cond_21

    const-string v0, ""

    .line 340
    .local v0, alias:Ljava/lang/String;
    :goto_15
    iget-object v4, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->this$0:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    iget-boolean v5, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->errorOnUnknown:Z

    invoke-virtual {v4, v5, v0}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->getNamespaceUriForAliasHandlingUnknown(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 342
    .end local v0           #alias:Ljava/lang/String;
    .end local v1           #colon:I
    :cond_1d
    invoke-virtual {p0, p1, v3, v2}, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    return-void

    .line 339
    .restart local v1       #colon:I
    :cond_21
    const/4 v4, 0x0

    invoke-virtual {p2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_15
.end method

.method serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 18
    .parameter "serializer"
    .parameter "elementNamespaceUri"
    .parameter "elementLocalName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 347
    iget-boolean v4, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->errorOnUnknown:Z

    .line 348
    .local v4, errorOnUnknown:Z
    if-nez p3, :cond_10

    .line 349
    if-eqz v4, :cond_e

    .line 350
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "XML name not specified"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 352
    :cond_e
    const-string p3, "unknownName"

    .line 354
    :cond_10
    invoke-interface/range {p1 .. p3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 356
    iget-object v12, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->attributeNames:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v7

    .line 357
    .local v7, num:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1a
    if-ge v5, v7, :cond_50

    .line 358
    iget-object v12, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->attributeNames:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 359
    .local v1, attributeName:Ljava/lang/String;
    const/16 v12, 0x3a

    invoke-virtual {v1, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 360
    .local v3, colon:I
    add-int/lit8 v12, v3, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, attributeLocalName:Ljava/lang/String;
    const/4 v12, -0x1

    if-ne v3, v12, :cond_44

    const/4 v2, 0x0

    .line 363
    .local v2, attributeNamespaceUri:Ljava/lang/String;
    :goto_34
    iget-object v12, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->attributeValues:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->toSerializedValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1, v2, v0, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 357
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 361
    .end local v2           #attributeNamespaceUri:Ljava/lang/String;
    :cond_44
    iget-object v12, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->this$0:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    const/4 v13, 0x0

    invoke-virtual {v1, v13, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v4, v13}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->getNamespaceUriForAliasHandlingUnknown(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_34

    .line 367
    .end local v0           #attributeLocalName:Ljava/lang/String;
    .end local v1           #attributeName:Ljava/lang/String;
    .end local v3           #colon:I
    :cond_50
    iget-object v12, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->textValue:Ljava/lang/Object;

    if-eqz v12, :cond_5d

    .line 368
    iget-object v12, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->textValue:Ljava/lang/Object;

    invoke-static {v12}, Lcom/google/api/client/xml/XmlNamespaceDictionary;->toSerializedValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1, v12}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 371
    :cond_5d
    iget-object v12, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->subElementNames:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v7

    .line 372
    const/4 v5, 0x0

    :goto_64
    if-ge v5, v7, :cond_b4

    .line 373
    iget-object v12, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->subElementValues:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 374
    .local v10, subElementValue:Ljava/lang/Object;
    iget-object v12, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->subElementNames:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 375
    .local v9, subElementName:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    .line 376
    .local v11, valueClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Object;>;"
    instance-of v12, v10, Ljava/lang/Iterable;

    if-nez v12, :cond_82

    invoke-virtual {v11}, Ljava/lang/Class;->isArray()Z

    move-result v12

    if-eqz v12, :cond_a7

    .line 377
    :cond_82
    invoke-static {v10}, Lcom/google/api/client/util/Types;->iterableOf(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_8a
    :goto_8a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 378
    .local v8, subElement:Ljava/lang/Object;
    if-eqz v8, :cond_8a

    invoke-static {v8}, Lcom/google/api/client/util/Data;->isNull(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8a

    .line 379
    new-instance v12, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;

    iget-object v13, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->this$0:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    invoke-direct {v12, v13, v8, v4}, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;-><init>(Lcom/google/api/client/xml/XmlNamespaceDictionary;Ljava/lang/Object;Z)V

    invoke-virtual {v12, p1, v9}, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    goto :goto_8a

    .line 384
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v8           #subElement:Ljava/lang/Object;
    :cond_a7
    new-instance v12, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;

    iget-object v13, p0, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->this$0:Lcom/google/api/client/xml/XmlNamespaceDictionary;

    invoke-direct {v12, v13, v10, v4}, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;-><init>(Lcom/google/api/client/xml/XmlNamespaceDictionary;Ljava/lang/Object;Z)V

    invoke-virtual {v12, p1, v9}, Lcom/google/api/client/xml/XmlNamespaceDictionary$ElementSerializer;->serialize(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 372
    :cond_b1
    add-int/lit8 v5, v5, 0x1

    goto :goto_64

    .line 388
    .end local v9           #subElementName:Ljava/lang/String;
    .end local v10           #subElementValue:Ljava/lang/Object;
    .end local v11           #valueClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/Object;>;"
    :cond_b4
    invoke-interface/range {p1 .. p3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 389
    return-void
.end method
