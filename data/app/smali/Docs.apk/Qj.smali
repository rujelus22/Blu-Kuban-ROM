.class LQj;
.super Lcg;
.source "ServerAclManager.java"


# instance fields
.field final synthetic a:LOS;

.field final synthetic a:LQi;

.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(LQi;Ljava/lang/String;Ljava/lang/String;LOS;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, LQj;->a:LQi;

    iput-object p2, p0, LQj;->a:Ljava/lang/String;

    iput-object p3, p0, LQj;->b:Ljava/lang/String;

    iput-object p4, p0, LQj;->a:LOS;

    invoke-direct {p0}, Lcg;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 50
    .line 52
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 53
    iget-object v1, p0, LQj;->a:LQi;

    invoke-static {v1}, LQi;->a(LQi;)LRL;

    move-result-object v1

    iget-object v3, p0, LQj;->a:Ljava/lang/String;

    invoke-static {v3}, Ldy;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, LQj;->b:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, LRL;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LSx;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_16d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1c} :catch_193
    .catch Lasn; {:try_start_1 .. :try_end_1c} :catch_c2
    .catch LarL; {:try_start_1 .. :try_end_1c} :catch_fb
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1c} :catch_134

    move-result-object v1

    .line 56
    :try_start_1d
    invoke-virtual {v1}, LSx;->b()Lasf;

    .line 58
    :goto_20
    invoke-virtual {v1}, LSx;->a()Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 59
    invoke-static {}, Lcg;->b()Z
    :try_end_29
    .catchall {:try_start_1d .. :try_end_29} :catchall_189
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_29} :catch_6c
    .catch Lasn; {:try_start_1d .. :try_end_29} :catch_190
    .catch LarL; {:try_start_1d .. :try_end_29} :catch_18d
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1d .. :try_end_29} :catch_18b

    move-result v3

    if-eqz v3, :cond_46

    .line 76
    if-eqz v1, :cond_31

    .line 77
    invoke-virtual {v1}, LSx;->a()V

    .line 79
    :cond_31
    iget-object v1, p0, LQj;->a:LQi;

    monitor-enter v1

    .line 80
    :try_start_34
    iget-object v0, p0, LQj;->a:LQi;

    invoke-static {v0}, LQi;->a(LQi;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 81
    monitor-exit v1

    .line 83
    :goto_42
    return-void

    .line 81
    :catchall_43
    move-exception v0

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_34 .. :try_end_45} :catchall_43

    throw v0

    .line 62
    :cond_46
    :try_start_46
    invoke-virtual {v1, v2}, LSx;->a(Lase;)LSq;

    move-result-object v2

    .line 63
    iget-object v3, p0, LQj;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, LSq;->a(Ljava/lang/String;)Ldq;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    const-string v3, "ServerAclLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got ACL entry "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catchall {:try_start_46 .. :try_end_6b} :catchall_189
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_6b} :catch_6c
    .catch Lasn; {:try_start_46 .. :try_end_6b} :catch_190
    .catch LarL; {:try_start_46 .. :try_end_6b} :catch_18d
    .catch Landroid/accounts/AuthenticatorException; {:try_start_46 .. :try_end_6b} :catch_18b

    goto :goto_20

    .line 67
    :catch_6c
    move-exception v0

    .line 68
    :goto_6d
    :try_start_6d
    iget-object v2, p0, LQj;->a:LOS;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException in ACL loader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, LOS;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_89
    .catchall {:try_start_6d .. :try_end_89} :catchall_189

    .line 76
    if-eqz v1, :cond_8e

    .line 77
    invoke-virtual {v1}, LSx;->a()V

    .line 79
    :cond_8e
    iget-object v1, p0, LQj;->a:LQi;

    monitor-enter v1

    .line 80
    :try_start_91
    iget-object v0, p0, LQj;->a:LQi;

    invoke-static {v0}, LQi;->a(LQi;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 81
    monitor-exit v1

    goto :goto_42

    :catchall_a0
    move-exception v0

    monitor-exit v1
    :try_end_a2
    .catchall {:try_start_91 .. :try_end_a2} :catchall_a0

    throw v0

    .line 66
    :cond_a3
    :try_start_a3
    iget-object v2, p0, LQj;->a:LOS;

    invoke-interface {v2, v0}, LOS;->a(Ljava/util/Set;)V
    :try_end_a8
    .catchall {:try_start_a3 .. :try_end_a8} :catchall_189
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a8} :catch_6c
    .catch Lasn; {:try_start_a3 .. :try_end_a8} :catch_190
    .catch LarL; {:try_start_a3 .. :try_end_a8} :catch_18d
    .catch Landroid/accounts/AuthenticatorException; {:try_start_a3 .. :try_end_a8} :catch_18b

    .line 76
    if-eqz v1, :cond_ad

    .line 77
    invoke-virtual {v1}, LSx;->a()V

    .line 79
    :cond_ad
    iget-object v1, p0, LQj;->a:LQi;

    monitor-enter v1

    .line 80
    :try_start_b0
    iget-object v0, p0, LQj;->a:LQi;

    invoke-static {v0}, LQi;->a(LQi;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 81
    monitor-exit v1

    goto :goto_42

    :catchall_bf
    move-exception v0

    monitor-exit v1
    :try_end_c1
    .catchall {:try_start_b0 .. :try_end_c1} :catchall_bf

    throw v0

    .line 69
    :catch_c2
    move-exception v0

    move-object v1, v2

    .line 70
    :goto_c4
    :try_start_c4
    iget-object v2, p0, LQj;->a:LOS;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parse Exception in ACL loader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lasn;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, LOS;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_e0
    .catchall {:try_start_c4 .. :try_end_e0} :catchall_189

    .line 76
    if-eqz v1, :cond_e5

    .line 77
    invoke-virtual {v1}, LSx;->a()V

    .line 79
    :cond_e5
    iget-object v1, p0, LQj;->a:LQi;

    monitor-enter v1

    .line 80
    :try_start_e8
    iget-object v0, p0, LQj;->a:LQi;

    invoke-static {v0}, LQi;->a(LQi;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 81
    monitor-exit v1

    goto/16 :goto_42

    :catchall_f8
    move-exception v0

    monitor-exit v1
    :try_end_fa
    .catchall {:try_start_e8 .. :try_end_fa} :catchall_f8

    throw v0

    .line 71
    :catch_fb
    move-exception v0

    move-object v1, v2

    .line 72
    :goto_fd
    :try_start_fd
    iget-object v2, p0, LQj;->a:LOS;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Authentication Exception in ACL loader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, LarL;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, LOS;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_119
    .catchall {:try_start_fd .. :try_end_119} :catchall_189

    .line 76
    if-eqz v1, :cond_11e

    .line 77
    invoke-virtual {v1}, LSx;->a()V

    .line 79
    :cond_11e
    iget-object v1, p0, LQj;->a:LQi;

    monitor-enter v1

    .line 80
    :try_start_121
    iget-object v0, p0, LQj;->a:LQi;

    invoke-static {v0}, LQi;->a(LQi;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 81
    monitor-exit v1

    goto/16 :goto_42

    :catchall_131
    move-exception v0

    monitor-exit v1
    :try_end_133
    .catchall {:try_start_121 .. :try_end_133} :catchall_131

    throw v0

    .line 73
    :catch_134
    move-exception v0

    move-object v1, v2

    .line 74
    :goto_136
    :try_start_136
    iget-object v2, p0, LQj;->a:LOS;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Authenticator Exception in ACL loader: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/accounts/AuthenticatorException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, LOS;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_152
    .catchall {:try_start_136 .. :try_end_152} :catchall_189

    .line 76
    if-eqz v1, :cond_157

    .line 77
    invoke-virtual {v1}, LSx;->a()V

    .line 79
    :cond_157
    iget-object v1, p0, LQj;->a:LQi;

    monitor-enter v1

    .line 80
    :try_start_15a
    iget-object v0, p0, LQj;->a:LQi;

    invoke-static {v0}, LQi;->a(LQi;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 81
    monitor-exit v1

    goto/16 :goto_42

    :catchall_16a
    move-exception v0

    monitor-exit v1
    :try_end_16c
    .catchall {:try_start_15a .. :try_end_16c} :catchall_16a

    throw v0

    .line 76
    :catchall_16d
    move-exception v0

    move-object v1, v2

    :goto_16f
    if-eqz v1, :cond_174

    .line 77
    invoke-virtual {v1}, LSx;->a()V

    .line 79
    :cond_174
    iget-object v1, p0, LQj;->a:LQi;

    monitor-enter v1

    .line 80
    :try_start_177
    iget-object v2, p0, LQj;->a:LQi;

    invoke-static {v2}, LQi;->a(LQi;)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 81
    monitor-exit v1
    :try_end_185
    .catchall {:try_start_177 .. :try_end_185} :catchall_186

    throw v0

    :catchall_186
    move-exception v0

    :try_start_187
    monitor-exit v1
    :try_end_188
    .catchall {:try_start_187 .. :try_end_188} :catchall_186

    throw v0

    .line 76
    :catchall_189
    move-exception v0

    goto :goto_16f

    .line 73
    :catch_18b
    move-exception v0

    goto :goto_136

    .line 71
    :catch_18d
    move-exception v0

    goto/16 :goto_fd

    .line 69
    :catch_190
    move-exception v0

    goto/16 :goto_c4

    .line 67
    :catch_193
    move-exception v0

    move-object v1, v2

    goto/16 :goto_6d
.end method
