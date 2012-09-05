.class public final Lcom/google/api/client/http/UrlEncodedParser;
.super Ljava/lang/Object;
.source "UrlEncodedParser.java"

# interfaces
.implements Lcom/google/api/client/http/HttpParser;


# instance fields
.field public disableContentLogging:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 18
    .parameter "content"
    .parameter "data"

    .prologue
    .line 66
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 67
    .local v3, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v3}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v2

    .line 68
    .local v2, classInfo:Lcom/google/api/client/util/ClassInfo;
    const-class v13, Lcom/google/api/client/util/GenericData;

    invoke-virtual {v13, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_60

    move-object/from16 v13, p1

    check-cast v13, Lcom/google/api/client/util/GenericData;

    move-object v8, v13

    .line 71
    .local v8, genericData:Lcom/google/api/client/util/GenericData;
    :goto_15
    const-class v13, Ljava/util/Map;

    invoke-virtual {v13, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_62

    move-object/from16 v13, p1

    check-cast v13, Ljava/util/Map;

    move-object v10, v13

    .line 73
    .local v10, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :goto_22
    const/4 v4, 0x0

    .line 74
    .local v4, cur:I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v9

    .line 75
    .local v9, length:I
    :goto_27
    if-ge v4, v9, :cond_9c

    .line 76
    const/16 v13, 0x26

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 77
    .local v1, amp:I
    const/4 v13, -0x1

    if-ne v1, v13, :cond_35

    .line 78
    move v1, v9

    .line 80
    :cond_35
    const/16 v13, 0x3d

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 81
    .local v5, equals:I
    if-le v5, v4, :cond_41

    if-lt v5, v1, :cond_64

    .line 82
    :cond_41
    new-instance v13, Ljava/lang/IllegalArgumentException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "malformed URL encoding: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 68
    .end local v1           #amp:I
    .end local v4           #cur:I
    .end local v5           #equals:I
    .end local v8           #genericData:Lcom/google/api/client/util/GenericData;
    .end local v9           #length:I
    .end local v10           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_60
    const/4 v8, 0x0

    goto :goto_15

    .line 71
    .restart local v8       #genericData:Lcom/google/api/client/util/GenericData;
    :cond_62
    const/4 v10, 0x0

    goto :goto_22

    .line 85
    .restart local v1       #amp:I
    .restart local v4       #cur:I
    .restart local v5       #equals:I
    .restart local v9       #length:I
    .restart local v10       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_64
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/google/api/client/escape/CharEscapers;->decodeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 86
    .local v11, name:Ljava/lang/String;
    add-int/lit8 v13, v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/google/api/client/escape/CharEscapers;->decodeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 88
    .local v12, value:Ljava/lang/String;
    invoke-virtual {v2, v11}, Lcom/google/api/client/util/ClassInfo;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 89
    .local v6, field:Ljava/lang/reflect/Field;
    if-eqz v6, :cond_90

    .line 90
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/google/api/client/http/UrlEncodedParser;->parseValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    .line 91
    .local v7, fieldValue:Ljava/lang/Object;
    move-object/from16 v0, p1

    invoke-static {v6, v0, v7}, Lcom/google/api/client/util/FieldInfo;->setFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    .end local v7           #fieldValue:Ljava/lang/Object;
    :cond_8d
    :goto_8d
    add-int/lit8 v4, v1, 0x1

    .line 98
    goto :goto_27

    .line 92
    :cond_90
    if-eqz v8, :cond_96

    .line 93
    invoke-virtual {v8, v11, v12}, Lcom/google/api/client/util/GenericData;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8d

    .line 94
    :cond_96
    if-eqz v10, :cond_8d

    .line 95
    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8d

    .line 99
    .end local v1           #amp:I
    .end local v5           #equals:I
    .end local v6           #field:Ljava/lang/reflect/Field;
    .end local v11           #name:Ljava/lang/String;
    .end local v12           #value:Ljava/lang/String;
    :cond_9c
    return-void
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
    .line 102
    .local p1, fieldClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz p1, :cond_6

    const-class v0, Ljava/lang/String;

    if-ne p1, v0, :cond_8

    :cond_6
    move-object v0, p0

    .line 134
    :goto_7
    return-object v0

    .line 105
    :cond_8
    const-class v0, Ljava/lang/Integer;

    if-eq p1, v0, :cond_10

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_16

    .line 106
    :cond_10
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    goto :goto_7

    .line 108
    :cond_16
    const-class v0, Ljava/lang/Short;

    if-eq p1, v0, :cond_1e

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_24

    .line 109
    :cond_1e
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, p0}, Ljava/lang/Short;-><init>(Ljava/lang/String;)V

    goto :goto_7

    .line 111
    :cond_24
    const-class v0, Ljava/lang/Byte;

    if-eq p1, v0, :cond_2c

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_32

    .line 112
    :cond_2c
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, p0}, Ljava/lang/Byte;-><init>(Ljava/lang/String;)V

    goto :goto_7

    .line 114
    :cond_32
    const-class v0, Ljava/lang/Long;

    if-eq p1, v0, :cond_3a

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_40

    .line 115
    :cond_3a
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p0}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    goto :goto_7

    .line 117
    :cond_40
    const-class v0, Ljava/lang/Double;

    if-eq p1, v0, :cond_48

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_4e

    .line 118
    :cond_48
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p0}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    goto :goto_7

    .line 120
    :cond_4e
    const-class v0, Ljava/lang/Character;

    if-eq p1, v0, :cond_56

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_80

    .line 121
    :cond_56
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_76

    .line 122
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

    .line 125
    :cond_76
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    goto :goto_7

    .line 127
    :cond_80
    const-class v0, Lcom/google/api/client/util/DateTime;

    if-ne p1, v0, :cond_8a

    .line 128
    invoke-static {p0}, Lcom/google/api/client/util/DateTime;->parseRfc3339(Ljava/lang/String;)Lcom/google/api/client/util/DateTime;

    move-result-object v0

    goto/16 :goto_7

    .line 130
    :cond_8a
    const-class v0, Ljava/lang/Boolean;

    if-eq p1, v0, :cond_92

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_a2

    .line 131
    :cond_92
    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9e

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_7

    :cond_9e
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_7

    .line 133
    :cond_a2
    const-class v0, Ljava/lang/Float;

    if-eq p1, v0, :cond_aa

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_b0

    .line 134
    :cond_aa
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    goto/16 :goto_7

    .line 136
    :cond_b0
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


# virtual methods
.method public getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    const-string v0, "application/x-www-form-urlencoded"

    return-object v0
.end method

.method public parse(Lcom/google/api/client/http/HttpResponse;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .parameter "response"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/api/client/http/HttpResponse;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    .local p2, dataClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    iget-boolean v1, p0, Lcom/google/api/client/http/UrlEncodedParser;->disableContentLogging:Z

    if-eqz v1, :cond_7

    .line 57
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/google/api/client/http/HttpResponse;->disableContentLogging:Z

    .line 59
    :cond_7
    invoke-static {p2}, Lcom/google/api/client/util/ClassInfo;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 60
    .local v0, newInstance:Ljava/lang/Object;,"TT;"
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->parseAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/api/client/http/UrlEncodedParser;->parse(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    return-object v0
.end method
