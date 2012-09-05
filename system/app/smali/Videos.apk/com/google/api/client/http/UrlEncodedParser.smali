.class public final Lcom/google/api/client/http/UrlEncodedParser;
.super Ljava/lang/Object;
.source "UrlEncodedParser.java"

# interfaces
.implements Lcom/google/api/client/http/HttpParser;


# instance fields
.field public contentType:Ljava/lang/String;

.field public disableContentLogging:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const-string v0, "application/x-www-form-urlencoded"

    iput-object v0, p0, Lcom/google/api/client/http/UrlEncodedParser;->contentType:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 16
    .parameter
    .parameter

    .prologue
    .line 111
    if-nez p0, :cond_3

    .line 184
    :goto_2
    return-void

    .line 114
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 115
    invoke-static {v2}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v8

    .line 116
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/reflect/Type;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 117
    const-class v0, Lcom/google/api/client/util/GenericData;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_97

    move-object v0, p1

    check-cast v0, Lcom/google/api/client/util/GenericData;

    move-object v1, v0

    .line 119
    :goto_21
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9a

    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    move-object v2, v0

    .line 120
    :goto_2d
    new-instance v10, Lcom/google/api/client/util/ArrayValueMap;

    invoke-direct {v10, p1}, Lcom/google/api/client/util/ArrayValueMap;-><init>(Ljava/lang/Object;)V

    .line 121
    const/4 v0, 0x0

    .line 122
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    .line 123
    const/16 v3, 0x3d

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    move v3, v0

    .line 124
    :goto_3e
    if-ge v3, v7, :cond_f8

    .line 126
    const/16 v0, 0x26

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 127
    const/4 v5, -0x1

    if-ne v0, v5, :cond_fd

    move v6, v7

    .line 132
    :goto_4a
    const/4 v0, -0x1

    if-eq v4, v0, :cond_9d

    if-ge v4, v6, :cond_9d

    .line 133
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 134
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p0, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/escape/CharEscapers;->decodeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    const/16 v4, 0x3d

    add-int/lit8 v5, v6, 0x1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    move-object v13, v0

    move-object v0, v3

    move-object v3, v13

    .line 140
    :goto_68
    invoke-static {v0}, Lcom/google/api/client/util/escape/CharEscapers;->decodeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 142
    invoke-virtual {v8, v5}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v11

    .line 143
    if-eqz v11, :cond_dc

    .line 144
    invoke-virtual {v11}, Lcom/google/api/client/util/FieldInfo;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/google/api/client/util/Data;->resolveWildcardTypeOrTypeVariable(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v5

    .line 146
    invoke-static {v5}, Lcom/google/api/client/util/Types;->isArray(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 148
    invoke-static {v5}, Lcom/google/api/client/util/Types;->getArrayComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/google/api/client/util/Types;->getRawArrayComponentType(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 150
    invoke-virtual {v11}, Lcom/google/api/client/util/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-static {v0, v9, v3}, Lcom/google/api/client/http/UrlEncodedParser;->parseValue(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v10, v5, v0, v3}, Lcom/google/api/client/util/ArrayValueMap;->put(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 181
    :cond_93
    :goto_93
    add-int/lit8 v0, v6, 0x1

    move v3, v0

    .line 182
    goto :goto_3e

    .line 117
    :cond_97
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_21

    .line 119
    :cond_9a
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_2d

    .line 137
    :cond_9d
    invoke-virtual {p0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 138
    const-string v0, ""

    move-object v13, v0

    move-object v0, v3

    move-object v3, v13

    goto :goto_68

    .line 152
    :cond_a7
    invoke-static {v9, v5}, Lcom/google/api/client/util/Types;->getRawArrayComponentType(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const-class v12, Ljava/lang/Iterable;

    invoke-static {v0, v12}, Lcom/google/api/client/util/Types;->isAssignableToOrFrom(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d4

    .line 156
    invoke-virtual {v11, p1}, Lcom/google/api/client/util/FieldInfo;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 157
    if-nez v0, :cond_c2

    .line 158
    invoke-static {v5}, Lcom/google/api/client/util/Data;->newCollectionInstance(Ljava/lang/reflect/Type;)Ljava/util/Collection;

    move-result-object v0

    .line 159
    invoke-virtual {v11, p1, v0}, Lcom/google/api/client/util/FieldInfo;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 161
    :cond_c2
    const-class v11, Ljava/lang/Object;

    if-ne v5, v11, :cond_cf

    const/4 v5, 0x0

    .line 162
    :goto_c7
    invoke-static {v5, v9, v3}, Lcom/google/api/client/http/UrlEncodedParser;->parseValue(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_93

    .line 161
    :cond_cf
    invoke-static {v5}, Lcom/google/api/client/util/Types;->getIterableParameter(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v5

    goto :goto_c7

    .line 165
    :cond_d4
    invoke-static {v5, v9, v3}, Lcom/google/api/client/http/UrlEncodedParser;->parseValue(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v11, p1, v0}, Lcom/google/api/client/util/FieldInfo;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_93

    .line 167
    :cond_dc
    if-eqz v2, :cond_93

    .line 170
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 171
    if-nez v0, :cond_f0

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    if-eqz v1, :cond_f4

    .line 174
    invoke-virtual {v1, v5, v0}, Lcom/google/api/client/util/GenericData;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    :cond_f0
    :goto_f0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_93

    .line 176
    :cond_f4
    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f0

    .line 183
    :cond_f8
    invoke-virtual {v10}, Lcom/google/api/client/util/ArrayValueMap;->setValues()V

    goto/16 :goto_2

    :cond_fd
    move v6, v0

    goto/16 :goto_4a
.end method

.method private static parseValue(Ljava/lang/reflect/Type;Ljava/util/List;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .parameter "valueType"
    .parameter
    .parameter "value"
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
    .line 187
    .local p1, context:Ljava/util/List;,"Ljava/util/List<Ljava/lang/reflect/Type;>;"
    invoke-static {p1, p0}, Lcom/google/api/client/util/Data;->resolveWildcardTypeOrTypeVariable(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 188
    .local v0, resolved:Ljava/lang/reflect/Type;
    invoke-static {v0, p2}, Lcom/google/api/client/util/Data;->parsePrimitiveValue(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/api/client/http/UrlEncodedParser;->contentType:Ljava/lang/String;

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
    .line 80
    .local p2, dataClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    iget-boolean v1, p0, Lcom/google/api/client/http/UrlEncodedParser;->disableContentLogging:Z

    if-eqz v1, :cond_7

    .line 81
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/google/api/client/http/HttpResponse;->disableContentLogging:Z

    .line 83
    :cond_7
    invoke-static {p2}, Lcom/google/api/client/util/Types;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 84
    .local v0, newInstance:Ljava/lang/Object;,"TT;"
    invoke-virtual {p1}, Lcom/google/api/client/http/HttpResponse;->parseAsString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/api/client/http/UrlEncodedParser;->parse(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    return-object v0
.end method