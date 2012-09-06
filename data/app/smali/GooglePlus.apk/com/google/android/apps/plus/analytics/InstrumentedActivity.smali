.class public abstract Lcom/google/android/apps/plus/analytics/InstrumentedActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "InstrumentedActivity.java"


# instance fields
.field private mExited:Z

.field private mRecorded:Z

.field private mStartingActivity:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private static getStartTime(Landroid/content/Intent;)J
    .registers 4
    .parameter "intent"

    .prologue
    .line 256
    const-string v0, "com.google.plus.analytics.intent.extra.START_TIME"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getStartView(Landroid/content/Intent;)Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .registers 4
    .parameter "intent"

    .prologue
    .line 244
    const-string v1, "com.google.plus.analytics.intent.extra.START_VIEW"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 245
    .local v0, number:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    move-result-object v1

    return-object v1
.end method

.method private instrument(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 8
    .parameter "intent"

    .prologue
    .line 381
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    move-result-object v2

    .line 382
    .local v2, view:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    if-eqz v2, :cond_1e

    .line 383
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_b
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_b} :catch_20

    .line 384
    .end local p1
    .local v1, intent:Landroid/content/Intent;
    :try_start_b
    const-string v3, "com.google.plus.analytics.intent.extra.START_VIEW"

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->getNumber()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 385
    const-string v3, "com.google.plus.analytics.intent.extra.START_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_1d
    .catch Landroid/os/BadParcelableException; {:try_start_b .. :try_end_1d} :catch_33

    move-object p1, v1

    .end local v1           #intent:Landroid/content/Intent;
    .restart local p1
    :cond_1e
    move-object v1, p1

    .line 398
    .end local v2           #view:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .end local p1
    .restart local v1       #intent:Landroid/content/Intent;
    :goto_1f
    return-object v1

    .line 389
    .end local v1           #intent:Landroid/content/Intent;
    .restart local p1
    :catch_20
    move-exception v0

    .line 394
    .local v0, e:Landroid/os/BadParcelableException;
    :goto_21
    const-string v3, "InstrumentedActivity"

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 395
    const-string v3, "InstrumentedActivity"

    const-string v4, "Unable to instrument Intent"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_31
    move-object v1, p1

    .line 398
    .end local p1
    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_1f

    .line 389
    .end local v0           #e:Landroid/os/BadParcelableException;
    .restart local v2       #view:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    :catch_33
    move-exception v0

    move-object p1, v1

    .end local v1           #intent:Landroid/content/Intent;
    .restart local p1
    goto :goto_21
.end method

.method private isScreenLocked()Z
    .registers 4

    .prologue
    .line 349
    const-string v2, "keyguard"

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 350
    .local v0, keyguard:Landroid/app/KeyguardManager;
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 351
    .local v1, power:Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-nez v2, :cond_1c

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-nez v2, :cond_1e

    :cond_1c
    const/4 v2, 0x1

    :goto_1d
    return v2

    :cond_1e
    const/4 v2, 0x0

    goto :goto_1d
.end method

.method private final recordReverseViewNavigation()V
    .registers 3

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    move-result-object v1

    .line 203
    .local v1, view:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 204
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v0, :cond_f

    if-eqz v1, :cond_f

    .line 205
    invoke-static {p0, v0, v1}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->recordReverseViewNavigation(Landroid/app/Activity;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;)V

    .line 207
    :cond_f
    return-void
.end method

.method public static recordReverseViewNavigation(Landroid/app/Activity;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;)V
    .registers 9
    .parameter "activity"
    .parameter "account"
    .parameter "view"

    .prologue
    .line 188
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->getStartView(Landroid/content/Intent;)Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    move-result-object v5

    .line 189
    .local v5, to:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    if-eqz v5, :cond_12

    .line 190
    move-object v2, p2

    .line 192
    .local v2, from:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    const-wide/16 v3, -0x1

    .local v3, startTime:J
    move-object v0, p0

    move-object v1, p1

    .line 193
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordViewNavigationEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;JLcom/google/wireless/tacotruck/proto/Logging$Targets$Views;)V

    .line 195
    .end local v2           #from:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .end local v3           #startTime:J
    :cond_12
    return-void
.end method

