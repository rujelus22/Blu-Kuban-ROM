.class Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab$3;
.super Landroid/content/BroadcastReceiver;
.source "CradleMainTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;)V
    .registers 2
    .parameter

    .prologue
    .line 1582
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab$3;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 18
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1584
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1586
    .local v1, action:Ljava/lang/String;
    const-string v11, "CradleMainTab"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onReceive action : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    const-string v11, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_43

    .line 1589
    const-string v11, "time-zone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1590
    .local v10, tz:Ljava/lang/String;
    iget-object v11, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab$3;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;

    new-instance v12, Landroid/text/format/Time;

    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mTime:Landroid/text/format/Time;
    invoke-static {v11, v12}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->access$002(Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;Landroid/text/format/Time;)Landroid/text/format/Time;

    .line 1591
    iget-object v11, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab$3;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;

    invoke-virtual {v11}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->onTimeChanged()V

    .line 1594
    .end local v10           #tz:Ljava/lang/String;
    :cond_43
    const-string v11, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5f

    .line 1595
    iget-object v11, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab$3;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mDate:Ljava/util/Date;
    invoke-static {v11}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->access$100(Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;)Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    .line 1597
    .local v8, time:J
    iget-object v11, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab$3;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;

    invoke-virtual {v11, v8, v9}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->setDataText(J)V

    .line 1600
    iget-object v11, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab$3;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;

    invoke-virtual {v11}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->onTimeChanged()V

    .line 1603
    .end local v8           #time:J
    :cond_5f
    const-string v11, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6d

    .line 1604
    iget-object v11, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab$3;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;

    invoke-virtual {v11}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->onTimeChanged()V

    .line 1717
    :cond_6c
    :goto_6c
    return-void

    .line 1605
    :cond_6d
    const-string v11, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8d

    .line 1606
    iget-object v11, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab$3;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;

    const-string v12, "status"

    const/4 v13, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    const-string v13, "level"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    #calls: Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->handleBatteryUpdate(II)V
    invoke-static {v11, v12, v13}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->access$200(Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;II)V

    goto :goto_6c

    .line 1609
    :cond_8d
    sget-object v11, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a8

    .line 1610
    iget-object v11, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab$3;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;

    iget-boolean v11, v11, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mLaunchedFromDock:Z

    if-eqz v11, :cond_6c

    .line 1612
    const-string v11, "CradleMainTab"

    const-string v12, "exit desk mode, should speaker turn off"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    iget-object v11, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab$3;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;

    invoke-virtual {v11}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->finish()V

    goto :goto_6c

    .line 1626
    :cond_a8
    const-string v11, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_152

    .line 1628
    const-string v11, "android.intent.extra.DOCK_STATE"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1630
    .local v7, state:I
    const-string v11, "CradleMainTab"

    const-string v12, "Dock state - ACTION DOCK EVENT"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    const/4 v11, 0x1

    if-ne v7, v11, :cond_11d

    .line 1634
    const-string v11, "CradleMainTab"

    const-string v12, "Dock state - EXTRA_DOCK_STATE_DESK"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    iget-object v11, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab$3;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;

    iget-object v11, v11, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mPrefs:Landroid/content/SharedPreferences;

    const-string v12, "cradle_internal_speaker"

    const/4 v13, 0x1

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1641
    .local v3, isSpeaker:Z
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1643
    .local v4, sendIntent:Landroid/content/Intent;
    const-string v11, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v4, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1648
    if-eqz v3, :cond_11b

    .line 1649
    const/4 v6, 0x0

    .line 1653
    .local v6, speakerState:I
    :goto_e2
    const-string v11, "state"

    invoke-virtual {v4, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1654
    iget-object v11, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab$3;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;

    invoke-virtual {v11}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1656
    iget-object v11, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab$3;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;

    iget-object v11, v11, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1657
    .local v2, ed:Landroid/content/SharedPreferences$Editor;
    const-string v11, "cradle_connected"

    const/4 v12, 0x1

    invoke-interface {v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1658
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1660
    const-string v11, "CradleMainTab"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "send speaker broadcast state =  "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6c

    .line 1651
    .end local v2           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v6           #speakerState:I
    :cond_11b
    const/4 v6, 0x1

    .restart local v6       #speakerState:I
    goto :goto_e2

    .line 1662
    .end local v3           #isSpeaker:Z
    .end local v4           #sendIntent:Landroid/content/Intent;
    .end local v6           #speakerState:I
    :cond_11d
    if-nez v7, :cond_6c

    .line 1664
    const-string v11, "CradleMainTab"

    const-string v12, "Dock state - EXTRA_DOCK_STATE_UNDOCKED"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1668
    .local v5, sintent:Landroid/content/Intent;
    const-string v11, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v5, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1670
    const-string v11, "state"

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1671
    iget-object v11, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab$3;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;

    invoke-virtual {v11}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1673
    iget-object v11, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab$3;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;

    iget-object v11, v11, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1674
    .restart local v2       #ed:Landroid/content/SharedPreferences$Editor;
    const-string v11, "cradle_connected"

    const/4 v12, 0x0

    invoke-interface {v2, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1675
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_6c

    .line 1678
    .end local v2           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v5           #sintent:Landroid/content/Intent;
    .end local v7           #state:I
    :cond_152
    const-string v11, "com.sec.android.widgetapp.accuweatherdaemon.action.SYNC_DATA_WITH_DAEMON"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_178

    .line 1679
    iget-object v11, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab$3;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->access$300(Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;)Landroid/os/Handler;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab$3;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->access$300(Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x12c0

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1681
    const-string v11, "CradleMainTab"

    const-string v12, "Receice ACTION_WEATHER_SETTING_CHANGED"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6c

    .line 1684
    :cond_178
    const-string v11, "com.sec.android.widgetapp.accuweatherdaemon.action.SYNC_DATA_WITH_WIDGET"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19e

    .line 1685
    iget-object v11, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab$3;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->access$300(Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;)Landroid/os/Handler;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab$3;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->access$300(Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x12c1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1687
    const-string v11, "CradleMainTab"

    const-string v12, "Receice ACTION_WEATHER_DATA_UPDATED"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6c

    .line 1690
    :cond_19e
    const-string v11, "com.sec.android.widgetapp.accuweatherdaemon.action.SYNC_SETTING_WITH_WIDGET"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c4

    .line 1691
    iget-object v11, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab$3;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->access$300(Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;)Landroid/os/Handler;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab$3;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;

    #getter for: Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->mHandler:Landroid/os/Handler;
    invoke-static {v12}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->access$300(Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;)Landroid/os/Handler;

    move-result-object v12

    const/16 v13, 0x12c1

    invoke-virtual {v12, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1693
    const-string v11, "CradleMainTab"

    const-string v12, "Receice ACTION_WEATHER_DATE_SYNC"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6c

    .line 1696
    :cond_1c4
    const-string v11, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6c

    .line 1697
    const-string v11, "CradleMainTab"

    const-string v12, "intent : ACTION_LACALE_CHANGED"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    iget-object v11, p0, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab$3;->this$0:Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;

    #calls: Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->setupViews()V
    invoke-static {v11}, Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;->access$400(Lcom/sec/android/app/clockpackage/deskclock/CradleMainTab;)V

    goto/16 :goto_6c
.end method
