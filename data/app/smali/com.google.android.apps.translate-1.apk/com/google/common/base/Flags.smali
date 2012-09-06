.class public Lcom/google/common/base/Flags;
.super Ljava/lang/Object;
.source "Flags.java"


# annotations
.annotation build Lcom/google/common/annotations/GoogleInternal;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Flags$UsageError;
    }
.end annotation


# static fields
.field private static allFlags:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/common/base/Flag;",
            ">;"
        }
    .end annotation
.end field

.field private static alreadyRegistered:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final logger:Ljava/util/logging/Logger;

.field private static registeredFields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static final registeredMethods:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 54
    const-class v0, Lcom/google/common/base/Flags;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/Flags;->logger:Ljava/util/logging/Logger;

    .line 183
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/common/base/Flags;->registeredFields:Ljava/util/Set;

    .line 223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/common/base/Flags;->allFlags:Ljava/util/Collection;

    .line 342
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/common/base/Flags;->registeredMethods:Ljava/util/Set;

    .line 428
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/common/base/Flags;->alreadyRegistered:Ljava/util/Set;

    .line 459
    new-instance v0, Lcom/google/common/base/Flags$4;

    invoke-direct {v0}, Lcom/google/common/base/Flags$4;-><init>()V

    invoke-static {v0}, Lcom/google/common/flags/Flags;->registerCompletionHook(Ljava/lang/Runnable;)V

    .line 467
    return-void
.end method

.method public constructor <init>()V
    .registers 6
    .annotation runtime Lcom/google/common/annotations/Strongly;
        contact = "java-libraries-discuss"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    sget-object v3, Lcom/google/common/base/Flags;->logger:Ljava/util/logging/Logger;

    const-string v4, "Note: com.google.common.base.Flags is deprecated.  Use com.google.common.flags instead."

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 66
    :try_start_a
    sget-object v3, Lcom/google/common/base/Flags;->registeredFields:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 67
    sget-object v3, Lcom/google/common/base/Flags;->registeredMethods:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 68
    sget-object v3, Lcom/google/common/base/Flags;->alreadyRegistered:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 70
    const-class v1, Lcom/google/common/flags/Flags;

    .line 71
    .local v1, newFlags:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v3, "clearFlagMapsForTesting"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 72
    .local v2, reset:Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 73
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v3, Lcom/google/common/base/Flags;->allFlags:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->clear()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_34} :catch_35

    .line 78
    return-void

    .line 75
    .end local v1           #newFlags:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #reset:Ljava/lang/reflect/Method;
    :catch_35
    move-exception v0

    .line 76
    .local v0, ex:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .registers 6
    .parameter "registerClasses"
    .annotation runtime Lcom/google/common/annotations/Strongly;
        contact = "java-libraries-discuss"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/google/common/base/Flags;-><init>()V

    .line 88
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Object;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_6
    if-ge v1, v2, :cond_10

    aget-object v3, v0, v1

    .line 89
    .local v3, registerClass:Ljava/lang/Object;
    invoke-virtual {p0, v3}, Lcom/google/common/base/Flags;->register(Ljava/lang/Object;)V

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 91
    .end local v3           #registerClass:Ljava/lang/Object;
    :cond_10
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/flags/InvalidFlagValueException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-static {p0, p1}, Lcom/google/common/base/Flags;->parseDirectValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Collection;
    .registers 1

    .prologue
    .line 53
    sget-object v0, Lcom/google/common/base/Flags;->allFlags:Ljava/util/Collection;

    return-object v0
.end method

