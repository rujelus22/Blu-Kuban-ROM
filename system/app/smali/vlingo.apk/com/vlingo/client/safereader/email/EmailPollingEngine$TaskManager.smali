.class Lcom/vlingo/client/safereader/email/EmailPollingEngine$TaskManager;
.super Lcom/vlingo/client/util/BackgroundTask;
.source "EmailPollingEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/safereader/email/EmailPollingEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskManager"
.end annotation


# instance fields
.field m_currentPollTask:Lcom/vlingo/client/safereader/email/EmailPollTask;

.field final synthetic this$0:Lcom/vlingo/client/safereader/email/EmailPollingEngine;


# direct methods
.method constructor <init>(Lcom/vlingo/client/safereader/email/EmailPollingEngine;)V
    .registers 3
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/vlingo/client/safereader/email/EmailPollingEngine$TaskManager;->this$0:Lcom/vlingo/client/safereader/email/EmailPollingEngine;

    .line 113
    const-string v0, "EmailPoller-TaskManager"

    invoke-direct {p0, v0}, Lcom/vlingo/client/util/BackgroundTask;-><init>(Ljava/lang/String;)V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vlingo/client/safereader/email/EmailPollingEngine$TaskManager;->m_currentPollTask:Lcom/vlingo/client/safereader/email/EmailPollTask;

    .line 114
    return-void
.end method


# virtual methods
.method public doWork()V
    .registers 5

    .prologue
    .line 121
    iget-object v1, p0, Lcom/vlingo/client/safereader/email/EmailPollingEngine$TaskManager;->this$0:Lcom/vlingo/client/safereader/email/EmailPollingEngine;

    invoke-virtual {v1}, Lcom/vlingo/client/safereader/email/EmailPollingEngine;->resetEmailAccountLastCheckTimes()V

    .line 122
    invoke-static {}, Lcom/vlingo/client/safereader/email/POP3Manager;->getInstance()Lcom/vlingo/client/safereader/email/POP3Manager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vlingo/client/safereader/email/POP3Manager;->notifySafereaderStarted()V

    .line 124
    new-instance v1, Lcom/vlingo/client/safereader/email/EmailPollTask;

    iget-object v2, p0, Lcom/vlingo/client/safereader/email/EmailPollingEngine$TaskManager;->this$0:Lcom/vlingo/client/safereader/email/EmailPollingEngine;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/vlingo/client/safereader/email/EmailPollTask;-><init>(Lcom/vlingo/client/safereader/email/EmailPollingEngine;Z)V

    iput-object v1, p0, Lcom/vlingo/client/safereader/email/EmailPollingEngine$TaskManager;->m_currentPollTask:Lcom/vlingo/client/safereader/email/EmailPollTask;

    .line 125
    iget-object v1, p0, Lcom/vlingo/client/safereader/email/EmailPollingEngine$TaskManager;->m_currentPollTask:Lcom/vlingo/client/safereader/email/EmailPollTask;

    invoke-virtual {v1}, Lcom/vlingo/client/safereader/email/EmailPollTask;->start()V

    .line 127
    const/4 v0, 0x0

    .line 129
    .local v0, retry:I
    :goto_1c
    invoke-virtual {p0}, Lcom/vlingo/client/safereader/email/EmailPollingEngine$TaskManager;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_5d

    .line 132
    iget-object v1, p0, Lcom/vlingo/client/safereader/email/EmailPollingEngine$TaskManager;->m_currentPollTask:Lcom/vlingo/client/safereader/email/EmailPollTask;

    invoke-virtual {v1}, Lcom/vlingo/client/safereader/email/EmailPollTask;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2e

    const/16 v1, 0xa

    if-le v0, v1, :cond_5e

    .line 133
    :cond_2e
    const/4 v0, 0x0

    .line 134
    iget-object v1, p0, Lcom/vlingo/client/safereader/email/EmailPollingEngine$TaskManager;->m_currentPollTask:Lcom/vlingo/client/safereader/email/EmailPollTask;

    invoke-virtual {v1}, Lcom/vlingo/client/safereader/email/EmailPollTask;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 135
    iget-object v1, p0, Lcom/vlingo/client/safereader/email/EmailPollingEngine$TaskManager;->m_currentPollTask:Lcom/vlingo/client/safereader/email/EmailPollTask;

    invoke-virtual {v1}, Lcom/vlingo/client/safereader/email/EmailPollTask;->cancel()V

    .line 137
    :cond_3c
    invoke-virtual {p0}, Lcom/vlingo/client/safereader/email/EmailPollingEngine$TaskManager;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_57

    .line 138
    invoke-static {}, Lcom/vlingo/client/util/NetworkUtil;->isNetworkConnectionAvailable()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 139
    new-instance v1, Lcom/vlingo/client/safereader/email/EmailPollTask;

    iget-object v2, p0, Lcom/vlingo/client/safereader/email/EmailPollingEngine$TaskManager;->this$0:Lcom/vlingo/client/safereader/email/EmailPollingEngine;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/vlingo/client/safereader/email/EmailPollTask;-><init>(Lcom/vlingo/client/safereader/email/EmailPollingEngine;Z)V

    iput-object v1, p0, Lcom/vlingo/client/safereader/email/EmailPollingEngine$TaskManager;->m_currentPollTask:Lcom/vlingo/client/safereader/email/EmailPollTask;

    .line 140
    iget-object v1, p0, Lcom/vlingo/client/safereader/email/EmailPollingEngine$TaskManager;->m_currentPollTask:Lcom/vlingo/client/safereader/email/EmailPollTask;

    invoke-virtual {v1}, Lcom/vlingo/client/safereader/email/EmailPollTask;->start()V

    .line 154
    :cond_57
    :goto_57
    invoke-virtual {p0}, Lcom/vlingo/client/safereader/email/EmailPollingEngine$TaskManager;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 160
    :cond_5d
    return-void

    .line 151
    :cond_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_57

    .line 157
    :cond_61
    invoke-virtual {p0}, Lcom/vlingo/client/safereader/email/EmailPollingEngine$TaskManager;->waitForCheckInterval()V

    goto :goto_1c
.end method

.method declared-synchronized waitForCheckInterval()V
    .registers 6

    .prologue
    .line 164
    monitor-enter p0

    :try_start_1
    const-string v2, "safereader_email_poll_interval"

    const-string v3, "30000"

    invoke-static {v2, v3}, Lcom/vlingo/client/settings/Settings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, interval:Ljava/lang/String;
    iget-object v2, p0, Lcom/vlingo/client/safereader/email/EmailPollingEngine$TaskManager;->this$0:Lcom/vlingo/client/safereader/email/EmailPollingEngine;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/vlingo/client/safereader/email/EmailPollingEngine;->m_checkIntervalMs:J
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_25

    .line 171
    :try_start_11
    iget-object v2, p0, Lcom/vlingo/client/safereader/email/EmailPollingEngine$TaskManager;->this$0:Lcom/vlingo/client/safereader/email/EmailPollingEngine;

    iget-wide v2, v2, Lcom/vlingo/client/safereader/email/EmailPollingEngine;->m_checkIntervalMs:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_25
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_18} :catch_1a

    .line 179
    :goto_18
    monitor-exit p0

    return-void

    .line 172
    :catch_1a
    move-exception v0

    .line 173
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_1b
    const-string v2, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_25

    goto :goto_18

    .line 164
    .end local v0           #ex:Ljava/lang/InterruptedException;
    .end local v1           #interval:Ljava/lang/String;
    :catchall_25
    move-exception v2

    monitor-exit p0

    throw v2
.end method
