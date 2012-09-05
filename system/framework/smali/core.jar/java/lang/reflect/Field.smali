.class public final Ljava/lang/reflect/Field;
.super Ljava/lang/reflect/AccessibleObject;
.source "Field.java"

# interfaces
.implements Ljava/lang/reflect/Member;


# static fields
.field public static final ORDER_BY_NAME_AND_DECLARING_CLASS:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_BOOLEAN:C = 'Z'

.field private static final TYPE_BYTE:C = 'B'

.field private static final TYPE_CHAR:C = 'C'

.field private static final TYPE_DOUBLE:C = 'D'

.field private static final TYPE_FLOAT:C = 'F'

.field private static final TYPE_INTEGER:C = 'I'

.field private static final TYPE_LONG:C = 'J'

.field private static final TYPE_SHORT:C = 'S'


# instance fields
.field private declaringClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private genericType:Ljava/lang/reflect/Type;

.field private volatile genericTypesAreInitialized:Z

.field private name:Ljava/lang/String;

.field private slot:I

.field private type:Ljava/lang/Class;
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
    .line 52
    new-instance v0, Ljava/lang/reflect/Field$1;

    invoke-direct {v0}, Ljava/lang/reflect/Field$1;-><init>()V

    sput-object v0, Ljava/lang/reflect/Field;->ORDER_BY_NAME_AND_DECLARING_CLASS:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;I)V
    .registers 6
    .parameter
    .parameter
    .parameter "name"
    .parameter "slot"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, declaringClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p2, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/reflect/AccessibleObject;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/lang/reflect/Field;->genericTypesAreInitialized:Z

    .line 107
    iput-object p1, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    .line 108
    iput-object p2, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    .line 109
    iput-object p3, p0, Ljava/lang/reflect/Field;->name:Ljava/lang/String;

    .line 110
    iput p4, p0, Ljava/lang/reflect/Field;->slot:I

    .line 111
    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Field;)V
    .registers 6
    .parameter "orig"

    .prologue
    .line 98
    iget-object v0, p1, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v1, p1, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget-object v2, p1, Ljava/lang/reflect/Field;->name:Ljava/lang/String;

    iget v3, p1, Ljava/lang/reflect/Field;->slot:I

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/lang/reflect/Field;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;I)V

    .line 101
    iget-boolean v0, p1, Ljava/lang/reflect/AccessibleObject;->flag:Z

    if-eqz v0, :cond_12

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    .line 104
    :cond_12
    return-void
.end method

.method static synthetic access$000(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Ljava/lang/reflect/Field;->name:Ljava/lang/String;

    return-object v0
.end method

.method private static native getAnnotation(Ljava/lang/Class;ILjava/lang/Class;)Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<*>;I",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation
.end method

.method private native getBField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZC)B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZC)B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private native getCField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZC)C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZC)C"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private native getDField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZC)D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZC)D"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private static native getDeclaredAnnotations(Ljava/lang/Class;I)[Ljava/lang/annotation/Annotation;
.end method

.method private native getFField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZC)F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZC)F"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private native getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZ)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZ)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private native getFieldModifiers(Ljava/lang/Class;I)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)I"
        }
    .end annotation
.end method

.method private native getIField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZC)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZC)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private native getJField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZC)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZC)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private native getSField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZC)S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZC)S"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private getSignature()Ljava/lang/String;
    .registers 2

    .prologue
    .line 529
    iget-object v0, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private native getSignatureAnnotation(Ljava/lang/Class;I)[Ljava/lang/Object;
.end method

.method private native getZField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZC)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZC)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private declared-synchronized initGenericType()V
    .registers 4

    .prologue
    .line 114
    monitor-enter p0

    :try_start_1
    iget-boolean v2, p0, Ljava/lang/reflect/Field;->genericTypesAreInitialized:Z

    if-nez v2, :cond_2a

    .line 115
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getSignatureAttribute()Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, signatureAttribute:Ljava/lang/String;
    new-instance v0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;

    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    .line 118
    .local v0, parser:Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v0, v2, v1}, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->parseForField(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;)V

    .line 119
    iget-object v2, v0, Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;->fieldType:Ljava/lang/reflect/Type;

    iput-object v2, p0, Ljava/lang/reflect/Field;->genericType:Ljava/lang/reflect/Type;

    .line 120
    iget-object v2, p0, Ljava/lang/reflect/Field;->genericType:Ljava/lang/reflect/Type;

    if-nez v2, :cond_27

    .line 121
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Ljava/lang/reflect/Field;->genericType:Ljava/lang/reflect/Type;

    .line 123
    :cond_27
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/lang/reflect/Field;->genericTypesAreInitialized:Z
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2c

    .line 125
    .end local v0           #parser:Lorg/apache/harmony/luni/lang/reflect/GenericSignatureParser;
    .end local v1           #signatureAttribute:Ljava/lang/String;
    :cond_2a
    monitor-exit p0

    return-void

    .line 114
    :catchall_2c
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private static native isAnnotationPresent(Ljava/lang/Class;ILjava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation
.end method

.method private native setBField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZCB)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZCB)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private native setCField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZCC)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZCC)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private native setDField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZCD)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZCD)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private native setFField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZCF)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZCF)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private native setField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZLjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZ",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private native setIField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZCI)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZCI)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private native setJField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZCJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZCJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private native setSField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZCS)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZCS)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method

