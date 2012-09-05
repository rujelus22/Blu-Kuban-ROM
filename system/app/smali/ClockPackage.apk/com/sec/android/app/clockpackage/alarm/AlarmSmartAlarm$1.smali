.class Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm$1;
.super Ljava/lang/Object;
.source "AlarmSmartAlarm.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwRadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;)V
    .registers 2
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwRadioGroup;I)V
    .registers 10
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 160
    const/4 v3, 0x0

    .line 162
    .local v3, index:I
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->stopMediaPlayer()V

    .line 166
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;

    iget-object v0, v6, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->mToneAry:[I

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_a
    if-ge v1, v4, :cond_10

    aget v2, v0, v1

    .line 168
    .local v2, id:I
    if-ne v2, p2, :cond_26

    .line 176
    .end local v2           #id:I
    :cond_10
    if-ltz v3, :cond_17

    sget-object v6, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_SUBDUE_URI:[Ljava/lang/String;

    array-length v6, v6

    if-lt v3, v6, :cond_18

    .line 178
    :cond_17
    const/4 v3, 0x0

    .line 182
    :cond_18
    sget-object v6, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_SUBDUE_URI:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 184
    .local v5, uri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm$1;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;

    invoke-static {v6, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->playMediaPlayer(Landroid/content/Context;Landroid/net/Uri;)V

    .line 187
    return-void

    .line 172
    .end local v5           #uri:Landroid/net/Uri;
    .restart local v2       #id:I
    :cond_26
    add-int/lit8 v3, v3, 0x1

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method