.method private docForField(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "object"
    .parameter "field"
    .parameter "name"

    .prologue
    .line 230
    :try_start_0
    const-class v4, Lcom/google/common/base/Flag;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 232
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/base/Flag;

    .line 233
    .local v1, flag:Lcom/google/common/base/Flag;
    sget-object v4, Lcom/google/common/base/Flags;->allFlags:Ljava/util/Collection;

    invoke-interface {v4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 234
    invoke-virtual {v1}, Lcom/google/common/base/Flag;->setRegistered()V

    .line 235
    invoke-virtual {v1}, Lcom/google/common/base/Flag;->getHelpString()Ljava/lang/String;

    move-result-object v4

    .line 257
    .end local v1           #flag:Lcom/google/common/base/Flag;
    :goto_1e
    return-object v4

    .line 238
    :cond_1f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HELP_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 239
    .local v3, helpFieldName:Ljava/lang/String;
    const-string v4, "FLAG_"

    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 240
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HELP_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 242
    :cond_56
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 243
    .local v2, h:Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    if-eq v4, v5, :cond_83

    .line 244
    sget-object v4, Lcom/google/common/base/Flags;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wrong type for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 245
    const-string v4, ""

    goto :goto_1e

    .line 247
    :cond_83
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez p1, :cond_93

    const/4 v4, 0x1

    :goto_8e
    if-eq v5, v4, :cond_95

    .line 248
    const-string v4, ""

    goto :goto_1e

    .line 247
    :cond_93
    const/4 v4, 0x0

    goto :goto_8e

    .line 250
    :cond_95
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_9b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_9b} :catch_ac
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_9b} :catch_9c

    goto :goto_1e

    .line 253
    .end local v2           #h:Ljava/lang/reflect/Field;
    .end local v3           #helpFieldName:Ljava/lang/String;
    :catch_9c
    move-exception v0

    .line 255
    .local v0, ex:Ljava/lang/IllegalAccessException;
    sget-object v4, Lcom/google/common/base/Flags;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 257
    .end local v0           #ex:Ljava/lang/IllegalAccessException;
    :goto_a8
    const-string v4, ""

    goto/16 :goto_1e

    .line 251
    :catch_ac
    move-exception v4

    goto :goto_a8
.end method

.method private static flagForField(Ljava/lang/Object;Ljava/lang/reflect/Field;)Lcom/google/common/flags/Flag;
    .registers 7
    .parameter "object"
    .parameter "field"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Field;",
            ")",
            "Lcom/google/common/flags/Flag",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 266
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 267
    .local v1, fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v3, Lcom/google/common/base/Flag;

    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 269
    :try_start_c
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/common/base/Flag;

    .line 270
    .local v2, oldFlag:Lcom/google/common/base/Flag;
    invoke-virtual {v2}, Lcom/google/common/base/Flag;->newFlag()Lcom/google/common/flags/Flag;
    :try_end_15
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_15} :catch_17

    move-result-object v3

    .line 276
    .end local v2           #oldFlag:Lcom/google/common/base/Flag;
    :goto_16
    return-object v3

    .line 271
    :catch_17
    move-exception v0

    .line 273
    .local v0, ex:Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 276
    .end local v0           #ex:Ljava/lang/IllegalAccessException;
    :cond_1e
    new-instance v3, Lcom/google/common/base/Flags$1;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, p1, p0}, Lcom/google/common/base/Flags$1;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    goto :goto_16
.end method

