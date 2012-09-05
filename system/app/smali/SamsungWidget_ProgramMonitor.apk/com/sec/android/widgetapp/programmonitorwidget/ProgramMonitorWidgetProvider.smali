.class public Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "ProgramMonitorWidgetProvider.java"


# static fields
.field static final DBG:Z

.field static final DEBUG_2:Z


# instance fields
.field private final GET_RUNNING_APPLICATION_COUNT:I

.field private final GET_RUNNING_APPLICATION_COUNT_AGAIN:I

.field private final PROCESS_CPU_WARNING:I

.field mContext:Landroid/content/Context;

.field protected mHandler:Landroid/os/Handler;

.field private program_monitor_number_text_color:I

.field private program_monitor_number_text_color_noti3:I

.field private program_monitor_slide_text_color_normal:I

.field private program_monitor_slide_text_color_noti_1:I

.field private program_monitor_slide_text_color_noti_2:I

.field private program_monitor_slide_text_color_noti_3:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 24
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_13

    :goto_a
    sput-boolean v0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->DBG:Z

    .line 25
    sget-boolean v0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->DBG:Z

    if-eqz v0, :cond_10

    :cond_10
    sput-boolean v1, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->DEBUG_2:Z

    return-void

    :cond_13
    move v0, v1

    .line 24
    goto :goto_a
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/16 v2, -0x5900

    const/high16 v1, -0x1

    .line 21
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 42
    iput v2, p0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->program_monitor_number_text_color:I

    .line 43
    iput v1, p0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->program_monitor_number_text_color_noti3:I

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->program_monitor_slide_text_color_normal:I

    .line 45
    iput v2, p0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->program_monitor_slide_text_color_noti_1:I

    .line 46
    const v0, -0xba0100

    iput v0, p0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->program_monitor_slide_text_color_noti_2:I

    .line 47
    iput v1, p0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->program_monitor_slide_text_color_noti_3:I

    .line 225
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->GET_RUNNING_APPLICATION_COUNT:I

    .line 226
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->PROCESS_CPU_WARNING:I

    .line 227
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->GET_RUNNING_APPLICATION_COUNT_AGAIN:I

    .line 229
    new-instance v0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider$1;

    invoke-direct {v0, p0}, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider$1;-><init>(Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;)V

    iput-object v0, p0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private isProgramMonitorWidgetRemoteServiceRunning(Landroid/content/Context;)Z
    .registers 9
    .parameter "context"

    .prologue
    .line 263
    const/16 v0, 0x64

    .line 264
    .local v0, MAX_NUM:I
    const/4 v1, 0x0

    .line 267
    .local v1, found:Z
    const-string v5, "activity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 269
    .local v3, manager:Landroid/app/ActivityManager;
    invoke-virtual {v3, v0}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v4

    .line 270
    .local v4, service_list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 271
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 272
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.sec.android.app.controlpanel.service.ProgramMonitorRemoteService"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 273
    const/4 v1, 0x1

    .line 277
    :cond_2e
    return v1
.end method


