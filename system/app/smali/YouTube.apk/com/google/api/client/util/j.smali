.class public final Lcom/google/api/client/util/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Boolean;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/Character;

.field public static final d:Ljava/lang/Byte;

.field public static final e:Ljava/lang/Short;

.field public static final f:Ljava/lang/Integer;

.field public static final g:Ljava/lang/Float;

.field public static final h:Ljava/lang/Long;

.field public static final i:Ljava/lang/Double;

.field public static final j:Ljava/math/BigInteger;

.field public static final k:Ljava/math/BigDecimal;

.field public static final l:Lcom/google/api/client/util/DateTime;

.field private static final m:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 49
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lcom/google/api/client/util/j;->a:Ljava/lang/Boolean;

    .line 52
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lcom/google/api/client/util/j;->b:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, v2}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Lcom/google/api/client/util/j;->c:Ljava/lang/Character;

    .line 58
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, v2}, Ljava/lang/Byte;-><init>(B)V

    sput-object v0, Lcom/google/api/client/util/j;->d:Ljava/lang/Byte;

    .line 61
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, v2}, Ljava/lang/Short;-><init>(S)V

    sput-object v0, Lcom/google/api/client/util/j;->e:Ljava/lang/Short;

    .line 64
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/google/api/client/util/j;->f:Ljava/lang/Integer;

    .line 67
    new-instance v0, Ljava/lang/Float;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Lcom/google/api/client/util/j;->g:Ljava/lang/Float;

    .line 70
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v3, v4}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lcom/google/api/client/util/j;->h:Ljava/lang/Long;

    .line 73
    new-instance v0, Ljava/lang/Double;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Lcom/google/api/client/util/j;->i:Ljava/lang/Double;

    .line 76
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/api/client/util/j;->j:Ljava/math/BigInteger;

    .line 79
    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/api/client/util/j;->k:Ljava/math/BigDecimal;

    .line 82
    new-instance v0, Lcom/google/api/client/util/DateTime;

    invoke-direct {v0, v3, v4}, Lcom/google/api/client/util/DateTime;-><init>(J)V

    sput-object v0, Lcom/google/api/client/util/j;->l:Lcom/google/api/client/util/DateTime;

    .line 85
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 89
    sput-object v0, Lcom/google/api/client/util/j;->m:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/Boolean;

    sget-object v2, Lcom/google/api/client/util/j;->a:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/google/api/client/util/j;->m:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/String;

    sget-object v2, Lcom/google/api/client/util/j;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/google/api/client/util/j;->m:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/Character;

    sget-object v2, Lcom/google/api/client/util/j;->c:Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/google/api/client/util/j;->m:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/Byte;

    sget-object v2, Lcom/google/api/client/util/j;->d:Ljava/lang/Byte;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/google/api/client/util/j;->m:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/Short;

    sget-object v2, Lcom/google/api/client/util/j;->e:Ljava/lang/Short;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/google/api/client/util/j;->m:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/Integer;

    sget-object v2, Lcom/google/api/client/util/j;->f:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/google/api/client/util/j;->m:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/Float;

    sget-object v2, Lcom/google/api/client/util/j;->g:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/google/api/client/util/j;->m:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/Long;

    sget-object v2, Lcom/google/api/client/util/j;->h:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/google/api/client/util/j;->m:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/Double;

    sget-object v2, Lcom/google/api/client/util/j;->i:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/google/api/client/util/j;->m:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/math/BigInteger;

    sget-object v2, Lcom/google/api/client/util/j;->j:Ljava/math/BigInteger;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/google/api/client/util/j;->m:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/math/BigDecimal;

    sget-object v2, Lcom/google/api/client/util/j;->k:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/google/api/client/util/j;->m:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Lcom/google/api/client/util/DateTime;

    sget-object v2, Lcom/google/api/client/util/j;->l:Lcom/google/api/client/util/DateTime;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 112
    sget-object v0, Lcom/google/api/client/util/j;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 113
    if-nez v0, :cond_33

    .line 114
    sget-object v2, Lcom/google/api/client/util/j;->m:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v2

    .line 115
    :try_start_c
    sget-object v0, Lcom/google/api/client/util/j;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 116
    if-nez v0, :cond_32

    .line 117
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_34

    move-object v0, p0

    .line 122
    :cond_1b
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 123
    add-int/lit8 v1, v1, 0x1

    .line 124
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 125
    new-array v1, v1, [I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    .line 138
    :goto_2d
    sget-object v1, Lcom/google/api/client/util/j;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_32
    monitor-exit v2

    .line 144
    :cond_33
    return-object v0

    .line 126
    :cond_34
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 128
    invoke-static {p0}, Lcom/google/api/client/util/h;->a(Ljava/lang/Class;)Lcom/google/api/client/util/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/api/client/util/h;->a(Ljava/lang/String;)Lcom/google/api/client/util/o;

    move-result-object v0

    .line 129
    const-string v1, "enum missing constant with @NullValue annotation: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v3}, Lcom/google/common/base/t;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-virtual {v0}, Lcom/google/api/client/util/o;->f()Ljava/lang/Enum;

    move-result-object v0

    goto :goto_2d

    .line 136
    :cond_53
    invoke-static {p0}, Lcom/google/api/client/util/v;->a(Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_56
    .catchall {:try_start_c .. :try_end_56} :catchall_58

    move-result-object v0

    goto :goto_2d

    .line 140
    :catchall_58
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static a(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 382
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_18

    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    .line 383
    :goto_7
    if-eqz p0, :cond_b

    if-eqz v0, :cond_df

    .line 384
    :cond_b
    if-eqz p1, :cond_17

    if-eqz v0, :cond_17

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 428
    :cond_17
    :goto_17
    return-object p1

    .line 382
    :cond_18
    const/4 v0, 0x0

    goto :goto_7

    .line 388
    :cond_1a
    const-class v1, Ljava/lang/Character;

    if-eq v0, v1, :cond_22

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4c

    .line 389
    :cond_22
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_42

    .line 390
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected type Character/char but got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 393
    :cond_42
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    goto :goto_17

    .line 395
    :cond_4c
    const-class v1, Ljava/lang/Boolean;

    if-eq v0, v1, :cond_54

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_59

    .line 396
    :cond_54
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_17

    .line 398
    :cond_59
    const-class v1, Ljava/lang/Byte;

    if-eq v0, v1, :cond_61

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_66

    .line 399
    :cond_61
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object p1

    goto :goto_17

    .line 401
    :cond_66
    const-class v1, Ljava/lang/Short;

    if-eq v0, v1, :cond_6e

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_73

    .line 402
    :cond_6e
    invoke-static {p1}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object p1

    goto :goto_17

    .line 404
    :cond_73
    const-class v1, Ljava/lang/Integer;

    if-eq v0, v1, :cond_7b

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_80

    .line 405
    :cond_7b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_17

    .line 407
    :cond_80
    const-class v1, Ljava/lang/Long;

    if-eq v0, v1, :cond_88

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_8d

    .line 408
    :cond_88
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    goto :goto_17

    .line 410
    :cond_8d
    const-class v1, Ljava/lang/Float;

    if-eq v0, v1, :cond_95

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_9b

    .line 411
    :cond_95
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    goto/16 :goto_17

    .line 413
    :cond_9b
    const-class v1, Ljava/lang/Double;

    if-eq v0, v1, :cond_a3

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_a9

    .line 414
    :cond_a3
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    goto/16 :goto_17

    .line 416
    :cond_a9
    const-class v1, Lcom/google/api/client/util/DateTime;

    if-ne v0, v1, :cond_b3

    .line 417
    invoke-static {p1}, Lcom/google/api/client/util/DateTime;->parseRfc3339(Ljava/lang/String;)Lcom/google/api/client/util/DateTime;

    move-result-object p1

    goto/16 :goto_17

    .line 419
    :cond_b3
    const-class v1, Ljava/math/BigInteger;

    if-ne v0, v1, :cond_bf

    .line 420
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    goto/16 :goto_17

    .line 422
    :cond_bf
    const-class v1, Ljava/math/BigDecimal;

    if-ne v0, v1, :cond_cb

    .line 423
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    goto/16 :goto_17

    .line 425
    :cond_cb
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_df

    .line 427
    invoke-static {v0}, Lcom/google/api/client/util/h;->a(Ljava/lang/Class;)Lcom/google/api/client/util/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/api/client/util/h;->a(Ljava/lang/String;)Lcom/google/api/client/util/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/client/util/o;->f()Ljava/lang/Enum;

    move-result-object p1

    goto/16 :goto_17

    .line 431
    :cond_df
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

.method public static a(Ljava/util/List;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 514
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_2a

    .line 515
    check-cast p1, Ljava/lang/reflect/WildcardType;

    invoke-static {p1}, Lcom/google/api/client/util/v;->a(Ljava/lang/reflect/WildcardType;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 518
    :goto_a
    instance-of v0, v1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_25

    move-object v0, v1

    .line 520
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-static {p0, v0}, Lcom/google/api/client/util/v;->a(Ljava/util/List;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 521
    if-eqz v0, :cond_28

    .line 525
    :goto_17
    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_26

    .line 526
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_a

    .line 530
    :cond_25
    return-object v1

    :cond_26
    move-object v1, v0

    goto :goto_a

    :cond_28
    move-object v0, v1

    goto :goto_17

    :cond_2a
    move-object v1, p1

    goto :goto_a
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 258
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 259
    invoke-static {v3}, Lcom/google/api/client/util/j;->a(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_4a

    move v0, v1

    :goto_d
    invoke-static {v0}, Lcom/google/common/base/t;->a(Z)V

    .line 260
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v3, v0, :cond_4c

    move v0, v1

    :goto_17
    invoke-static {v0}, Lcom/google/common/base/t;->a(Z)V

    .line 261
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 263
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    if-ne v0, v3, :cond_4e

    :goto_2a
    invoke-static {v1}, Lcom/google/common/base/t;->a(Z)V

    .line 265
    invoke-static {p0}, Lcom/google/api/client/util/v;->a(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_112

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 266
    add-int/lit8 v0, v2, 0x1

    invoke-static {v3}, Lcom/google/api/client/util/j;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    move v2, v0

    goto :goto_35

    :cond_4a
    move v0, v2

    .line 259
    goto :goto_d

    :cond_4c
    move v0, v2

    .line 260
    goto :goto_17

    :cond_4e
    move v1, v2

    .line 263
    goto :goto_2a

    .line 268
    :cond_50
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 271
    check-cast p0, Ljava/util/Collection;

    .line 272
    const-class v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6c

    move-object v0, p1

    .line 274
    check-cast v0, Ljava/util/ArrayList;

    .line 275
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 278
    :cond_6c
    check-cast p1, Ljava/util/Collection;

    .line 279
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_72
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_112

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 280
    invoke-static {v1}, Lcom/google/api/client/util/j;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_72

    .line 284
    :cond_84
    const-class v0, Lcom/google/api/client/util/p;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    .line 285
    if-nez v1, :cond_94

    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_ca

    .line 286
    :cond_94
    invoke-static {v3}, Lcom/google/api/client/util/h;->a(Ljava/lang/Class;)Lcom/google/api/client/util/h;

    move-result-object v2

    .line 287
    iget-object v0, v2, Lcom/google/api/client/util/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9e
    :goto_9e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_112

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 288
    invoke-virtual {v2, v0}, Lcom/google/api/client/util/h;->a(Ljava/lang/String;)Lcom/google/api/client/util/o;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Lcom/google/api/client/util/o;->d()Z

    move-result v4

    if-nez v4, :cond_9e

    .line 292
    if-eqz v1, :cond_bc

    invoke-virtual {v0}, Lcom/google/api/client/util/o;->e()Z

    move-result v4

    if-nez v4, :cond_9e

    .line 293
    :cond_bc
    invoke-virtual {v0, p0}, Lcom/google/api/client/util/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 294
    if-eqz v4, :cond_9e

    .line 295
    invoke-static {v4}, Lcom/google/api/client/util/j;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Lcom/google/api/client/util/o;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_9e

    .line 300
    :cond_ca
    const-class v0, Lcom/google/api/client/util/a;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 303
    check-cast p1, Lcom/google/api/client/util/a;

    .line 305
    check-cast p0, Lcom/google/api/client/util/a;

    .line 306
    invoke-virtual {p0}, Lcom/google/api/client/util/a;->size()I

    move-result v0

    .line 307
    :goto_da
    if-ge v2, v0, :cond_112

    .line 308
    invoke-virtual {p0, v2}, Lcom/google/api/client/util/a;->b(I)Ljava/lang/Object;

    move-result-object v1

    .line 309
    invoke-static {v1}, Lcom/google/api/client/util/j;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/api/client/util/a;->a(ILjava/lang/Object;)Ljava/lang/Object;

    .line 307
    add-int/lit8 v2, v2, 0x1

    goto :goto_da

    .line 314
    :cond_ea
    check-cast p1, Ljava/util/Map;

    .line 316
    check-cast p0, Ljava/util/Map;

    .line 317
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_112

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 318
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/j;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f6

    .line 322
    :cond_112
    return-void
.end method

.method public static a(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 156
    if-eqz p0, :cond_10

    sget-object v0, Lcom/google/api/client/util/j;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne p0, v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static a(Ljava/lang/reflect/Type;)Z
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 333
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_4d

    .line 334
    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-static {p0}, Lcom/google/api/client/util/v;->a(Ljava/lang/reflect/WildcardType;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 336
    :goto_b
    instance-of v2, v0, Ljava/lang/Class;

    if-nez v2, :cond_11

    move v0, v1

    .line 340
    :goto_10
    return v0

    .line 339
    :cond_11
    check-cast v0, Ljava/lang/Class;

    .line 340
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_49

    const-class v2, Ljava/lang/Character;

    if-eq v0, v2, :cond_49

    const-class v2, Ljava/lang/String;

    if-eq v0, v2, :cond_49

    const-class v2, Ljava/lang/Integer;

    if-eq v0, v2, :cond_49

    const-class v2, Ljava/lang/Long;

    if-eq v0, v2, :cond_49

    const-class v2, Ljava/lang/Short;

    if-eq v0, v2, :cond_49

    const-class v2, Ljava/lang/Byte;

    if-eq v0, v2, :cond_49

    const-class v2, Ljava/lang/Float;

    if-eq v0, v2, :cond_49

    const-class v2, Ljava/lang/Double;

    if-eq v0, v2, :cond_49

    const-class v2, Ljava/math/BigInteger;

    if-eq v0, v2, :cond_49

    const-class v2, Ljava/math/BigDecimal;

    if-eq v0, v2, :cond_49

    const-class v2, Lcom/google/api/client/util/DateTime;

    if-eq v0, v2, :cond_49

    const-class v2, Ljava/lang/Boolean;

    if-ne v0, v2, :cond_4b

    :cond_49
    const/4 v0, 0x1

    goto :goto_10

    :cond_4b
    move v0, v1

    goto :goto_10

    :cond_4d
    move-object v0, p0

    goto :goto_b
.end method

.method public static b(Ljava/lang/reflect/Type;)Ljava/util/Collection;
    .registers 3
    .parameter

    .prologue
    .line 452
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_5e

    .line 453
    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-static {p0}, Lcom/google/api/client/util/v;->a(Ljava/lang/reflect/WildcardType;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 455
    :goto_a
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_5c

    .line 456
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 458
    :goto_14
    instance-of v0, v1, Ljava/lang/Class;

    if-eqz v0, :cond_37

    move-object v0, v1

    check-cast v0, Ljava/lang/Class;

    .line 459
    :goto_1b
    if-eqz v1, :cond_31

    instance-of v1, v1, Ljava/lang/reflect/GenericArrayType;

    if-nez v1, :cond_31

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_31

    const-class v1, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 461
    :cond_31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 471
    :goto_36
    return-object v0

    .line 458
    :cond_37
    const/4 v0, 0x0

    goto :goto_1b

    .line 463
    :cond_39
    const-class v1, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 464
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_36

    .line 466
    :cond_47
    const-class v1, Ljava/util/TreeSet;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 467
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    goto :goto_36

    .line 470
    :cond_55
    invoke-static {v0}, Lcom/google/api/client/util/v;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    goto :goto_36

    :cond_5c
    move-object v1, v0

    goto :goto_14

    :cond_5e
    move-object v0, p0

    goto :goto_a
.end method

.method public static b(Ljava/lang/Class;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 490
    if-eqz p0, :cond_a

    const-class v0, Lcom/google/api/client/util/a;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 491
    :cond_a
    invoke-static {}, Lcom/google/api/client/util/a;->a()Lcom/google/api/client/util/a;

    move-result-object v0

    .line 498
    :goto_e
    return-object v0

    .line 493
    :cond_f
    const-class v0, Ljava/util/TreeMap;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 494
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    goto :goto_e

    .line 497
    :cond_1d
    invoke-static {p0}, Lcom/google/api/client/util/v;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_e
.end method

.method public static b(Ljava/lang/Object;)Ljava/util/Map;
    .registers 2
    .parameter

    .prologue
    .line 179
    if-eqz p0, :cond_8

    invoke-static {p0}, Lcom/google/api/client/util/j;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 180
    :cond_8
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    .line 188
    :goto_c
    return-object p0

    .line 182
    :cond_d
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_14

    .line 184
    check-cast p0, Ljava/util/Map;

    goto :goto_c

    .line 187
    :cond_14
    new-instance v0, Lcom/google/api/client/util/k;

    invoke-direct {v0, p0}, Lcom/google/api/client/util/k;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    .line 188
    goto :goto_c
.end method

.method public static c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 209
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/j;->a(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    move-object v0, p0

    .line 225
    :goto_d
    return-object v0

    .line 212
    :cond_e
    instance-of v0, p0, Lcom/google/api/client/util/p;

    if-eqz v0, :cond_19

    .line 213
    check-cast p0, Lcom/google/api/client/util/p;

    invoke-virtual {p0}, Lcom/google/api/client/util/p;->b()Lcom/google/api/client/util/p;

    move-result-object v0

    goto :goto_d

    .line 216
    :cond_19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 218
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 224
    :goto_2f
    invoke-static {p0, v0}, Lcom/google/api/client/util/j;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_d

    .line 219
    :cond_33
    instance-of v1, p0, Lcom/google/api/client/util/a;

    if-eqz v1, :cond_3f

    move-object v0, p0

    .line 220
    check-cast v0, Lcom/google/api/client/util/a;

    invoke-virtual {v0}, Lcom/google/api/client/util/a;->b()Lcom/google/api/client/util/a;

    move-result-object v0

    goto :goto_2f

    .line 222
    :cond_3f
    invoke-static {v0}, Lcom/google/api/client/util/v;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2f
.end method
