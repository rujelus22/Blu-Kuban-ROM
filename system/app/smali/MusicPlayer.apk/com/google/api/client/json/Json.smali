.class public Lcom/google/api/client/json/Json;
.super Ljava/lang/Object;
.source "Json.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/json/Json$1;
    }
.end annotation


# static fields
.field public static final JSON_FACTORY:Lorg/codehaus/jackson/JsonFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 58
    new-instance v0, Lorg/codehaus/jackson/JsonFactory;

    invoke-direct {v0}, Lorg/codehaus/jackson/JsonFactory;-><init>()V

    sget-object v1, Lorg/codehaus/jackson/JsonParser$Feature;->ALLOW_UNQUOTED_CONTROL_CHARS:Lorg/codehaus/jackson/JsonParser$Feature;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/JsonFactory;->configure(Lorg/codehaus/jackson/JsonParser$Feature;Z)Lorg/codehaus/jackson/JsonFactory;

    move-result-object v0

    sget-object v1, Lorg/codehaus/jackson/JsonGenerator$Feature;->AUTO_CLOSE_TARGET:Lorg/codehaus/jackson/JsonGenerator$Feature;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/JsonFactory;->configure(Lorg/codehaus/jackson/JsonGenerator$Feature;Z)Lorg/codehaus/jackson/JsonFactory;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/json/Json;->JSON_FACTORY:Lorg/codehaus/jackson/JsonFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    return-void
.end method

