.class public Lcom/google/api/client/util/FieldInfo;
.super Ljava/lang/Object;
.source "FieldInfo.java"


# static fields
.field private static final CACHE:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/reflect/Field;",
            "Lcom/google/api/client/util/FieldInfo;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public final field:Ljava/lang/reflect/Field;

.field public final isFinal:Z

.field public final isPrimitive:Z

.field public final name:Ljava/lang/String;

.field public final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    new-instance v0, Lcom/google/api/client/util/FieldInfo$1;

    invoke-direct {v0}, Lcom/google/api/client/util/FieldInfo$1;-><init>()V

    sput-object v0, Lcom/google/api/client/util/FieldInfo;->CACHE:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Field;Ljava/lang/String;)V
    .registers 5
    .parameter "field"
    .parameter "name"

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/google/api/client/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 93
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/api/client/util/FieldInfo;->name:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/api/client/util/FieldInfo;->isFinal:Z

    .line 95
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/google/api/client/util/FieldInfo;->type:Ljava/lang/Class;

    .line 96
    .local v0, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v0}, Lcom/google/api/client/util/FieldInfo;->isPrimitive(Ljava/lang/Class;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/api/client/util/FieldInfo;->isPrimitive:Z

    .line 97
    return-void
.end method

.method public static getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter "field"
    .parameter "obj"

    .prologue
    .line 153
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 154
    :catch_5
    move-exception v0

    .line 155
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static isPrimitive(Ljava/lang/Class;)Z
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 128
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_36

    const-class v0, Ljava/lang/Character;

    if-eq p0, v0, :cond_36

    const-class v0, Ljava/lang/String;

    if-eq p0, v0, :cond_36

    const-class v0, Ljava/lang/Integer;

    if-eq p0, v0, :cond_36

    const-class v0, Ljava/lang/Long;

    if-eq p0, v0, :cond_36

    const-class v0, Ljava/lang/Short;

    if-eq p0, v0, :cond_36

    const-class v0, Ljava/lang/Byte;

    if-eq p0, v0, :cond_36

    const-class v0, Ljava/lang/Float;

    if-eq p0, v0, :cond_36

    const-class v0, Ljava/lang/Double;

    if-eq p0, v0, :cond_36

    const-class v0, Ljava/math/BigInteger;

    if-eq p0, v0, :cond_36

    const-class v0, Ljava/math/BigDecimal;

    if-eq p0, v0, :cond_36

    const-class v0, Lcom/google/api/client/util/DateTime;

    if-eq p0, v0, :cond_36

    const-class v0, Ljava/lang/Boolean;

    if-ne p0, v0, :cond_38

    :cond_36
    const/4 v0, 0x1

    :goto_37
    return v0

    :cond_38
    const/4 v0, 0x0

    goto :goto_37
.end method

.method public static isPrimitive(Ljava/lang/Object;)Z
    .registers 2
    .parameter "fieldValue"

    .prologue
    .line 144
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/FieldInfo;->isPrimitive(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static of(Ljava/lang/reflect/Field;)Lcom/google/api/client/util/FieldInfo;
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 51
    if-nez p0, :cond_5

    move-object v1, v2

    .line 70
    :cond_4
    :goto_4
    return-object v1

    .line 54
    :cond_5
    sget-object v0, Lcom/google/api/client/util/FieldInfo;->CACHE:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/WeakHashMap;

    .line 55
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/client/util/FieldInfo;

    .line 56
    if-nez v1, :cond_4

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 58
    const-class v1, Lcom/google/api/client/util/Key;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/google/api/client/util/Key;

    .line 59
    if-nez v1, :cond_2b

    move-object v1, v2

    .line 60
    goto :goto_4

    .line 62
    :cond_2b
    invoke-interface {v1}, Lcom/google/api/client/util/Key;->value()Ljava/lang/String;

    move-result-object v1

    .line 63
    const-string v2, "##default"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 64
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    .line 66
    :cond_3b
    new-instance v2, Lcom/google/api/client/util/FieldInfo;

    invoke-direct {v2, p0, v1}, Lcom/google/api/client/util/FieldInfo;-><init>(Ljava/lang/reflect/Field;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    move-object v1, v2

    goto :goto_4
.end method

.method public static parsePrimitiveValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 217
    if-eqz p1, :cond_8

    if-eqz p0, :cond_8

    const-class v0, Ljava/lang/String;

    if-ne p0, v0, :cond_9

    .line 256
    :cond_8
    :goto_8
    return-object p1

    .line 221
    :cond_9
    const-class v0, Ljava/lang/Character;

    if-eq p0, v0, :cond_11

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3b

    .line 222
    :cond_11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_31

    .line 223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected type Character/char but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_31
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    goto :goto_8

    .line 228
    :cond_3b
    const-class v0, Ljava/lang/Boolean;

    if-eq p0, v0, :cond_43

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_48

    .line 229
    :cond_43
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_8

    .line 231
    :cond_48
    const-class v0, Ljava/lang/Byte;

    if-eq p0, v0, :cond_50

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_55

    .line 232
    :cond_50
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object p1

    goto :goto_8

    .line 234
    :cond_55
    const-class v0, Ljava/lang/Short;

    if-eq p0, v0, :cond_5d

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_62

    .line 235
    :cond_5d
    invoke-static {p1}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object p1

    goto :goto_8

    .line 237
    :cond_62
    const-class v0, Ljava/lang/Integer;

    if-eq p0, v0, :cond_6a

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_6f

    .line 238
    :cond_6a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_8

    .line 240
    :cond_6f
    const-class v0, Ljava/lang/Long;

    if-eq p0, v0, :cond_77

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7c

    .line 241
    :cond_77
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    goto :goto_8

    .line 243
    :cond_7c
    const-class v0, Ljava/lang/Float;

    if-eq p0, v0, :cond_84

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_89

    .line 244
    :cond_84
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    goto :goto_8

    .line 246
    :cond_89
    const-class v0, Ljava/lang/Double;

    if-eq p0, v0, :cond_91

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_97

    .line 247
    :cond_91
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    goto/16 :goto_8

    .line 249
    :cond_97
    const-class v0, Lcom/google/api/client/util/DateTime;

    if-ne p0, v0, :cond_a1

    .line 250
    invoke-static {p1}, Lcom/google/api/client/util/DateTime;->parseRfc3339(Ljava/lang/String;)Lcom/google/api/client/util/DateTime;

    move-result-object p1

    goto/16 :goto_8

    .line 252
    :cond_a1
    const-class v0, Ljava/math/BigInteger;

    if-ne p0, v0, :cond_ad

    .line 253
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    goto/16 :goto_8

    .line 255
    :cond_ad
    const-class v0, Ljava/math/BigDecimal;

    if-ne p0, v0, :cond_b9

    .line 256
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    goto/16 :goto_8

    .line 258
    :cond_b9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected primitive class, but got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8
    .parameter "field"
    .parameter "obj"
    .parameter "value"

    .prologue
    .line 167
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 168
    invoke-static {p0, p1}, Lcom/google/api/client/util/FieldInfo;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 169
    .local v1, finalValue:Ljava/lang/Object;
    if-nez p2, :cond_55

    if-eqz v1, :cond_5b

    .line 170
    :cond_12
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected final value <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> but was <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " field in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 169
    :cond_55
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 182
    .end local v1           #finalValue:Ljava/lang/Object;
    :cond_5b
    :goto_5b
    return-void

    .line 176
    :cond_5c
    :try_start_5c
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5f
    .catch Ljava/lang/SecurityException; {:try_start_5c .. :try_end_5f} :catch_60
    .catch Ljava/lang/IllegalAccessException; {:try_start_5c .. :try_end_5f} :catch_67

    goto :goto_5b

    .line 177
    :catch_60
    move-exception v0

    .line 178
    .local v0, e:Ljava/lang/SecurityException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 179
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_67
    move-exception v0

    .line 180
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "obj"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/api/client/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-static {v0, p1}, Lcom/google/api/client/util/FieldInfo;->getFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4
    .parameter "obj"
    .parameter "value"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/api/client/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-static {v0, p1, p2}, Lcom/google/api/client/util/FieldInfo;->setFieldValue(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 116
    return-void
.end method
