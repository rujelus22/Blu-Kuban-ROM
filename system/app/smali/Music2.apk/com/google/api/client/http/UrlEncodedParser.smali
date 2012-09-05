.class public final Lcom/google/api/client/http/UrlEncodedParser;
.super Ljava/lang/Object;
.source "UrlEncodedParser.java"


# instance fields
.field public contentType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-string v0, "application/x-www-form-urlencoded"

    iput-object v0, p0, Lcom/google/api/client/http/UrlEncodedParser;->contentType:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 15
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v11, 0x3d

    const/4 v10, -0x1

    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 106
    invoke-static {v3}, Lcom/google/api/client/util/ClassInfo;->of(Ljava/lang/Class;)Lcom/google/api/client/util/ClassInfo;

    move-result-object v7

    .line 107
    const-class v0, Lcom/google/api/client/util/GenericData;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_88

    move-object v0, p1

    check-cast v0, Lcom/google/api/client/util/GenericData;

    move-object v1, v0

    .line 110
    :goto_18
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_24

    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    move-object v2, v0

    .line 112
    :cond_24
    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 114
    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    move v3, v0

    .line 115
    :goto_2e
    if-ge v3, v6, :cond_b6

    .line 116
    const/16 v0, 0x26

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 117
    if-ne v0, v10, :cond_b7

    move v5, v6

    .line 122
    :goto_39
    if-eq v4, v10, :cond_8a

    if-ge v4, v5, :cond_8a

    .line 123
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 124
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/escape/CharEscapers;->decodeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    add-int/lit8 v4, v5, 0x1

    invoke-virtual {p0, v11, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    move-object v12, v0

    move-object v0, v3

    move-object v3, v12

    .line 131
    :goto_54
    invoke-static {v0}, Lcom/google/api/client/escape/CharEscapers;->decodeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 133
    invoke-virtual {v7, v8}, Lcom/google/api/client/util/ClassInfo;->getFieldInfo(Ljava/lang/String;)Lcom/google/api/client/util/FieldInfo;

    move-result-object v9

    .line 134
    if-eqz v9, :cond_9c

    .line 135
    iget-object v8, v9, Lcom/google/api/client/util/FieldInfo;->type:Ljava/lang/Class;

    .line 136
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 137
    invoke-virtual {v9, p1}, Lcom/google/api/client/util/FieldInfo;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 139
    if-nez v0, :cond_77

    .line 140
    invoke-static {v8}, Lcom/google/api/client/util/ClassInfo;->newCollectionInstance(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v0

    .line 141
    invoke-virtual {v9, p1, v0}, Lcom/google/api/client/util/FieldInfo;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 143
    :cond_77
    iget-object v8, v9, Lcom/google/api/client/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-static {v8}, Lcom/google/api/client/util/ClassInfo;->getCollectionParameter(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object v8

    .line 145
    invoke-static {v8, v3}, Lcom/google/api/client/util/FieldInfo;->parsePrimitiveValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 163
    :goto_84
    add-int/lit8 v0, v5, 0x1

    move v3, v0

    .line 164
    goto :goto_2e

    :cond_88
    move-object v1, v2

    .line 107
    goto :goto_18

    .line 128
    :cond_8a
    invoke-virtual {p0, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 129
    const-string v0, ""

    move-object v12, v0

    move-object v0, v3

    move-object v3, v12

    goto :goto_54

    .line 148
    :cond_94
    invoke-static {v8, v3}, Lcom/google/api/client/util/FieldInfo;->parsePrimitiveValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, p1, v0}, Lcom/google/api/client/util/FieldInfo;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_84

    .line 152
    :cond_9c
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 153
    if-nez v0, :cond_ae

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    if-eqz v1, :cond_b2

    .line 156
    invoke-virtual {v1, v8, v0}, Lcom/google/api/client/util/GenericData;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    :cond_ae
    :goto_ae
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_84

    .line 158
    :cond_b2
    invoke-interface {v2, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ae

    .line 165
    :cond_b6
    return-void

    :cond_b7
    move v5, v0

    goto :goto_39
.end method
