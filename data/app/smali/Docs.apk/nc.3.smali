.class public Lnc;
.super Loc;
.source "CooperateStateMachineProgressDialog.java"

# interfaces
.implements LZN;


# instance fields
.field private a:J

.field private final a:Landroid/os/Handler;

.field private final a:Lans;

.field private a:Lcg;

.field private a:LnQ;

.field private b:J


# direct methods
.method public constructor <init>(Lans;Landroid/content/Context;I)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v0, -0x1

    .line 44
    invoke-direct {p0, p2, p3}, Loc;-><init>(Landroid/content/Context;I)V

    .line 29
    iput-wide v0, p0, Lnc;->a:J

    .line 30
    iput-wide v0, p0, Lnc;->b:J

    .line 45
    iput-object p1, p0, Lnc;->a:Lans;

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnc;->a:Landroid/os/Handler;

    .line 47
    return-void
.end method

.method static synthetic a(Lnc;)Lans;
    .registers 2
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lnc;->a:Lans;

    return-object v0
.end method

.method static synthetic a(Lnc;)V
    .registers 1
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Lnc;->c()V

    return-void
.end method

.method private declared-synchronized c()V
    .registers 3

    .prologue
    .line 136
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lnc;->a:LnQ;

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lnc;->a:Lcg;

    .line 138
    invoke-virtual {p0}, Lnc;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 139
    iget-object v0, p0, Lnc;->a:Landroid/os/Handler;

    new-instance v1, Lne;

    invoke-direct {v1, p0}, Lne;-><init>(Lnc;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_17
    .catchall {:try_start_2 .. :try_end_17} :catchall_19

    .line 148
    :cond_17
    monitor-exit p0

    return-void

    .line 136
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 4

    .prologue
    .line 72
    monitor-enter p0

    :try_start_1
    const-string v0, "CooperateStateMachineProgressDialog"

    const-string v1, "in startMachine"

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lnc;->a:LnQ;

    if-nez v0, :cond_11

    .line 77
    invoke-virtual {p0}, Lnc;->dismiss()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_26

    .line 102
    :cond_f
    :goto_f
    monitor-exit p0

    return-void

    .line 80
    :cond_11
    :try_start_11
    iget-object v0, p0, Lnc;->a:Lcg;

    if-nez v0, :cond_f

    .line 81
    iget-object v0, p0, Lnc;->a:LnQ;

    .line 82
    new-instance v1, Lnd;

    const-string v2, "Execute stateMachine for progress dialog"

    invoke-direct {v1, p0, v2, v0}, Lnd;-><init>(Lnc;Ljava/lang/String;LnQ;)V

    iput-object v1, p0, Lnc;->a:Lcg;

    .line 100
    iget-object v0, p0, Lnc;->a:Lcg;

    invoke-virtual {v0}, Lcg;->start()V
    :try_end_25
    .catchall {:try_start_11 .. :try_end_25} :catchall_26

    goto :goto_f

    .line 72
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(JJLjava/lang/String;)V
    .registers 10
    .parameter
    .parameter
    .parameter

    .prologue
    .line 125
    iget-wide v0, p0, Lnc;->a:J

    sub-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lnc;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-gez v0, :cond_1c

    .line 133
    :cond_1b
    :goto_1b
    return-void

    .line 129
    :cond_1c
    const-string v0, "CooperateStateMachineProgressDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iput-wide p1, p0, Lnc;->a:J

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnc;->b:J

    .line 132
    invoke-virtual/range {p0 .. p5}, Lnc;->b(JJLjava/lang/String;)V

    goto :goto_1b
.end method

.method public a(LnQ;)V
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    const-string v0, "CooperateStateMachineProgressDialog"

    const-string v3, "in setMachine"

    invoke-static {v0, v3}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lnc;->a:LnQ;

    if-nez v0, :cond_1e

    move v0, v1

    :goto_e
    invoke-static {v0}, LafQ;->b(Z)V

    .line 55
    iget-object v0, p0, Lnc;->a:Lcg;

    if-nez v0, :cond_20

    :goto_15
    invoke-static {v1}, LafQ;->b(Z)V

    .line 56
    iput-object p1, p0, Lnc;->a:LnQ;

    .line 57
    invoke-interface {p1, p0}, LnQ;->a(LZN;)V

    .line 58
    return-void

    :cond_1e
    move v0, v2

    .line 54
    goto :goto_e

    :cond_20
    move v1, v2

    .line 55
    goto :goto_15
.end method

.method public declared-synchronized b()V
    .registers 3

    .prologue
    .line 115
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lnc;->a:Lcg;

    if-eqz v0, :cond_d

    .line 116
    iget-object v0, p0, Lnc;->a:Lcg;

    invoke-virtual {v0}, Lcg;->a()V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lnc;->a:Lcg;

    .line 119
    :cond_d
    const-string v0, "CooperateStateMachineProgressDialog"

    const-string v1, "Machine stopped."

    invoke-static {v0, v1}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lnc;->a:LnQ;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 121
    monitor-exit p0

    return-void

    .line 115
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onStart()V
    .registers 1

    .prologue
    .line 68
    invoke-super {p0}, Loc;->onStart()V

    .line 69
    return-void
.end method

.method protected declared-synchronized onStop()V
    .registers 2

    .prologue
    .line 106
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Loc;->onStop()V

    .line 107
    invoke-virtual {p0}, Lnc;->b()V

    .line 111
    invoke-virtual {p0}, Lnc;->dismiss()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 112
    monitor-exit p0

    return-void

    .line 106
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
