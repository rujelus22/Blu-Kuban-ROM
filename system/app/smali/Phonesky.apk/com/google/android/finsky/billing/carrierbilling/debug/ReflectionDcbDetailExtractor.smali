.class public Lcom/google/android/finsky/billing/carrierbilling/debug/ReflectionDcbDetailExtractor;
.super Ljava/lang/Object;
.source "ReflectionDcbDetailExtractor.java"

# interfaces
.implements Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDetailExtractor;


# instance fields
.field private mCachedDetails:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDetail;",
            ">;"
        }
    .end annotation
.end field

.field private final mObject:Ljava/lang/Object;

.field private final mRootName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4
    .parameter "o"
    .parameter "rootName"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/ReflectionDcbDetailExtractor;->mCachedDetails:Ljava/util/Collection;

    .line 25
    iput-object p1, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/ReflectionDcbDetailExtractor;->mObject:Ljava/lang/Object;

    .line 26
    iput-object p2, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/ReflectionDcbDetailExtractor;->mRootName:Ljava/lang/String;

    .line 27
    return-void
.end method

.method private static buildDetails(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Collection;
    .registers 3
    .parameter "o"
    .parameter "rootName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDetail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v0, result:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDetail;>;"
    invoke-static {p0, p1, v0}, Lcom/google/android/finsky/billing/carrierbilling/debug/ReflectionDcbDetailExtractor;->buildDetailsHelper(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    .line 124
    return-object v0
.end method

.method private static buildDetailsHelper(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDetail;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 49
    if-nez p0, :cond_d

    .line 50
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/debug/SimpleDetail;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/finsky/billing/carrierbilling/debug/SimpleDetail;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_c
    :goto_c
    return-void

    .line 54
    :cond_d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 55
    invoke-static {p0}, Lcom/google/android/finsky/billing/carrierbilling/debug/ReflectionDcbDetailExtractor;->isArray(Ljava/lang/Object;)Z

    move-result v2

    .line 56
    invoke-static {p0}, Lcom/google/android/finsky/billing/carrierbilling/debug/ReflectionDcbDetailExtractor;->isIterable(Ljava/lang/Object;)Z

    move-result v3

    .line 57
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_2f

    const-class v4, Ljava/lang/Number;

    invoke-virtual {v1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_2f

    const-class v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 60
    :cond_2f
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/debug/SimpleDetail;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/finsky/billing/carrierbilling/debug/SimpleDetail;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 61
    :cond_3c
    if-nez v3, :cond_40

    if-eqz v2, :cond_78

    .line 63
    :cond_40
    if-eqz v2, :cond_75

    .line 65
    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    .line 66
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 72
    :goto_4a
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-static {v2, v3, p2}, Lcom/google/android/finsky/billing/carrierbilling/debug/ReflectionDcbDetailExtractor;->buildDetailsHelper(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    .line 75
    add-int/lit8 v0, v0, 0x1

    .line 76
    goto :goto_4e

    .line 69
    :cond_75
    check-cast p0, Ljava/lang/Iterable;

    goto :goto_4a

    .line 78
    :cond_78
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 80
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    array-length v6, v5

    move v3, v0

    :goto_82
    if-ge v3, v6, :cond_10f

    aget-object v7, v5, v3

    .line 81
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "get"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ca

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_ca

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_ca

    .line 84
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/finsky/billing/carrierbilling/debug/ReflectionDcbDetailExtractor;->methodNameToTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    const/4 v2, 0x0

    :try_start_aa
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v7, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_af
    .catch Ljava/lang/IllegalArgumentException; {:try_start_aa .. :try_end_af} :catch_ce
    .catch Ljava/lang/IllegalAccessException; {:try_start_aa .. :try_end_af} :catch_d7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_aa .. :try_end_af} :catch_e0

    move-result-object v2

    .line 106
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-static {v2, v1, v4}, Lcom/google/android/finsky/billing/carrierbilling/debug/ReflectionDcbDetailExtractor;->buildDetailsHelper(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    .line 80
    :cond_ca
    :goto_ca
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_82

    .line 89
    :catch_ce
    move-exception v1

    .line 90
    const-string v2, "Shouldn\'t happen with no-arg methods"

    new-array v7, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v7}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_ca

    .line 92
    :catch_d7
    move-exception v1

    .line 93
    const-string v2, "Shouldn\'t happen with public methods"

    new-array v7, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v7}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_ca

    .line 95
    :catch_e0
    move-exception v1

    move-object v2, v1

    .line 97
    const-string v1, "unknown"

    .line 98
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    if-eqz v8, :cond_f6

    .line 99
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 101
    :cond_f6
    const-string v8, "%s throw exception (%s): %s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v0

    const/4 v7, 0x1

    aput-object v1, v9, v7

    const/4 v1, 0x2

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v1

    invoke-static {v8, v9}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_ca

    .line 112
    :cond_10f
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11a

    .line 113
    invoke-interface {p2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_c

    .line 116
    :cond_11a
    new-instance v0, Lcom/google/android/finsky/billing/carrierbilling/debug/SimpleDetail;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/finsky/billing/carrierbilling/debug/SimpleDetail;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c
.end method

.method static isArray(Ljava/lang/Object;)Z
    .registers 2
    .parameter "o"

    .prologue
    .line 129
    if-nez p0, :cond_4

    .line 130
    const/4 v0, 0x0

    .line 132
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    goto :goto_3
.end method

.method static isIterable(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 137
    if-nez p0, :cond_4

    .line 138
    const/4 v0, 0x0

    .line 140
    :goto_3
    return v0

    :cond_4
    const-class v0, Ljava/lang/Iterable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_3
.end method

.method private static methodNameToTitle(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "methodName"

    .prologue
    .line 38
    const-string v1, "get"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 43
    .end local p0
    :goto_8
    return-object p0

    .line 42
    .restart local p0
    :cond_9
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .local v0, title:Ljava/lang/String;
    move-object p0, v0

    .line 43
    goto :goto_8
.end method


# virtual methods
.method public getDetails()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDetail;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/ReflectionDcbDetailExtractor;->mCachedDetails:Ljava/util/Collection;

    if-nez v0, :cond_e

    .line 32
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/ReflectionDcbDetailExtractor;->mObject:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/ReflectionDcbDetailExtractor;->mRootName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/finsky/billing/carrierbilling/debug/ReflectionDcbDetailExtractor;->buildDetails(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/ReflectionDcbDetailExtractor;->mCachedDetails:Ljava/util/Collection;

    .line 34
    :cond_e
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/ReflectionDcbDetailExtractor;->mCachedDetails:Ljava/util/Collection;

    return-object v0
.end method