.method private native setZField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZCZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;IZCZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "object"

    .prologue
    .line 239
    instance-of v0, p1, Ljava/lang/reflect/Field;

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 269
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Ljava/lang/reflect/Field;->getField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 209
    .local p1, annotationType:Ljava/lang/Class;,"Ljava/lang/Class<TA;>;"
    if-nez p1, :cond_a

    .line 210
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "annotationType == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_a
    iget-object v0, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget v1, p0, Ljava/lang/reflect/Field;->slot:I

    invoke-static {v0, v1, p1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;ILjava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/Object;)Z
    .registers 9
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 297
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    const/16 v6, 0x5a

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ljava/lang/reflect/Field;->getZField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZC)Z

    move-result v0

    return v0
.end method

.method public getByte(Ljava/lang/Object;)B
    .registers 9
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 324
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    const/16 v6, 0x42

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ljava/lang/reflect/Field;->getBField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZC)B

    move-result v0

    return v0
.end method

.method public getChar(Ljava/lang/Object;)C
    .registers 9
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 351
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    const/16 v6, 0x43

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ljava/lang/reflect/Field;->getCField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZC)C

    move-result v0

    return v0
.end method

.method public getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .registers 3

    .prologue
    .line 204
    iget-object v0, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget v1, p0, Ljava/lang/reflect/Field;->slot:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Field;->getDeclaredAnnotations(Ljava/lang/Class;I)[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 360
    iget-object v0, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getDouble(Ljava/lang/Object;)D
    .registers 9
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 387
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    const/16 v6, 0x44

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ljava/lang/reflect/Field;->getDField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZC)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(Ljava/lang/Object;)F
    .registers 9
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 414
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    const/16 v6, 0x46

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ljava/lang/reflect/Field;->getFField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZC)F

    move-result v0

    return v0
.end method

.method public getGenericType()Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/reflect/Field;->initGenericType()V

    .line 200
    iget-object v0, p0, Ljava/lang/reflect/Field;->genericType:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lorg/apache/harmony/luni/lang/reflect/Types;->getType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public getInt(Ljava/lang/Object;)I
    .registers 9
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 441
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    const/16 v6, 0x49

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ljava/lang/reflect/Field;->getIField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZC)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/Object;)J
    .registers 9
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 468
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    const/16 v6, 0x4a

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ljava/lang/reflect/Field;->getJField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZC)J

    move-result-wide v0

    return-wide v0
.end method

.method public getModifiers()I
    .registers 3

    .prologue
    .line 479
    iget-object v0, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget v1, p0, Ljava/lang/reflect/Field;->slot:I

    invoke-direct {p0, v0, v1}, Ljava/lang/reflect/Field;->getFieldModifiers(Ljava/lang/Class;I)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 490
    iget-object v0, p0, Ljava/lang/reflect/Field;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getShort(Ljava/lang/Object;)S
    .registers 9
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 517
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    const/16 v6, 0x53

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ljava/lang/reflect/Field;->getSField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZC)S

    move-result v0

    return v0
.end method