.method private static parseDirectValue(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .registers 8
    .parameter
    .parameter "value"
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/flags/InvalidFlagValueException;
        }
    .end annotation

    .prologue
    .line 193
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v2, :cond_9

    .line 194
    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 211
    .end local p1
    :cond_8
    :goto_8
    return-object p1

    .line 195
    .restart local p1
    :cond_9
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v2, :cond_12

    .line 196
    invoke-static {p1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    goto :goto_8

    .line 197
    :cond_12
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v2, :cond_1b

    .line 198
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    goto :goto_8

    .line 199
    :cond_1b
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v2, :cond_24

    .line 200
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    goto :goto_8

    .line 201
    :cond_24
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v2, :cond_2d

    .line 202
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_8

    .line 203
    :cond_2d
    const-class v2, Ljava/lang/String;
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_2f} :catch_6f

    if-eq p0, v2, :cond_8

    .line 211
    :try_start_31
    const-string v2, "valueOf"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_49
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_31 .. :try_end_49} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_49} :catch_93
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_49} :catch_6f

    move-result-object p1

    goto :goto_8

    .line 212
    :catch_4b
    move-exception v0

    .line 213
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    :try_start_4c
    new-instance v2, Lcom/google/common/flags/InvalidFlagValueException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' for type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/common/flags/InvalidFlagValueException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_6f
    .catch Ljava/lang/NumberFormatException; {:try_start_4c .. :try_end_6f} :catch_6f

    .line 218
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_6f
    move-exception v1

    .line 219
    .local v1, ex:Ljava/lang/NumberFormatException;
    new-instance v2, Lcom/google/common/flags/InvalidFlagValueException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' for type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/common/flags/InvalidFlagValueException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 214
    .end local v1           #ex:Ljava/lang/NumberFormatException;
    :catch_93
    move-exception v0

    .line 215
    .local v0, e:Ljava/lang/Exception;
    :try_start_94
    new-instance v2, Lcom/google/common/flags/InvalidFlagValueException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' for type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/common/flags/InvalidFlagValueException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_b7
    .catch Ljava/lang/NumberFormatException; {:try_start_94 .. :try_end_b7} :catch_6f
.end method

