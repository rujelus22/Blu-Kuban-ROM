.class public Lcom/locationlabs/v3client/feature/calldetection/CallDetectionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "a"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .registers 4
    .parameter

    .prologue
    .line 56
    const-string v0, "CALL_STATE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 57
    const-string v1, "CALL_ANSWERED_KEY"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 58
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 59
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;ZJ)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    const-string v0, "CALL_STATE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 119
    const-string v1, "NUMBER_KEY"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 120
    const-string v1, "INCOMING_KEY"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 121
    const-string v1, "START_KEY"

    invoke-interface {v0, v1, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 122
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 123
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .parameter
    .parameter

    .prologue
    .line 30
    if-nez p2, :cond_3

    .line 53
    :cond_2
    :goto_2
    return-void

    .line 31
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 33
    invoke-static {p1}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v0

    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.PHONE_STATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_129

    .line 35
    const-string v1, "state"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    sget-object v2, Ldg;->w:Ldg;

    invoke-interface {v0, v2}, Lw;->a(Ldg;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 39
    const-string v0, "incoming_number"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-static {p1, v0, v3, v1, v2}, Lcom/locationlabs/v3client/feature/calldetection/CallDetectionReceiver;->a(Landroid/content/Context;Ljava/lang/String;ZJ)V

    goto :goto_2

    .line 42
    :cond_42
    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    sget-object v2, Ldg;->w:Ldg;

    invoke-interface {v0, v2}, Lw;->a(Ldg;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 44
    invoke-static {p1}, Lcom/locationlabs/v3client/feature/calldetection/CallDetectionReceiver;->a(Landroid/content/Context;)V

    goto :goto_2

    .line 45
    :cond_5a
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-string v0, "CALL_STATE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "NUMBER_KEY"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f4

    const/4 v0, 0x0

    :goto_77
    const-string v1, "CALL_STATE"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "CALL_ANSWERED_KEY"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "CALL_STATE"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eqz v0, :cond_2

    if-nez v1, :cond_10c

    const-wide/16 v1, 0x0

    :goto_9c
    iget-boolean v3, v0, Lap;->b:Z

    iget-object v4, v0, Lap;->a:Ljava/lang/String;

    iget-wide v5, v0, Lap;->c:J

    new-instance v9, Lbt;

    invoke-direct {v9}, Lbt;-><init>()V

    if-eqz v3, :cond_111

    const-string v3, "incoming"

    :goto_ab
    invoke-virtual {v9, v3}, Lbt;->setType(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Lbt;->setNumber(Ljava/lang/String;)V

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v9, v1, v2}, Lbt;->setDuration(J)V

    const-wide/16 v1, 0x3e8

    div-long v1, v5, v1

    invoke-virtual {v9, v1, v2}, Lbt;->setTime(J)V

    new-instance v1, Lcg;

    invoke-direct {v1}, Lcg;-><init>()V

    const-wide/16 v2, 0x3e8

    div-long v2, v7, v2

    invoke-virtual {v1, v2, v3}, Lcg;->setTime(J)V

    const/4 v2, 0x1

    new-array v2, v2, [Lbt;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcg;->mergeCallActivityNotifications(Ljava/util/Collection;)V

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lcom/locationlabs/v3client/V3ApiService;->a(Landroid/content/Context;Lcg;Z)V

    invoke-static {p1}, Lal;->a(Landroid/content/Context;)Lw;

    move-result-object v1

    iget-boolean v2, v0, Lap;->b:Z

    if-eqz v2, :cond_114

    sget-object v2, Ldg;->w:Ldg;

    invoke-interface {v1, v2}, Lw;->a(Ldg;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_114

    invoke-interface {v1, v7, v8}, Lw;->e(J)V

    goto/16 :goto_2

    :cond_f4
    const-string v2, "INCOMING_KEY"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "START_KEY"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    new-instance v0, Lap;

    const-wide/16 v5, -0x1

    invoke-direct/range {v0 .. v6}, Lap;-><init>(Ljava/lang/String;ZJJ)V

    goto/16 :goto_77

    :cond_10c
    iget-wide v1, v0, Lap;->c:J

    sub-long v1, v7, v1

    goto :goto_9c

    :cond_111
    const-string v3, "outgoing"

    goto :goto_ab

    :cond_114
    iget-boolean v0, v0, Lap;->b:Z

    if-nez v0, :cond_2

    sget-object v0, Ldg;->x:Ldg;

    invoke-interface {v1, v0}, Lw;->a(Ldg;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1, v7, v8}, Lw;->f(J)V

    goto/16 :goto_2

    .line 48
    :cond_129
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Ldg;->x:Ldg;

    invoke-interface {v0, v1}, Lw;->a(Ldg;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    const-string v0, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {p1, v0, v3, v1, v2}, Lcom/locationlabs/v3client/feature/calldetection/CallDetectionReceiver;->a(Landroid/content/Context;Ljava/lang/String;ZJ)V

    invoke-static {p1}, Lcom/locationlabs/v3client/feature/calldetection/CallDetectionReceiver;->a(Landroid/content/Context;)V

    goto/16 :goto_2
.end method
