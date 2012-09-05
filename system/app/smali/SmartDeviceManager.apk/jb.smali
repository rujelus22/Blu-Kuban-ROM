.class public final Ljb;
.super Lhe;
.source "a"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljb$a;
    }
.end annotation


# static fields
.field static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lnd;",
            "Lhk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lnd;",
            "Lhf",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lnd;",
            "Lhf",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field protected d:Lhd;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    new-instance v0, Lje;

    invoke-direct {v0}, Lje;-><init>()V

    iget-object v0, v0, Lje;->a:Ljava/util/HashMap;

    sput-object v0, Ljb;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 84
    sget-object v0, Lii;->g:Lii;

    invoke-direct {p0, v0}, Ljb;-><init>(Lhd;)V

    return-void
.end method

.method private constructor <init>(Lhd;)V
    .registers 6
    .parameter

    .prologue
    .line 87
    invoke-direct {p0}, Lhe;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x40

    const/high16 v2, 0x3f40

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Ljb;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ljb;->c:Ljava/util/HashMap;

    .line 88
    iput-object p1, p0, Ljb;->d:Lhd;

    .line 89
    return-void
.end method

.method private a(Lnd;)Lhf;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnd;",
            ")",
            "Lhf",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Ljb;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhf;

    return-object p0
.end method

.method private d(Lhb;Lnd;)Lhf;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhb;",
            "Lnd;",
            ")",
            "Lhf",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhg;
        }
    .end annotation

    .prologue
    .line 228
    iget-object v1, p0, Ljb;->c:Ljava/util/HashMap;

    monitor-enter v1

    .line 230
    :try_start_3
    invoke-direct {p0, p2}, Ljb;->a(Lnd;)Lhf;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_b

    .line 232
    monitor-exit v1

    .line 248
    :goto_a
    return-object v0

    .line 234
    :cond_b
    iget-object v0, p0, Ljb;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 236
    if-lez v2, :cond_22

    .line 237
    iget-object v0, p0, Ljb;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhf;

    .line 238
    if-eqz v0, :cond_22

    .line 239
    monitor-exit v1

    goto :goto_a

    .line 251
    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v0

    .line 244
    :cond_22
    :try_start_22
    invoke-direct {p0, p1, p2}, Ljb;->e(Lhb;Lnd;)Lhf;
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_37

    move-result-object v0

    .line 247
    if-nez v2, :cond_35

    :try_start_28
    iget-object v2, p0, Ljb;->c:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_35

    .line 248
    iget-object v2, p0, Ljb;->c:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    :cond_35
    monitor-exit v1

    goto :goto_a

    .line 247
    :catchall_37
    move-exception v0

    if-nez v2, :cond_47

    iget-object v2, p0, Ljb;->c:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_47

    .line 248
    iget-object v2, p0, Ljb;->c:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    :cond_47
    throw v0
    :try_end_48
    .catchall {:try_start_28 .. :try_end_48} :catchall_1f
.end method

.method private e(Lhb;Lnd;)Lhf;
    .registers 10
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhb;",
            "Lnd;",
            ")",
            "Lhf",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhg;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 264
    :try_start_1
    invoke-virtual {p2}, Lnd;->k()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Ljb;->d:Lhd;

    invoke-virtual {p2}, Lnd;->i()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lhd;->a(Lhb;Ljava/lang/Class;)Lhf;

    move-result-object v1

    move-object v2, v1

    .line 271
    :goto_12
    if-nez v2, :cond_73

    move-object v1, v6

    .line 309
    :goto_15
    return-object v1

    .line 264
    :cond_16
    invoke-virtual {p2}, Lnd;->d()Z

    move-result v1

    if-eqz v1, :cond_4c

    instance-of v1, p2, Llt;

    if-eqz v1, :cond_2c

    iget-object v2, p0, Ljb;->d:Lhd;

    move-object v0, p2

    check-cast v0, Llt;

    move-object v1, v0

    invoke-virtual {v2, p1, v1, p0}, Lhd;->a(Lhb;Llt;Lhe;)Lhf;

    move-result-object v1

    move-object v2, v1

    goto :goto_12

    :cond_2c
    instance-of v1, p2, Llx;

    if-eqz v1, :cond_3c

    iget-object v2, p0, Ljb;->d:Lhd;

    move-object v0, p2

    check-cast v0, Llx;

    move-object v1, v0

    invoke-virtual {v2, p1, v1, p0}, Lhd;->a(Lhb;Llx;Lhe;)Lhf;

    move-result-object v1

    move-object v2, v1

    goto :goto_12

    :cond_3c
    instance-of v1, p2, Llv;

    if-eqz v1, :cond_4c

    iget-object v2, p0, Ljb;->d:Lhd;

    move-object v0, p2

    check-cast v0, Llv;

    move-object v1, v0

    invoke-virtual {v2, p1, v1, p0}, Lhd;->a(Lhb;Llv;Lhe;)Lhf;

    move-result-object v1

    move-object v2, v1

    goto :goto_12

    :cond_4c
    invoke-virtual {p2}, Lnd;->i()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lfb;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_60

    iget-object v2, p0, Ljb;->d:Lhd;

    invoke-virtual {v2, v1}, Lhd;->a(Ljava/lang/Class;)Lhf;

    move-result-object v1

    move-object v2, v1

    goto :goto_12

    :cond_60
    iget-object v1, p0, Ljb;->d:Lhd;

    invoke-virtual {v1, p1, p2, p0}, Lhd;->a(Lhb;Lnd;Lhe;)Lhf;
    :try_end_65
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_65} :catch_68

    move-result-object v1

    move-object v2, v1

    goto :goto_12

    .line 265
    :catch_68
    move-exception v1

    .line 269
    new-instance v2, Lhg;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lhg;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 278
    :cond_73
    instance-of v1, v2, Lho;

    .line 279
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lih;

    if-ne v3, v4, :cond_b3

    const/4 v3, 0x1

    .line 280
    :goto_7e
    if-nez v3, :cond_96

    .line 281
    invoke-virtual {p1}, Lhb;->a()Lgy;

    move-result-object v4

    .line 283
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v4, v6}, Ljl;->a(Ljava/lang/Class;Lgy;Lha$a;)Ljl;

    move-result-object v5

    .line 284
    invoke-virtual {v4, v5}, Lgy;->a(Ljl;)Ljava/lang/Boolean;

    move-result-object v4

    .line 285
    if-eqz v4, :cond_96

    .line 286
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 301
    :cond_96
    if-eqz v1, :cond_a9

    .line 302
    iget-object v1, p0, Ljb;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    move-object v0, v2

    check-cast v0, Lho;

    move-object v1, v0

    invoke-interface {v1, p1, p0}, Lho;->a(Lhb;Lhe;)V

    .line 304
    iget-object v1, p0, Ljb;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    :cond_a9
    if-eqz v3, :cond_b0

    .line 307
    iget-object v1, p0, Ljb;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b0
    move-object v1, v2

    .line 309
    goto/16 :goto_15

    .line 279
    :cond_b3
    const/4 v3, 0x0

    goto :goto_7e
