.class public LQQ;
.super Ljava/lang/Object;
.source "DocumentFileManagerImpl.java"

# interfaces
.implements LQO;


# instance fields
.field a:LQM;

.field final synthetic a:LQP;

.field private final a:LQS;

.field private final a:Ljava/lang/String;

.field private final a:LkR;

.field a:Z


# direct methods
.method public constructor <init>(LQP;LkR;LQS;Ljava/lang/String;LQM;)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, LQQ;->a:LQP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p2, p0, LQQ;->a:LkR;

    .line 60
    iput-object p3, p0, LQQ;->a:LQS;

    .line 61
    iput-object p4, p0, LQQ;->a:Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, LQQ;->a:Z

    .line 63
    invoke-static {p5}, LafQ;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQM;

    iput-object v0, p0, LQQ;->a:LQM;

    .line 64
    return-void
.end method


# virtual methods
.method public a()Ljava/io/File;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, LQQ;->a:LQS;

    invoke-virtual {v0}, LQS;->a()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, LQQ;->a:LQS;

    invoke-virtual {v0}, LQS;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljavax/crypto/SecretKey;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, LQQ;->a:LQS;

    invoke-virtual {v0}, LQS;->a()Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 2

    .prologue
    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, LQQ;->a:Z

    .line 84
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 88
    iget-boolean v0, p0, LQQ;->a:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, LQQ;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()V
    .registers 9

    .prologue
    const/4 v2, 0x1

    .line 93
    const-wide/16 v0, 0x0

    .line 94
    iget-object v3, p0, LQQ;->a:LQS;

    invoke-virtual {v3}, LQS;->a()J

    move-result-wide v3

    .line 96
    iget-object v5, p0, LQQ;->a:LQP;

    monitor-enter v5

    .line 97
    :try_start_c
    iget-object v6, p0, LQQ;->a:LQS;

    invoke-virtual {v6}, LQS;->a()LQV;

    move-result-object v6

    sget-object v7, LQV;->b:LQV;

    if-ne v6, v7, :cond_86

    .line 98
    :goto_16
    iget-object v6, p0, LQQ;->a:LQS;

    invoke-virtual {v6}, LQS;->c()V

    .line 99
    iget-object v6, p0, LQQ;->a:LQS;

    invoke-virtual {v6}, LQS;->a()LkS;

    move-result-object v6

    .line 100
    if-eqz v2, :cond_64

    .line 103
    iget-boolean v2, p0, LQQ;->a:Z

    if-eqz v2, :cond_88

    .line 104
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 105
    invoke-virtual {p0}, LQQ;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, LkS;->a(Ljava/lang/String;)V

    .line 106
    invoke-virtual {v6, v0}, LkS;->a(Ljava/util/Date;)V

    .line 107
    iget-object v1, p0, LQQ;->a:LQP;

    invoke-static {v1}, LQP;->a(LQP;)LQZ;

    move-result-object v1

    invoke-interface {v1, v6}, LQZ;->a(LkS;)V

    .line 109
    iget-object v1, p0, LQQ;->a:LkR;

    iget-object v2, p0, LQQ;->a:LQM;

    invoke-virtual {v1, v3, v4, v2}, LkR;->a(JLQM;)V

    .line 110
    iget-object v1, p0, LQQ;->a:LkR;

    const/4 v2, 0x1

    iget-object v6, p0, LQQ;->a:LQM;

    invoke-virtual {v1, v2, v6}, LkR;->a(ZLQM;)V

    .line 111
    iget-object v1, p0, LQQ;->a:LkR;

    invoke-virtual {v1, v0}, LkR;->c(Ljava/util/Date;)V

    .line 112
    iget-object v0, p0, LQQ;->a:LQP;

    invoke-static {v0}, LQP;->a(LQP;)LQZ;

    move-result-object v0

    iget-object v1, p0, LQQ;->a:LkR;

    invoke-interface {v0, v1}, LQZ;->a(LkR;)V

    .line 114
    iget-object v0, p0, LQQ;->a:LQS;

    invoke-virtual {v0}, LQS;->b()J

    move-result-wide v0

    .line 119
    :cond_64
    :goto_64
    monitor-exit v5
    :try_end_65
    .catchall {:try_start_c .. :try_end_65} :catchall_8e

    .line 121
    iget-object v2, p0, LQQ;->a:LQP;

    invoke-virtual {v2, v0, v1}, LQP;->a(J)V

    .line 123
    iget-object v1, p0, LQQ;->a:LQP;

    monitor-enter v1

    .line 124
    :try_start_6d
    iget-object v0, p0, LQQ;->a:LQS;

    invoke-virtual {v0}, LQS;->a()LQV;

    move-result-object v0

    sget-object v2, LQV;->c:LQV;

    if-ne v0, v2, :cond_84

    .line 125
    iget-object v0, p0, LQQ;->a:LQP;

    invoke-static {v0}, LQP;->a(LQP;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_84
    monitor-exit v1
    :try_end_85
    .catchall {:try_start_6d .. :try_end_85} :catchall_91

    .line 128
    return-void

    .line 97
    :cond_86
    const/4 v2, 0x0

    goto :goto_16

    .line 116
    :cond_88
    :try_start_88
    iget-object v2, p0, LQQ;->a:LQS;

    invoke-virtual {v2}, LQS;->d()V

    goto :goto_64

    .line 119
    :catchall_8e
    move-exception v0

    monitor-exit v5
    :try_end_90
    .catchall {:try_start_88 .. :try_end_90} :catchall_8e

    throw v0

    .line 127
    :catchall_91
    move-exception v0

    :try_start_92
    monitor-exit v1
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 137
    const-string v0, "DocumentFileImpl[%s, manager=%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, LQQ;->a:LQS;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, LQQ;->a:LQP;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
