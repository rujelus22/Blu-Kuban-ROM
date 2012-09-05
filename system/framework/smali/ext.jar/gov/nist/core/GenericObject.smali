.class public abstract Lgov/nist/core/GenericObject;
.super Ljava/lang/Object;
.source "GenericObject.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field protected static final AND:Ljava/lang/String; = "&"

.field protected static final AT:Ljava/lang/String; = "@"

.field protected static final COLON:Ljava/lang/String; = ":"

.field protected static final COMMA:Ljava/lang/String; = ","

.field protected static final DOT:Ljava/lang/String; = "."

.field protected static final DOUBLE_QUOTE:Ljava/lang/String; = "\""

.field protected static final EQUALS:Ljava/lang/String; = "="

.field protected static final GREATER_THAN:Ljava/lang/String; = ">"

.field protected static final HT:Ljava/lang/String; = "\t"

.field protected static final LESS_THAN:Ljava/lang/String; = "<"

.field protected static final LPAREN:Ljava/lang/String; = "("

.field protected static final NEWLINE:Ljava/lang/String; = "\r\n"

.field protected static final PERCENT:Ljava/lang/String; = "%"

.field protected static final POUND:Ljava/lang/String; = "#"

.field protected static final QUESTION:Ljava/lang/String; = "?"

.field protected static final QUOTE:Ljava/lang/String; = "\'"

.field protected static final RETURN:Ljava/lang/String; = "\n"

.field protected static final RPAREN:Ljava/lang/String; = ")"

.field protected static final SEMICOLON:Ljava/lang/String; = ";"

.field protected static final SLASH:Ljava/lang/String; = "/"

.field protected static final SP:Ljava/lang/String; = " "

.field protected static final STAR:Ljava/lang/String; = "*"

