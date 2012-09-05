.class public Lcom/vlingo/client/typedrequests/VlingoSearchActivity;
.super Landroid/app/Activity;
.source "VlingoSearchActivity.java"

# interfaces
.implements Landroid/app/SearchManager$OnDismissListener;
.implements Landroid/app/SearchManager$OnCancelListener;


# instance fields
.field private initialLaunch:Z

.field private listenersRegistered:Z

.field private searchManager:Landroid/app/SearchManager;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/typedrequests/VlingoSearchActivity;->listenersRegistered:Z

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/typedrequests/VlingoSearchActivity;->initialLaunch:Z

    return-void
.end method

.method private openSearch()V
    .registers 3

    .prologue
    .line 80
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/vlingo/client/ClientConfiguration;->isEnabled(I)Z

    move-result v0

    .line 81
    .local v0, useVlingo:Z
    const-string v1, "search"

    invoke-virtual {p0, v1}, Lcom/vlingo/client/typedrequests/VlingoSearchActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    iput-object v1, p0, Lcom/vlingo/client/typedrequests/VlingoSearchActivity;->searchManager:Landroid/app/SearchManager;

    .line 82
    if-eqz v0, :cond_18

    .line 83
    invoke-direct {p0}, Lcom/vlingo/client/typedrequests/VlingoSearchActivity;->registerListeners()V

    .line 86
    invoke-virtual {p0}, Lcom/vlingo/client/typedrequests/VlingoSearchActivity;->onSearchRequested()Z

    .line 94
    :goto_17
    return-void

    .line 91
    :cond_18
    const-string v1, ""

    invoke-static {p0, v1}, Lcom/vlingo/client/util/WebSearchUtil;->launchWebSearch(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/vlingo/client/typedrequests/VlingoSearchActivity;->finish()V

    goto :goto_17
.end method

.method private declared-synchronized openSearchIfNotStarted()V
    .registers 2

    .prologue
    .line 72
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/vlingo/client/typedrequests/VlingoSearchActivity;->listenersRegistered:Z

    if-nez v0, :cond_8

    .line 73
    invoke-direct {p0}, Lcom/vlingo/client/typedrequests/VlingoSearchActivity;->openSearch()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 75
    :cond_8
    monitor-exit p0

    return-void

    .line 72
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized registerListeners()V
    .registers 2

    .prologue
    .line 99
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/vlingo/client/typedrequests/VlingoSearchActivity;->listenersRegistered:Z

    if-nez v0, :cond_12

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/typedrequests/VlingoSearchActivity;->listenersRegistered:Z

    .line 103
    iget-object v0, p0, Lcom/vlingo/client/typedrequests/VlingoSearchActivity;->searchManager:Landroid/app/SearchManager;

    invoke-virtual {v0, p0}, Landroid/app/SearchManager;->setOnCancelListener(Landroid/app/SearchManager$OnCancelListener;)V

    .line 104
    iget-object v0, p0, Lcom/vlingo/client/typedrequests/VlingoSearchActivity;->searchManager:Landroid/app/SearchManager;

    invoke-virtual {v0, p0}, Landroid/app/SearchManager;->setOnDismissListener(Landroid/app/SearchManager$OnDismissListener;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 106
    :cond_12
    monitor-exit p0

    return-void

    .line 99
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private unpackSavedInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 203
    if-eqz p1, :cond_b

    .line 204
    const-string v0, "initialLaunch"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vlingo/client/typedrequests/VlingoSearchActivity;->initialLaunch:Z

    .line 206
    :cond_b
    return-void
.end method

.method private declared-synchronized unregisterListeners()V
    .registers 3

    .prologue
    .line 110
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/vlingo/client/typedrequests/VlingoSearchActivity;->listenersRegistered:Z

    if-eqz v0, :cond_14

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vlingo/client/typedrequests/VlingoSearchActivity;->listenersRegistered:Z

    .line 114
    iget-object v0, p0, Lcom/vlingo/client/typedrequests/VlingoSearchActivity;->searchManager:Landroid/app/SearchManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->setOnCancelListener(Landroid/app/SearchManager$OnCancelListener;)V

    .line 115
    iget-object v0, p0, Lcom/vlingo/client/typedrequests/VlingoSearchActivity;->searchManager:Landroid/app/SearchManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/SearchManager;->setOnDismissListener(Landroid/app/SearchManager$OnDismissListener;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 117
    :cond_14
    monitor-exit p0

    return-void

    .line 110
    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onBackPressed()V
    .registers 1

    .prologue
    .line 149
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 150
    return-void
.end method

.method public declared-synchronized onCancel()V
    .registers 2

    .prologue
    .line 131
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/vlingo/client/typedrequests/VlingoSearchActivity;->listenersRegistered:Z

    if-eqz v0, :cond_b

    .line 132
    invoke-direct {p0}, Lcom/vlingo/client/typedrequests/VlingoSearchActivity;->unregisterListeners()V

    .line 133
    invoke-virtual {p0}, Lcom/vlingo/client/typedrequests/VlingoSearchActivity;->finish()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 135
    :cond_b
    monitor-exit p0

    return-void

    .line 131
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/vlingo/client/typedrequests/VlingoSearchActivity;->unpackSavedInstanceState(Landroid/os/Bundle;)V

    .line 35
    const v1, 0x7f030058

    invoke-virtual {p0, v1}, Lcom/vlingo/client/typedrequests/VlingoSearchActivity;->setContentView(I)V

    .line 40
    invoke-static {}, Lcom/vlingo/client/iux/StartIUXFlowActivity;->isIUXComplete()Z

    move-result v1

    if-nez v1, :cond_25

    .line 41
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vlingo/client/iux/StartIUXFlowActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 43
    invoke-virtual {p0, v0}, Lcom/vlingo/client/typedrequests/VlingoSearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 44
    invoke-virtual {p0}, Lcom/vlingo/client/typedrequests/VlingoSearchActivity;->finish()V

    .line 55
    .end local v0           #i:Landroid/content/Intent;
    :cond_24
    :goto_24
    return-void

    .line 48
    :cond_25
    invoke-virtual {p0}, Lcom/vlingo/client/typedrequests/VlingoSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/vlingo/client/typedrequests/VlingoSearchActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 50
    iget-boolean v1, p0, Lcom/vlingo/client/typedrequests/VlingoSearchActivity;->initialLaunch:Z

    if-eqz v1, :cond_24

    .line 51
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vlingo/client/typedrequests/VlingoSearchActivity;->initialLaunch:Z

    .line 52
    const-string v1, "typed-requests-home-view"

    invoke-static {v1}, Lcom/vlingo/client/userlogging/events/PageViewEvent;->logPageViewEvent(Ljava/lang/String;)V

    goto :goto_24
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 156
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 157
    return-void
.end method

.method public declared-synchronized onDismiss()V
    .registers 2

    .prologue
    .line 122
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/vlingo/client/typedrequests/VlingoSearchActivity;->listenersRegistered:Z

    if-eqz v0, :cond_b

    .line 123
    invoke-direct {p0}, Lcom/vlingo/client/typedrequests/VlingoSearchActivity;->unregisterListeners()V

    .line 124
    invoke-virtual {p0}, Lcom/vlingo/client/typedrequests/VlingoSearchActivity;->finish()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 126
    :cond_b
    monitor-exit p0

    return-void

    .line 122
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 63
    invoke-virtual {p0}, Lcom/vlingo/client/typedrequests/VlingoSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/vlingo/client/typedrequests/TypedRequestExecutor;->handleIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 64
    invoke-virtual {p0}, Lcom/vlingo/client/typedrequests/VlingoSearchActivity;->finish()V

    .line 69
    :goto_10
    return-void

    .line 67
    :cond_11
    invoke-direct {p0}, Lcom/vlingo/client/typedrequests/VlingoSearchActivity;->openSearch()V

    goto :goto_10
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 163
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 164
    invoke-direct {p0}, Lcom/vlingo/client/typedrequests/VlingoSearchActivity;->unregisterListeners()V

    .line 165
    invoke-virtual {p0}, Lcom/vlingo/client/typedrequests/VlingoSearchActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_f

    .line 166
    invoke-virtual {p0}, Lcom/vlingo/client/typedrequests/VlingoSearchActivity;->finish()V

    .line 168
    :cond_f
    return-void
.end method

.method protected onRestart()V
    .registers 1

    .prologue
    .line 174
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 175
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/vlingo/client/typedrequests/VlingoSearchActivity;->unpackSavedInstanceState(Landroid/os/Bundle;)V

    .line 199
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 200
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 181
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 182
    invoke-direct {p0}, Lcom/vlingo/client/typedrequests/VlingoSearchActivity;->openSearchIfNotStarted()V

    .line 183
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 193
    const-string v0, "initialLaunch"

    iget-boolean v1, p0, Lcom/vlingo/client/typedrequests/VlingoSearchActivity;->initialLaunch:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 194
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 195
    return-void
.end method

.method protected onStart()V
    .registers 1

    .prologue
    .line 189
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 190
    return-void
.end method

.method public onStop()V
    .registers 1

    .prologue
    .line 141
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 142
    invoke-direct {p0}, Lcom/vlingo/client/typedrequests/VlingoSearchActivity;->unregisterListeners()V

    .line 143
    return-void
.end method
