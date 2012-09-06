.class public Llw;
.super Ljava/lang/Object;
.source "ObsoleteDataCleanerImpl.java"

# interfaces
.implements Llv;


# instance fields
.field private final a:J

.field private final a:LHW;

.field private final a:Ldg;

.field private final a:Llu;


# direct methods
.method public constructor <init>(Llu;LHW;Ldg;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Llw;-><init>(Llu;LHW;Ldg;J)V

    .line 36
    return-void
.end method

.method private constructor <init>(Llu;LHW;Ldg;J)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Llw;->a:Llu;

    .line 43
    iput-object p2, p0, Llw;->a:LHW;

    .line 44
    iput-wide p4, p0, Llw;->a:J

    .line 45
    iput-object p3, p0, Llw;->a:Ldg;

    .line 46
    return-void
.end method

.method private b()V
    .registers 9

    .prologue
    .line 49
    iget-object v0, p0, Llw;->a:Llu;

    iget-wide v1, p0, Llw;->a:J

    invoke-interface {v0, v1, v2}, Llu;->a(J)I

    move-result v0

    int-to-long v0, v0

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Llw;->a:J

    sub-long/2addr v2, v4

    .line 51
    const-string v4, "ObsoleteDataCleanerImpl"

    const-string v5, "Deleted %d old cachedSearches in %d msec"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method

.method private c()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 55
    new-instance v2, Ljava/util/HashSet;

    iget-object v0, p0, Llw;->a:Llu;

    invoke-interface {v0}, Llu;->a()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 56
    iget-object v0, p0, Llw;->a:LHW;

    invoke-interface {v0}, LHW;->a()[Landroid/accounts/Account;

    move-result-object v3

    array-length v4, v3

    move v0, v1

    :goto_14
    if-ge v0, v4, :cond_20

    aget-object v5, v3, v0

    .line 57
    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 56
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 59
    :cond_20
    const-string v0, "ObsoleteDataCleanerImpl"

    const-string v3, "Purging %d accounts: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 61
    iget-object v2, p0, Llw;->a:Llu;

    invoke-interface {v2, v0}, Llu;->b(Ljava/lang/String;)LkG;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, LkG;->b()V

    .line 64
    :try_start_54
    iget-object v2, p0, Llw;->a:Ldg;

    invoke-virtual {v0}, LkG;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ldg;->a(Ljava/lang/String;)V
    :try_end_5d
    .catch Ldh; {:try_start_54 .. :try_end_5d} :catch_5e

    goto :goto_3f

    .line 65
    :catch_5e
    move-exception v0

    .line 66
    const-string v2, "ObsoleteDataCleanerImpl"

    const-string v3, "Error saving account flags to Android preferences."

    invoke-static {v2, v3, v0}, LZA;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3f

    .line 69
    :cond_67
    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    .prologue
    .line 73
    invoke-direct {p0}, Llw;->b()V

    .line 74
    invoke-direct {p0}, Llw;->c()V

    .line 75
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 79
    const-string v0, "%s[constructionTime=%d]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v3, p0, Llw;->a:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