.field static final immutableClassNames:[Ljava/lang/String;

.field protected static final immutableClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected indentation:I

.field protected matchExpression:Lgov/nist/core/Match;

.field protected stringRepresentation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 73
    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    sput-object v2, Lgov/nist/core/GenericObject;->immutableClasses:Ljava/util/Set;

    .line 74
    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "String"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Character"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "Boolean"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "Byte"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "Short"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "Integer"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Long"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Float"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "Double"

    aput-object v4, v2, v3

    sput-object v2, Lgov/nist/core/GenericObject;->immutableClassNames:[Ljava/lang/String;

    .line 86
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3e
    :try_start_3e
    sget-object v2, Lgov/nist/core/GenericObject;->immutableClassNames:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_6f

    .line 87
    sget-object v2, Lgov/nist/core/GenericObject;->immutableClasses:Ljava/util/Set;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "java.lang."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lgov/nist/core/GenericObject;->immutableClassNames:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_63
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3e .. :try_end_63} :catch_66

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 88
    :catch_66
    move-exception v0

    .line 89
    .local v0, e:Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Internal error"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 91
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :cond_6f
    return-void
.end method

.method protected constructor <init>()V
    .registers 2

    .prologue
    .line 292
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 293
    const/4 v0, 0x0

    iput v0, p0, Lgov/nist/core/GenericObject;->indentation:I

    .line 294
    const-string v0, ""

    iput-object v0, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    .line 295
    return-void
.end method

.method public static getClassFromName(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .parameter "className"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 127
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    .line 130
    :goto_4
    return-object v1

    .line 128
    :catch_5
    move-exception v0

    .line 129
    .local v0, ex:Ljava/lang/Exception;
    invoke-static {v0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 130
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public static isMySubclass(Ljava/lang/Class;)Z
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
    .line 136
    .local p0, other:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v0, Lgov/nist/core/GenericObject;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public static makeClone(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .parameter "obj"

    .prologue
    .line 148
    if-nez p0, :cond_a

    .line 149
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "null obj!"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 150
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 151
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    move-object v1, p0

    .line 152
    .local v1, clone_obj:Ljava/lang/Object;
    sget-object v5, Lgov/nist/core/GenericObject;->immutableClasses:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 194
    .end local p0
    :goto_17
    return-object p0

    .line 154
    .restart local p0
    :cond_18
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_9b

    .line 155
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    .line 156
    .local v2, ec:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-nez v5, :cond_32

    .line 157
    check-cast p0, [Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    .end local v2           #ec:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_30
    :goto_30
    move-object p0, v1

    .line 194
    goto :goto_17

    .line 159
    .restart local v2       #ec:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local p0
    :cond_32
    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v2, v5, :cond_4c

    move-object v5, p0

    .line 160
    check-cast v5, [C

    check-cast v5, [C

    invoke-virtual {v5}, [C->clone()Ljava/lang/Object;

    move-result-object v1

    .line 163
    :cond_3f
    :goto_3f
    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v2, v5, :cond_5a

    .line 164
    check-cast p0, [B

    .end local p0
    check-cast p0, [B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_30

    .line 161
    .restart local p0
    :cond_4c
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v2, v5, :cond_3f

    move-object v5, p0

    .line 162
    check-cast v5, [Z

    check-cast v5, [Z

    invoke-virtual {v5}, [Z->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_3f

    .line 165
    :cond_5a
    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v2, v5, :cond_67

    .line 166
    check-cast p0, [S

    .end local p0
    check-cast p0, [S

    invoke-virtual {p0}, [S->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_30

    .line 167
    .restart local p0
    :cond_67
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v2, v5, :cond_74

    .line 168
    check-cast p0, [I

    .end local p0
    check-cast p0, [I

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_30

    .line 169
    .restart local p0
    :cond_74
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v2, v5, :cond_81

    .line 170
    check-cast p0, [J

    .end local p0
    check-cast p0, [J

    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_30

    .line 171
    .restart local p0
    :cond_81
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v2, v5, :cond_8e

    .line 172
    check-cast p0, [F

    .end local p0
    check-cast p0, [F

    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_30

    .line 173
    .restart local p0
    :cond_8e
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v2, v5, :cond_30

    .line 174
    check-cast p0, [D

    .end local p0
    check-cast p0, [D

    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_30

    .line 176
    .end local v2           #ec:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local p0
    :cond_9b
    const-class v5, Lgov/nist/core/GenericObject;

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_aa

    .line 177
    check-cast p0, Lgov/nist/core/GenericObject;

    .end local p0
    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->clone()Ljava/lang/Object;

    move-result-object v1

    goto :goto_30

    .line 178
    .restart local p0
    :cond_aa
    const-class v5, Lgov/nist/core/GenericObjectList;

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_ba

    .line 179
    check-cast p0, Lgov/nist/core/GenericObjectList;

    .end local p0
    invoke-virtual {p0}, Lgov/nist/core/GenericObjectList;->clone()Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_30

    .line 180
    .restart local p0
    :cond_ba
    const-class v5, Ljava/lang/Cloneable;

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 184
    :try_start_c2
    const-string v6, "clone"

    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 185
    .local v4, meth:Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/Object;

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d1
    .catch Ljava/lang/SecurityException; {:try_start_c2 .. :try_end_d1} :catch_e3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c2 .. :try_end_d1} :catch_d4
    .catch Ljava/lang/IllegalAccessException; {:try_start_c2 .. :try_end_d1} :catch_e0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c2 .. :try_end_d1} :catch_dd
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c2 .. :try_end_d1} :catch_da

    move-result-object v1

    goto/16 :goto_30

    .line 187
    .end local v4           #meth:Ljava/lang/reflect/Method;
    :catch_d4
    move-exception v3

    .line 188
    .local v3, ex:Ljava/lang/IllegalArgumentException;
    invoke-static {v3}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_30

    .line 191
    .end local v3           #ex:Ljava/lang/IllegalArgumentException;
    :catch_da
    move-exception v5

    goto/16 :goto_30

    .line 190
    :catch_dd
    move-exception v5

    goto/16 :goto_30

    .line 189
    :catch_e0
    move-exception v5

    goto/16 :goto_30

    .line 186
    :catch_e3
    move-exception v5

    goto/16 :goto_30
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 201
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 202
    :catch_5
    move-exception v0

    .line 203
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Internal error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected dbgPrint()V
    .registers 2

    .prologue
    .line 394
    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->debugDump()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgov/nist/core/Debug;->println(Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method protected dbgPrint(Ljava/lang/String;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 401
    invoke-static {p1}, Lgov/nist/core/Debug;->println(Ljava/lang/String;)V

    .line 402
    return-void
.end method

.method public debugDump()Ljava/lang/String;
    .registers 25

    .prologue
    .line 594
    const-string v22, ""

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    .line 595
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    .line 596
    .local v20, myclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 597
    const-string v22, "{"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 598
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v12

    .line 599
    .local v12, fields:[Ljava/lang/reflect/Field;
    const/4 v15, 0x0

    .local v15, i:I
    :goto_25
    array-length v0, v12

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v15, v0, :cond_245

    .line 600
    aget-object v9, v12, v15

    .line 602
    .local v9, f:Ljava/lang/reflect/Field;
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v19

    .line 603
    .local v19, modifier:I
    and-int/lit8 v22, v19, 0x2

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3f

    .line 599
    :cond_3c
    :goto_3c
    add-int/lit8 v15, v15, 0x1

    goto :goto_25

    .line 605
    :cond_3f
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v11

    .line 606
    .local v11, fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    .line 607
    .local v10, fieldName:Ljava/lang/String;
    const-string v22, "stringRepresentation"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-eqz v22, :cond_3c

    .line 611
    const-string v22, "indentation"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-eqz v22, :cond_3c

    .line 615
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ":"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 618
    :try_start_77
    invoke-virtual {v11}, Ljava/lang/Class;->isPrimitive()Z

    move-result v22

    if-eqz v22, :cond_14b

    .line 619
    invoke-virtual {v11}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v14

    .line 620
    .local v14, fname:Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ":"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 621
    const-string v22, "int"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_b7

    .line 622
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v16

    .line 623
    .local v16, intfield:I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(I)V

    goto :goto_3c

    .line 679
    .end local v14           #fname:Ljava/lang/String;
    .end local v16           #intfield:I
    :catch_b5
    move-exception v8

    .line 680
    .local v8, ex1:Ljava/lang/IllegalAccessException;
    goto :goto_3c

    .line 624
    .end local v8           #ex1:Ljava/lang/IllegalAccessException;
    .restart local v14       #fname:Ljava/lang/String;
    :cond_b7
    const-string v22, "short"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_d6

    .line 625
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v21

    .line 626
    .local v21, shortField:S
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(S)V
    :try_end_ce
    .catch Ljava/lang/IllegalAccessException; {:try_start_77 .. :try_end_ce} :catch_b5
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_ce} :catch_d0

    goto/16 :goto_3c

    .line 681
    .end local v14           #fname:Ljava/lang/String;
    .end local v21           #shortField:S
    :catch_d0
    move-exception v7

    .line 682
    .local v7, ex:Ljava/lang/Exception;
    invoke-static {v7}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_3c

    .line 627
    .end local v7           #ex:Ljava/lang/Exception;
    .restart local v14       #fname:Ljava/lang/String;
    :cond_d6
    :try_start_d6
    const-string v22, "char"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_ed

    .line 628
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v4

    .line 629
    .local v4, charField:C
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lgov/nist/core/GenericObject;->sprint(C)V

    goto/16 :goto_3c

    .line 630
    .end local v4           #charField:C
    :cond_ed
    const-string v22, "long"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_106

    .line 631
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v17

    .line 632
    .local v17, longField:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lgov/nist/core/GenericObject;->sprint(J)V

    goto/16 :goto_3c

    .line 633
    .end local v17           #longField:J
    :cond_106
    const-string v22, "boolean"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_11d

    .line 634
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v3

    .line 635
    .local v3, booleanField:Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lgov/nist/core/GenericObject;->sprint(Z)V

    goto/16 :goto_3c

    .line 636
    .end local v3           #booleanField:Z
    :cond_11d
    const-string v22, "double"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_134

    .line 637
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v5

    .line 638
    .local v5, doubleField:D
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lgov/nist/core/GenericObject;->sprint(D)V

    goto/16 :goto_3c

    .line 639
    .end local v5           #doubleField:D
    :cond_134
    const-string v22, "float"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_3c

    .line 640
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v13

    .line 641
    .local v13, floatField:F
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lgov/nist/core/GenericObject;->sprint(F)V

    goto/16 :goto_3c

    .line 643
    .end local v13           #floatField:F
    .end local v14           #fname:Ljava/lang/String;
    :cond_14b
    const-class v22, Lgov/nist/core/GenericObject;

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v22

    if-eqz v22, :cond_185

    .line 644
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    if-eqz v22, :cond_17a

    .line 645
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lgov/nist/core/GenericObject;

    move-object/from16 v0, p0

    iget v0, v0, Lgov/nist/core/GenericObject;->indentation:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lgov/nist/core/GenericObject;->debugDump(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_3c

    .line 649
    :cond_17a
    const-string v22, "<null>"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_3c

    .line 652
    :cond_185
    const-class v22, Lgov/nist/core/GenericObjectList;

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v22

    if-eqz v22, :cond_1bf

    .line 654
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    if-eqz v22, :cond_1b4

    .line 655
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lgov/nist/core/GenericObjectList;

    move-object/from16 v0, p0

    iget v0, v0, Lgov/nist/core/GenericObject;->indentation:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lgov/nist/core/GenericObjectList;->debugDump(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_3c

    .line 659
    :cond_1b4
    const-string v22, "<null>"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_3c

    .line 665
    :cond_1bf
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    if-eqz v22, :cond_21c

    .line 666
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ":"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 671
    :goto_1ef
    const-string v22, "{"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 672
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    if-eqz v22, :cond_23b

    .line 673
    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 677
    :goto_211
    const-string v22, "}"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    goto/16 :goto_3c

    .line 668
    :cond_21c
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ":"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    goto :goto_1ef

    .line 675
    :cond_23b
    const-string v22, "<null>"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V
    :try_end_244
    .catch Ljava/lang/IllegalAccessException; {:try_start_d6 .. :try_end_244} :catch_b5
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_244} :catch_d0

    goto :goto_211

    .line 685
    .end local v9           #f:Ljava/lang/reflect/Field;
    .end local v10           #fieldName:Ljava/lang/String;
    .end local v11           #fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v19           #modifier:I
    :cond_245
    const-string v22, "}"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    move-object/from16 v22, v0

    return-object v22
.end method

.method public debugDump(I)Ljava/lang/String;
    .registers 4
    .parameter "indent"

    .prologue
    .line 693
    iput p1, p0, Lgov/nist/core/GenericObject;->indentation:I

    .line 694
    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->debugDump()Ljava/lang/String;

    move-result-object v0

    .line 695
    .local v0, retval:Ljava/lang/String;
    const/4 v1, 0x0

    iput v1, p0, Lgov/nist/core/GenericObject;->indentation:I

    .line 696
    return-object v0
.end method

.method public abstract encode()Ljava/lang/String;
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .registers 3
    .parameter "buffer"

    .prologue
    .line 710
    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->encode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 19
    .parameter "that"

    .prologue
    .line 410
    if-nez p1, :cond_4

    const/4 v13, 0x0

    .line 481
    :goto_3
    return v13

    .line 411
    :cond_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_14

    .line 412
    const/4 v13, 0x0

    goto :goto_3

    .line 413
    :cond_14
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    .line 414
    .local v12, myclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 416
    .local v8, hisclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_1c
    invoke-virtual {v12}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    .line 417
    .local v5, fields:[Ljava/lang/reflect/Field;
    invoke-virtual {v8}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v9

    .line 418
    .local v9, hisfields:[Ljava/lang/reflect/Field;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_25
    array-length v13, v5

    if-ge v10, v13, :cond_163

    .line 419
    aget-object v2, v5, v10

    .line 420
    .local v2, f:Ljava/lang/reflect/Field;
    aget-object v7, v9, v10

    .line 422
    .local v7, g:Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v11

    .line 423
    .local v11, modifier:I
    and-int/lit8 v13, v11, 0x2

    const/4 v14, 0x2

    if-ne v13, v14, :cond_38

    .line 418
    :cond_35
    :goto_35
    add-int/lit8 v10, v10, 0x1

    goto :goto_25

    .line 425
    :cond_38
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    .line 426
    .local v4, fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 427
    .local v3, fieldName:Ljava/lang/String;
    const-string v13, "stringRepresentation"

    invoke-virtual {v3, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_35

    .line 430
    const-string v13, "indentation"

    invoke-virtual {v3, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_35

    .line 435
    :try_start_50
    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v13

    if-eqz v13, :cond_10e

    .line 436
    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v6

    .line 437
    .local v6, fname:Ljava/lang/String;
    const-string v13, "int"

    invoke-virtual {v6, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_72

    .line 438
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v14

    if-eq v13, v14, :cond_35

    .line 439
    const/4 v13, 0x0

    goto :goto_3

    .line 440
    :cond_72
    const-string v13, "short"

    invoke-virtual {v6, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_8b

    .line 441
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v14

    if-eq v13, v14, :cond_35

    .line 442
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 443
    :cond_8b
    const-string v13, "char"

    invoke-virtual {v6, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_a4

    .line 444
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v14

    if-eq v13, v14, :cond_35

    .line 445
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 446
    :cond_a4
    const-string v13, "long"

    invoke-virtual {v6, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_bf

    .line 447
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v13

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v15

    cmp-long v13, v13, v15

    if-eqz v13, :cond_35

    .line 448
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 449
    :cond_bf
    const-string v13, "boolean"

    invoke-virtual {v6, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_d8

    .line 450
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v14

    if-eq v13, v14, :cond_35

    .line 451
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 452
    :cond_d8
    const-string v13, "double"

    invoke-virtual {v6, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_f3

    .line 453
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v13

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v15

    cmpl-double v13, v13, v15

    if-eqz v13, :cond_35

    .line 454
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 455
    :cond_f3
    const-string v13, "float"

    invoke-virtual {v6, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_35

    .line 456
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v14

    cmpl-float v13, v13, v14

    if-eqz v13, :cond_35

    .line 457
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 459
    .end local v6           #fname:Ljava/lang/String;
    :cond_10e
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-ne v13, v14, :cond_11f

    .line 460
    const/4 v13, 0x1

    goto/16 :goto_3

    .line 461
    :cond_11f
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_12a

    .line 462
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 463
    :cond_12a
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_135

    .line 464
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 465
    :cond_135
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_148

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_148

    .line 466
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 467
    :cond_148
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_157
    .catch Ljava/lang/IllegalAccessException; {:try_start_50 .. :try_end_157} :catch_15d

    move-result v13

    if-nez v13, :cond_35

    .line 468
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 469
    :catch_15d
    move-exception v1

    .line 470
    .local v1, ex1:Ljava/lang/IllegalAccessException;
    invoke-static {v1}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_35

    .line 473
    .end local v1           #ex1:Ljava/lang/IllegalAccessException;
    .end local v2           #f:Ljava/lang/reflect/Field;
    .end local v3           #fieldName:Ljava/lang/String;
    .end local v4           #fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v7           #g:Ljava/lang/reflect/Field;
    .end local v11           #modifier:I
    :cond_163
    const-class v13, Lgov/nist/core/GenericObject;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16e

    .line 481
    const/4 v13, 0x1

    goto/16 :goto_3

    .line 476
    :cond_16e
    invoke-virtual {v12}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v12

    .line 477
    invoke-virtual {v8}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v8

    .line 480
    goto/16 :goto_1c
.end method

.method protected getIndentation()Ljava/lang/String;
    .registers 3

    .prologue
    .line 298
    iget v1, p0, Lgov/nist/core/GenericObject;->indentation:I

    new-array v0, v1, [C

    .line 299
    .local v0, chars:[C
    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 300
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public getMatcher()Lgov/nist/core/Match;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lgov/nist/core/GenericObject;->matchExpression:Lgov/nist/core/Match;

    return-object v0
.end method

.method public match(Ljava/lang/Object;)Z
    .registers 23
    .parameter "other"

    .prologue
    .line 494
    if-nez p1, :cond_5

    .line 495
    const/16 v17, 0x1

    .line 576
    :goto_4
    return v17

    .line 496
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_16

    .line 497
    const/16 v17, 0x0

    goto :goto_4

    :cond_16
    move-object/from16 v16, p1

    .line 498
    check-cast v16, Lgov/nist/core/GenericObject;

    .line 499
    .local v16, that:Lgov/nist/core/GenericObject;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    .line 500
    .local v15, myclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v15}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 501
    .local v6, fields:[Ljava/lang/reflect/Field;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    .line 502
    .local v10, hisclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v10}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v11

    .line 503
    .local v11, hisfields:[Ljava/lang/reflect/Field;
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2b
    array-length v0, v6

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v12, v0, :cond_1c5

    .line 504
    aget-object v3, v6, v12

    .line 505
    .local v3, f:Ljava/lang/reflect/Field;
    aget-object v8, v11, v12

    .line 507
    .local v8, g:Ljava/lang/reflect/Field;
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v13

    .line 508
    .local v13, modifier:I
    and-int/lit8 v17, v13, 0x2

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_47

    .line 503
    :cond_44
    :goto_44
    add-int/lit8 v12, v12, 0x1

    goto :goto_2b

    .line 510
    :cond_47
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    .line 511
    .local v5, fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 512
    .local v4, fieldName:Ljava/lang/String;
    const-string v17, "stringRepresentation"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v17

    if-eqz v17, :cond_44

    .line 515
    const-string v17, "indentation"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v17

    if-eqz v17, :cond_44

    .line 520
    :try_start_63
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v17

    if-eqz v17, :cond_147

    .line 521
    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v7

    .line 522
    .local v7, fname:Ljava/lang/String;
    const-string v17, "int"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_8d

    .line 523
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v17

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_44

    .line 524
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 525
    :cond_8d
    const-string v17, "short"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_ad

    .line 526
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v17

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_44

    .line 527
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 528
    :cond_ad
    const-string v17, "char"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_cd

    .line 529
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v17

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_44

    .line 530
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 531
    :cond_cd
    const-string v17, "long"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_eb

    .line 532
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v17

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v19

    cmp-long v17, v17, v19

    if-eqz v17, :cond_44

    .line 533
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 534
    :cond_eb
    const-string v17, "boolean"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_10b

    .line 535
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v17

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_44

    .line 536
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 537
    :cond_10b
    const-string v17, "double"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_129

    .line 538
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v17

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v19

    cmpl-double v17, v17, v19

    if-eqz v17, :cond_44

    .line 539
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 540
    :cond_129
    const-string v17, "float"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_44

    .line 541
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v17

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v18

    cmpl-float v17, v17, v18

    if-eqz v17, :cond_44

    .line 542
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 545
    .end local v7           #fname:Ljava/lang/String;
    :cond_147
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 546
    .local v14, myObj:Ljava/lang/Object;
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 547
    .local v9, hisObj:Ljava/lang/Object;
    if-eqz v9, :cond_15b

    if-nez v14, :cond_15b

    .line 548
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 549
    :cond_15b
    if-nez v9, :cond_15f

    if-nez v14, :cond_44

    .line 551
    :cond_15f
    if-nez v9, :cond_163

    if-eqz v14, :cond_44

    .line 553
    :cond_163
    instance-of v0, v9, Ljava/lang/String;

    move/from16 v17, v0

    if-eqz v17, :cond_18e

    instance-of v0, v14, Ljava/lang/String;

    move/from16 v17, v0

    if-eqz v17, :cond_18e

    .line 556
    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_44

    .line 558
    check-cast v14, Ljava/lang/String;

    .end local v14           #myObj:Ljava/lang/Object;
    check-cast v9, Ljava/lang/String;

    .end local v9           #hisObj:Ljava/lang/Object;
    invoke-virtual {v14, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v17

    if-eqz v17, :cond_44

    .line 561
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 562
    .restart local v9       #hisObj:Ljava/lang/Object;
    .restart local v14       #myObj:Ljava/lang/Object;
    :cond_18e
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lgov/nist/core/GenericObject;->isMySubclass(Ljava/lang/Class;)Z

    move-result v17

    if-eqz v17, :cond_1a9

    move-object v0, v14

    check-cast v0, Lgov/nist/core/GenericObject;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lgov/nist/core/GenericObject;->match(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1a9

    .line 565
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 566
    :cond_1a9
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lgov/nist/core/GenericObjectList;->isMySubclass(Ljava/lang/Class;)Z

    move-result v17

    if-eqz v17, :cond_44

    check-cast v14, Lgov/nist/core/GenericObjectList;

    .end local v14           #myObj:Ljava/lang/Object;
    invoke-virtual {v14, v9}, Lgov/nist/core/GenericObjectList;->match(Ljava/lang/Object;)Z
    :try_end_1b8
    .catch Ljava/lang/IllegalAccessException; {:try_start_63 .. :try_end_1b8} :catch_1bf

    move-result v17

    if-nez v17, :cond_44

    .line 569
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 572
    .end local v9           #hisObj:Ljava/lang/Object;
    :catch_1bf
    move-exception v2

    .line 573
    .local v2, ex1:Ljava/lang/IllegalAccessException;
    invoke-static {v2}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto/16 :goto_44

    .line 576
    .end local v2           #ex1:Ljava/lang/IllegalAccessException;
    .end local v3           #f:Ljava/lang/reflect/Field;
    .end local v4           #fieldName:Ljava/lang/String;
    .end local v5           #fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v8           #g:Ljava/lang/reflect/Field;
    .end local v13           #modifier:I
    :cond_1c5
    const/16 v17, 0x1

    goto/16 :goto_4
.end method

.method public merge(Ljava/lang/Object;)V
    .registers 27
    .parameter "mergeObject"

    .prologue
    .line 219
    if-nez p1, :cond_3

    .line 290
    :goto_2
    return-void

    .line 222
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_19

    .line 223
    new-instance v23, Ljava/lang/IllegalArgumentException;

    const-string v24, "Bad override object"

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 225
    :cond_19
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    .line 227
    .local v20, myclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1d
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v10

    .line 228
    .local v10, fields:[Ljava/lang/reflect/Field;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_22
    array-length v0, v10

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v14, v0, :cond_12e

    .line 229
    aget-object v8, v10, v14

    .line 230
    .local v8, f:Ljava/lang/reflect/Field;
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v19

    .line 231
    .local v19, modifier:I
    invoke-static/range {v19 .. v19}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v23

    if-eqz v23, :cond_38

    .line 228
    :cond_35
    :goto_35
    add-int/lit8 v14, v14, 0x1

    goto :goto_22

    .line 233
    :cond_38
    invoke-static/range {v19 .. v19}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v23

    if-nez v23, :cond_35

    .line 235
    invoke-static/range {v19 .. v19}, Ljava/lang/reflect/Modifier;->isInterface(I)Z

    move-result v23

    if-nez v23, :cond_35

    .line 238
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    .line 239
    .local v9, fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v9}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v12

    .line 242
    .local v12, fname:Ljava/lang/String;
    :try_start_4c
    invoke-virtual {v9}, Ljava/lang/Class;->isPrimitive()Z

    move-result v23

    if-eqz v23, :cond_f8

    .line 243
    const-string v23, "int"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v23

    if-nez v23, :cond_6d

    .line 244
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v15

    .line 245
    .local v15, intfield:I
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v15}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_67
    .catch Ljava/lang/IllegalAccessException; {:try_start_4c .. :try_end_67} :catch_68

    goto :goto_35

    .line 281
    .end local v15           #intfield:I
    :catch_68
    move-exception v7

    .line 282
    .local v7, ex1:Ljava/lang/IllegalAccessException;
    invoke-virtual {v7}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_35

    .line 246
    .end local v7           #ex1:Ljava/lang/IllegalAccessException;
    :cond_6d
    :try_start_6d
    const-string v23, "short"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v23

    if-nez v23, :cond_85

    .line 247
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getShort(Ljava/lang/Object;)S

    move-result v22

    .line 248
    .local v22, shortField:S
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Field;->setShort(Ljava/lang/Object;S)V

    goto :goto_35

    .line 249
    .end local v22           #shortField:S
    :cond_85
    const-string v23, "char"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v23

    if-nez v23, :cond_9b

    .line 250
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getChar(Ljava/lang/Object;)C

    move-result v4

    .line 251
    .local v4, charField:C
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v4}, Ljava/lang/reflect/Field;->setChar(Ljava/lang/Object;C)V

    goto :goto_35

    .line 252
    .end local v4           #charField:C
    :cond_9b
    const-string v23, "long"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v23

    if-nez v23, :cond_b3

    .line 253
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v16

    .line 254
    .local v16, longField:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v8, v0, v1, v2}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    goto :goto_35

    .line 255
    .end local v16           #longField:J
    :cond_b3
    const-string v23, "boolean"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v23

    if-nez v23, :cond_ca

    .line 256
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v3

    .line 257
    .local v3, booleanField:Z
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v3}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    goto/16 :goto_35

    .line 258
    .end local v3           #booleanField:Z
    :cond_ca
    const-string v23, "double"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v23

    if-nez v23, :cond_e1

    .line 259
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v5

    .line 260
    .local v5, doubleField:D
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v5, v6}, Ljava/lang/reflect/Field;->setDouble(Ljava/lang/Object;D)V

    goto/16 :goto_35

    .line 261
    .end local v5           #doubleField:D
    :cond_e1
    const-string v23, "float"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v23

    if-nez v23, :cond_35

    .line 262
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result v11

    .line 263
    .local v11, floatField:F
    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v11}, Ljava/lang/reflect/Field;->setFloat(Ljava/lang/Object;F)V

    goto/16 :goto_35

    .line 266
    .end local v11           #floatField:F
    :cond_f8
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 267
    .local v21, obj:Ljava/lang/Object;
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .line 268
    .local v18, mobj:Ljava/lang/Object;
    if-eqz v18, :cond_35

    .line 270
    if-nez v21, :cond_111

    .line 271
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_35

    .line 274
    :cond_111
    move-object/from16 v0, v21

    instance-of v0, v0, Lgov/nist/core/GenericObject;

    move/from16 v23, v0

    if-eqz v23, :cond_125

    .line 275
    move-object/from16 v0, v21

    check-cast v0, Lgov/nist/core/GenericObject;

    move-object v13, v0

    .line 276
    .local v13, gobj:Lgov/nist/core/GenericObject;
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Lgov/nist/core/GenericObject;->merge(Ljava/lang/Object;)V

    goto/16 :goto_35

    .line 278
    .end local v13           #gobj:Lgov/nist/core/GenericObject;
    :cond_125
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_12c
    .catch Ljava/lang/IllegalAccessException; {:try_start_6d .. :try_end_12c} :catch_68

    goto/16 :goto_35

    .line 286
    .end local v8           #f:Ljava/lang/reflect/Field;
    .end local v9           #fieldType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v12           #fname:Ljava/lang/String;
    .end local v18           #mobj:Ljava/lang/Object;
    .end local v19           #modifier:I
    .end local v21           #obj:Ljava/lang/Object;
    :cond_12e
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v20

    .line 287
    const-class v23, Lgov/nist/core/GenericObject;

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1d

    goto/16 :goto_2
.end method

.method public setMatcher(Lgov/nist/core/Match;)V
    .registers 4
    .parameter "matchExpression"

    .prologue
    .line 113
    if-nez p1, :cond_a

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null arg!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_a
    iput-object p1, p0, Lgov/nist/core/GenericObject;->matchExpression:Lgov/nist/core/Match;

    .line 116
    return-void
.end method

.method protected sprint(C)V
    .registers 3
    .parameter "charField"

    .prologue
    .line 353
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 355
    return-void
.end method

.method protected sprint(D)V
    .registers 4
    .parameter "doubleField"

    .prologue
    .line 378
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 379
    return-void
.end method

.method protected sprint(F)V
    .registers 3
    .parameter "floatField"

    .prologue
    .line 386
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method protected sprint(I)V
    .registers 3
    .parameter "intField"

    .prologue
    .line 338
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method protected sprint(J)V
    .registers 4
    .parameter "longField"

    .prologue
    .line 362
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method protected sprint(Ljava/lang/Object;)V
    .registers 3
    .parameter "o"

    .prologue
    .line 330
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method protected sprint(Ljava/lang/String;)V
    .registers 4
    .parameter "a"

    .prologue
    .line 308
    if-nez p1, :cond_33

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->getIndentation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<null>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    .line 323
    :cond_32
    :goto_32
    return-void

    .line 313
    :cond_33
    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_43

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_49

    .line 314
    :cond_43
    iget v0, p0, Lgov/nist/core/GenericObject;->indentation:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgov/nist/core/GenericObject;->indentation:I

    .line 316
    :cond_49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgov/nist/core/GenericObject;->getIndentation()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/core/GenericObject;->stringRepresentation:Ljava/lang/String;

    .line 319
    const-string v0, "{"

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_9e

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_32

    .line 320
    :cond_9e
    iget v0, p0, Lgov/nist/core/GenericObject;->indentation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgov/nist/core/GenericObject;->indentation:I

    goto :goto_32
.end method

.method protected sprint(S)V
    .registers 3
    .parameter "shortField"

    .prologue
    .line 345
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method protected sprint(Z)V
    .registers 3
    .parameter "booleanField"

    .prologue
    .line 370
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgov/nist/core/GenericObject;->sprint(Ljava/lang/String;)V

    .line 371
    return-void
.end method
