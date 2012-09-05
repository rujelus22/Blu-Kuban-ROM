.class Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;
.super Landroid/telephony/PhoneStateListener;
.source "AlarmReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallListener"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;

.field private mPendingEvent:I

.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;)V
    .registers 3
    .parameter

    .prologue
    .line 1161
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 1163
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->mPendingEvent:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1161
    invoke-direct {p0, p1}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;-><init>(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;)V

    return-void
.end method

.method static synthetic access$102(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1161
    iput p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->mPendingEvent:I

    return p1
.end method

.method static synthetic access$202(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1161
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->mIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;Landroid/content/Context;)Landroid/content/Context;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1161
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->mContext:Landroid/content/Context;

    return-object p1
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 14
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    const/4 v10, 0x3

    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x2

    .line 1172
    if-eqz p1, :cond_8

    if-ne p1, v8, :cond_5e

    .line 1176
    :cond_8
    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->mPendingEvent:I

    if-ne v1, v9, :cond_7c

    .line 1178
    iput v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->mPendingEvent:I

    .line 1180
    new-instance v7, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.voicecommand"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1182
    .local v7, vci:Landroid/content/Intent;
    const-string v1, "command"

    const-string v4, "stop"

    invoke-virtual {v7, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1184
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1186
    new-instance v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    invoke-direct {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;-><init>()V

    .line 1188
    .local v2, item:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->readFromIntent(Landroid/content/Intent;)V

    .line 1190
    iget v1, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    if-ne v1, v10, :cond_5f

    .line 1192
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->mIntent:Landroid/content/Intent;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->launchSmartAlarm(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v1, v4, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->access$400(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    .line 1200
    :goto_38
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->getInstance()Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;

    move-result-object v0

    .line 1203
    .local v0, helper:Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;
    const/4 v3, 0x0

    .line 1205
    .local v3, notificationType:I
    const/4 v6, 0x0

    .line 1207
    .local v6, notificationDuration:I
    iget v1, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    if-eq v1, v9, :cond_46

    iget v1, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    if-ne v1, v8, :cond_69

    .line 1211
    :cond_46
    const v3, 0x10001000

    .line 1213
    const v6, 0xea60

    .line 1224
    :cond_4c
    :goto_4c
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->mContext:Landroid/content/Context;

    int-to-long v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;->notify(Landroid/content/Context;Lcom/sec/android/app/clockpackage/alarm/AlarmItem;IJ)V

    .line 1227
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->mContext:Landroid/content/Context;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->updateAndEnableNextAlarm(Landroid/content/Context;Lcom/sec/android/app/clockpackage/alarm/AlarmItem;)V
    invoke-static {v1, v4, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->access$600(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;Landroid/content/Context;Lcom/sec/android/app/clockpackage/alarm/AlarmItem;)V

    .line 1229
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->destroyListener(I)V
    invoke-static {v1, v9}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->access$700(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;I)V

    .line 1245
    .end local v0           #helper:Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;
    .end local v2           #item:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    .end local v3           #notificationType:I
    .end local v6           #notificationDuration:I
    .end local v7           #vci:Landroid/content/Intent;
    :cond_5e
    :goto_5e
    return-void

    .line 1196
    .restart local v2       #item:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    .restart local v7       #vci:Landroid/content/Intent;
    :cond_5f
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->mIntent:Landroid/content/Intent;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->launchAlarm(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v1, v4, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->access$500(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_38

    .line 1215
    .restart local v0       #helper:Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;
    .restart local v3       #notificationType:I
    .restart local v6       #notificationDuration:I
    :cond_69
    iget v1, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->activate:I

    if-ne v1, v10, :cond_4c

    .line 1217
    const v3, 0x10002000

    .line 1219
    const v1, 0xea60

    sget-object v4, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_DURATION_TABLE:[I

    iget v5, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    aget v4, v4, v5

    mul-int v6, v1, v4

    goto :goto_4c

    .line 1231
    .end local v0           #helper:Lcom/sec/android/app/clockpackage/alarm/NotificationHelper;
    .end local v2           #item:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    .end local v3           #notificationType:I
    .end local v6           #notificationDuration:I
    .end local v7           #vci:Landroid/content/Intent;
    :cond_7c
    if-nez p1, :cond_5e

    iget v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->mPendingEvent:I

    if-ne v1, v8, :cond_5e

    .line 1235
    iput v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->mPendingEvent:I

    .line 1237
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->mContext:Landroid/content/Context;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->launchInfoAlarm(Landroid/content/Context;)V
    invoke-static {v1, v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->access$800(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;Landroid/content/Context;)V

    .line 1239
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver$CallListener;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->destroyListener(I)V
    invoke-static {v1, v8}, Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;->access$700(Lcom/sec/android/app/clockpackage/alarm/AlarmReceiver;I)V

    goto :goto_5e
.end method
