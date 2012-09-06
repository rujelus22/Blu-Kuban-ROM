.class public abstract Lcom/google/android/apps/plus/json/EsJson;
.super Ljava/lang/Object;
.source "EsJson.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/plus/json/EsJson$SimpleJson;,
        Lcom/google/android/apps/plus/json/EsJson$FieldConverter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final JSON_KEY:Ljava/lang/Object;

.field protected static final JSON_STRING:Ljava/lang/Object;

.field private static final UTF_8:Ljava/nio/charset/Charset;

.field private static sSimpleJsonMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/android/apps/plus/json/EsJson$SimpleJson",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private mConfiguration:[Ljava/lang/Object;

.field private mFieldConverters:[Lcom/google/android/apps/plus/json/EsJson$FieldConverter;

.field private mTargetClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/json/EsJson;->JSON_STRING:Ljava/lang/Object;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/json/EsJson;->JSON_KEY:Ljava/lang/Object;

    .line 50
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/plus/json/EsJson;->UTF_8:Ljava/nio/charset/Charset;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/apps/plus/json/EsJson;->sSimpleJsonMap:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 87
    .local p0, this:Lcom/google/android/apps/plus/json/EsJson;,"Lcom/google/android/apps/plus/json/EsJson<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method

.method protected varargs constructor <init>(Ljava/lang/Class;[Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter "configuration"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 107
    .local p0, this:Lcom/google/android/apps/plus/json/EsJson;,"Lcom/google/android/apps/plus/json/EsJson<TT;>;"
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/google/android/apps/plus/json/EsJson;->mTargetClass:Ljava/lang/Class;

    .line 109
    iput-object p2, p0, Lcom/google/android/apps/plus/json/EsJson;->mConfiguration:[Ljava/lang/Object;

    .line 110
    return-void
.end method

.method public static varargs buildJson(Ljava/lang/Class;[Ljava/lang/Object;)Lcom/google/android/apps/plus/json/EsJson;
    .registers 3
    .parameter
    .parameter "configuration"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/apps/plus/json/EsJson",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 138
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TE;>;"
    new-instance v0, Lcom/google/android/apps/plus/json/EsJson$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/apps/plus/json/EsJson$1;-><init>(Ljava/lang/Class;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getSimpleJson(Ljava/lang/Class;)Lcom/google/android/apps/plus/json/EsJson;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;)",
            "Lcom/google/android/apps/plus/json/EsJson",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TE;>;"
    sget-object v1, Lcom/google/android/apps/plus/json/EsJson;->sSimpleJsonMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/plus/json/EsJson$SimpleJson;

    .line 125
    .local v0, json:Lcom/google/android/apps/plus/json/EsJson$SimpleJson;,"Lcom/google/android/apps/plus/json/EsJson$SimpleJson<TE;>;"
    if-nez v0, :cond_14

    .line 126
    new-instance v0, Lcom/google/android/apps/plus/json/EsJson$SimpleJson;

    .end local v0           #json:Lcom/google/android/apps/plus/json/EsJson$SimpleJson;,"Lcom/google/android/apps/plus/json/EsJson$SimpleJson<TE;>;"
    invoke-direct {v0, p0}, Lcom/google/android/apps/plus/json/EsJson$SimpleJson;-><init>(Ljava/lang/Class;)V

    .line 127
    .restart local v0       #json:Lcom/google/android/apps/plus/json/EsJson$SimpleJson;,"Lcom/google/android/apps/plus/json/EsJson$SimpleJson<TE;>;"
    sget-object v1, Lcom/google/android/apps/plus/json/EsJson;->sSimpleJsonMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_14
    return-object v0
.end method

.method private initConverter(Lcom/google/android/apps/plus/json/EsJson$FieldConverter;Ljava/lang/reflect/Field;Z)V
    .registers 10
    .parameter "converter"
    .parameter "field"
    .parameter "asString"

    .prologue
    .local p0, this:Lcom/google/android/apps/plus/json/EsJson;,"Lcom/google/android/apps/plus/json/EsJson<TT;>;"
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 224
    iput-object p2, p1, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->field:Ljava/lang/reflect/Field;

    .line 226
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 227
    .local v2, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v3, Ljava/lang/String;

    if-ne v2, v3, :cond_18

    .line 228
    iput v4, p1, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->type:I

    .line 271
    :cond_f
    :goto_f
    if-eqz p3, :cond_17

    .line 272
    iget v3, p1, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->type:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p1, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->type:I

    .line 274
    :cond_17
    return-void

    .line 229
    :cond_18
    const-class v3, Ljava/lang/Integer;

    if-eq v2, v3, :cond_20

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_24

    .line 230
    :cond_20
    const/4 v3, 0x1

    iput v3, p1, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->type:I

    goto :goto_f

    .line 231
    :cond_24
    const-class v3, Ljava/lang/Long;

    if-eq v2, v3, :cond_2c

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_30

    .line 232
    :cond_2c
    const/4 v3, 0x2

    iput v3, p1, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->type:I

    goto :goto_f

    .line 233
    :cond_30
    const-class v3, Ljava/lang/Float;

    if-eq v2, v3, :cond_38

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_3c

    .line 234
    :cond_38
    const/4 v3, 0x3

    iput v3, p1, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->type:I

    goto :goto_f

    .line 235
    :cond_3c
    const-class v3, Ljava/lang/Double;

    if-eq v2, v3, :cond_44

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_48

    .line 236
    :cond_44
    const/4 v3, 0x4

    iput v3, p1, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->type:I

    goto :goto_f

    .line 237
    :cond_48
    const-class v3, Ljava/lang/Boolean;

    if-eq v2, v3, :cond_50

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_54

    .line 238
    :cond_50
    const/4 v3, 0x5

    iput v3, p1, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->type:I

    goto :goto_f

    .line 239
    :cond_54
    const-class v3, Ljava/math/BigInteger;

    if-ne v2, v3, :cond_5c

    .line 240
    const/4 v3, 0x6

    iput v3, p1, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->type:I

    goto :goto_f

    .line 241
    :cond_5c
    const-class v3, Ljava/util/List;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_b2

    .line 242
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 243
    .local v0, genericType:Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    aget-object v1, v3, v4

    check-cast v1, Ljava/lang/Class;

    .line 244
    .local v1, listItemClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v3, 0x7

    iput v3, p1, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->type:I

    .line 245
    const-class v3, Ljava/lang/String;

    if-ne v1, v3, :cond_85

    .line 246
    iput v4, p1, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->itemType:I

    .line 263
    :goto_7b
    if-eqz p3, :cond_f

    .line 264
    iget v3, p1, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->itemType:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p1, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->itemType:I

    .line 265
    const/4 p3, 0x0

    goto :goto_f

    .line 247
    :cond_85
    const-class v3, Ljava/lang/Integer;

    if-ne v1, v3, :cond_8c

    .line 248
    iput v4, p1, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->itemType:I

    goto :goto_7b

    .line 249
    :cond_8c
    const-class v3, Ljava/lang/Long;

    if-ne v1, v3, :cond_93

    .line 250
    iput v4, p1, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->itemType:I

    goto :goto_7b

    .line 251
    :cond_93
    const-class v3, Ljava/lang/Float;

    if-ne v1, v3, :cond_9a

    .line 252
    iput v4, p1, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->itemType:I

    goto :goto_7b

    .line 253
    :cond_9a
    const-class v3, Ljava/lang/Double;

    if-ne v1, v3, :cond_a1

    .line 254
    iput v4, p1, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->itemType:I

    goto :goto_7b

    .line 255
    :cond_a1
    const-class v3, Ljava/lang/Boolean;

    if-ne v1, v3, :cond_a8

    .line 256
    iput v4, p1, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->itemType:I

    goto :goto_7b

    .line 257
    :cond_a8
    const-class v3, Ljava/math/BigInteger;

    if-ne v1, v3, :cond_af

    .line 258
    iput v4, p1, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->itemType:I

    goto :goto_7b

    .line 260
    :cond_af
    iput v5, p1, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->itemType:I

    goto :goto_7b

    .line 268
    .end local v0           #genericType:Ljava/lang/reflect/ParameterizedType;
    .end local v1           #listItemClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_b2
    iput v5, p1, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->type:I

    goto/16 :goto_f
.end method

.method private initializeFieldConverters()V
    .registers 16

    .prologue
    .local p0, this:Lcom/google/android/apps/plus/json/EsJson;,"Lcom/google/android/apps/plus/json/EsJson<TT;>;"
    const/4 v14, 0x0

    const/4 v13, 0x0

    .line 146
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v9, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/apps/plus/json/EsJson$FieldConverter;>;"
    const/4 v6, 0x0

    .line 148
    .local v6, index:I
    :goto_8
    iget-object v10, p0, Lcom/google/android/apps/plus/json/EsJson;->mConfiguration:[Ljava/lang/Object;

    array-length v10, v10

    if-ge v6, v10, :cond_cb

    .line 149
    new-instance v1, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;

    invoke-direct {v1, v14}, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;-><init>(Lcom/google/android/apps/plus/json/EsJson$1;)V

    .line 150
    .local v1, converter:Lcom/google/android/apps/plus/json/EsJson$FieldConverter;
    iget-object v10, p0, Lcom/google/android/apps/plus/json/EsJson;->mConfiguration:[Ljava/lang/Object;

    add-int/lit8 v7, v6, 0x1

    .end local v6           #index:I
    .local v7, index:I
    aget-object v3, v10, v6

    .line 151
    .local v3, element:Ljava/lang/Object;
    sget-object v10, Lcom/google/android/apps/plus/json/EsJson;->JSON_KEY:Ljava/lang/Object;

    if-ne v3, v10, :cond_d9

    .line 152
    iget-object v10, p0, Lcom/google/android/apps/plus/json/EsJson;->mConfiguration:[Ljava/lang/Object;

    add-int/lit8 v6, v7, 0x1

    .end local v7           #index:I
    .restart local v6       #index:I
    aget-object v10, v10, v7

    check-cast v10, Ljava/lang/String;

    iput-object v10, v1, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->key:Ljava/lang/String;

    .line 153
    iget-object v10, p0, Lcom/google/android/apps/plus/json/EsJson;->mConfiguration:[Ljava/lang/Object;

    add-int/lit8 v7, v6, 0x1

    .end local v6           #index:I
    .restart local v7       #index:I
    aget-object v3, v10, v6

    move v6, v7

    .line 156
    .end local v7           #index:I
    .restart local v6       #index:I
    :goto_2d
    const/4 v0, 0x0

    .line 157
    .local v0, asString:Z
    sget-object v10, Lcom/google/android/apps/plus/json/EsJson;->JSON_STRING:Ljava/lang/Object;

    if-ne v3, v10, :cond_3a

    .line 158
    const/4 v0, 0x1

    .line 159
    iget-object v10, p0, Lcom/google/android/apps/plus/json/EsJson;->mConfiguration:[Ljava/lang/Object;

    add-int/lit8 v7, v6, 0x1

    .end local v6           #index:I
    .restart local v7       #index:I
    aget-object v3, v10, v6

    move v6, v7

    .line 162
    .end local v7           #index:I
    .restart local v6       #index:I
    :cond_3a
    instance-of v10, v3, Lcom/google/android/apps/plus/json/EsJson;

    if-eqz v10, :cond_67

    .line 163
    check-cast v3, Lcom/google/android/apps/plus/json/EsJson;

    .end local v3           #element:Ljava/lang/Object;
    iput-object v3, v1, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->json:Lcom/google/android/apps/plus/json/EsJson;

    .line 164
    iget-object v10, p0, Lcom/google/android/apps/plus/json/EsJson;->mConfiguration:[Ljava/lang/Object;

    add-int/lit8 v7, v6, 0x1

    .end local v6           #index:I
    .restart local v7       #index:I
    aget-object v3, v10, v6

    .restart local v3       #element:Ljava/lang/Object;
    move v6, v7

    .end local v7           #index:I
    .restart local v6       #index:I
    :cond_49
    :goto_49
    move-object v5, v3

    .line 175
    check-cast v5, Ljava/lang/String;

    .line 176
    .local v5, fieldName:Ljava/lang/String;
    iget-object v10, v1, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->key:Ljava/lang/String;

    if-nez v10, :cond_52

    .line 177
    iput-object v5, v1, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->key:Ljava/lang/String;

    .line 180
    :cond_52
    iget-object v10, v1, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->key:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/String;->charAt(I)C

    move-result v10

    iput-char v10, v1, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->firstChar:C

    .line 184
    :try_start_5a
    iget-object v10, p0, Lcom/google/android/apps/plus/json/EsJson;->mTargetClass:Ljava/lang/Class;

    invoke-virtual {v10, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5a .. :try_end_5f} :catch_a5

    move-result-object v4

    .line 189
    .local v4, field:Ljava/lang/reflect/Field;
    invoke-direct {p0, v1, v4, v0}, Lcom/google/android/apps/plus/json/EsJson;->initConverter(Lcom/google/android/apps/plus/json/EsJson$FieldConverter;Ljava/lang/reflect/Field;Z)V

    .line 191
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 165
    .end local v4           #field:Ljava/lang/reflect/Field;
    .end local v5           #fieldName:Ljava/lang/String;
    :cond_67
    instance-of v10, v3, Ljava/lang/Class;

    if-eqz v10, :cond_49

    move-object v8, v3

    .line 166
    check-cast v8, Ljava/lang/Class;

    .line 168
    .local v8, jsonClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_6e
    const-string v10, "getInstance"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v8, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/apps/plus/json/EsJson;

    iput-object v10, v1, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->json:Lcom/google/android/apps/plus/json/EsJson;
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_83} :catch_8b

    .line 172
    iget-object v10, p0, Lcom/google/android/apps/plus/json/EsJson;->mConfiguration:[Ljava/lang/Object;

    add-int/lit8 v7, v6, 0x1

    .end local v6           #index:I
    .restart local v7       #index:I
    aget-object v3, v10, v6

    move v6, v7

    .end local v7           #index:I
    .restart local v6       #index:I
    goto :goto_49

    .line 169
    :catch_8b
    move-exception v2

    .line 170
    .local v2, e:Ljava/lang/Exception;
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid EsJson class: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 185
    .end local v2           #e:Ljava/lang/Exception;
    .end local v8           #jsonClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v5       #fieldName:Ljava/lang/String;
    :catch_a5
    move-exception v2

    .line 186
    .local v2, e:Ljava/lang/NoSuchFieldException;
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No such field: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/google/android/apps/plus/json/EsJson;->mTargetClass:Ljava/lang/Class;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 194
    .end local v0           #asString:Z
    .end local v1           #converter:Lcom/google/android/apps/plus/json/EsJson$FieldConverter;
    .end local v2           #e:Ljava/lang/NoSuchFieldException;
    .end local v3           #element:Ljava/lang/Object;
    .end local v5           #fieldName:Ljava/lang/String;
    :cond_cb
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Lcom/google/android/apps/plus/json/EsJson$FieldConverter;

    iput-object v10, p0, Lcom/google/android/apps/plus/json/EsJson;->mFieldConverters:[Lcom/google/android/apps/plus/json/EsJson$FieldConverter;

    .line 195
    iget-object v10, p0, Lcom/google/android/apps/plus/json/EsJson;->mFieldConverters:[Lcom/google/android/apps/plus/json/EsJson$FieldConverter;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 196
    return-void

    .end local v6           #index:I
    .restart local v1       #converter:Lcom/google/android/apps/plus/json/EsJson$FieldConverter;
    .restart local v3       #element:Ljava/lang/Object;
    .restart local v7       #index:I
    :cond_d9
    move v6, v7

    .end local v7           #index:I
    .restart local v6       #index:I
    goto/16 :goto_2d
.end method

.method private writeObject(Lcom/google/android/apps/plus/json/JsonWriter;Ljava/lang/Object;)V
    .registers 13
    .parameter "writer"
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 569
    .local p0, this:Lcom/google/android/apps/plus/json/EsJson;,"Lcom/google/android/apps/plus/json/EsJson<TT;>;"
    iget-object v8, p0, Lcom/google/android/apps/plus/json/EsJson;->mFieldConverters:[Lcom/google/android/apps/plus/json/EsJson$FieldConverter;

    if-nez v8, :cond_13

    .line 570
    iget-object v8, p0, Lcom/google/android/apps/plus/json/EsJson;->mTargetClass:Ljava/lang/Class;

    if-nez v8, :cond_10

    .line 571
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    const-string v9, "A JSON class must either configure the automatic parser or override read(Jsonwriter)"

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 574
    :cond_10
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/EsJson;->initializeFieldConverters()V

    .line 577
    :cond_13
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonWriter;->beginObject()Lcom/google/android/apps/plus/json/JsonWriter;

    .line 578
    invoke-virtual {p0, p2}, Lcom/google/android/apps/plus/json/EsJson;->getValues(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    .line 579
    .local v7, values:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1b
    array-length v8, v7

    if-ge v1, v8, :cond_b4

    .line 580
    aget-object v8, v7, v1

    if-nez v8, :cond_25

    .line 579
    :goto_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 584
    :cond_25
    aget-object v6, v7, v1

    .line 585
    .local v6, value:Ljava/lang/Object;
    iget-object v8, p0, Lcom/google/android/apps/plus/json/EsJson;->mFieldConverters:[Lcom/google/android/apps/plus/json/EsJson$FieldConverter;

    aget-object v0, v8, v1

    .line 586
    .local v0, converter:Lcom/google/android/apps/plus/json/EsJson$FieldConverter;
    iget-object v8, v0, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->key:Ljava/lang/String;

    invoke-virtual {p1, v8}, Lcom/google/android/apps/plus/json/JsonWriter;->name(Ljava/lang/String;)Lcom/google/android/apps/plus/json/JsonWriter;

    .line 587
    iget v8, v0, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->type:I

    packed-switch v8, :pswitch_data_b8

    :pswitch_35
    goto :goto_22

    .line 590
    :pswitch_36
    check-cast v6, Ljava/lang/String;

    .end local v6           #value:Ljava/lang/Object;
    invoke-virtual {p1, v6}, Lcom/google/android/apps/plus/json/JsonWriter;->value(Ljava/lang/String;)Lcom/google/android/apps/plus/json/JsonWriter;

    goto :goto_22

    .line 596
    .restart local v6       #value:Ljava/lang/Object;
    :pswitch_3c
    check-cast v6, Ljava/lang/Number;

    .end local v6           #value:Ljava/lang/Object;
    invoke-virtual {p1, v6}, Lcom/google/android/apps/plus/json/JsonWriter;->value(Ljava/lang/Number;)Lcom/google/android/apps/plus/json/JsonWriter;

    goto :goto_22

    .line 600
    .restart local v6       #value:Ljava/lang/Object;
    :pswitch_42
    check-cast v6, Ljava/lang/Float;

    .end local v6           #value:Ljava/lang/Object;
    invoke-virtual {p1, v6}, Lcom/google/android/apps/plus/json/JsonWriter;->value(Ljava/lang/Number;)Lcom/google/android/apps/plus/json/JsonWriter;

    goto :goto_22

    .line 604
    .restart local v6       #value:Ljava/lang/Object;
    :pswitch_48
    check-cast v6, Ljava/lang/Double;

    .end local v6           #value:Ljava/lang/Object;
    invoke-virtual {p1, v6}, Lcom/google/android/apps/plus/json/JsonWriter;->value(Ljava/lang/Number;)Lcom/google/android/apps/plus/json/JsonWriter;

    goto :goto_22

    .line 608
    .restart local v6       #value:Ljava/lang/Object;
    :pswitch_4e
    check-cast v6, Ljava/lang/Boolean;

    .end local v6           #value:Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {p1, v8}, Lcom/google/android/apps/plus/json/JsonWriter;->value(Z)Lcom/google/android/apps/plus/json/JsonWriter;

    goto :goto_22

    .line 617
    .restart local v6       #value:Ljava/lang/Object;
    :pswitch_58
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/google/android/apps/plus/json/JsonWriter;->value(Ljava/lang/String;)Lcom/google/android/apps/plus/json/JsonWriter;

    goto :goto_22

    .line 621
    :pswitch_60
    iget-object v8, v0, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->json:Lcom/google/android/apps/plus/json/EsJson;

    invoke-direct {v8, p1, v6}, Lcom/google/android/apps/plus/json/EsJson;->writeObject(Lcom/google/android/apps/plus/json/JsonWriter;Ljava/lang/Object;)V

    goto :goto_22

    :pswitch_66
    move-object v4, v6

    .line 625
    check-cast v4, Ljava/util/List;

    .line 626
    .local v4, list:Ljava/util/List;,"Ljava/util/List<*>;"
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonWriter;->beginArray()Lcom/google/android/apps/plus/json/JsonWriter;

    .line 627
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 628
    .local v5, size:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_71
    if-ge v3, v5, :cond_af

    .line 629
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 630
    .local v2, item:Ljava/lang/Object;
    iget v8, v0, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->itemType:I

    sparse-switch v8, :sswitch_data_10a

    .line 628
    .end local v2           #item:Ljava/lang/Object;
    :goto_7c
    add-int/lit8 v3, v3, 0x1

    goto :goto_71

    .line 633
    .restart local v2       #item:Ljava/lang/Object;
    :sswitch_7f
    check-cast v2, Ljava/lang/String;

    .end local v2           #item:Ljava/lang/Object;
    invoke-virtual {p1, v2}, Lcom/google/android/apps/plus/json/JsonWriter;->value(Ljava/lang/String;)Lcom/google/android/apps/plus/json/JsonWriter;

    goto :goto_7c

    .line 639
    .restart local v2       #item:Ljava/lang/Object;
    :sswitch_85
    check-cast v2, Ljava/lang/Number;

    .end local v2           #item:Ljava/lang/Object;
    invoke-virtual {p1, v2}, Lcom/google/android/apps/plus/json/JsonWriter;->value(Ljava/lang/Number;)Lcom/google/android/apps/plus/json/JsonWriter;

    goto :goto_7c

    .line 643
    .restart local v2       #item:Ljava/lang/Object;
    :sswitch_8b
    check-cast v2, Ljava/lang/Float;

    .end local v2           #item:Ljava/lang/Object;
    invoke-virtual {p1, v2}, Lcom/google/android/apps/plus/json/JsonWriter;->value(Ljava/lang/Number;)Lcom/google/android/apps/plus/json/JsonWriter;

    goto :goto_7c

    .line 647
    .restart local v2       #item:Ljava/lang/Object;
    :sswitch_91
    check-cast v2, Ljava/lang/Double;

    .end local v2           #item:Ljava/lang/Object;
    invoke-virtual {p1, v2}, Lcom/google/android/apps/plus/json/JsonWriter;->value(Ljava/lang/Number;)Lcom/google/android/apps/plus/json/JsonWriter;

    goto :goto_7c

    .line 651
    .restart local v2       #item:Ljava/lang/Object;
    :sswitch_97
    check-cast v2, Ljava/lang/Boolean;

    .end local v2           #item:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {p1, v8}, Lcom/google/android/apps/plus/json/JsonWriter;->value(Z)Lcom/google/android/apps/plus/json/JsonWriter;

    goto :goto_7c

    .line 660
    .restart local v2       #item:Ljava/lang/Object;
    :sswitch_a1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/google/android/apps/plus/json/JsonWriter;->value(Ljava/lang/String;)Lcom/google/android/apps/plus/json/JsonWriter;

    goto :goto_7c

    .line 664
    :sswitch_a9
    iget-object v8, v0, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->json:Lcom/google/android/apps/plus/json/EsJson;

    invoke-direct {v8, p1, v2}, Lcom/google/android/apps/plus/json/EsJson;->writeObject(Lcom/google/android/apps/plus/json/JsonWriter;Ljava/lang/Object;)V

    goto :goto_7c

    .line 668
    .end local v2           #item:Ljava/lang/Object;
    :cond_af
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonWriter;->endArray()Lcom/google/android/apps/plus/json/JsonWriter;

    goto/16 :goto_22

    .line 674
    .end local v0           #converter:Lcom/google/android/apps/plus/json/EsJson$FieldConverter;
    .end local v3           #j:I
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<*>;"
    .end local v5           #size:I
    .end local v6           #value:Ljava/lang/Object;
    :cond_b4
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonWriter;->endObject()Lcom/google/android/apps/plus/json/JsonWriter;

    .line 675
    return-void

    .line 587
    :pswitch_data_b8
    .packed-switch 0x0
        :pswitch_36
        :pswitch_3c
        :pswitch_3c
        :pswitch_42
        :pswitch_48
        :pswitch_4e
        :pswitch_3c
        :pswitch_66
        :pswitch_60
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_36
        :pswitch_58
        :pswitch_58
        :pswitch_58
        :pswitch_58
        :pswitch_58
        :pswitch_58
    .end packed-switch

    .line 630
    :sswitch_data_10a
    .sparse-switch
        0x0 -> :sswitch_7f
        0x1 -> :sswitch_85
        0x2 -> :sswitch_85
        0x3 -> :sswitch_8b
        0x4 -> :sswitch_91
        0x5 -> :sswitch_97
        0x6 -> :sswitch_85
        0x8 -> :sswitch_a9
        0x20 -> :sswitch_7f
        0x21 -> :sswitch_a1
        0x22 -> :sswitch_a1
        0x23 -> :sswitch_a1
        0x24 -> :sswitch_a1
        0x25 -> :sswitch_a1
        0x26 -> :sswitch_a1
    .end sparse-switch
.end method


# virtual methods
.method protected buildDefaultConfiguration()V
    .registers 8

    .prologue
    .local p0, this:Lcom/google/android/apps/plus/json/EsJson;,"Lcom/google/android/apps/plus/json/EsJson<TT;>;"
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 202
    iget-object v4, p0, Lcom/google/android/apps/plus/json/EsJson;->mTargetClass:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 203
    .local v2, fields:[Ljava/lang/reflect/Field;
    array-length v4, v2

    new-array v4, v4, [Lcom/google/android/apps/plus/json/EsJson$FieldConverter;

    iput-object v4, p0, Lcom/google/android/apps/plus/json/EsJson;->mFieldConverters:[Lcom/google/android/apps/plus/json/EsJson$FieldConverter;

    .line 204
    const/4 v3, 0x0

    .local v3, i:I
    :goto_f
    array-length v4, v2

    if-ge v3, v4, :cond_65

    .line 205
    aget-object v1, v2, v3

    .line 206
    .local v1, field:Ljava/lang/reflect/Field;
    new-instance v0, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;-><init>(Lcom/google/android/apps/plus/json/EsJson$1;)V

    .line 207
    .local v0, converter:Lcom/google/android/apps/plus/json/EsJson$FieldConverter;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->key:Ljava/lang/String;

    .line 208
    iget-object v4, v0, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iput-char v4, v0, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->firstChar:C

    .line 209
    invoke-direct {p0, v0, v1, v5}, Lcom/google/android/apps/plus/json/EsJson;->initConverter(Lcom/google/android/apps/plus/json/EsJson$FieldConverter;Ljava/lang/reflect/Field;Z)V

    .line 210
    iget v4, v0, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->type:I

    if-eq v4, v6, :cond_33

    iget v4, v0, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->itemType:I

    if-ne v4, v6, :cond_5e

    .line 212
    :cond_33
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot use default JSON for object containing fields of non-basic types: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/apps/plus/json/EsJson;->mTargetClass:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 216
    :cond_5e
    iget-object v4, p0, Lcom/google/android/apps/plus/json/EsJson;->mFieldConverters:[Lcom/google/android/apps/plus/json/EsJson$FieldConverter;

    aput-object v0, v4, v3

    .line 204
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 218
    .end local v0           #converter:Lcom/google/android/apps/plus/json/EsJson$FieldConverter;
    .end local v1           #field:Ljava/lang/reflect/Field;
    :cond_65
    return-void
.end method

.method public fromByteArray([B)Ljava/lang/Object;
    .registers 6
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation

    .prologue
    .line 291
    .local p0, this:Lcom/google/android/apps/plus/json/EsJson;,"Lcom/google/android/apps/plus/json/EsJson<TT;>;"
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/json/EsJson;->fromInputStream(Ljava/io/InputStream;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_a

    move-result-object v1

    return-object v1

    .line 292
    :catch_a
    move-exception v0

    .line 293
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse JSON using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public fromInputStream(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 6
    .parameter "stream"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    .local p0, this:Lcom/google/android/apps/plus/json/EsJson;,"Lcom/google/android/apps/plus/json/EsJson<TT;>;"
    new-instance v0, Lcom/google/android/apps/plus/json/JsonReader;

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Lcom/google/android/apps/plus/json/EsJson;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Lcom/google/android/apps/plus/json/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 281
    .local v0, reader:Lcom/google/android/apps/plus/json/JsonReader;
    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/json/EsJson;->read(Lcom/google/android/apps/plus/json/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    .line 282
    .local v1, result:Ljava/lang/Object;,"TT;"
    invoke-virtual {v0}, Lcom/google/android/apps/plus/json/JsonReader;->close()V

    .line 283
    return-object v1
.end method

.method public fromString(Ljava/lang/String;)Ljava/lang/Object;
    .registers 8
    .parameter "string"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 303
    .local p0, this:Lcom/google/android/apps/plus/json/EsJson;,"Lcom/google/android/apps/plus/json/EsJson<TT;>;"
    :try_start_0
    new-instance v1, Lcom/google/android/apps/plus/json/JsonReader;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lcom/google/android/apps/plus/json/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 304
    .local v1, reader:Lcom/google/android/apps/plus/json/JsonReader;
    invoke-virtual {p0, v1}, Lcom/google/android/apps/plus/json/EsJson;->read(Lcom/google/android/apps/plus/json/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    .line 305
    .local v2, result:Ljava/lang/Object;,"TT;"
    invoke-virtual {v1}, Lcom/google/android/apps/plus/json/JsonReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_11} :catch_12

    .line 306
    return-object v2

    .line 307
    .end local v1           #reader:Lcom/google/android/apps/plus/json/JsonReader;
    .end local v2           #result:Ljava/lang/Object;,"TT;"
    :catch_12
    move-exception v0

    .line 308
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot parse JSON using "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected getValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 682
    .local p0, this:Lcom/google/android/apps/plus/json/EsJson;,"Lcom/google/android/apps/plus/json/EsJson<TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    iget-object v3, p0, Lcom/google/android/apps/plus/json/EsJson;->mFieldConverters:[Lcom/google/android/apps/plus/json/EsJson$FieldConverter;

    array-length v3, v3

    new-array v2, v3, [Ljava/lang/Object;

    .line 683
    .local v2, values:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    iget-object v3, p0, Lcom/google/android/apps/plus/json/EsJson;->mFieldConverters:[Lcom/google/android/apps/plus/json/EsJson$FieldConverter;

    array-length v3, v3

    if-ge v1, v3, :cond_3a

    .line 685
    :try_start_b
    iget-object v3, p0, Lcom/google/android/apps/plus/json/EsJson;->mFieldConverters:[Lcom/google/android/apps/plus/json/EsJson$FieldConverter;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_17} :catch_1a

    .line 683
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 686
    :catch_1a
    move-exception v0

    .line 687
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot obtain field value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/apps/plus/json/EsJson;->mFieldConverters:[Lcom/google/android/apps/plus/json/EsJson$FieldConverter;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 691
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3a
    return-object v2
.end method

.method public newInstance()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 377
    .local p0, this:Lcom/google/android/apps/plus/json/EsJson;,"Lcom/google/android/apps/plus/json/EsJson<TT;>;"
    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/plus/json/EsJson;->mTargetClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    .line 378
    :catch_7
    move-exception v0

    .line 379
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Cannot create new instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public read(Lcom/google/android/apps/plus/json/JsonReader;)Ljava/lang/Object;
    .registers 14
    .parameter "reader"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/plus/json/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 389
    .local p0, this:Lcom/google/android/apps/plus/json/EsJson;,"Lcom/google/android/apps/plus/json/EsJson<TT;>;"
    iget-object v9, p0, Lcom/google/android/apps/plus/json/EsJson;->mFieldConverters:[Lcom/google/android/apps/plus/json/EsJson$FieldConverter;

    if-nez v9, :cond_13

    .line 390
    iget-object v9, p0, Lcom/google/android/apps/plus/json/EsJson;->mTargetClass:Ljava/lang/Class;

    if-nez v9, :cond_10

    .line 391
    new-instance v9, Ljava/lang/UnsupportedOperationException;

    const-string v10, "A JSON class must either configure the automatic parser or override read(JsonReader)"

    invoke-direct {v9, v10}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 394
    :cond_10
    invoke-direct {p0}, Lcom/google/android/apps/plus/json/EsJson;->initializeFieldConverters()V

    .line 397
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/apps/plus/json/EsJson;->newInstance()Ljava/lang/Object;

    move-result-object v7

    .line 398
    .local v7, object:Ljava/lang/Object;,"TT;"
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->beginObject()V

    .line 399
    :goto_1a
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1c0

    .line 400
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    .line 401
    .local v5, key:Ljava/lang/String;
    const/4 v1, 0x0

    .line 402
    .local v1, converter:Lcom/google/android/apps/plus/json/EsJson$FieldConverter;
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 403
    .local v3, firstChar:C
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2b
    iget-object v9, p0, Lcom/google/android/apps/plus/json/EsJson;->mFieldConverters:[Lcom/google/android/apps/plus/json/EsJson$FieldConverter;

    array-length v9, v9

    if-ge v4, v9, :cond_41

    .line 404
    iget-object v9, p0, Lcom/google/android/apps/plus/json/EsJson;->mFieldConverters:[Lcom/google/android/apps/plus/json/EsJson$FieldConverter;

    aget-object v0, v9, v4

    .line 406
    .local v0, aConverter:Lcom/google/android/apps/plus/json/EsJson$FieldConverter;
    iget-char v9, v0, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->firstChar:C

    if-ne v9, v3, :cond_86

    iget-object v9, v0, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->key:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_86

    .line 407
    move-object v1, v0

    .line 412
    .end local v0           #aConverter:Lcom/google/android/apps/plus/json/EsJson$FieldConverter;
    :cond_41
    if-eqz v1, :cond_1bb

    .line 414
    iget v9, v1, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->type:I

    packed-switch v9, :pswitch_data_1c4

    .line 536
    :pswitch_48
    const/4 v8, 0x0

    .line 537
    .local v8, value:Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->skipValue()V

    .line 542
    .end local v8           #value:Ljava/lang/Object;
    :goto_4c
    :try_start_4c
    iget-object v9, v1, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v9, v7, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_51} :catch_52

    goto :goto_1a

    .line 543
    :catch_52
    move-exception v2

    .line 544
    .local v2, e:Ljava/lang/Exception;
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot assign field value: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 403
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #aConverter:Lcom/google/android/apps/plus/json/EsJson$FieldConverter;
    :cond_86
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 417
    .end local v0           #aConverter:Lcom/google/android/apps/plus/json/EsJson$FieldConverter;
    :pswitch_89
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v8

    .line 418
    .local v8, value:Ljava/lang/String;
    goto :goto_4c

    .line 421
    .end local v8           #value:Ljava/lang/String;
    :pswitch_8e
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->nextInt()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 422
    .local v8, value:Ljava/lang/Integer;
    goto :goto_4c

    .line 425
    .end local v8           #value:Ljava/lang/Integer;
    :pswitch_97
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 426
    .restart local v8       #value:Ljava/lang/Integer;
    goto :goto_4c

    .line 429
    .end local v8           #value:Ljava/lang/Integer;
    :pswitch_a0
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->nextLong()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 430
    .local v8, value:Ljava/lang/Long;
    goto :goto_4c

    .line 433
    .end local v8           #value:Ljava/lang/Long;
    :pswitch_a9
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    .line 434
    .restart local v8       #value:Ljava/lang/Long;
    goto :goto_4c

    .line 437
    .end local v8           #value:Ljava/lang/Long;
    :pswitch_b2
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->nextDouble()D

    move-result-wide v9

    double-to-float v9, v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    .line 438
    .local v8, value:Ljava/lang/Float;
    goto :goto_4c

    .line 441
    .end local v8           #value:Ljava/lang/Float;
    :pswitch_bc
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v8

    .line 442
    .restart local v8       #value:Ljava/lang/Float;
    goto :goto_4c

    .line 445
    .end local v8           #value:Ljava/lang/Float;
    :pswitch_c5
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->nextDouble()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    .line 446
    .local v8, value:Ljava/lang/Double;
    goto/16 :goto_4c

    .line 449
    .end local v8           #value:Ljava/lang/Double;
    :pswitch_cf
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    .line 450
    .restart local v8       #value:Ljava/lang/Double;
    goto/16 :goto_4c

    .line 453
    .end local v8           #value:Ljava/lang/Double;
    :pswitch_d9
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->nextBoolean()Z

    move-result v9

    if-eqz v9, :cond_e3

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 454
    .local v8, value:Ljava/lang/Boolean;
    :goto_e1
    goto/16 :goto_4c

    .line 453
    .end local v8           #value:Ljava/lang/Boolean;
    :cond_e3
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_e1

    .line 457
    :pswitch_e6
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v8

    .line 458
    .restart local v8       #value:Ljava/lang/Boolean;
    goto/16 :goto_4c

    .line 462
    .end local v8           #value:Ljava/lang/Boolean;
    :pswitch_f0
    new-instance v8, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 463
    .local v8, value:Ljava/math/BigInteger;
    goto/16 :goto_4c

    .line 466
    .end local v8           #value:Ljava/math/BigInteger;
    :pswitch_fb
    iget-object v9, v1, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->json:Lcom/google/android/apps/plus/json/EsJson;

    invoke-virtual {v9, p1}, Lcom/google/android/apps/plus/json/EsJson;->read(Lcom/google/android/apps/plus/json/JsonReader;)Ljava/lang/Object;

    move-result-object v8

    .line 467
    .local v8, value:Ljava/lang/Object;
    goto/16 :goto_4c

    .line 470
    .end local v8           #value:Ljava/lang/Object;
    :pswitch_103
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 471
    .local v6, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->beginArray()V

    .line 472
    :goto_10b
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1b5

    .line 473
    iget v9, v1, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->itemType:I

    sparse-switch v9, :sswitch_data_216

    goto :goto_10b

    .line 476
    :sswitch_117
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10b

    .line 480
    :sswitch_11f
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->nextInt()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10b

    .line 484
    :sswitch_12b
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10b

    .line 488
    :sswitch_137
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->nextLong()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10b

    .line 492
    :sswitch_143
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10b

    .line 496
    :sswitch_14f
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->nextDouble()D

    move-result-wide v9

    double-to-float v9, v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10b

    .line 500
    :sswitch_15c
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10b

    .line 504
    :sswitch_168
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->nextDouble()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10b

    .line 508
    :sswitch_174
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10b

    .line 512
    :sswitch_180
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->nextBoolean()Z

    move-result v9

    if-eqz v9, :cond_18c

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_188
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10b

    :cond_18c
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_188

    .line 516
    :sswitch_18f
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10b

    .line 521
    :sswitch_19c
    new-instance v9, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10b

    .line 525
    :sswitch_1aa
    iget-object v9, v1, Lcom/google/android/apps/plus/json/EsJson$FieldConverter;->json:Lcom/google/android/apps/plus/json/EsJson;

    invoke-virtual {v9, p1}, Lcom/google/android/apps/plus/json/EsJson;->read(Lcom/google/android/apps/plus/json/JsonReader;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_10b

    .line 531
    :cond_1b5
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->endArray()V

    .line 532
    move-object v8, v6

    .line 533
    .local v8, value:Ljava/util/ArrayList;
    goto/16 :goto_4c

    .line 551
    .end local v6           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v8           #value:Ljava/util/ArrayList;
    :cond_1bb
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->skipValue()V

    goto/16 :goto_1a

    .line 554
    .end local v1           #converter:Lcom/google/android/apps/plus/json/EsJson$FieldConverter;
    .end local v3           #firstChar:C
    .end local v4           #i:I
    .end local v5           #key:Ljava/lang/String;
    :cond_1c0
    invoke-virtual {p1}, Lcom/google/android/apps/plus/json/JsonReader;->endObject()V

    .line 555
    return-object v7

    .line 414
    :pswitch_data_1c4
    .packed-switch 0x0
        :pswitch_89
        :pswitch_8e
        :pswitch_a0
        :pswitch_b2
        :pswitch_c5
        :pswitch_d9
        :pswitch_f0
        :pswitch_103
        :pswitch_fb
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_89
        :pswitch_97
        :pswitch_a9
        :pswitch_bc
        :pswitch_cf
        :pswitch_e6
        :pswitch_f0
    .end packed-switch

    .line 473
    :sswitch_data_216
    .sparse-switch
        0x0 -> :sswitch_117
        0x1 -> :sswitch_11f
        0x2 -> :sswitch_137
        0x3 -> :sswitch_14f
        0x4 -> :sswitch_168
        0x5 -> :sswitch_180
        0x6 -> :sswitch_19c
        0x8 -> :sswitch_1aa
        0x20 -> :sswitch_117
        0x21 -> :sswitch_12b
        0x22 -> :sswitch_143
        0x23 -> :sswitch_15c
        0x24 -> :sswitch_174
        0x25 -> :sswitch_18f
        0x26 -> :sswitch_19c
    .end sparse-switch
.end method

.method public toByteArray(Ljava/lang/Object;)[B
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[B"
        }
    .end annotation

    .prologue
    .line 326
    .local p0, this:Lcom/google/android/apps/plus/json/EsJson;,"Lcom/google/android/apps/plus/json/EsJson<TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 328
    .local v1, stream:Ljava/io/ByteArrayOutputStream;
    :try_start_5
    invoke-virtual {p0, v1, p1}, Lcom/google/android/apps/plus/json/EsJson;->writeToStream(Ljava/io/OutputStream;Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_d

    .line 333
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 329
    :catch_d
    move-exception v0

    .line 330
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot generate JSON using "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public toPrettyString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 356
    .local p0, this:Lcom/google/android/apps/plus/json/EsJson;,"Lcom/google/android/apps/plus/json/EsJson<TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 357
    .local v1, out:Ljava/io/StringWriter;
    new-instance v2, Lcom/google/android/apps/plus/json/JsonWriter;

    invoke-direct {v2, v1}, Lcom/google/android/apps/plus/json/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 358
    .local v2, writer:Lcom/google/android/apps/plus/json/JsonWriter;
    const-string v3, " "

    invoke-virtual {v2, v3}, Lcom/google/android/apps/plus/json/JsonWriter;->setIndent(Ljava/lang/String;)V

    .line 360
    :try_start_f
    invoke-virtual {p0, v2, p1}, Lcom/google/android/apps/plus/json/EsJson;->write(Lcom/google/android/apps/plus/json/JsonWriter;Ljava/lang/Object;)V

    .line 361
    invoke-virtual {v2}, Lcom/google/android/apps/plus/json/JsonWriter;->flush()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_15} :catch_1a

    .line 366
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 362
    :catch_1a
    move-exception v0

    .line 363
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot generate JSON using "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 340
    .local p0, this:Lcom/google/android/apps/plus/json/EsJson;,"Lcom/google/android/apps/plus/json/EsJson<TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 341
    .local v1, out:Ljava/io/StringWriter;
    new-instance v2, Lcom/google/android/apps/plus/json/JsonWriter;

    invoke-direct {v2, v1}, Lcom/google/android/apps/plus/json/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 343
    .local v2, writer:Lcom/google/android/apps/plus/json/JsonWriter;
    :try_start_a
    invoke-virtual {p0, v2, p1}, Lcom/google/android/apps/plus/json/EsJson;->write(Lcom/google/android/apps/plus/json/JsonWriter;Ljava/lang/Object;)V

    .line 344
    invoke-virtual {v2}, Lcom/google/android/apps/plus/json/JsonWriter;->flush()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_10} :catch_15

    .line 349
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 345
    :catch_15
    move-exception v0

    .line 346
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot generate JSON using "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public write(Lcom/google/android/apps/plus/json/JsonWriter;Ljava/lang/Object;)V
    .registers 3
    .parameter "writer"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/plus/json/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 564
    .local p0, this:Lcom/google/android/apps/plus/json/EsJson;,"Lcom/google/android/apps/plus/json/EsJson<TT;>;"
    .local p2, object:Ljava/lang/Object;,"TT;"
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/plus/json/EsJson;->writeObject(Lcom/google/android/apps/plus/json/JsonWriter;Ljava/lang/Object;)V

    .line 565
    return-void
.end method

.method public writeToStream(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .registers 7
    .parameter "stream"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    .local p0, this:Lcom/google/android/apps/plus/json/EsJson;,"Lcom/google/android/apps/plus/json/EsJson<TT;>;"
    .local p2, object:Ljava/lang/Object;,"TT;"
    new-instance v0, Lcom/google/android/apps/plus/json/JsonWriter;

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    sget-object v3, Lcom/google/android/apps/plus/json/EsJson;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    invoke-direct {v0, v1}, Lcom/google/android/apps/plus/json/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 318
    .local v0, writer:Lcom/google/android/apps/plus/json/JsonWriter;
    invoke-virtual {p0, v0, p2}, Lcom/google/android/apps/plus/json/EsJson;->write(Lcom/google/android/apps/plus/json/JsonWriter;Ljava/lang/Object;)V

    .line 319
    invoke-virtual {v0}, Lcom/google/android/apps/plus/json/JsonWriter;->flush()V

    .line 320
    return-void
.end method
