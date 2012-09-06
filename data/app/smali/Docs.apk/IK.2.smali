.class LIK;
.super Ljava/lang/Object;
.source "AuthTokenManagerImpl.java"


# instance fields
.field final synthetic a:LII;

.field private final a:Ljava/lang/String;

.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LII;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, LIK;->a:LII;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LIK;->a:Ljava/util/Map;

    .line 69
    iput-object p2, p0, LIK;->a:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 77
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LIK;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 78
    if-nez v0, :cond_2e

    .line 79
    iget-object v0, p0, LIK;->a:LII;

    invoke-static {v0}, LII;->a(LII;)LID;

    move-result-object v0

    invoke-interface {v0}, LID;->a()V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_42

    .line 81
    :try_start_14
    iget-object v0, p0, LIK;->a:LII;

    invoke-static {v0}, LII;->a(LII;)LID;

    move-result-object v0

    iget-object v1, p0, LIK;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, LID;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    iget-object v1, p0, LIK;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_37
    .catch Landroid/accounts/OperationCanceledException; {:try_start_14 .. :try_end_25} :catch_30
    .catch Landroid/accounts/AuthenticatorException; {:try_start_14 .. :try_end_25} :catch_45
    .catch LJi; {:try_start_14 .. :try_end_25} :catch_47
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_25} :catch_49

    .line 92
    :try_start_25
    iget-object v1, p0, LIK;->a:LII;

    invoke-static {v1}, LII;->a(LII;)LID;

    move-result-object v1

    invoke-interface {v1}, LID;->b()V
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_42

    .line 95
    :cond_2e
    monitor-exit p0

    return-object v0

    .line 83
    :catch_30
    move-exception v0

    .line 84
    :try_start_31
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_37

    .line 92
    :catchall_37
    move-exception v0

    :try_start_38
    iget-object v1, p0, LIK;->a:LII;

    invoke-static {v1}, LII;->a(LII;)LID;

    move-result-object v1

    invoke-interface {v1}, LID;->b()V

    throw v0
    :try_end_42
    .catchall {:try_start_38 .. :try_end_42} :catchall_42

    .line 77
    :catchall_42
    move-exception v0

    monitor-exit p0

    throw v0

    .line 85
    :catch_45
    move-exception v0

    .line 86
    :try_start_46
    throw v0

    .line 87
    :catch_47
    move-exception v0

    .line 88
    throw v0

    .line 89
    :catch_49
    move-exception v0

    .line 90
    throw v0
    :try_end_4b
    .catchall {:try_start_46 .. :try_end_4b} :catchall_37
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 118
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LIK;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_2b

    .line 119
    if-nez v0, :cond_d

    .line 129
    :goto_b
    monitor-exit p0

    return-void

    .line 122
    :cond_d
    :try_start_d
    iget-object v1, p0, LIK;->a:LII;

    invoke-static {v1}, LII;->a(LII;)LID;

    move-result-object v1

    invoke-interface {v1}, LID;->a()V
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_2b

    .line 125
    :try_start_16
    iget-object v1, p0, LIK;->a:LII;

    invoke-static {v1}, LII;->a(LII;)LID;

    move-result-object v1

    iget-object v2, p0, LIK;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, LID;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_2e

    .line 127
    :try_start_21
    iget-object v0, p0, LIK;->a:LII;

    invoke-static {v0}, LII;->a(LII;)LID;

    move-result-object v0

    invoke-interface {v0}, LID;->b()V
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_2b

    goto :goto_b

    .line 118
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 127
    :catchall_2e
    move-exception v0

    :try_start_2f
    iget-object v1, p0, LIK;->a:LII;

    invoke-static {v1}, LII;->a(LII;)LID;

    move-result-object v1

    invoke-interface {v1}, LID;->b()V

    throw v0
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_2b
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .registers 4
    .parameter

    .prologue
    .line 132
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, LIK;->a:LII;

    invoke-static {v0}, LII;->a(LII;)LID;

    move-result-object v0

    invoke-interface {v0}, LID;->a()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_2b

    .line 135
    :try_start_a
    iget-object v0, p0, LIK;->a:LII;

    invoke-static {v0}, LII;->a(LII;)LID;

    move-result-object v0

    iget-object v1, p0, LIK;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, LID;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_20

    .line 137
    :try_start_15
    iget-object v0, p0, LIK;->a:LII;

    invoke-static {v0}, LII;->a(LII;)LID;

    move-result-object v0

    invoke-interface {v0}, LID;->b()V
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_2b

    .line 139
    monitor-exit p0

    return-void

    .line 137
    :catchall_20
    move-exception v0

    :try_start_21
    iget-object v1, p0, LIK;->a:LII;

    invoke-static {v1}, LII;->a(LII;)LID;

    move-result-object v1

    invoke-interface {v1}, LID;->b()V

    throw v0
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_2b

    .line 132
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