.end method


# virtual methods
.method public final a(Lhb;Lnd;)Lhf;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhb;",
            "Lnd;",
            ")",
            "Lhf",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhg;
        }
    .end annotation

    .prologue
    .line 106
    invoke-direct {p0, p2}, Ljb;->a(Lnd;)Lhf;

    move-result-object v0

    .line 107
    if-eqz v0, :cond_7

    .line 119
    :cond_6
    return-object v0

    .line 111
    :cond_7
    invoke-direct {p0, p1, p2}, Ljb;->d(Lhb;Lnd;)Lhf;

    move-result-object v0

    .line 112
    if-nez v0, :cond_6

    .line 117
    invoke-virtual {p2}, Lnd;->i()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, 0x600

    if-nez v0, :cond_35

    const/4 v0, 0x1

    :goto_1a
    if-nez v0, :cond_37

    new-instance v0, Lhg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not find a Value deserializer for abstract type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lhg;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    const/4 v0, 0x0

    goto :goto_1a

    :cond_37
    new-instance v0, Lhg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not find a Value deserializer for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lhg;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Lhb;Lnd;)Lhf;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhb;",
            "Lnd;",
            ")",
            "Lhf",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhg;
        }
    .end annotation

    .prologue
    .line 127
    invoke-virtual {p0, p1, p2}, Ljb;->a(Lhb;Lnd;)Lhf;

    move-result-object v0

    .line 128
    iget-object v1, p0, Ljb;->d:Lhd;

    invoke-virtual {v1, p1, p2}, Lhd;->a(Lhb;Lnd;)Lht;

    move-result-object v1

    .line 129
    if-eqz v1, :cond_12

    .line 130
    new-instance v2, Ljb$a;

    invoke-direct {v2, v1, v0}, Ljb$a;-><init>(Lht;Lhf;)V

    move-object v0, v2

    .line 132
    :cond_12
    return-object v0
.end method

.method public final c(Lhb;Lnd;)Lhk;
    .registers 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhg;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 142
    invoke-virtual {p2}, Lnd;->i()Ljava/lang/Class;

    move-result-object v0

    .line 143
    const-class v1, Ljava/lang/String;

    if-eq v0, v1, :cond_f

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_11

    :cond_f
    move-object v0, v4

    .line 158
    :cond_10
    :goto_10
    return-object v0

    .line 147
    :cond_11
    sget-object v0, Ljb;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lhk;

    .line 148
    if-eqz p0, :cond_1d

    move-object v0, p0

    .line 149
    goto :goto_10

    .line 152
    :cond_1d
    invoke-virtual {p2}, Lnd;->k()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 153
    invoke-virtual {p2}, Lnd;->i()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Lhb;->a()Lgy;

    move-result-object v1

    invoke-static {v0, v1}, Liq;->a(Ljava/lang/Class;Lgy;)Liq;

    move-result-object v0

    new-instance v1, Ljd$e;

    invoke-direct {v1, v0}, Ljd$e;-><init>(Liq;)V

    move-object v0, v1

    goto :goto_10

    .line 156
    :cond_36
    invoke-virtual {p1, p2}, Lhb;->a(Lnd;)Lgz;

    move-result-object p0

    check-cast p0, Lju;

    new-array v0, v3, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lju;->a([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    if-eqz v0, :cond_69

    new-instance v1, Ljd$j;

    invoke-direct {v1, v0}, Ljd$j;-><init>(Ljava/lang/reflect/Constructor;)V

    move-object v0, v1

    .line 157
    :goto_4e
    if-nez v0, :cond_10

    .line 162
    new-instance v0, Lhg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not find a (Map) Key deserializer for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lhg;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_69
    new-array v0, v3, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lju;->b([Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_7c

    new-instance v1, Ljd$k;

    invoke-direct {v1, v0}, Ljd$k;-><init>(Ljava/lang/reflect/Method;)V

    move-object v0, v1

    goto :goto_4e

    :cond_7c
    move-object v0, v4

    goto :goto_4e
.end method
