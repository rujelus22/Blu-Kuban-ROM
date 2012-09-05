.class public final Lju;
.super Lgz;
.source "a"


# instance fields
.field protected final b:Ljl;

.field protected final c:Lgy;

.field protected d:Lma;


# direct methods
.method public constructor <init>(Lnd;Ljl;Lgy;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lgz;-><init>(Lnd;)V

    .line 53
    iput-object p2, p0, Lju;->b:Ljl;

    .line 54
    iput-object p3, p0, Lju;->c:Lgy;

    .line 55
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 864
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 867
    if-nez v0, :cond_9

    move-object v0, v2

    .line 883
    :goto_8
    return-object v0

    .line 872
    :cond_9
    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_23

    .line 873
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 874
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    .line 875
    if-eq v3, v4, :cond_23

    .line 876
    if-nez v2, :cond_1d

    .line 879
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 881
    :cond_1d
    invoke-virtual {v2, v1, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 872
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 883
    :cond_23
    if-nez v2, :cond_27

    move-object v0, p0

    goto :goto_8

    :cond_27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static a(Ljp;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 737
    invoke-virtual {p0}, Ljp;->a()Ljava/lang/String;

    move-result-object v0

    .line 743
    const-string v1, "set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 744
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lju;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 745
    if-nez v0, :cond_1a

    move-object v0, v3

    .line 756
    :cond_19
    :goto_19
    return-object v0

    .line 748
    :cond_1a
    const-string v1, "metaClass"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 750
    invoke-virtual {p0}, Ljp;->d()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    if-eqz v1, :cond_3d

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "groovy.lang"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    const/4 v1, 0x1

    :goto_39
    if-eqz v1, :cond_19

    move-object v0, v3

    .line 751
    goto :goto_19

    .line 750
    :cond_3d
    const/4 v1, 0x0

    goto :goto_39

    :cond_3f
    move-object v0, v3

    .line 756
    goto :goto_19
.end method

.method private static a(Ljp;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 615
    const-string v0, "get"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 623
    const-string v0, "getCallbacks"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 624
    invoke-virtual {p0}, Ljp;->c()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_24

    :cond_1f
    move v0, v2

    :goto_20
    if-eqz v0, :cond_75

    move-object v0, v3

    .line 637
    :goto_23
    return-object v0

    .line 624
    :cond_24
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    if-eqz v0, :cond_44

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "net.sf.cglib"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_42

    const-string v1, "org.hibernate.repackage.cglib"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    :cond_42
    move v0, v4

    goto :goto_20

    :cond_44
    move v0, v2

    goto :goto_20

    .line 627
    :cond_46
    const-string v0, "getMetaClass"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 631
    invoke-virtual {p0}, Ljp;->c()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_5a

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_5f

    :cond_5a
    move v0, v2

    :goto_5b
    if-eqz v0, :cond_75

    move-object v0, v3

    .line 632
    goto :goto_23

    .line 631
    :cond_5f
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    if-eqz v0, :cond_73

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "groovy.lang"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    move v0, v4

    goto :goto_5b

    :cond_73
    move v0, v2

    goto :goto_5b

    .line 635
    :cond_75
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lju;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_23

    :cond_7f
    move-object v0, v3

    .line 637
    goto :goto_23
.end method

.method private static b(Ljp;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 642
    const-string v0, "is"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 644
    invoke-virtual {p0}, Ljp;->c()Ljava/lang/Class;

    move-result-object v0

    .line 645
    const-class v1, Ljava/lang/Boolean;

    if-eq v0, v1, :cond_17

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_17

    move-object v0, v2

    .line 651
    :goto_16
    return-object v0

    .line 648
    :cond_17
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lju;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_21
    move-object v0, v2

    .line 651
    goto :goto_16
.end method

.method private b(Ljp;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 326
    invoke-virtual {p1}, Ljp;->c()Ljava/lang/Class;

    move-result-object v0

    .line 327
    invoke-virtual {p0}, Lju;->b()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_12

    move v0, v2

    .line 341
    :goto_11
    return v0

    .line 335
    :cond_12
    iget-object v0, p0, Lju;->c:Lgy;

    invoke-virtual {v0, p1}, Lgy;->l(Ljk;)Z

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v3

    .line 336
    goto :goto_11

    .line 338
    :cond_1c
    const-string v0, "valueOf"

    invoke-virtual {p1}, Ljp;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    move v0, v3

    .line 339
    goto :goto_11

    :cond_2a
    move v0, v2

    .line 341
    goto :goto_11
.end method


# virtual methods
.method public final a(Lhx$a;)Lhx$a;
    .registers 4
    .parameter

    .prologue
    .line 406
    iget-object v0, p0, Lju;->c:Lgy;

    iget-object v1, p0, Lju;->b:Ljl;

    invoke-virtual {v0, v1, p1}, Lgy;->a(Ljk;Lhx$a;)Lhx$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Z)Ljava/lang/Object;
    .registers 7
    .parameter

    .prologue
    .line 88
    iget-object v1, p0, Lju;->b:Ljl;

    iget-object v1, v1, Ljl;->g:Ljm;

    .line 89
    if-nez v1, :cond_8

    .line 90
    const/4 v1, 0x0

    .line 96
    :goto_7
    return-object v1

    .line 92
    :cond_8
    if-eqz p1, :cond_11

    .line 93
    invoke-virtual {v1}, Ljo;->g()Ljava/lang/reflect/Member;

    move-result-object v2

    invoke-static {v2}, Lme;->a(Ljava/lang/reflect/Member;)V

    .line 96
    :cond_11
    :try_start_11
    invoke-virtual {v1}, Ljm;->d()Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1b} :catch_79

    move-result-object v1

    goto :goto_7

    .line 99
    :goto_1d
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 100
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_1d

    .line 102
    :cond_28
    instance-of v2, v1, Ljava/lang/Error;

    if-eqz v2, :cond_31

    move-object v0, v1

    check-cast v0, Ljava/lang/Error;

    move-object p0, v0

    throw p0

    .line 103
    :cond_31
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_38

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 104
    :cond_38
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to instantiate bean of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lju;->b:Ljl;

    iget-object v4, v4, Ljl;->a:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 97
    :catch_79
    move-exception v1

    goto :goto_1d
.end method

.method public final varargs a([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lju;->b:Ljl;

    invoke-virtual {v0}, Ljl;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljm;

    .line 281
    invoke-virtual {p0}, Ljm;->e()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 282
    invoke-virtual {p0}, Ljm;->f()Ljava/lang/Class;

    move-result-object v1

    .line 283
    array-length v2, p1

    const/4 v3, 0x0

    :goto_23
    if-ge v3, v2, :cond_a

    aget-object v4, p1, v3

    .line 284
    if-ne v4, v1, :cond_2e

    .line 285
    invoke-virtual {p0}, Ljm;->d()Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 290
    :goto_2d
    return-object v0

    .line 283
    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 290
    :cond_31
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method public final a(Lka;)Ljava/util/LinkedHashMap;
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lka",
            "<*>;)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 418
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 419
    iget-object v0, p0, Lju;->b:Ljl;

    iget-object v0, v0, Ljl;->j:Ljq;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp;

    .line 423
    invoke-virtual {v0}, Ljp;->e()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_d

    .line 424
    iget-object v1, p0, Lju;->c:Lgy;

    invoke-virtual {v1, v0}, Lgy;->d(Ljp;)Ljava/lang/String;

    move-result-object v1

    .line 433
    if-eqz v1, :cond_84

    .line 437
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_90

    .line 438
    invoke-static {v0}, Lju;->a(Ljp;)Ljava/lang/String;

    move-result-object v1

    .line 440
    if-nez v1, :cond_90

    .line 441
    invoke-virtual {v0}, Ljp;->a()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .line 450
    :goto_39
    invoke-virtual {v2, v4, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp;

    .line 458
    if-eqz v1, :cond_d

    .line 464
    iget-object v5, v1, Ljp;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    iget-object v6, v0, Ljp;->a:Ljava/lang/reflect/Method;

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    if-ne v5, v6, :cond_92

    .line 465
    invoke-virtual {v1}, Ljp;->f()Ljava/lang/String;

    move-result-object v1

    .line 466
    invoke-virtual {v0}, Ljp;->f()Ljava/lang/String;

    move-result-object v0

    .line 467
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Conflicting setter definitions for property \""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " vs "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 445
    :cond_84
    invoke-interface {p1, v0}, Lka;->c(Ljp;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 446
    invoke-static {v0}, Lju;->a(Ljp;)Ljava/lang/String;

    move-result-object v1

    .line 449
    if-eqz v1, :cond_d

    :cond_90
    move-object v4, v1

    goto :goto_39

    .line 470
    :cond_92
    invoke-virtual {v2, v4, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_d

    .line 474
    :cond_97
    return-object v2
.end method

.method public final a(Lka;Ljava/util/Collection;)Ljava/util/LinkedHashMap;
    .registers 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lka",
            "<*>;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 133
    iget-object v0, p0, Lju;->b:Ljl;

    iget-object v0, v0, Ljl;->j:Ljq;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp;

    .line 138
    invoke-virtual {v0}, Ljp;->e()I

    move-result v1

    if-nez v1, :cond_d

    .line 139
    iget-object v1, p0, Lju;->c:Lgy;

    invoke-virtual {v1, v0}, Lgy;->b(Ljp;)Ljava/lang/String;

    move-result-object v1

    .line 146
    if-eqz v1, :cond_87

    .line 151
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_a7

    .line 152
    invoke-virtual {v0}, Ljp;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lju;->b(Ljp;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b5

    invoke-static {v0, v1}, Lju;->a(Ljp;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    :goto_3b
    if-nez v1, :cond_a7

    .line 154
    invoke-virtual {v0}, Ljp;->a()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .line 177
    :goto_42
    if-eqz p2, :cond_4a

    .line 178
    invoke-interface {p2, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 179
    :cond_4a
    invoke-virtual {v2, v4, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp;

    .line 187
    if-eqz v1, :cond_d

    .line 188
    invoke-virtual {v1}, Ljp;->f()Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-virtual {v0}, Ljp;->f()Ljava/lang/String;

    move-result-object v0

    .line 190
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Conflicting getter definitions for property \""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " vs "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 158
    :cond_87
    invoke-virtual {v0}, Ljp;->a()Ljava/lang/String;

    move-result-object v1

    .line 160
    const-string v4, "get"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a9

    .line 161
    invoke-interface {p1, v0}, Lka;->a(Ljp;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 162
    invoke-static {v0, v1}, Lju;->a(Ljp;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 172
    :goto_9d
    if-eqz v1, :cond_d

    .line 174
    iget-object v4, p0, Lju;->c:Lgy;

    invoke-virtual {v4, v0}, Lgy;->f(Ljp;)Z

    move-result v4

    if-nez v4, :cond_d

    :cond_a7
    move-object v4, v1

    goto :goto_42

    .line 166
    :cond_a9
    invoke-interface {p1, v0}, Lka;->b(Ljp;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 167
    invoke-static {v0, v1}, Lju;->b(Ljp;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_9d

    .line 193
    :cond_b4
    return-object v2

    :cond_b5
    move-object v1, v4

    goto :goto_3b
.end method

.method public final a(Lka;Ljava/util/Collection;Z)Ljava/util/LinkedHashMap;
    .registers 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lka",
            "<*>;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 791
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 792
    iget-object v0, p0, Lju;->b:Ljl;

    invoke-virtual {v0}, Ljl;->f()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljn;

    .line 803
    if-eqz p3, :cond_7f

    iget-object v1, p0, Lju;->c:Lgy;

    invoke-virtual {v1, v0}, Lgy;->b(Ljn;)Ljava/lang/String;

    move-result-object v1

    .line 807
    :goto_23
    if-eqz v1, :cond_86

    .line 808
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_8e

    .line 813
    :goto_2b
    invoke-virtual {v0}, Ljn;->a()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .line 818
    :goto_30
    if-eqz p2, :cond_38

    .line 819
    invoke-interface {p2, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 820
    :cond_38
    invoke-virtual {v2, v4, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljn;

    .line 829
    if-eqz v1, :cond_f

    .line 839
    invoke-virtual {v1}, Ljn;->e()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v0}, Ljn;->e()Ljava/lang/Class;

    move-result-object v6

    if-ne v5, v6, :cond_f

    .line 840
    invoke-virtual {v1}, Ljn;->f()Ljava/lang/String;

    move-result-object v1

    .line 841
    invoke-virtual {v0}, Ljn;->f()Ljava/lang/String;

    move-result-object v0

    .line 842
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Multiple fields representing property \""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " vs "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 803
    :cond_7f
    iget-object v1, p0, Lju;->c:Lgy;

    invoke-virtual {v1, v0}, Lgy;->c(Ljn;)Ljava/lang/String;

    move-result-object v1

    goto :goto_23

    .line 812
    :cond_86
    invoke-interface {p1, v0}, Lka;->a(Ljn;)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_2b

    .line 846
    :cond_8d
    return-object v2

    :cond_8e
    move-object v4, v1

    goto :goto_30
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/Class;)Ljp;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljp;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lju;->b:Ljl;

    iget-object v0, v0, Ljl;->j:Ljq;

    iget-object v1, v0, Ljq;->a:Ljava/util/LinkedHashMap;

    if-nez v1, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, v0, Ljq;->a:Ljava/util/LinkedHashMap;

    new-instance v1, Ljx;

    invoke-direct {v1, p1, p2}, Ljx;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljp;

    move-object v0, p0

    goto :goto_9
.end method

.method public final varargs b([Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 305
    iget-object v0, p0, Lju;->b:Ljl;

    invoke-virtual {v0}, Ljl;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp;

    .line 306
    invoke-direct {p0, v0}, Lju;->b(Ljp;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 308
    invoke-virtual {v0}, Ljp;->d()Ljava/lang/Class;

    move-result-object v2

    .line 309
    array-length v3, p1

    const/4 v4, 0x0

    :goto_22
    if-ge v4, v3, :cond_a

    aget-object v5, p1, v4

    .line 311
    invoke-virtual {v2, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 312
    iget-object v0, v0, Ljp;->a:Ljava/lang/reflect/Method;

    .line 317
    :goto_2e
    return-object v0

    .line 309
    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 317
    :cond_32
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method public final b(Lka;Ljava/util/Collection;)Ljava/util/LinkedHashMap;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lka",
            "<*>;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 389
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lju;->a(Lka;Ljava/util/Collection;Z)Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljl;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lju;->b:Ljl;

    return-object v0
.end method

.method public final d()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 70
    iget-object v0, p0, Lju;->b:Ljl;

    iget-object v0, v0, Ljl;->f:Ljt;

    iget-object v1, v0, Ljt;->a:Ljava/util/HashMap;

    if-nez v1, :cond_e

    move v0, v2

    :goto_a
    if-lez v0, :cond_15

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    iget-object v0, v0, Ljt;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    goto :goto_a

    :cond_15
    move v0, v2

    goto :goto_d
.end method

.method public final e()Lma;
    .registers 3

    .prologue
    .line 110
    iget-object v0, p0, Lju;->d:Lma;

    if-nez v0, :cond_d

    .line 111
    new-instance v0, Lma;

    iget-object v1, p0, Lju;->a:Lnd;

    invoke-direct {v0, v1}, Lma;-><init>(Lnd;)V

    iput-object v0, p0, Lju;->d:Lma;

    .line 113
    :cond_d
    iget-object v0, p0, Lju;->d:Lma;

    return-object v0
.end method

.method public final f()Ljp;
    .registers 6

    .prologue
    .line 204
    const/4 v0, 0x0

    .line 205
    iget-object v1, p0, Lju;->b:Ljl;

    iget-object v1, v1, Ljl;->j:Ljq;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v0

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp;

    .line 207
    iget-object v3, p0, Lju;->c:Lgy;

    invoke-virtual {v3, v0}, Lgy;->c(Ljp;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 208
    if-eqz v2, :cond_51

    .line 211
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Multiple methods with active \'as-value\' annotation ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljp;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljp;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 218
    :cond_51
    iget-object v2, v0, Ljp;->a:Ljava/lang/reflect/Method;

    invoke-static {v2}, Lme;->a(Ljava/lang/reflect/Method;)Z

    move-result v2

    if-nez v2, :cond_7c

    .line 219
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljp;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "() marked with an \'as-value\' annotation, but does not have valid getter signature (non-static, takes no args, returns a value)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7c
    move-object v2, v0

    .line 221
    goto :goto_a

    .line 223
    :cond_7e
    return-object v2
.end method

.method public final g()Ljava/lang/reflect/Constructor;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lju;->b:Ljl;

    iget-object v0, v0, Ljl;->g:Ljm;

    .line 241
    if-nez v0, :cond_8

    .line 242
    const/4 v0, 0x0

    .line 244
    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {v0}, Ljm;->d()Ljava/lang/reflect/Constructor;

    move-result-object v0

    goto :goto_7
.end method

.method public final h()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lju;->b:Ljl;

    invoke-virtual {v0}, Ljl;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Lju;->b:Ljl;

    invoke-virtual {v0}, Ljl;->e()Ljava/util/List;

    move-result-object v0

    .line 256
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 265
    :goto_c
    return-object v0

    .line 259
    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 260
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp;

    .line 261
    invoke-direct {p0, v0}, Lju;->b(Ljp;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 262
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_2c
    move-object v0, v1

    .line 265
    goto :goto_c
.end method

.method public final j()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 355
    const/4 v0, 0x0

    move v1, v8

    .line 357
    :goto_3
    const/4 v2, 0x2

    if-ge v1, v2, :cond_58

    .line 358
    if-nez v1, :cond_4e

    iget-object v2, p0, Lju;->b:Ljl;

    invoke-virtual {v2}, Ljl;->d()Ljava/util/List;

    move-result-object v2

    .line 360
    :goto_e
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v0

    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljs;

    .line 361
    invoke-virtual {v0}, Ljs;->e()I

    move-result v4

    .line 362
    if-lez v4, :cond_13

    .line 363
    iget-object v5, p0, Lju;->c:Lgy;

    invoke-virtual {v0, v8}, Ljs;->a(I)Ljr;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgy;->a(Ljr;)Ljava/lang/String;

    move-result-object v5

    .line 364
    if-eqz v5, :cond_13

    .line 365
    if-nez v3, :cond_38

    .line 366
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 368
    :cond_38
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    const/4 v5, 0x1

    :goto_3c
    if-ge v5, v4, :cond_13

    .line 370
    iget-object v6, p0, Lju;->c:Lgy;

    invoke-virtual {v0, v5}, Ljs;->a(I)Ljr;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgy;->a(Ljr;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    add-int/lit8 v5, v5, 0x1

    goto :goto_3c

    .line 358
    :cond_4e
    invoke-virtual {p0}, Lju;->i()Ljava/util/List;

    move-result-object v2

    goto :goto_e

    .line 357
    :cond_53
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v3

    goto :goto_3

    .line 374
    :cond_58
    if-nez v0, :cond_5e

    .line 375
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 377
    :cond_5e
    return-object v0
.end method

.method public final k()Ljp;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 490
    const/4 v0, 0x0

    .line 491
    iget-object v1, p0, Lju;->b:Ljl;

    iget-object v1, v1, Ljl;->j:Ljq;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v0

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bf

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp;

    .line 492
    iget-object v3, p0, Lju;->c:Lgy;

    invoke-virtual {v3, v0}, Lgy;->e(Ljp;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 493
    if-eqz v2, :cond_51

    .line 496
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Multiple methods with \'any-setter\' annotation ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljp;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljp;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 498
    :cond_51
    invoke-virtual {v0}, Ljp;->e()I

    move-result v2

    .line 499
    const/4 v3, 0x2

    if-eq v2, v3, :cond_85

    .line 500
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid \'any-setter\' annotation on method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljp;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "(): takes "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " parameters, should take 2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 510
    :cond_85
    invoke-virtual {v0}, Ljp;->d()Ljava/lang/Class;

    move-result-object v2

    .line 511
    const-class v3, Ljava/lang/String;

    if-eq v2, v3, :cond_bc

    const-class v3, Ljava/lang/Object;

    if-eq v2, v3, :cond_bc

    .line 512
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid \'any-setter\' annotation on method "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljp;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "(): first argument not of type String or Object, but "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_bc
    move-object v2, v0

    .line 515
    goto/16 :goto_a

    .line 516
    :cond_bf
    return-object v2
.end method

.method public final l()Ljp;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 529
    const/4 v0, 0x0

    .line 530
    iget-object v1, p0, Lju;->b:Ljl;

    iget-object v1, v1, Ljl;->j:Ljq;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v0

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp;

    .line 531
    iget-object v3, p0, Lju;->c:Lgy;

    invoke-virtual {v3, v0}, Lgy;->f(Ljp;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 532
    if-eqz v2, :cond_51

    .line 535
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Multiple methods with \'any-getter\' annotation ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljp;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(), "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljp;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 540
    :cond_51
    invoke-virtual {v0}, Ljp;->c()Ljava/lang/Class;

    move-result-object v2

    .line 541
    const-class v3, Ljava/util/Map;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_80

    .line 542
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid \'any-getter\' annotation on method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljp;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "(): return type is not instance of java.util.Map"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_80
    move-object v2, v0

    .line 545
    goto :goto_a

    .line 546
    :cond_82
    return-object v2
.end method

.method public final m()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 556
    const/4 v0, 0x0

    .line 558
    iget-object v1, p0, Lju;->b:Ljl;

    iget-object v1, v1, Ljl;->j:Ljq;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v0

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp;

    .line 559
    invoke-virtual {v0}, Ljp;->e()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5b

    .line 560
    iget-object v3, p0, Lju;->c:Lgy;

    invoke-virtual {v3, v0}, Lgy;->a(Ljo;)Lgy$a;

    move-result-object v3

    .line 561
    if-eqz v3, :cond_5b

    invoke-virtual {v3}, Lgy$a;->b()Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 562
    if-nez v2, :cond_32

    .line 563
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 565
    :cond_32
    iget-object v4, v3, Lgy$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 566
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple back-reference properties with name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Lgy$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5b
    move-object v0, v2

    move-object v2, v0

    .line 569
    goto :goto_a

    .line 572
    :cond_5e
    iget-object v0, p0, Lju;->b:Ljl;

    invoke-virtual {v0}, Ljl;->f()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_68
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljn;

    .line 573
    iget-object v3, p0, Lju;->c:Lgy;

    invoke-virtual {v3, v0}, Lgy;->a(Ljo;)Lgy$a;

    move-result-object v3

    .line 574
    if-eqz v3, :cond_b2

    invoke-virtual {v3}, Lgy$a;->b()Z

    move-result v4

    if-eqz v4, :cond_b2

    .line 575
    if-nez v2, :cond_89

    .line 576
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 578
    :cond_89
    iget-object v4, v3, Lgy$a;->a:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b2

    .line 579
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple back-reference properties with name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Lgy$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b2
    move-object v0, v2

    move-object v2, v0

    .line 582
    goto :goto_68

    .line 583
    :cond_b5
    return-object v2
.end method
