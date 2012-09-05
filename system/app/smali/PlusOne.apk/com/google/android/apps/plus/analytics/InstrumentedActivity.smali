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
    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private static getStartTime(Landroid/content/Intent;)J
    .registers 4
    .parameter "intent"

    .prologue
    .line 222
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
    .line 212
    const-string v1, "com.google.plus.analytics.intent.extra.START_VIEW"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 213
    .local v0, number:I
    invoke-static {v0}, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->valueOf(I)Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    move-result-object v1

    return-object v1
.end method

.method private instrument(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 8
    .parameter "intent"

    .prologue
    .line 346
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    move-result-object v2

    .line 347
    .local v2, view:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    if-eqz v2, :cond_1e

    .line 348
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_b
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_b} :catch_20

    .line 349
    .end local p1
    .local v1, intent:Landroid/content/Intent;
    :try_start_b
    const-string v3, "com.google.plus.analytics.intent.extra.START_VIEW"

    invoke-virtual {v2}, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;->getNumber()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 350
    const-string v3, "com.google.plus.analytics.intent.extra.START_TIME"

    invoke-static {}, Lcom/google/android/apps/plus/analytics/AnalyticsClock;->now()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_1d
    .catch Landroid/os/BadParcelableException; {:try_start_b .. :try_end_1d} :catch_33

    move-object p1, v1

    .end local v1           #intent:Landroid/content/Intent;
    .restart local p1
    :cond_1e
    move-object v1, p1

    .line 361
    .end local v2           #view:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    .end local p1
    .restart local v1       #intent:Landroid/content/Intent;
    :goto_1f
    return-object v1

    .line 353
    .end local v1           #intent:Landroid/content/Intent;
    .restart local p1
    :catch_20
    move-exception v0

    .line 358
    .local v0, e:Landroid/os/BadParcelableException;
    :goto_21
    const-string v3, "InstrumentedActivity"

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/google/android/apps/plus/util/EsLog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 359
    const-string v3, "InstrumentedActivity"

    const-string v4, "Unable to instrument Intent"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_31
    move-object v1, p1

    .line 361
    .end local p1
    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_1f

    .line 353
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
    .line 315
    const-string v2, "keyguard"

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 316
    .local v0, keyguard:Landroid/app/KeyguardManager;
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 317
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
    .line 175
    invoke-virtual {p0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    move-result-object v1

    .line 176
    .local v1, view:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 177
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v0, :cond_f

    if-eqz v1, :cond_f

    .line 178
    invoke-static {p0, v0, v1}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->recordReverseViewNavigation(Landroid/app/Activity;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;)V

    .line 180
    :cond_f
    return-void
.end method

.method public static recordReverseViewNavigation(Landroid/app/Activity;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;)V
    .registers 9
    .parameter "activity"
    .parameter "account"
    .parameter "view"

    .prologue
    .line 161
    move-object v2, p2

    .line 162
    .local v2, from:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->getStartView(Landroid/content/Intent;)Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    move-result-object v5

    .line 163
    .local v5, to:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    if-eqz v5, :cond_12

    .line 165
    const-wide/16 v3, -0x1

    .local v3, startTime:J
    move-object v0, p0

    move-object v1, p1

    .line 166
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordViewNavigationEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;JLcom/google/wireless/tacotruck/proto/Logging$Targets$Views;)V

    .line 168
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
    .line 138
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 139
    .local v6, intent:Landroid/content/Intent;
    invoke-static {v6}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->getStartView(Landroid/content/Intent;)Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    move-result-object v2

    .line 140
    .local v2, startView:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    invoke-static {v6}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->getStartTime(Landroid/content/Intent;)J

    move-result-wide v3

    .local v3, startTime:J
    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 141
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordViewNavigationEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;JLcom/google/wireless/tacotruck/proto/Logging$Targets$Views;)V

    .line 142
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 2

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->mStartingActivity:Z

    if-eqz v0, :cond_8

    .line 333
    :goto_4
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 334
    return-void

    .line 328
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 329
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->EXIT:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    goto :goto_4

    .line 331
    :cond_14
    invoke-direct {p0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->recordReverseViewNavigation()V

    goto :goto_4
.end method

.method protected abstract getAccount()Lcom/google/android/apps/plus/content/EsAccount;
.end method

.method protected abstract getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
.end method

.method protected needsAsyncData()Z
    .registers 2

    .prologue
    .line 388
    const/4 v0, 0x0

    return v0
.end method

.method public onAsyncData()V
    .registers 1

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->recordViewNavigation()V

    .line 274
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    if-eqz p1, :cond_15

    .line 60
    const-string v0, "analytics:recorded"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->mRecorded:Z

    .line 61
    const-string v0, "analytics:exited"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->mExited:Z

    .line 63
    :cond_15
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 8
    .parameter "intent"

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 86
    invoke-static {p1}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->getStartView(Landroid/content/Intent;)Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    move-result-object v2

    .line 87
    .local v2, startView:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    move-result-object v5

    .line 88
    .local v5, endView:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    move-object v0, p0

    .line 89
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v1

    .line 90
    .local v1, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v1, :cond_1d

    if-eqz v2, :cond_1d

    if-eqz v5, :cond_1d

    if-eq v2, v5, :cond_1d

    .line 92
    const-wide/16 v3, -0x1

    .line 93
    .local v3, startTime:J
    invoke-static/range {v0 .. v5}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordViewNavigationEvent(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;JLcom/google/wireless/tacotruck/proto/Logging$Targets$Views;)V

    .line 95
    .end local v3           #startTime:J
    :cond_1d
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 299
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->mStartingActivity:Z

    .line 304
    invoke-direct {p0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->isScreenLocked()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 306
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->EXIT:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->mExited:Z

    .line 309
    :cond_14
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 281
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 283
    invoke-virtual {p0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->needsAsyncData()Z

    move-result v0

    if-nez v0, :cond_c

    .line 284
    invoke-virtual {p0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->recordViewNavigation()V

    .line 287
    :cond_c
    iget-boolean v0, p0, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->mExited:Z

    if-eqz v0, :cond_18

    .line 289
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->LAUNCH:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->mExited:Z

    .line 292
    :cond_18
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "outState"

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 71
    const-string v0, "analytics:recorded"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->mRecorded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 72
    const-string v0, "analytics:exited"

    iget-boolean v1, p0, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->mExited:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 73
    return-void
.end method

.method protected onUserLeaveHint()V
    .registers 2

    .prologue
    .line 257
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onUserLeaveHint()V

    .line 258
    iget-boolean v0, p0, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->mStartingActivity:Z

    if-eqz v0, :cond_8

    .line 266
    :goto_7
    return-void

    .line 263
    :cond_8
    sget-object v0, Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;->EXIT:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->mExited:Z

    goto :goto_7
.end method

.method protected final recordUserAction(Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V
    .registers 3
    .parameter "action"

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 189
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v0, :cond_9

    .line 190
    invoke-static {p0, v0, p1}, Lcom/google/android/apps/plus/analytics/EsAnalytics;->recordUserAction(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Action;)V

    .line 192
    :cond_9
    return-void
.end method

.method protected final recordViewNavigation()V
    .registers 4

    .prologue
    .line 111
    iget-boolean v2, p0, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->mRecorded:Z

    if-eqz v2, :cond_5

    .line 120
    :goto_4
    return-void

    .line 114
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->getViewForLogging()Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;

    move-result-object v1

    .line 115
    .local v1, endView:Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;
    invoke-virtual {p0}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->getAccount()Lcom/google/android/apps/plus/content/EsAccount;

    move-result-object v0

    .line 116
    .local v0, account:Lcom/google/android/apps/plus/content/EsAccount;
    if-eqz v0, :cond_14

    if-eqz v1, :cond_14

    .line 117
    invoke-static {p0, v0, v1}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->recordViewNavigation(Landroid/app/Activity;Lcom/google/android/apps/plus/content/EsAccount;Lcom/google/wireless/tacotruck/proto/Logging$Targets$Views;)V

    .line 119
    :cond_14
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->mRecorded:Z

    goto :goto_4
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 3
    .parameter "intent"

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->instrument(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->mStartingActivity:Z

    .line 232
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->instrument(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-super {p0, v0, p2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->mStartingActivity:Z

    .line 241
    return-void
.end method

.method public startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .registers 5
    .parameter "fragment"
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 248
    invoke-direct {p0, p2}, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->instrument(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-super {p0, p1, v0, p3}, Landroid/support/v4/app/FragmentActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/plus/analytics/InstrumentedActivity;->mStartingActivity:Z

    .line 250
    return-void
.end method
