.class LQk;
.super Lcg;
.source "ServerAclManager.java"


# instance fields
.field final synthetic a:LOS;

.field final synthetic a:LQi;

.field final synthetic a:Ljava/lang/String;

.field final synthetic a:Ljava/util/Set;


# direct methods
.method constructor <init>(LQi;Ljava/util/Set;LOS;Ljava/lang/String;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, LQk;->a:LQi;

    iput-object p2, p0, LQk;->a:Ljava/util/Set;

    iput-object p3, p0, LQk;->a:LOS;

    iput-object p4, p0, LQk;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcg;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 98
    :try_start_1
    iget-object v0, p0, LQk;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 99
    iget-object v0, p0, LQk;->a:LOS;

    iget-object v1, p0, LQk;->a:Ljava/util/Set;

    invoke-interface {v0, v1}, LOS;->a(Ljava/util/Set;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_98

    .line 151
    iget-object v1, p0, LQk;->a:LQi;

    monitor-enter v1

    .line 152
    :try_start_13
    iget-object v0, p0, LQk;->a:LQi;

    invoke-static {v0}, LQi;->a(LQi;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 153
    monitor-exit v1

    .line 155
    :goto_21
    return-void

    .line 153
    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_22

    throw v0

    .line 103
    :cond_25
    :try_start_25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 104
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 106
    iget-object v0, p0, LQk;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v1

    :goto_36
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldq;

    .line 107
    invoke-static {}, Lcg;->b()Z
    :try_end_45
    .catchall {:try_start_25 .. :try_end_45} :catchall_98

    move-result v3

    if-eqz v3, :cond_5d

    .line 151
    iget-object v1, p0, LQk;->a:LQi;

    monitor-enter v1

    .line 152
    :try_start_4b
    iget-object v0, p0, LQk;->a:LQi;

    invoke-static {v0}, LQi;->a(LQi;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 153
    monitor-exit v1

    goto :goto_21

    :catchall_5a
    move-exception v0

    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_4b .. :try_end_5c} :catchall_5a

    throw v0

    .line 110
    :cond_5d
    :try_start_5d
    invoke-virtual {v0}, Ldq;->a()Ljava/lang/String;

    move-result-object v3

    .line 111
    if-nez v3, :cond_80

    .line 112
    iget-object v0, p0, LQk;->a:LOS;

    const-string v1, "Resource IDs in acl list should not be NULL."

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, LOS;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6b
    .catchall {:try_start_5d .. :try_end_6b} :catchall_98

    .line 151
    iget-object v1, p0, LQk;->a:LQi;

    monitor-enter v1

    .line 152
    :try_start_6e
    iget-object v0, p0, LQk;->a:LQi;

    invoke-static {v0}, LQi;->a(LQi;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 153
    monitor-exit v1

    goto :goto_21

    :catchall_7d
    move-exception v0

    monitor-exit v1
    :try_end_7f
    .catchall {:try_start_6e .. :try_end_7f} :catchall_7d

    throw v0

    .line 115
    :cond_80
    if-nez v2, :cond_ab

    move-object v2, v3

    .line 121
    :cond_83
    :try_start_83
    invoke-static {v2, v0}, LSq;->a(Ljava/lang/String;Ldq;)LSq;

    move-result-object v3

    .line 122
    invoke-virtual {v0}, Ldq;->a()Ldw;

    move-result-object v0

    sget-object v6, Ldw;->e:Ldw;

    if-ne v0, v6, :cond_cf

    .line 123
    const-string v0, "delete"

    invoke-static {v3, v0}, Lasl;->b(Lase;Ljava/lang/String;)V

    .line 127
    :goto_94
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_97
    .catchall {:try_start_83 .. :try_end_97} :catchall_98

    goto :goto_36

    .line 151
    :catchall_98
    move-exception v0

    iget-object v1, p0, LQk;->a:LQi;

    monitor-enter v1

    .line 152
    :try_start_9c
    iget-object v2, p0, LQk;->a:LQi;

    invoke-static {v2}, LQi;->a(LQi;)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 153
    monitor-exit v1
    :try_end_aa
    .catchall {:try_start_9c .. :try_end_aa} :catchall_180

    throw v0

    .line 117
    :cond_ab
    :try_start_ab
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_83

    .line 118
    iget-object v0, p0, LQk;->a:LOS;

    const-string v1, "All resource IDs in acl list should be the same."

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, LOS;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b9
    .catchall {:try_start_ab .. :try_end_b9} :catchall_98

    .line 151
    iget-object v1, p0, LQk;->a:LQi;

    monitor-enter v1

    .line 152
    :try_start_bc
    iget-object v0, p0, LQk;->a:LQi;

    invoke-static {v0}, LQi;->a(LQi;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 153
    monitor-exit v1

    goto/16 :goto_21

    :catchall_cc
    move-exception v0

    monitor-exit v1
    :try_end_ce
    .catchall {:try_start_bc .. :try_end_ce} :catchall_cc

    throw v0

    .line 125
    :cond_cf
    :try_start_cf
    const-string v0, "update"

    invoke-static {v3, v0}, Lasl;->b(Lase;Ljava/lang/String;)V

    goto :goto_94

    .line 129
    :cond_d5
    invoke-static {}, Lcg;->b()Z
    :try_end_d8
    .catchall {:try_start_cf .. :try_end_d8} :catchall_98

    move-result v0

    if-eqz v0, :cond_f1

    .line 151
    iget-object v1, p0, LQk;->a:LQi;

    monitor-enter v1

    .line 152
    :try_start_de
    iget-object v0, p0, LQk;->a:LQi;

    invoke-static {v0}, LQi;->a(LQi;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 153
    monitor-exit v1

    goto/16 :goto_21

    :catchall_ee
    move-exception v0

    monitor-exit v1
    :try_end_f0
    .catchall {:try_start_de .. :try_end_f0} :catchall_ee

    throw v0

    .line 133
    :cond_f1
    :try_start_f1
    iget-object v0, p0, LQk;->a:LQi;

    invoke-static {v0}, LQi;->a(LQi;)LRL;

    move-result-object v0

    invoke-static {v2}, Ldy;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, LQk;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, LRL;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Lasm;

    move-result-object v0

    .line 135
    invoke-interface {v0}, Lasm;->a()V
    :try_end_108
    .catchall {:try_start_f1 .. :try_end_108} :catchall_98
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_108} :catch_12e
    .catch Lasn; {:try_start_f1 .. :try_end_108} :catch_147
    .catch LarL; {:try_start_f1 .. :try_end_108} :catch_160

    move-object v0, v1

    .line 143
    :goto_109
    :try_start_109
    invoke-static {}, Lcg;->b()Z

    move-result v1

    if-nez v1, :cond_118

    .line 144
    if-nez v0, :cond_179

    .line 145
    iget-object v0, p0, LQk;->a:LOS;

    iget-object v1, p0, LQk;->a:Ljava/util/Set;

    invoke-interface {v0, v1}, LOS;->a(Ljava/util/Set;)V
    :try_end_118
    .catchall {:try_start_109 .. :try_end_118} :catchall_98

    .line 151
    :cond_118
    :goto_118
    iget-object v1, p0, LQk;->a:LQi;

    monitor-enter v1

    .line 152
    :try_start_11b
    iget-object v0, p0, LQk;->a:LQi;

    invoke-static {v0}, LQi;->a(LQi;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 153
    monitor-exit v1

    goto/16 :goto_21

    :catchall_12b
    move-exception v0

    monitor-exit v1
    :try_end_12d
    .catchall {:try_start_11b .. :try_end_12d} :catchall_12b

    throw v0

    .line 136
    :catch_12e
    move-exception v0

    .line 137
    :try_start_12f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException in ACL update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_109

    .line 138
    :catch_147
    move-exception v0

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parse Exception in ACL update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lasn;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_109

    .line 140
    :catch_160
    move-exception v0

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Authentication Exception in ACL update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, LarL;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_109

    .line 147
    :cond_179
    iget-object v1, p0, LQk;->a:LOS;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, LOS;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_17f
    .catchall {:try_start_12f .. :try_end_17f} :catchall_98

    goto :goto_118

    .line 153
    :catchall_180
    move-exception v0

    :try_start_181
    monitor-exit v1
    :try_end_182
    .catchall {:try_start_181 .. :try_end_182} :catchall_180

    throw v0
.end method
