.class public Laeh;
.super Ljava/lang/Object;
.source "Data.java"


# static fields
.field public static final a:Laem;

.field public static final a:LalC;

.field public static final a:LalE;

.field public static final a:Ljava/lang/Boolean;

.field public static final a:Ljava/lang/Byte;

.field public static final a:Ljava/lang/Character;

.field public static final a:Ljava/lang/Double;

.field public static final a:Ljava/lang/Float;

.field public static final a:Ljava/lang/Integer;

.field public static final a:Ljava/lang/Long;

.field public static final a:Ljava/lang/Short;

.field public static final a:Ljava/lang/String;

.field public static final a:Ljava/math/BigDecimal;

.field public static final a:Ljava/math/BigInteger;

.field private static final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 51
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Laeh;->a:Ljava/lang/Boolean;

    .line 54
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Laeh;->a:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, v3}, Ljava/lang/Character;-><init>(C)V

    sput-object v0, Laeh;->a:Ljava/lang/Character;

    .line 60
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, v3}, Ljava/lang/Byte;-><init>(B)V

    sput-object v0, Laeh;->a:Ljava/lang/Byte;

    .line 63
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, v3}, Ljava/lang/Short;-><init>(S)V

    sput-object v0, Laeh;->a:Ljava/lang/Short;

    .line 66
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Laeh;->a:Ljava/lang/Integer;

    .line 69
    new-instance v0, Ljava/lang/Float;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Laeh;->a:Ljava/lang/Float;

    .line 72
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, v4, v5}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Laeh;->a:Ljava/lang/Long;

    .line 75
    new-instance v0, Ljava/lang/Double;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    sput-object v0, Laeh;->a:Ljava/lang/Double;

    .line 78
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    sput-object v0, Laeh;->a:Ljava/math/BigInteger;

    .line 81
    invoke-static {v3}, LalC;->a(I)LalC;

    move-result-object v0

    sput-object v0, Laeh;->a:LalC;

    .line 84
    invoke-static {v4, v5}, LalE;->a(J)LalE;

    move-result-object v0

    sput-object v0, Laeh;->a:LalE;

    .line 87
    new-instance v0, Ljava/math/BigDecimal;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sput-object v0, Laeh;->a:Ljava/math/BigDecimal;

    .line 90
    new-instance v0, Laem;

    invoke-direct {v0, v4, v5}, Laem;-><init>(J)V

    sput-object v0, Laeh;->a:Laem;

    .line 93
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Laeh;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 97
    sget-object v0, Laeh;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/Boolean;

    sget-object v2, Laeh;->a:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Laeh;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/String;

    sget-object v2, Laeh;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Laeh;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/Character;

    sget-object v2, Laeh;->a:Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Laeh;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/Byte;

    sget-object v2, Laeh;->a:Ljava/lang/Byte;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Laeh;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/Short;

    sget-object v2, Laeh;->a:Ljava/lang/Short;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Laeh;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/Integer;

    sget-object v2, Laeh;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Laeh;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/Float;

    sget-object v2, Laeh;->a:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Laeh;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/Long;

    sget-object v2, Laeh;->a:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Laeh;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/lang/Double;

    sget-object v2, Laeh;->a:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Laeh;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/math/BigInteger;

    sget-object v2, Laeh;->a:Ljava/math/BigInteger;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Laeh;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, LalC;

    sget-object v2, Laeh;->a:LalC;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Laeh;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, LalE;

    sget-object v2, Laeh;->a:LalE;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Laeh;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Ljava/math/BigDecimal;

    sget-object v2, Laeh;->a:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Laeh;->a:Ljava/util/concurrent/ConcurrentHashMap;

    const-class v1, Laem;

    sget-object v2, Laeh;->a:Laem;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 122
    sget-object v0, Laeh;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 123
    if-nez v0, :cond_33

    .line 124
    sget-object v2, Laeh;->a:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v2

    .line 125
    :try_start_c
    sget-object v0, Laeh;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 126
    if-nez v0, :cond_32

    .line 127
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_34

    move-object v0, p0

    .line 132
    :cond_1b
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 133
    add-int/lit8 v1, v1, 0x1

    .line 134
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 135
    new-array v1, v1, [I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    .line 148
    :goto_2d
    sget-object v1, Laeh;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_32
    monitor-exit v2

    .line 154
    :cond_33
    return-object v0

    .line 136
    :cond_34
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 138
    invoke-static {p0}, Laef;->a(Ljava/lang/Class;)Laef;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laef;->a(Ljava/lang/String;)Laen;

    move-result-object v0

    .line 139
    const-string v1, "enum missing constant with @NullValue annotation: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v3}, LafQ;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-virtual {v0}, Laen;->a()Ljava/lang/Enum;

    move-result-object v0

    goto :goto_2d

    .line 146
    :cond_53
    invoke-static {p0}, Laez;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2d

    .line 150
    :catchall_58
    move-exception v0

    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_c .. :try_end_5a} :catchall_58

    throw v0
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 219
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Laeh;->a(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    move-object v0, p0

    .line 235
    :goto_d
    return-object v0

    .line 222
    :cond_e
    instance-of v0, p0, Laeo;

    if-eqz v0, :cond_19

    .line 223
    check-cast p0, Laeo;

    invoke-virtual {p0}, Laeo;->a()Laeo;

    move-result-object v0

    goto :goto_d

    .line 226
    :cond_19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 227
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 228
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 234
    :goto_2f
    invoke-static {p0, v0}, Laeh;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_d

    .line 229
    :cond_33
    instance-of v1, p0, LadZ;

    if-eqz v1, :cond_3f

    move-object v0, p0

    .line 230
    check-cast v0, LadZ;

    invoke-virtual {v0}, LadZ;->b()LadZ;

    move-result-object v0

    goto :goto_2f

    .line 232
    :cond_3f
    invoke-static {v0}, Laez;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2f
.end method

.method public static a(Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 396
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_18

    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    .line 397
    :goto_7
    if-eqz p0, :cond_b

    if-eqz v0, :cond_f3

    .line 398
    :cond_b
    if-eqz p1, :cond_17

    if-eqz v0, :cond_17

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 448
    :cond_17
    :goto_17
    return-object p1

    .line 396
    :cond_18
    const/4 v0, 0x0

    goto :goto_7

    .line 402
    :cond_1a
    const-class v1, Ljava/lang/Character;

    if-eq v0, v1, :cond_22

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_4c

    .line 403
    :cond_22
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_42

    .line 404
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

    .line 407
    :cond_42
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    goto :goto_17

    .line 409
    :cond_4c
    const-class v1, Ljava/lang/Boolean;

    if-eq v0, v1, :cond_54

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_59

    .line 410
    :cond_54
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_17

    .line 412
    :cond_59
    const-class v1, Ljava/lang/Byte;

    if-eq v0, v1, :cond_61

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_66

    .line 413
    :cond_61
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object p1

    goto :goto_17

    .line 415
    :cond_66
    const-class v1, Ljava/lang/Short;

    if-eq v0, v1, :cond_6e

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_73

    .line 416
    :cond_6e
    invoke-static {p1}, Ljava/lang/Short;->valueOf(Ljava/lang/String;)Ljava/lang/Short;

    move-result-object p1

    goto :goto_17

    .line 418
    :cond_73
    const-class v1, Ljava/lang/Integer;

    if-eq v0, v1, :cond_7b

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_80

    .line 419
    :cond_7b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_17

    .line 421
    :cond_80
    const-class v1, Ljava/lang/Long;

    if-eq v0, v1, :cond_88

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_8d

    .line 422
    :cond_88
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    goto :goto_17

    .line 424
    :cond_8d
    const-class v1, Ljava/lang/Float;

    if-eq v0, v1, :cond_95

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_9b

    .line 425
    :cond_95
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    goto/16 :goto_17

    .line 427
    :cond_9b
    const-class v1, Ljava/lang/Double;

    if-eq v0, v1, :cond_a3

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_a9

    .line 428
    :cond_a3
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    goto/16 :goto_17

    .line 430
    :cond_a9
    const-class v1, Laem;

    if-ne v0, v1, :cond_b3

    .line 431
    invoke-static {p1}, Laem;->a(Ljava/lang/String;)Laem;

    move-result-object p1

    goto/16 :goto_17

    .line 433
    :cond_b3
    const-class v1, Ljava/math/BigInteger;

    if-ne v0, v1, :cond_bf

    .line 434
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    goto/16 :goto_17

    .line 436
    :cond_bf
    const-class v1, LalC;

    if-ne v0, v1, :cond_c9

    .line 437
    invoke-static {p1}, LalC;->a(Ljava/lang/String;)LalC;

    move-result-object p1

    goto/16 :goto_17

    .line 439
    :cond_c9
    const-class v1, LalE;

    if-ne v0, v1, :cond_d3

    .line 440
    invoke-static {p1}, LalE;->a(Ljava/lang/String;)LalE;

    move-result-object p1

    goto/16 :goto_17

    .line 442
    :cond_d3
    const-class v1, Ljava/math/BigDecimal;

    if-ne v0, v1, :cond_df

    .line 443
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    goto/16 :goto_17

    .line 445
    :cond_df
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_f3

    .line 447
    invoke-static {v0}, Laef;->a(Ljava/lang/Class;)Laef;

    move-result-object v0

    invoke-virtual {v0, p1}, Laef;->a(Ljava/lang/String;)Laen;

    move-result-object v0

    invoke-virtual {v0}, Laen;->a()Ljava/lang/Enum;

    move-result-object p1

    goto/16 :goto_17

    .line 451
    :cond_f3
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 534
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_2a

    .line 535
    check-cast p1, Ljava/lang/reflect/WildcardType;

    invoke-static {p1}, Laez;->a(Ljava/lang/reflect/WildcardType;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 538
    :goto_a
    instance-of v0, v1, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_25

    move-object v0, v1

    .line 540
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-static {p0, v0}, Laez;->a(Ljava/util/List;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 541
    if-eqz v0, :cond_28

    .line 545
    :goto_17
    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_26

    .line 546
    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_a

    .line 550
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

.method public static a(Ljava/lang/reflect/Type;)Ljava/util/Collection;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 472
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_5e

    .line 473
    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-static {p0}, Laez;->a(Ljava/lang/reflect/WildcardType;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 475
    :goto_a
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_5c

    .line 476
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 478
    :goto_14
    instance-of v0, v1, Ljava/lang/Class;

    if-eqz v0, :cond_37

    move-object v0, v1

    check-cast v0, Ljava/lang/Class;

    .line 479
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

    .line 481
    :cond_31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 491
    :goto_36
    return-object v0

    .line 478
    :cond_37
    const/4 v0, 0x0

    goto :goto_1b

    .line 483
    :cond_39
    const-class v1, Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 484
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_36

    .line 486
    :cond_47
    const-class v1, Ljava/util/TreeSet;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 487
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    goto :goto_36

    .line 490
    :cond_55
    invoke-static {v0}, Laez;->a(Ljava/lang/Class;)Ljava/lang/Object;

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

.method public static a(Ljava/lang/Class;)Ljava/util/Map;
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 510
    if-eqz p0, :cond_a

    const-class v0, LadZ;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 511
    :cond_a
    invoke-static {}, LadZ;->a()LadZ;

    move-result-object v0

    .line 518
    :goto_e
    return-object v0

    .line 513
    :cond_f
    const-class v0, Ljava/util/TreeMap;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 514
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    goto :goto_e

    .line 517
    :cond_1d
    invoke-static {p0}, Laez;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    goto :goto_e
.end method

.method public static a(Ljava/lang/Object;)Ljava/util/Map;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    if-eqz p0, :cond_8

    invoke-static {p0}, Laeh;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 190
    :cond_8
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    .line 198
    :goto_c
    return-object p0

    .line 192
    :cond_d
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_14

    .line 194
    check-cast p0, Ljava/util/Map;

    goto :goto_c

    .line 197
    :cond_14
    new-instance v0, Laei;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Laei;-><init>(Ljava/lang/Object;Z)V

    move-object p0, v0

    .line 198
    goto :goto_c
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 268
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 269
    invoke-static {v3}, Laeh;->a(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_4a

    move v0, v1

    :goto_d
    invoke-static {v0}, LafQ;->a(Z)V

    .line 270
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v3, v0, :cond_4c

    move v0, v1

    :goto_17
    invoke-static {v0}, LafQ;->a(Z)V

    .line 271
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 273
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    if-ne v0, v3, :cond_4e

    :goto_2a
    invoke-static {v1}, LafQ;->a(Z)V

    .line 275
    invoke-static {p0}, Laez;->a(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_35
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 276
    add-int/lit8 v0, v2, 0x1

    invoke-static {v3}, Laeh;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    move v2, v0

    goto :goto_35

    :cond_4a
    move v0, v2

    .line 269
    goto :goto_d

    :cond_4c
    move v0, v2

    .line 270
    goto :goto_17

    :cond_4e
    move v1, v2

    .line 273
    goto :goto_2a

    .line 278
    :cond_50
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 281
    check-cast p0, Ljava/util/Collection;

    .line 282
    const-class v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6c

    move-object v0, p1

    .line 284
    check-cast v0, Ljava/util/ArrayList;

    .line 285
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 288
    :cond_6c
    check-cast p1, Ljava/util/Collection;

    .line 289
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_72
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 290
    invoke-static {v1}, Laeh;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_72

    .line 294
    :cond_84
    const-class v0, Laeo;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    .line 295
    if-nez v4, :cond_94

    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_d4

    .line 296
    :cond_94
    if-eqz v4, :cond_ce

    move-object v0, p0

    check-cast v0, Laeo;

    iget-object v0, v0, Laeo;->a:Laef;

    move-object v1, v0

    .line 298
    :goto_9c
    iget-object v0, v1, Laef;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a2
    :goto_a2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 299
    invoke-virtual {v1, v0}, Laef;->a(Ljava/lang/String;)Laen;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Laen;->a()Z

    move-result v3

    if-nez v3, :cond_a2

    .line 303
    if-eqz v4, :cond_c0

    invoke-virtual {v0}, Laen;->b()Z

    move-result v3

    if-nez v3, :cond_a2

    .line 304
    :cond_c0
    invoke-virtual {v0, p0}, Laen;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 305
    if-eqz v3, :cond_a2

    .line 306
    invoke-static {v3}, Laeh;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Laen;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a2

    .line 296
    :cond_ce
    invoke-static {v3}, Laef;->a(Ljava/lang/Class;)Laef;

    move-result-object v0

    move-object v1, v0

    goto :goto_9c

    .line 311
    :cond_d4
    const-class v0, LadZ;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 314
    check-cast p1, LadZ;

    .line 316
    check-cast p0, LadZ;

    .line 317
    invoke-virtual {p0}, LadZ;->size()I

    move-result v0

    .line 318
    :goto_e4
    if-ge v2, v0, :cond_11c

    .line 319
    invoke-virtual {p0, v2}, LadZ;->b(I)Ljava/lang/Object;

    move-result-object v1

    .line 320
    invoke-static {v1}, Laeh;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, LadZ;->a(ILjava/lang/Object;)Ljava/lang/Object;

    .line 318
    add-int/lit8 v2, v2, 0x1

    goto :goto_e4

    .line 325
    :cond_f4
    check-cast p1, Ljava/util/Map;

    .line 327
    check-cast p0, Ljava/util/Map;

    .line 328
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_100
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 329
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Laeh;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_100

    .line 333
    :cond_11c
    return-void
.end method

.method public static a(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 166
    if-eqz p0, :cond_10

    sget-object v0, Laeh;->a:Ljava/util/concurrent/ConcurrentHashMap;

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

    .line 344
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-eqz v0, :cond_55

    .line 345
    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-static {p0}, Laez;->a(Ljava/lang/reflect/WildcardType;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 347
    :goto_b
    instance-of v2, v0, Ljava/lang/Class;

    if-nez v2, :cond_10

    .line 351
    :goto_f
    return v1

    .line 350
    :cond_10
    check-cast v0, Ljava/lang/Class;

    .line 351
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_50

    const-class v2, Ljava/lang/Character;

    if-eq v0, v2, :cond_50

    const-class v2, Ljava/lang/String;

    if-eq v0, v2, :cond_50

    const-class v2, Ljava/lang/Integer;

    if-eq v0, v2, :cond_50

    const-class v2, Ljava/lang/Long;

    if-eq v0, v2, :cond_50

    const-class v2, Ljava/lang/Short;

    if-eq v0, v2, :cond_50

    const-class v2, Ljava/lang/Byte;

    if-eq v0, v2, :cond_50

    const-class v2, Ljava/lang/Float;

    if-eq v0, v2, :cond_50

    const-class v2, Ljava/lang/Double;

    if-eq v0, v2, :cond_50

    const-class v2, Ljava/math/BigInteger;

    if-eq v0, v2, :cond_50

    const-class v2, LalC;

    if-eq v0, v2, :cond_50

    const-class v2, LalE;

    if-eq v0, v2, :cond_50

    const-class v2, Ljava/math/BigDecimal;

    if-eq v0, v2, :cond_50

    const-class v2, Laem;

    if-eq v0, v2, :cond_50

    const-class v2, Ljava/lang/Boolean;

    if-ne v0, v2, :cond_53

    :cond_50
    const/4 v0, 0x1

    :goto_51
    move v1, v0

    goto :goto_f

    :cond_53
    move v0, v1

    goto :goto_51

    :cond_55
    move-object v0, p0

    goto :goto_b
.end method

.method public static b(Ljava/lang/Object;)Z
    .registers 2
    .parameter

    .prologue
    .line 364
    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Laeh;->a(Ljava/lang/reflect/Type;)Z

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