.method private register(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 4
    .parameter
    .parameter "object"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/base/Flags;->register(Ljava/lang/Class;Ljava/lang/Object;Z)V

    .line 130
    return-void
.end method

.method private register(Ljava/lang/Class;Ljava/lang/Object;Z)V
    .registers 14
    .parameter
    .parameter "object"
    .parameter "forceInherited"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p1, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v8, 0x1

    .line 139
    if-nez p2, :cond_a

    .line 144
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/common/flags/Flags;->addPreferredClass(Ljava/lang/String;)V

    .line 148
    :cond_a
    invoke-static {p1, p2}, Lcom/google/common/base/Flags;->registerUpdateFlags(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 151
    if-nez p2, :cond_2f

    if-nez p3, :cond_2f

    .line 152
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 158
    .local v3, fields:[Ljava/lang/reflect/Field;
    :goto_15
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/reflect/Field;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_18
    if-ge v4, v5, :cond_65

    aget-object v2, v0, v4

    .line 159
    .local v2, f:Ljava/lang/reflect/Field;
    invoke-virtual {v2, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 160
    if-nez p2, :cond_34

    move v7, v8

    :goto_22
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v9

    if-eq v7, v9, :cond_36

    .line 158
    :cond_2c
    :goto_2c
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 155
    .end local v0           #arr$:[Ljava/lang/reflect/Field;
    .end local v2           #f:Ljava/lang/reflect/Field;
    .end local v3           #fields:[Ljava/lang/reflect/Field;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_2f
    invoke-virtual {p1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .restart local v3       #fields:[Ljava/lang/reflect/Field;
    goto :goto_15

    .line 160
    .restart local v0       #arr$:[Ljava/lang/reflect/Field;
    .restart local v2       #f:Ljava/lang/reflect/Field;
    .restart local v4       #i$:I
    .restart local v5       #len$:I
    :cond_34
    const/4 v7, 0x0

    goto :goto_22

    .line 164
    :cond_36
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    .line 165
    .local v6, name:Ljava/lang/String;
    const-string v7, "FLAG_"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 166
    const-class v7, Lcom/google/common/base/DisableFlag;

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    if-nez v7, :cond_2c

    .line 170
    :try_start_4a
    sget-object v7, Lcom/google/common/base/Flags;->registeredFields:Ljava/util/Set;

    invoke-interface {v7, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c

    .line 171
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {p0, p2, v2, v6}, Lcom/google/common/base/Flags;->docForField(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v7, p2, v6, v9}, Lcom/google/common/base/Flags;->registerField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4a .. :try_end_5d} :catch_5e

    goto :goto_2c

    .line 173
    :catch_5e
    move-exception v1

    .line 174
    .local v1, ex:Ljava/lang/NoSuchFieldException;
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 178
    .end local v1           #ex:Ljava/lang/NoSuchFieldException;
    .end local v2           #f:Ljava/lang/reflect/Field;
    .end local v6           #name:Ljava/lang/String;
    :cond_65
    return-void
.end method

.method private registerField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter
    .parameter "object"
    .parameter "fieldName"
    .parameter "doc"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 295
    .local p1, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p1, p2}, Lcom/google/common/base/Flags;->registerUpdateFlags(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 298
    invoke-virtual {p1, p3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 299
    .local v7, field:Ljava/lang/reflect/Field;
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 305
    const-class v0, Lcom/google/common/flags/Flag;

    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 318
    :goto_17
    return-void

    .line 309
    :cond_18
    const-string v0, "FLAG_"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const/4 v0, 0x5

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, flagName:Ljava/lang/String;
    :goto_25
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz p4, :cond_3d

    move-object v2, p4

    :goto_2c
    const/4 v3, 0x0

    sget-object v4, Lcom/google/common/flags/DocLevel;->PUBLIC:Lcom/google/common/flags/DocLevel;

    invoke-static {p2, v7}, Lcom/google/common/base/Flags;->typeForField(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v7}, Lcom/google/common/base/Flags;->flagForField(Ljava/lang/Object;Ljava/lang/reflect/Field;)Lcom/google/common/flags/Flag;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/google/common/flags/Flags;->registerFlag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/common/flags/DocLevel;Ljava/lang/String;Lcom/google/common/flags/Flag;)V

    goto :goto_17

    .end local v1           #flagName:Ljava/lang/String;
    :cond_3b
    move-object v1, p3

    .line 309
    goto :goto_25

    .line 311
    .restart local v1       #flagName:Ljava/lang/String;
    :cond_3d
    invoke-direct {p0, p2, v7, p3}, Lcom/google/common/base/Flags;->docForField(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2c
.end method

.method private static registerUpdateFlags(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter "object"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 431
    sget-object v3, Lcom/google/common/base/Flags;->alreadyRegistered:Ljava/util/Set;

    invoke-interface {v3, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 456
    :cond_9
    :goto_9
    return-void

    .line 435
    :cond_a
    :try_start_a
    const-string v3, "updateFlags"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {p0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 436
    .local v1, m:Ljava/lang/reflect/Method;
    if-nez p1, :cond_16

    const/4 v2, 0x1

    :cond_16
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-ne v2, v3, :cond_9

    .line 439
    new-instance v0, Lcom/google/common/base/Flags$3;

    invoke-direct {v0, v1, p1}, Lcom/google/common/base/Flags$3;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    .line 452
    .local v0, completionHook:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/google/common/flags/Flags;->registerCompletionHook(Ljava/lang/Runnable;)V
    :try_end_28
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_28} :catch_29

    goto :goto_9

    .line 453
    .end local v0           #completionHook:Ljava/lang/Runnable;
    .end local v1           #m:Ljava/lang/reflect/Method;
    :catch_29
    move-exception v2

    goto :goto_9
.end method

.method private static typeForField(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/String;
    .registers 7
    .parameter "object"
    .parameter "field"

    .prologue
    .line 325
    const-class v3, Lcom/google/common/base/Flag;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 327
    :try_start_c
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/base/Flag;

    .line 328
    .local v1, flag:Lcom/google/common/base/Flag;
    invoke-virtual {v1}, Lcom/google/common/base/Flag;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_19} :catch_25

    move-result-object v2

    .line 335
    .end local v1           #flag:Lcom/google/common/base/Flag;
    .local v2, result:Ljava/lang/String;
    :goto_1a
    const-string v3, "boolean"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 336
    const-string v2, "java.lang.Boolean"

    .line 338
    :cond_24
    return-object v2

    .line 329
    .end local v2           #result:Ljava/lang/String;
    :catch_25
    move-exception v0

    .line 330
    .local v0, ex:Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 333
    .end local v0           #ex:Ljava/lang/IllegalAccessException;
    :cond_2c
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #result:Ljava/lang/String;
    goto :goto_1a
.end method


# virtual methods
.method public parse([Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .parameter "arguments"

    .prologue
    .line 390
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/google/common/base/Flag;->setStateCheckingDisabled(Z)Z

    move-result v1

    .line 392
    .local v1, oldChecking:Z
    :try_start_5
    invoke-static {p1}, Lcom/google/common/flags/Flags;->parse([Ljava/lang/String;)[Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_18
    .catch Lcom/google/common/flags/InvalidFlagsException; {:try_start_5 .. :try_end_8} :catch_d

    move-result-object v2

    .line 396
    invoke-static {v1}, Lcom/google/common/base/Flag;->setStateCheckingDisabled(Z)Z

    return-object v2

    .line 393
    :catch_d
    move-exception v0

    .line 394
    .local v0, ex:Lcom/google/common/flags/InvalidFlagsException;
    :try_start_e
    new-instance v2, Lcom/google/common/base/Flags$UsageError;

    invoke-virtual {v0}, Lcom/google/common/flags/InvalidFlagsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/google/common/base/Flags$UsageError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_18

    .line 396
    .end local v0           #ex:Lcom/google/common/flags/InvalidFlagsException;
    :catchall_18
    move-exception v2

    invoke-static {v1}, Lcom/google/common/base/Flag;->setStateCheckingDisabled(Z)Z

    throw v2
.end method

.method public parse([Ljava/lang/String;Z)[Ljava/lang/String;
    .registers 4
    .parameter "arguments"
    .parameter "helpAnywhere"
    .annotation runtime Lcom/google/common/annotations/Strongly;
        contact = "java-libraries-discuss"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 412
    invoke-virtual {p0, p1}, Lcom/google/common/base/Flags;->parse([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public register(Ljava/lang/Class;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/base/Flags;->register(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method public register(Ljava/lang/Object;)V
    .registers 3
    .parameter "o"

    .prologue
    .line 111
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_a

    .line 112
    check-cast p1, Ljava/lang/Class;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/common/base/Flags;->register(Ljava/lang/Class;)V

    .line 116
    :goto_9
    return-void

    .line 114
    .restart local p1
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/common/base/Flags;->register(Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_9
.end method

.method public registerIncludeDerived(Ljava/lang/Class;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/base/Flags;->register(Ljava/lang/Class;Ljava/lang/Object;Z)V

    .line 123
    return-void
.end method

.method public registerMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 18
    .parameter "object"
    .parameter "methodName"
    .parameter "component"
    .parameter "flagName"
    .parameter "help"
    .parameter "isBoolean"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 352
    sget-object v0, Lcom/google/common/base/Flags;->registeredMethods:Ljava/util/Set;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 383
    :goto_31
    return-void

    .line 357
    :cond_32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/base/Flags;->registerUpdateFlags(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 360
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v1, v2

    const/4 v2, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v1, v2

    invoke-virtual {v0, p2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 362
    .local v3, method:Ljava/lang/reflect/Method;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    sget-object v8, Lcom/google/common/flags/DocLevel;->PUBLIC:Lcom/google/common/flags/DocLevel;

    if-eqz p6, :cond_6f

    const-string v9, "java.lang.Boolean"

    :goto_5d
    new-instance v0, Lcom/google/common/base/Flags$2;

    const/4 v2, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/common/base/Flags$2;-><init>(Lcom/google/common/base/Flags;Ljava/lang/Object;Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v6

    move-object v5, p4

    move-object/from16 v6, p5

    move-object v10, v0

    invoke-static/range {v4 .. v10}, Lcom/google/common/flags/Flags;->registerFlag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/common/flags/DocLevel;Ljava/lang/String;Lcom/google/common/flags/Flag;)V

    goto :goto_31

    :cond_6f
    const-string v9, "java.lang.String"

    goto :goto_5d
.end method

.method public usage()V
    .registers 2

    .prologue
    .line 97
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v0}, Lcom/google/common/flags/Flags;->usage(Ljava/io/PrintStream;)V

    .line 98
    return-void
.end method
