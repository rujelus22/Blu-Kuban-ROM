.class public Lcom/vlingo/client/safereader/email/EmailPollingEngine;
.super Ljava/lang/Object;
.source "EmailPollingEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vlingo/client/safereader/email/EmailPollingEngine$TaskManager;
    }
.end annotation


# instance fields
.field m_checkIntervalMs:J

.field m_emailAccountLastCheckTime:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field m_emailAccounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/safereader/email/EmailAccount;",
            ">;"
        }
    .end annotation
.end field

.field m_taskmanager:Lcom/vlingo/client/safereader/email/EmailPollingEngine$TaskManager;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/safereader/email/EmailPollingEngine;->m_taskmanager:Lcom/vlingo/client/safereader/email/EmailPollingEngine$TaskManager;

    .line 32
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/vlingo/client/safereader/email/EmailPollingEngine;->m_checkIntervalMs:J

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/safereader/email/EmailPollingEngine;->m_emailAccounts:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {p0}, Lcom/vlingo/client/safereader/email/EmailPollingEngine;->resetEmailAccountLastCheckTimes()V

    .line 39
    invoke-virtual {p0}, Lcom/vlingo/client/safereader/email/EmailPollingEngine;->onSettingsUpdated()V

    .line 40
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isSafeReaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 41
    invoke-virtual {p0}, Lcom/vlingo/client/safereader/email/EmailPollingEngine;->start()V

    .line 42
    :cond_20
    return-void
.end method


# virtual methods
.method declared-synchronized getEmailAccounts()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vlingo/client/safereader/email/EmailAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/safereader/email/EmailPollingEngine;->m_emailAccounts:Ljava/util/ArrayList;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getLastCheckTime(Ljava/lang/String;)J
    .registers 7
    .parameter "accountEmailAddress"

    .prologue
    .line 98
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/vlingo/client/safereader/email/EmailPollingEngine;->m_emailAccountLastCheckTime:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 99
    .local v0, time:Ljava/lang/Long;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1e

    .line 100
    :cond_15
    new-instance v0, Ljava/lang/Long;

    .end local v0           #time:Ljava/lang/Long;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 102
    .restart local v0       #time:Ljava/lang/Long;
    :cond_1e
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_24

    move-result-wide v1

    monitor-exit p0

    return-wide v1

    .line 98
    .end local v0           #time:Ljava/lang/Long;
    :catchall_24
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method loadEmailAccounts()V
    .registers 5

    .prologue
    .line 52
    invoke-static {}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getInstance()Lcom/vlingo/client/core/common/ApplicationAdaptor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vlingo/client/core/common/ApplicationAdaptor;->getApplication()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vlingo/client/VlingoApplication;

    invoke-virtual {v2}, Lcom/vlingo/client/VlingoApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 53
    .local v1, ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/vlingo/client/safereader/email/EmailAccountManager;->getEmailAccounts(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 55
    .local v0, accounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/vlingo/client/safereader/email/EmailAccount;>;"
    iget-object v3, p0, Lcom/vlingo/client/safereader/email/EmailPollingEngine;->m_emailAccounts:Ljava/util/ArrayList;

    monitor-enter v3

    .line 58
    :try_start_15
    iput-object v0, p0, Lcom/vlingo/client/safereader/email/EmailPollingEngine;->m_emailAccounts:Ljava/util/ArrayList;

    .line 59
    monitor-exit v3

    .line 60
    return-void

    .line 59
    :catchall_19
    move-exception v2

    monitor-exit v3
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_19

    throw v2
.end method

.method public declared-synchronized onSettingsUpdated()V
    .registers 4

    .prologue
    .line 69
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/vlingo/client/safereader/email/EmailPollingEngine;->loadEmailAccounts()V

    .line 70
    const-string v1, "safereader_email_poll_interval"

    const-string v2, "30000"

    invoke-static {v1, v2}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, interval:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/vlingo/client/safereader/email/EmailPollingEngine;->m_checkIntervalMs:J

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 73
    monitor-exit p0

    return-void

    .line 69
    .end local v0           #interval:Ljava/lang/String;
    :catchall_17
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method resetEmailAccountLastCheckTimes()V
    .registers 2

    .prologue
    .line 45
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/safereader/email/EmailPollingEngine;->m_emailAccountLastCheckTime:Ljava/util/Hashtable;

    .line 46
    return-void
.end method

.method declared-synchronized setLastCheckTime(Ljava/lang/String;J)V
    .registers 6
    .parameter "accountEmailAddress"
    .parameter "lastCheckTime"

    .prologue
    .line 106
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/safereader/email/EmailPollingEngine;->m_emailAccountLastCheckTime:Ljava/util/Hashtable;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 107
    monitor-exit p0

    return-void

    .line 106
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public start()V
    .registers 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/vlingo/client/safereader/email/EmailPollingEngine;->stop()V

    .line 79
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isEMailReadbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/vlingo/client/safereader/email/EmailPollingEngine;->m_taskmanager:Lcom/vlingo/client/safereader/email/EmailPollingEngine$TaskManager;

    if-nez v0, :cond_1c

    .line 80
    invoke-virtual {p0}, Lcom/vlingo/client/safereader/email/EmailPollingEngine;->onSettingsUpdated()V

    .line 81
    new-instance v0, Lcom/vlingo/client/safereader/email/EmailPollingEngine$TaskManager;

    invoke-direct {v0, p0}, Lcom/vlingo/client/safereader/email/EmailPollingEngine$TaskManager;-><init>(Lcom/vlingo/client/safereader/email/EmailPollingEngine;)V

    iput-object v0, p0, Lcom/vlingo/client/safereader/email/EmailPollingEngine;->m_taskmanager:Lcom/vlingo/client/safereader/email/EmailPollingEngine$TaskManager;

    .line 82
    iget-object v0, p0, Lcom/vlingo/client/safereader/email/EmailPollingEngine;->m_taskmanager:Lcom/vlingo/client/safereader/email/EmailPollingEngine$TaskManager;

    invoke-virtual {v0}, Lcom/vlingo/client/safereader/email/EmailPollingEngine$TaskManager;->start()V

    .line 84
    :cond_1c
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vlingo/client/safereader/email/EmailPollingEngine;->m_taskmanager:Lcom/vlingo/client/safereader/email/EmailPollingEngine$TaskManager;

    if-eqz v0, :cond_c

    .line 92
    iget-object v0, p0, Lcom/vlingo/client/safereader/email/EmailPollingEngine;->m_taskmanager:Lcom/vlingo/client/safereader/email/EmailPollingEngine$TaskManager;

    invoke-virtual {v0}, Lcom/vlingo/client/safereader/email/EmailPollingEngine$TaskManager;->cancel()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/safereader/email/EmailPollingEngine;->m_taskmanager:Lcom/vlingo/client/safereader/email/EmailPollingEngine$TaskManager;

    .line 95
    :cond_c
    return-void
.end method
