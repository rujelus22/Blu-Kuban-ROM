.class public Lkl;
.super Lkq;
.source "a"


# direct methods
.method public constructor <init>(Lnd;)V
    .registers 2
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lkq;-><init>(Lnd;)V

    .line 17
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 30
    const-class v1, Ljava/lang/Enum;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 31
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-nez v1, :cond_16

    .line 32
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 35
    :cond_16
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 36
    const-string v1, "java.util"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 45
    instance-of v1, p1, Ljava/util/EnumSet;

    if-eqz v1, :cond_4e

    .line 46
    check-cast p1, Ljava/util/EnumSet;

    invoke-virtual {p1}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_47

    invoke-virtual {p1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Enum;

    invoke-static {p0}, Lme;->a(Ljava/lang/Enum;)Ljava/lang/Class;

    move-result-object v0

    .line 47
    :goto_3c
    const-class v1, Ljava/util/EnumSet;

    invoke-static {v1, v0}, Lmb;->a(Ljava/lang/Class;Ljava/lang/Class;)Lnd;

    move-result-object v0

    invoke-virtual {v0}, Lnd;->h()Ljava/lang/String;

    move-result-object v0

    .line 66
    :cond_46
    :goto_46
    return-object v0

    .line 46
    :cond_47
    sget-object v0, Lme$a;->a:Lme$a;

    invoke-virtual {v0, p1}, Lme$a;->a(Ljava/util/EnumSet;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_3c

    .line 48
    :cond_4e
    instance-of v1, p1, Ljava/util/EnumMap;

    if-eqz v1, :cond_80

    .line 49
    check-cast p1, Ljava/util/EnumMap;

    invoke-virtual {p1}, Ljava/util/EnumMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_79

    invoke-virtual {p1}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Enum;

    invoke-static {p0}, Lme;->a(Ljava/lang/Enum;)Ljava/lang/Class;

    move-result-object v0

    .line 50
    :goto_6c
    const-class v1, Ljava/lang/Object;

    .line 51
    const-class v2, Ljava/util/EnumMap;

    invoke-static {v2, v0, v1}, Lmb;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lnd;

    move-result-object v0

    invoke-virtual {v0}, Lnd;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_46

    .line 49
    :cond_79
    sget-object v0, Lme$a;->a:Lme$a;

    invoke-virtual {v0, p1}, Lme$a;->a(Ljava/util/EnumMap;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_6c

    .line 53
    :cond_80
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 54
    const-string v2, ".Arrays$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_96

    const-string v2, ".Collections$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    :cond_96
    const-string v1, "List"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_46

    .line 62
    const-string v0, "java.util.ArrayList"

    goto :goto_46
.end method

.method public a(Ljava/lang/String;)Lnd;
    .registers 6
    .parameter

    .prologue
    .line 75
    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_d

    .line 76
    invoke-static {p1}, Lmb;->a(Ljava/lang/String;)Lnd;

    move-result-object v0

    .line 87
    :goto_c
    return-object v0

    .line 85
    :cond_d
    :try_start_d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 86
    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lkl;->c:Lnd;

    invoke-static {v1, v0}, Lmb;->a(Lnd;Ljava/lang/Class;)Lnd;
    :try_end_1f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_1f} :catch_21
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1f} :catch_41

    move-result-object v0

    goto :goto_c

    .line 89
    :catch_21
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid type id \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' (for id type \'Id.class\'): no such class found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :catch_41
    move-exception v0

    .line 91
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid type id \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' (for id type \'Id.class\'): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