.method public static parse(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;
    .registers 4
    .parameter "parser"
    .parameter
    .parameter "customizeParser"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/api/client/json/CustomizeJsonParser;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    .local p1, destinationClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/google/api/client/util/ClassInfo;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 212
    .local v0, newInstance:Ljava/lang/Object;,"TT;"
    invoke-static {p0, v0, p2}, Lcom/google/api/client/json/Json;->parse(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)V

    .line 213
    return-object v0
.end method

.method public static parse(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)V
    .registers 14
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 227
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 228
    invoke-static {v0}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v7

    .line 229
    const-class v1, Lcom/google/api/client/util/GenericData;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    .line 231
    if-nez v8, :cond_35

    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 233
    check-cast p1, Ljava/util/Map;

    .line 234
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/ClassInfo;->getMapValueParameter(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 237
    invoke-static {p0, p1, v0, p2}, Lcom/google/api/client/json/Json;->parseMap(Lorg/codehaus/jackson/JsonParser;Ljava/util/Map;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)V

    .line 273
    :cond_26
    return-void

    .line 255
    :cond_27
    iget-object v2, v0, Lcom/google/api/client/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 256
    iget-object v3, v0, Lcom/google/api/client/util/FieldInfo;->type:Ljava/lang/Class;

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/google/api/client/json/Json;->parseValue(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/JsonToken;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object v0

    .line 259
    invoke-static {v2, p1, v0}, Lcom/google/api/client/util/FieldInfo;->setFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 240
    :cond_35
    :goto_35
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_26

    .line 241
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v9

    .line 242
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    .line 244
    if-eqz p2, :cond_4d

    invoke-virtual {p2, p1, v9}, Lcom/google/api/client/json/CustomizeJsonParser;->stopAt(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 248
    :cond_4d
    invoke-virtual {v7, v9}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v0

    .line 249
    if-eqz v0, :cond_63

    .line 251
    iget-boolean v2, v0, Lcom/google/api/client/util/FieldInfo;->isFinal:Z

    if-eqz v2, :cond_27

    iget-boolean v2, v0, Lcom/google/api/client/util/FieldInfo;->isPrimitive:Z

    if-nez v2, :cond_27

    .line 252
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "final array/object fields are not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_63
    if-eqz v8, :cond_75

    move-object v6, p1

    .line 262
    check-cast v6, Lcom/google/api/client/util/GenericData;

    move-object v0, p0

    move-object v2, v10

    move-object v3, v10

    move-object v4, p1

    move-object v5, p2

    .line 263
    invoke-static/range {v0 .. v5}, Lcom/google/api/client/json/Json;->parseValue(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/JsonToken;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v9, v0}, Lcom/google/api/client/util/GenericData;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_35

    .line 267
    :cond_75
    if-eqz p2, :cond_7a

    .line 268
    invoke-virtual {p2, p1, v9}, Lcom/google/api/client/json/CustomizeJsonParser;->handleUnrecognizedKey(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    :cond_7a
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->skipChildren()Lorg/codehaus/jackson/JsonParser;

    goto :goto_35
.end method

.method public static parseAndClose(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;
    .registers 4
    .parameter "parser"
    .parameter
    .parameter "customizeParser"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/api/client/json/CustomizeJsonParser;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    .local p1, destinationClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/google/api/client/util/ClassInfo;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 150
    .local v0, newInstance:Ljava/lang/Object;,"TT;"
    invoke-static {p0, v0, p2}, Lcom/google/api/client/json/Json;->parseAndClose(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)V

    .line 151
    return-object v0
.end method

.method public static parseAndClose(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)V
    .registers 4
    .parameter "parser"
    .parameter "destination"
    .parameter "customizeParser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/google/api/client/json/Json;->parse(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_7

    .line 193
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->close()V

    .line 195
    return-void

    .line 193
    :catchall_7
    move-exception v0

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->close()V

    throw v0
.end method

.method public static parseArray(Lorg/codehaus/jackson/JsonParser;Ljava/util/Collection;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)V
    .registers 11
    .parameter "parser"
    .parameter
    .parameter
    .parameter "customizeParser"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Ljava/util/Collection",
            "<-TT;>;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/api/client/json/CustomizeJsonParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    .local p1, destinationCollection:Ljava/util/Collection;,"Ljava/util/Collection<-TT;>;"
    .local p2, destinationItemClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    :goto_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    .local v1, listToken:Lorg/codehaus/jackson/JsonToken;
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v0, :cond_15

    .line 365
    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/api/client/json/Json;->parseValue(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/JsonToken;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object v6

    .line 368
    .local v6, parsedValue:Ljava/lang/Object;,"TT;"
    invoke-interface {p1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 370
    .end local v6           #parsedValue:Ljava/lang/Object;,"TT;"
    :cond_15
    return-void
.end method

.method private static parseMap(Lorg/codehaus/jackson/JsonParser;Ljava/util/Map;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)V
    .registers 12
    .parameter "parser"
    .parameter
    .parameter
    .parameter "customizeParser"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/api/client/json/CustomizeJsonParser;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    .local p1, destinationMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v2, :cond_18

    .line 376
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v6

    .line 377
    .local v6, key:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    .line 379
    .local v1, curToken:Lorg/codehaus/jackson/JsonToken;
    if-eqz p3, :cond_19

    invoke-virtual {p3, p1, v6}, Lcom/google/api/client/json/CustomizeJsonParser;->stopAt(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 388
    .end local v1           #curToken:Lorg/codehaus/jackson/JsonToken;
    .end local v6           #key:Ljava/lang/String;
    :cond_18
    return-void

    .line 383
    .restart local v1       #curToken:Lorg/codehaus/jackson/JsonToken;
    .restart local v6       #key:Ljava/lang/String;
    :cond_19
    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/api/client/json/Json;->parseValue(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/JsonToken;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;

    move-result-object v7

    .line 386
    .local v7, value:Ljava/lang/Object;
    invoke-interface {p1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static parseValue(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/JsonToken;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)Ljava/lang/Object;
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Lorg/codehaus/jackson/JsonToken;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Lcom/google/api/client/json/CustomizeJsonParser;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 393
    sget-object v1, Lcom/google/api/client/json/Json$1;->$SwitchMap$org$codehaus$jackson$JsonToken:[I

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1cc

    .line 488
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": unexpected JSON node type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :pswitch_2d
    if-eqz p3, :cond_37

    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 398
    :cond_37
    if-eqz p5, :cond_3f

    if-eqz p2, :cond_3f

    .line 399
    invoke-virtual {p5, p4, p2}, Lcom/google/api/client/json/CustomizeJsonParser;->newInstanceForArray(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/util/Collection;

    move-result-object v0

    .line 402
    :cond_3f
    if-nez v0, :cond_45

    .line 403
    invoke-static {p3}, Lcom/google/api/client/util/ClassInfo;->newCollectionInstance(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v0

    .line 405
    :cond_45
    invoke-static {p2}, Lcom/google/api/client/util/ClassInfo;->getCollectionParameter(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object v1

    .line 406
    invoke-static {p0, v0, v1, p5}, Lcom/google/api/client/json/Json;->parseArray(Lorg/codehaus/jackson/JsonParser;Ljava/util/Collection;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)V

    .line 486
    :goto_4c
    :pswitch_4c
    return-object v0

    .line 409
    :cond_4d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected field type that implements Collection but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :pswitch_70
    if-eqz p3, :cond_7a

    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_a2

    :cond_7a
    const/4 v1, 0x1

    move v2, v1

    .line 416
    :goto_7c
    if-eqz p3, :cond_1c8

    if-eqz p5, :cond_1c8

    .line 417
    invoke-virtual {p5, p4, p3}, Lcom/google/api/client/json/CustomizeJsonParser;->newInstanceForObject(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .line 420
    :goto_85
    if-nez v1, :cond_8d

    .line 421
    if-eqz v2, :cond_a5

    .line 422
    invoke-static {p3}, Lcom/google/api/client/util/ClassInfo;->newMapInstance(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v1

    .line 427
    :cond_8d
    :goto_8d
    if-eqz v2, :cond_b4

    if-eqz p3, :cond_b4

    .line 429
    if-eqz p2, :cond_aa

    .line 430
    invoke-static {p2}, Lcom/google/api/client/util/ClassInfo;->getMapValueParameter(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object v0

    move-object v2, v0

    .line 436
    :goto_98
    if-eqz v2, :cond_b4

    move-object v0, v1

    .line 438
    check-cast v0, Ljava/util/Map;

    .line 440
    invoke-static {p0, v0, v2, p5}, Lcom/google/api/client/json/Json;->parseMap(Lorg/codehaus/jackson/JsonParser;Ljava/util/Map;Ljava/lang/Class;Lcom/google/api/client/json/CustomizeJsonParser;)V

    move-object v0, v1

    .line 441
    goto :goto_4c

    .line 414
    :cond_a2
    const/4 v1, 0x0

    move v2, v1

    goto :goto_7c

    .line 424
    :cond_a5
    invoke-static {p3}, Lcom/google/api/client/util/ClassInfo;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_8d

    .line 432
    :cond_aa
    invoke-virtual {p3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/ClassInfo;->getMapValueParameter(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    move-object v2, v0

    goto :goto_98

    .line 444
    :cond_b4
    invoke-static {p0, v1, p5}, Lcom/google/api/client/json/Json;->parse(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Object;Lcom/google/api/client/json/CustomizeJsonParser;)V

    move-object v0, v1

    .line 445
    goto :goto_4c

    .line 448
    :pswitch_b9
    if-eqz p3, :cond_ee

    const-class v0, Ljava/lang/Boolean;

    if-eq p3, v0, :cond_ee

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p3, v0, :cond_ee

    .line 450
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": expected type Boolean or boolean but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 454
    :cond_ee
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    if-ne p1, v0, :cond_f6

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_4c

    :cond_f6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_4c

    .line 456
    :pswitch_fa
    if-eqz p3, :cond_12f

    const-class v0, Ljava/lang/Float;

    if-eq p3, v0, :cond_12f

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p3, v0, :cond_12f

    .line 458
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": expected type Float or float but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 462
    :cond_12f
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getFloatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto/16 :goto_4c

    .line 464
    :pswitch_139
    if-eqz p3, :cond_143

    const-class v0, Ljava/lang/Integer;

    if-eq p3, v0, :cond_143

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_14d

    .line 466
    :cond_143
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_4c

    .line 468
    :cond_14d
    const-class v0, Ljava/lang/Short;

    if-eq p3, v0, :cond_155

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_15f

    .line 469
    :cond_155
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getShortValue()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    goto/16 :goto_4c

    .line 471
    :cond_15f
    const-class v0, Ljava/lang/Byte;

    if-eq p3, v0, :cond_167

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_171

    .line 472
    :cond_167
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getByteValue()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto/16 :goto_4c

    .line 474
    :cond_171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": expected type Integer/int/Short/short/Byte/byte but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 480
    :pswitch_19c
    :try_start_19c
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/google/api/client/util/FieldInfo;->parsePrimitiveValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1a3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19c .. :try_end_1a3} :catch_1a6

    move-result-object v0

    goto/16 :goto_4c

    .line 481
    :catch_1a6
    move-exception v0

    .line 482
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1c8
    move-object v1, v0

    goto/16 :goto_85

    .line 393
    nop

    :pswitch_data_1cc
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_70
        :pswitch_b9
        :pswitch_b9
        :pswitch_fa
        :pswitch_139
        :pswitch_19c
        :pswitch_4c
    .end packed-switch
.end method

.method public static serialize(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V
    .registers 10
    .parameter "generator"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    if-nez p1, :cond_5

    .line 93
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonGenerator;->writeNull()V

    .line 95
    :cond_5
    instance-of v7, p1, Ljava/lang/String;

    if-nez v7, :cond_19

    instance-of v7, p1, Ljava/lang/Long;

    if-nez v7, :cond_19

    instance-of v7, p1, Ljava/lang/Double;

    if-nez v7, :cond_19

    instance-of v7, p1, Ljava/math/BigInteger;

    if-nez v7, :cond_19

    instance-of v7, p1, Ljava/math/BigDecimal;

    if-eqz v7, :cond_21

    .line 99
    :cond_19
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 131
    .end local p1
    :goto_20
    return-void

    .line 100
    .restart local p1
    :cond_21
    instance-of v7, p1, Ljava/lang/Boolean;

    if-eqz v7, :cond_2f

    .line 101
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {p0, v7}, Lorg/codehaus/jackson/JsonGenerator;->writeBoolean(Z)V

    goto :goto_20

    .line 102
    .restart local p1
    :cond_2f
    instance-of v7, p1, Ljava/lang/Integer;

    if-nez v7, :cond_3b

    instance-of v7, p1, Ljava/lang/Short;

    if-nez v7, :cond_3b

    instance-of v7, p1, Ljava/lang/Byte;

    if-eqz v7, :cond_45

    .line 104
    :cond_3b
    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-virtual {p0, v7}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(I)V

    goto :goto_20

    .line 105
    .restart local p1
    :cond_45
    instance-of v7, p1, Ljava/lang/Float;

    if-eqz v7, :cond_53

    .line 107
    check-cast p1, Ljava/lang/Float;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {p0, v7}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(F)V

    goto :goto_20

    .line 108
    .restart local p1
    :cond_53
    instance-of v7, p1, Lcom/google/api/client/util/DateTime;

    if-eqz v7, :cond_61

    .line 109
    check-cast p1, Lcom/google/api/client/util/DateTime;

    .end local p1
    invoke-virtual {p1}, Lcom/google/api/client/util/DateTime;->toStringRfc3339()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_20

    .line 110
    .restart local p1
    :cond_61
    instance-of v7, p1, Ljava/util/List;

    if-eqz v7, :cond_80

    .line 111
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonGenerator;->writeStartArray()V

    move-object v5, p1

    .line 113
    check-cast v5, Ljava/util/List;

    .line 114
    .local v5, listValue:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 115
    .local v6, size:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_70
    if-ge v3, v6, :cond_7c

    .line 116
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/google/api/client/json/Json;->serialize(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    .line 115
    add-int/lit8 v3, v3, 0x1

    goto :goto_70

    .line 118
    :cond_7c
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonGenerator;->writeEndArray()V

    goto :goto_20

    .line 120
    .end local v3           #i:I
    .end local v5           #listValue:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    .end local v6           #size:I
    :cond_80
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 121
    invoke-static {p1}, Lcom/google/api/client/util/DataUtil;->mapOf(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_8f
    :goto_8f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_ae

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 122
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 123
    .local v2, fieldValue:Ljava/lang/Object;
    if-eqz v2, :cond_8f

    .line 124
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 125
    .local v1, fieldName:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 126
    invoke-static {p0, v2}, Lcom/google/api/client/json/Json;->serialize(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V

    goto :goto_8f

    .line 129
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1           #fieldName:Ljava/lang/String;
    .end local v2           #fieldValue:Ljava/lang/Object;
    :cond_ae
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonGenerator;->writeEndObject()V

    goto/16 :goto_20
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 6
    .parameter "item"

    .prologue
    .line 74
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 76
    .local v0, byteStream:Ljava/io/ByteArrayOutputStream;
    :try_start_5
    sget-object v3, Lcom/google/api/client/json/Json;->JSON_FACTORY:Lorg/codehaus/jackson/JsonFactory;

    sget-object v4, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    invoke-virtual {v3, v0, v4}, Lorg/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/OutputStream;Lorg/codehaus/jackson/JsonEncoding;)Lorg/codehaus/jackson/JsonGenerator;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_c} :catch_1d

    move-result-object v2

    .line 79
    .local v2, generator:Lorg/codehaus/jackson/JsonGenerator;
    :try_start_d
    invoke-static {v2, p0}, Lcom/google/api/client/json/Json;->serialize(Lorg/codehaus/jackson/JsonGenerator;Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_18

    .line 81
    :try_start_10
    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonGenerator;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_1d

    .line 86
    .end local v2           #generator:Lorg/codehaus/jackson/JsonGenerator;
    :goto_13
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 81
    .restart local v2       #generator:Lorg/codehaus/jackson/JsonGenerator;
    :catchall_18
    move-exception v3

    :try_start_19
    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonGenerator;->close()V

    throw v3
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1d} :catch_1d

    .line 83
    .end local v2           #generator:Lorg/codehaus/jackson/JsonGenerator;
    :catch_1d
    move-exception v1

    .line 84
    .local v1, e:Ljava/io/IOException;
    new-instance v3, Ljava/io/PrintStream;

    invoke-direct {v3, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, v3}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_13
.end method