.method getSignatureAttribute()Ljava/lang/String;
    .registers 4

    .prologue
    .line 130
    iget-object v1, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget v2, p0, Ljava/lang/reflect/Field;->slot:I

    invoke-direct {p0, v1, v2}, Ljava/lang/reflect/Field;->getSignatureAnnotation(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    .line 132
    .local v0, annotation:[Ljava/lang/Object;
    if-nez v0, :cond_c

    .line 133
    const/4 v1, 0x0

    .line 136
    :goto_b
    return-object v1

    :cond_c
    invoke-static {v0}, Lorg/apache/harmony/kernel/vm/StringUtils;->combineStrings([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_b
.end method

.method public getType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 538
    iget-object v0, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 554
    iget-object v0, p0, Ljava/lang/reflect/Field;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isAnnotationPresent(Ljava/lang/Class;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 218
    .local p1, annotationType:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    if-nez p1, :cond_a

    .line 219
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "annotationType == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_a
    iget-object v0, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget v1, p0, Ljava/lang/reflect/Field;->slot:I

    invoke-static {v0, v1, p1}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;ILjava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isEnumConstant()Z
    .registers 4

    .prologue
    .line 182
    iget-object v1, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget v2, p0, Ljava/lang/reflect/Field;->slot:I

    invoke-direct {p0, v1, v2}, Ljava/lang/reflect/Field;->getFieldModifiers(Ljava/lang/Class;I)I

    move-result v0

    .line 183
    .local v0, flags:I
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public isSynthetic()Z
    .registers 4

    .prologue
    .line 150
    iget-object v1, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget v2, p0, Ljava/lang/reflect/Field;->slot:I

    invoke-direct {p0, v1, v2}, Ljava/lang/reflect/Field;->getFieldModifiers(Ljava/lang/Class;I)I

    move-result v0

    .line 151
    .local v0, flags:I
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 10
    .parameter "object"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 588
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Ljava/lang/reflect/Field;->setField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZLjava/lang/Object;)V

    .line 589
    return-void
.end method

.method public setBoolean(Ljava/lang/Object;Z)V
    .registers 11
    .parameter "object"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 621
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    const/16 v6, 0x5a

    move-object v0, p0

    move-object v1, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Ljava/lang/reflect/Field;->setZField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZCZ)V

    .line 622
    return-void
.end method

.method public setByte(Ljava/lang/Object;B)V
    .registers 11
    .parameter "object"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 653
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    const/16 v6, 0x42

    move-object v0, p0

    move-object v1, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Ljava/lang/reflect/Field;->setBField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZCB)V

    .line 654
    return-void
.end method

.method public setChar(Ljava/lang/Object;C)V
    .registers 11
    .parameter "object"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 685
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    const/16 v6, 0x43

    move-object v0, p0

    move-object v1, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Ljava/lang/reflect/Field;->setCField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZCC)V

    .line 686
    return-void
.end method

.method public setDouble(Ljava/lang/Object;D)V
    .registers 13
    .parameter "object"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 717
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    const/16 v6, 0x44

    move-object v0, p0

    move-object v1, p1

    move-wide v7, p2

    invoke-direct/range {v0 .. v8}, Ljava/lang/reflect/Field;->setDField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZCD)V

    .line 718
    return-void
.end method

.method public setFloat(Ljava/lang/Object;F)V
    .registers 11
    .parameter "object"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 749
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    const/16 v6, 0x46

    move-object v0, p0

    move-object v1, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Ljava/lang/reflect/Field;->setFField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZCF)V

    .line 750
    return-void
.end method

.method public setInt(Ljava/lang/Object;I)V
    .registers 11
    .parameter "object"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 781
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    const/16 v6, 0x49

    move-object v0, p0

    move-object v1, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Ljava/lang/reflect/Field;->setIField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZCI)V

    .line 782
    return-void
.end method

.method public setLong(Ljava/lang/Object;J)V
    .registers 13
    .parameter "object"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 813
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    const/16 v6, 0x4a

    move-object v0, p0

    move-object v1, p1

    move-wide v7, p2

    invoke-direct/range {v0 .. v8}, Ljava/lang/reflect/Field;->setJField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZCJ)V

    .line 814
    return-void
.end method

.method public setShort(Ljava/lang/Object;S)V
    .registers 11
    .parameter "object"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 845
    iget-object v2, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    iget-object v3, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    iget v4, p0, Ljava/lang/reflect/Field;->slot:I

    iget-boolean v5, p0, Ljava/lang/reflect/AccessibleObject;->flag:Z

    const/16 v6, 0x53

    move-object v0, p0

    move-object v1, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Ljava/lang/reflect/Field;->setSField(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;IZCS)V

    .line 846
    return-void
.end method

.method public toGenericString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x20

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x50

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 163
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    .line 164
    .local v0, modifier:I
    if-eqz v0, :cond_1a

    .line 165
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    :cond_1a
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/reflect/Field;->appendGenericType(Ljava/lang/StringBuilder;Ljava/lang/reflect/Type;)V

    .line 169
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x20

    .line 868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 869
    .local v0, result:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_18

    .line 870
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 872
    :cond_18
    iget-object v1, p0, Ljava/lang/reflect/Field;->type:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Field;->appendArrayType(Ljava/lang/StringBuilder;Ljava/lang/Class;)V

    .line 873
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 874
    iget-object v1, p0, Ljava/lang/reflect/Field;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 876
    iget-object v1, p0, Ljava/lang/reflect/Field;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