# virtual methods
.method public buildUpdate(Landroid/content/Context;I)Landroid/widget/RemoteViews;
    .registers 16
    .parameter "context"
    .parameter "appWidgetId"

    .prologue
    const v12, 0x7f020001

    const v11, 0x7f080001

    const v10, 0x7f080002

    const v9, 0x7f080003

    .line 90
    sget-boolean v6, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->DBG:Z

    if-eqz v6, :cond_28

    .line 91
    const-string v6, "ProgramMonitorWidgetProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "buildUpdate appWidgetId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_28
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/high16 v7, 0x7f03

    invoke-direct {v3, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 95
    .local v3, rv:Landroid/widget/RemoteViews;
    sget-boolean v6, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorState;->isCpuWarning:Z

    if-eqz v6, :cond_9c

    .line 97
    sget-object v4, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorState;->warningLevel:Ljava/lang/String;

    .line 98
    .local v4, warningLevel:Ljava/lang/String;
    sget-object v5, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorState;->warningMsg:Ljava/lang/String;

    .line 100
    .local v5, warningMsg:Ljava/lang/String;
    const-string v6, "level1"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_75

    .line 101
    iget v6, p0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->program_monitor_number_text_color:I

    invoke-virtual {v3, v10, v6}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 102
    iget v6, p0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->program_monitor_slide_text_color_noti_2:I

    invoke-virtual {v3, v9, v6}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 103
    const v6, 0x7f020002

    invoke-virtual {v3, v11, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 113
    :goto_53
    invoke-virtual {v3, v9, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 122
    .end local v4           #warningLevel:Ljava/lang/String;
    .end local v5           #warningMsg:Ljava/lang/String;
    :goto_56
    invoke-static {}, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorState;->getRunningPackageCount()I

    move-result v0

    .line 123
    .local v0, count:I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v10, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 125
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.sec.android.widgetapp.programmonitorwidget.APPWIDGET_CLICKED"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    .local v1, intent:Landroid/content/Intent;
    const/4 v6, 0x0

    const/high16 v7, 0x800

    invoke-static {p1, v6, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 127
    .local v2, pi:Landroid/app/PendingIntent;
    const/high16 v6, 0x7f08

    invoke-virtual {v3, v6, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 129
    return-object v3

    .line 104
    .end local v0           #count:I
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #pi:Landroid/app/PendingIntent;
    .restart local v4       #warningLevel:Ljava/lang/String;
    .restart local v5       #warningMsg:Ljava/lang/String;
    :cond_75
    const-string v6, "level2"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8e

    .line 105
    iget v6, p0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->program_monitor_number_text_color_noti3:I

    invoke-virtual {v3, v10, v6}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 106
    iget v6, p0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->program_monitor_slide_text_color_noti_3:I

    invoke-virtual {v3, v9, v6}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 107
    const v6, 0x7f020003

    invoke-virtual {v3, v11, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_53

    .line 109
    :cond_8e
    iget v6, p0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->program_monitor_number_text_color:I

    invoke-virtual {v3, v10, v6}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 110
    iget v6, p0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->program_monitor_slide_text_color_noti_1:I

    invoke-virtual {v3, v9, v6}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 111
    invoke-virtual {v3, v11, v12}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_53

    .line 116
    .end local v4           #warningLevel:Ljava/lang/String;
    .end local v5           #warningMsg:Ljava/lang/String;
    :cond_9c
    iget v6, p0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->program_monitor_number_text_color:I

    invoke-virtual {v3, v10, v6}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 117
    iget v6, p0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->program_monitor_slide_text_color_normal:I

    invoke-virtual {v3, v9, v6}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 118
    invoke-virtual {v3, v11, v12}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 119
    iget-object v6, p0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v9, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_56
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .registers 5
    .parameter "context"
    .parameter "appWidgetIds"

    .prologue
    .line 134
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 135
    sget-boolean v0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->DBG:Z

    if-eqz v0, :cond_e

    .line 136
    const-string v0, "ProgramMonitorWidgetProvider"

    const-string v1, "onDeleted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_e
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .registers 4
    .parameter "context"

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 143
    sget-boolean v0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->DBG:Z

    if-eqz v0, :cond_e

    .line 144
    const-string v0, "ProgramMonitorWidgetProvider"

    const-string v1, "onDisabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_e
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.programmonitor.service.REMOTE_SERVICE_STOP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 147
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .registers 7
    .parameter "context"

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 53
    sget-boolean v1, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->DBG:Z

    if-eqz v1, :cond_e

    .line 54
    const-string v1, "ProgramMonitorWidgetProvider"

    const-string v2, "onEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_e
    iput-object p1, p0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->mContext:Landroid/content/Context;

    .line 56
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.programmonitor.service.REMOTE_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 58
    const/4 v1, 0x0

    sput-boolean v1, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorState;->isCpuWarning:Z

    .line 59
    new-instance v0, Landroid/content/Intent;

    const-string v1, "ProgramMonitorRemoteService.UPDATE_RUNNING_COUNT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 62
    iget-object v1, p0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 63
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .parameter
    .parameter

    .prologue
    const-wide/16 v9, 0xbb8

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-wide/16 v5, 0x3e8

    const/4 v4, 0x3

    .line 153
    sget-boolean v0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->DBG:Z

    if-eqz v0, :cond_23

    .line 154
    const-string v0, "ProgramMonitorWidgetProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_23
    if-nez p2, :cond_26

    .line 223
    :cond_25
    :goto_25
    return-void

    .line 158
    :cond_26
    iput-object p1, p0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->mContext:Landroid/content/Context;

    .line 160
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sec.android.intent.action.HOME_RESUME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 161
    iget-object v0, p0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 162
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 164
    array-length v0, v0

    .line 165
    sget-boolean v1, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->DBG:Z

    if-eqz v1, :cond_6c

    .line 166
    const-string v1, "ProgramMonitorWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive : ACTION_HOME_RESUME is called!! installedCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_6c
    if-lt v0, v8, :cond_25

    .line 171
    sput-boolean v7, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorState;->isCpuWarning:Z

    .line 172
    invoke-direct {p0, p1}, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->isProgramMonitorWidgetRemoteServiceRunning(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_96

    .line 174
    sget-boolean v0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->DBG:Z

    if-eqz v0, :cond_81

    .line 175
    const-string v0, "ProgramMonitorWidgetProvider"

    const-string v1, "onUpdate  ProgramMonitorRemoteService is dead, so we start again"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_81
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.programmonitor.service.REMOTE_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 179
    iget-object v0, p0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 180
    iget-object v0, p0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_25

    .line 187
    :cond_96
    iget-object v0, p0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 188
    iget-object v0, p0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 222
    :cond_a0
    :goto_a0
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_25

    .line 190
    :cond_a4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.widgetapp.programmonitorwidget.APPWIDGET_CLICKED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 191
    sget-boolean v0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->DBG:Z

    if-eqz v0, :cond_bb

    .line 192
    const-string v0, "ProgramMonitorWidgetProvider"

    const-string v1, "onReceive : WIDGET_CLICKED is called!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_bb
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.controlpanel.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 195
    const-string v1, "monitor_widget_start"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 196
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 197
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 198
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_a0

    .line 199
    :cond_d5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProgramMonitorRemoteService.RETURN_RUNNING_COUNT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11b

    .line 200
    sget-boolean v0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->DBG:Z

    if-eqz v0, :cond_ec

    .line 201
    const-string v0, "ProgramMonitorWidgetProvider"

    const-string v1, "onReceive : RETURN_RUNNING_APPS_COUNT is called!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_ec
    const-string v0, "extra_running_count"

    invoke-virtual {p2, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 203
    sget-boolean v1, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->DBG:Z

    if-eqz v1, :cond_10e

    .line 204
    const-string v1, "ProgramMonitorWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive : RETURN_RUNNING_APPS_COUNT count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_10e
    invoke-static {v0}, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorState;->setRunningPackageCount(I)V

    .line 206
    invoke-virtual {p0, p1}, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->onUpdate(Landroid/content/Context;)V

    .line 208
    iget-object v0, p0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_a0

    .line 209
    :cond_11b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProgramMonitorRemoteService.RETURN_CPU_USAGE_WARN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a0

    .line 210
    sget-boolean v0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->DBG:Z

    if-eqz v0, :cond_132

    .line 211
    const-string v0, "ProgramMonitorWidgetProvider"

    const-string v1, "onReceive : RETURN_CPU_USAGE_WARN is called!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_132
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 214
    if-eqz v0, :cond_13b

    .line 216
    invoke-static {v0}, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorState;->setCpuData(Landroid/os/Bundle;)V

    .line 219
    :cond_13b
    iget-object v0, p0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->onUpdate(Landroid/content/Context;)V

    goto/16 :goto_a0
.end method

.method public onUpdate(Landroid/content/Context;)V
    .registers 6
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 83
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 85
    iget-object v2, p0, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v0, v1}, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 86
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 8
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 68
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 70
    sget-boolean v2, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->DBG:Z

    if-eqz v2, :cond_e

    .line 71
    const-string v2, "ProgramMonitorWidgetProvider"

    const-string v3, "onUpdate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_e
    const/4 v0, 0x0

    .local v0, i:I
    :goto_f
    array-length v2, p3

    if-ge v0, v2, :cond_20

    .line 74
    aget v2, p3, v0

    invoke-virtual {p0, p1, v2}, Lcom/sec/android/widgetapp/programmonitorwidget/ProgramMonitorWidgetProvider;->buildUpdate(Landroid/content/Context;I)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 75
    .local v1, rv:Landroid/widget/RemoteViews;
    aget v2, p3, v0

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 78
    .end local v1           #rv:Landroid/widget/RemoteViews;
    :cond_20
    return-void
.end method
