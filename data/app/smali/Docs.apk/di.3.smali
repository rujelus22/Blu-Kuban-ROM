.class public Ldi;
.super Ljava/lang/Object;
.source "AccountFlagStoreImpl.java"

# interfaces
.implements Ldg;


# instance fields
.field private final a:LanD;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lde;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LanD;)V
    .registers 3
    .parameter
    .annotation runtime Lanr;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LanD",
            "<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldi;->a:Ljava/util/Map;

    .line 33
    iput-object p1, p0, Ldi;->a:LanD;

    .line 34
    return-void
.end method

.method private a()Landroid/content/Context;
    .registers 3

    .prologue
    .line 92
    iget-object v0, p0, Ldi;->a:LanD;

    invoke-interface {v0}, LanD;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 93
    if-nez v0, :cond_12

    .line 94
    new-instance v0, Ldh;

    const-string v1, "Unable to access context."

    invoke-direct {v0, v1}, Ldh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_12
    return-object v0
.end method

.method private a(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 100
    invoke-direct {p0}, Ldi;->a()Landroid/content/Context;

    move-result-object v0

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accountFlags"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 104
    if-nez v0, :cond_2f

    .line 105
    new-instance v0, Ldh;

    const-string v2, "Unable to access Android shared preferences for file \"%s\""

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ldh;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_2f
    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Lde;
    .registers 7
    .parameter

    .prologue
    .line 40
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ldi;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_3f

    .line 41
    if-eqz v0, :cond_d

    .line 55
    :goto_b
    monitor-exit p0

    return-object v0

    .line 46
    :cond_d
    :try_start_d
    new-instance v1, Ldf;

    invoke-direct {v1, p1}, Ldf;-><init>(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Ldi;->a:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-direct {p0, p1}, Ldi;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 50
    invoke-interface {v1}, Lde;->a()V

    .line 51
    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 52
    const/4 v4, 0x0

    invoke-interface {v2, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Lde;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_d .. :try_end_3e} :catchall_3f

    goto :goto_2a

    .line 40
    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_42
    move-object v0, v1

    .line 55
    goto :goto_b
.end method

.method public declared-synchronized a(Lde;)V
    .registers 7
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 60
    monitor-enter p0

    :try_start_3
    iget-object v2, p0, Ldi;->a:Ljava/util/Map;

    invoke-interface {p1}, Lde;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_51

    :goto_f
    const-string v1, "Flag set object does not match the one we created for account %s."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Lde;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, LafQ;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 63
    invoke-interface {p1}, Lde;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ldi;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 65
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 66
    monitor-enter p1
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_4e

    .line 67
    :try_start_2b
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 68
    invoke-interface {p1}, Lde;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 69
    const/4 v3, 0x0

    invoke-interface {p1, v0, v3}, Lde;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_36

    .line 71
    :catchall_4b
    move-exception v0

    monitor-exit p1
    :try_end_4d
    .catchall {:try_start_2b .. :try_end_4d} :catchall_4b

    :try_start_4d
    throw v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4e

    .line 60
    :catchall_4e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_51
    move v0, v1

    goto :goto_f

    .line 71
    :cond_53
    :try_start_53
    monitor-exit p1
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_4b

    .line 72
    :try_start_54
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_77

    .line 73
    new-instance v0, Ldh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Commit failed while saving account flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lde;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ldh;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_77
    .catchall {:try_start_54 .. :try_end_77} :catchall_4e

    .line 76
    :cond_77
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 80
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Ldi;->a(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 82
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 83
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 84
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 85
    new-instance v0, Ldh;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Commit failed while deleting account flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ldh;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2b

    .line 80
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 88
    :cond_2e
    :try_start_2e
    iget-object v0, p0, Ldi;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_2b

    .line 89
    monitor-exit p0

    return-void
.end method
