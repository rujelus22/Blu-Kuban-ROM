.class public Lkn;
.super Ljava/lang/Object;
.source "AppCacheManagerImpl.java"

# interfaces
.implements Lkm;


# instance fields
.field private final a:LQN;

.field private final a:Lki;

.field private final a:Llu;


# direct methods
.method public constructor <init>(Llu;Lki;LQN;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lkn;->a:Llu;

    .line 32
    iput-object p2, p0, Lkn;->a:Lki;

    .line 33
    iput-object p3, p0, Lkn;->a:LQN;

    .line 34
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LkE;)Ljava/util/List;
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "LkE;",
            ")",
            "Ljava/util/List",
            "<",
            "LQO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lkn;->a:Llu;

    invoke-interface {v0, p1, p2}, Llu;->a(Ljava/lang/String;Ljava/lang/String;)LkI;

    move-result-object v0

    if-nez v0, :cond_30

    .line 56
    const-string v0, "AppCacheManagerImpl"

    const-string v1, "AppCache not found in database, fetching now."

    invoke-static {v0, v1}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lkn;->a:Lki;

    invoke-interface {v0, p3, p4, p1, p2}, Lki;->a(Ljava/lang/String;LkE;Ljava/lang/String;Ljava/lang/String;)LkI;

    .line 68
    :goto_14
    iget-object v0, p0, Lkn;->a:Llu;

    invoke-interface {v0}, Llu;->a()V

    .line 70
    :try_start_19
    iget-object v0, p0, Lkn;->a:Llu;

    invoke-interface {v0, p1, p2}, Llu;->a(Ljava/lang/String;Ljava/lang/String;)LkI;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lkn;->a:LQN;

    invoke-interface {v1, v0}, LQN;->a(LkI;)Ljava/util/List;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lkn;->a:Llu;

    invoke-interface {v1}, Llu;->c()V
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_38

    .line 75
    iget-object v1, p0, Lkn;->a:Llu;

    invoke-interface {v1}, Llu;->b()V

    return-object v0

    .line 60
    :cond_30
    const-string v0, "AppCacheManagerImpl"

    const-string v1, "AppCache found in database."

    invoke-static {v0, v1}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 75
    :catchall_38
    move-exception v0

    iget-object v1, p0, Lkn;->a:Llu;

    invoke-interface {v1}, Llu;->b()V

    throw v0
.end method

.method public a()V
    .registers 5

    .prologue
    .line 81
    iget-object v0, p0, Lkn;->a:Llu;

    invoke-interface {v0}, Llu;->a()V

    .line 83
    :try_start_5
    iget-object v0, p0, Lkn;->a:Llu;

    invoke-interface {v0}, Llu;->b()Ljava/util/List;

    move-result-object v0

    .line 84
    const-string v1, "AppCacheManagerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " expired appcache(s)."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LkI;

    .line 86
    invoke-virtual {v0}, LkI;->b()V
    :try_end_40
    .catchall {:try_start_5 .. :try_end_40} :catchall_41

    goto :goto_31

    .line 90
    :catchall_41
    move-exception v0

    iget-object v1, p0, Lkn;->a:Llu;

    invoke-interface {v1}, Llu;->b()V

    throw v0

    .line 88
    :cond_48
    :try_start_48
    iget-object v0, p0, Lkn;->a:Llu;

    invoke-interface {v0}, Llu;->c()V
    :try_end_4d
    .catchall {:try_start_48 .. :try_end_4d} :catchall_41

    .line 90
    iget-object v0, p0, Lkn;->a:Llu;

    invoke-interface {v0}, Llu;->b()V

    .line 92
    return-void
.end method