.method public static recordViewNavigation(Landroid/app/Activity;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;)V
    .registers 10
    .parameter "activity"
    .parameter "account"
    .parameter "view"

    .prologue
    .line 143
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 144
    .local v6, intent:Landroid/content/Intent;
    invoke-static {v6}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->getStartView(Landroid/content/Intent;)Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    move-result-object v2

    .line 145
    .local v2, startView:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    invoke-static {v6}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->getStartTime(Landroid/content/Intent;)J

    move-result-wide v3

    .local v3, startTime:J
    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 146
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordViewNavigationEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;JLcom/google/wireless/tacotruck/proto/Logging$Targets$Views;)V

    .line 147
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 2

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->mStartingActivity:Z

    if-eqz v0, :cond_8

    .line 368
    :goto_4
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 369
    return-void

    .line 362
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 363
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->EXIT:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    goto :goto_4

    .line 365
    :cond_14
    invoke-direct {p0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->recordReverseViewNavigation()V

    goto :goto_4
.end method

.method protected abstract getAccount()Lcom/google/android/apps/plus/content/EsAccount;
.end method

.method public getAnalyticsInfo(Ljava/util/Map;)Lcom/google/android/apps/plus/analytics/AnalyticsInfo;
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/apps/plus/analytics/AnalyticsInfo;"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, customValues:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/google/android/apps/plus/analytics/AnalyticsInfo;

    invoke-virtual {p0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->getStartView(Landroid/content/Intent;)Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->getStartTime(Landroid/content/Intent;)J

    move-result-wide v3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/plus/analytics/AnalyticsInfo;-><init>(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;JLjava/util/Map;)V

    return-object v0
.end method

.method protected abstract getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
.end method

.method protected needsAsyncData()Z
    .registers 2

    .prologue
    .line 425
    const/4 v0, 0x0

    return v0
.end method

.method public onAsyncData()V
    .registers 1

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->recordViewNavigation()V

    .line 308
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    if-eqz p1, :cond_16

    .line 63
    const-string v0, "analytics:recorded"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->mRecorded:Z

    .line 64
    const-string v0, "analytics:exited"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->mExited:Z

    .line 68
    :goto_15
    return-void

    .line 66
    :cond_16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->mExited:Z

    goto :goto_15
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 10
    .parameter "intent"

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 91
    invoke-static {p1}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->getStartView(Landroid/content/Intent;)Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    move-result-object v2

    .line 92
    .local v2, startView:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    move-result-object v5

    .line 93
    .local v5, endView:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    .line 94
    .local v1, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v1, :cond_1f

    if-eqz v2, :cond_1f

    if-eqz v5, :cond_1f

    if-eq v2, v5, :cond_1f

    .line 96
    const-wide/16 v6, -0x1

    .line 97
    .local v6, startTime:J
    const-wide/16 v3, -0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordViewNavigationEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;JLcom/google/wireless/tacotruck/proto/Logging$Targets$Views;)V

    .line 99
    .end local v6           #startTime:J
    :cond_1f
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 333
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 336
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->mStartingActivity:Z

    .line 338
    invoke-direct {p0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->isScreenLocked()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 340
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->EXIT:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->mExited:Z

    .line 343
    :cond_14
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 315
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 317
    iget-boolean v0, p0, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->mExited:Z

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 319
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->LAUNCH:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 320
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->mExited:Z

    .line 323
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->needsAsyncData()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 324
    invoke-virtual {p0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->recordViewNavigation()V

    .line 326
    :cond_1e
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 76
    const-string v0, "analytics:recorded"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->mRecorded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 77
    const-string v0, "analytics:exited"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->mExited:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 78
    return-void
.end method

.method protected onUserLeaveHint()V
    .registers 2

    .prologue
    .line 291
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onUserLeaveHint()V

    .line 292
    iget-boolean v0, p0, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->mStartingActivity:Z

    if-eqz v0, :cond_8

    .line 300
    :goto_7
    return-void

    .line 297
    :cond_8
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->EXIT:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->mExited:Z

    goto :goto_7
.end method

.method protected final recordUserAction(Lcom/google/android/apps/plus/analytics/AnalyticsInfo;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 4
    .parameter "info"
    .parameter "action"

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 231
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v0, :cond_9

    .line 232
    invoke-static {p0, v0, p1, p2}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordUserAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/android/apps/plus/analytics/AnalyticsInfo;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 234
    :cond_9
    return-void
.end method

.method protected final recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 3
    .parameter "action"

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 218
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v0, :cond_9

    .line 219
    invoke-static {p0, v0, p1}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordUserAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 221
    :cond_9
    return-void
.end method

.method protected final recordViewNavigation()V
    .registers 4

    .prologue
    .line 115
    iget-boolean v2, p0, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->mRecorded:Z

    if-eqz v2, :cond_5

    .line 125
    :cond_4
    :goto_4
    return-void

    .line 119
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    move-result-object v1

    .line 120
    .local v1, endView:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 121
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 122
    invoke-static {p0, v0, v1}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->recordViewNavigation(Landroid/app/Activity;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;)V

    .line 123
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->mRecorded:Z

    goto :goto_4
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->instrument(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->mStartingActivity:Z

    .line 266
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->instrument(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-super {p0, v0, p2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->mStartingActivity:Z

    .line 275
    return-void
.end method

.method public startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .registers 5
    .parameter "fragment"
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 282
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->instrument(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-super {p0, p1, v0, p3}, Landroid/support/v4/app/FragmentActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->mStartingActivity:Z

    .line 284
    return-void
.end method

.method public startExternalActivity(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 167
    const/high16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 168
    invoke-virtual {p0, p1}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->startActivity(Landroid/content/Intent;)V

    .line 169
    return-void
.end method
