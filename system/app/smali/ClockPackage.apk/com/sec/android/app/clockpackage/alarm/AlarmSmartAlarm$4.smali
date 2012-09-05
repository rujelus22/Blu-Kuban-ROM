.class Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm$4;
.super Ljava/lang/Object;
.source "AlarmSmartAlarm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->setClickListener()V
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
    .line 255
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 259
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_32

    .line 303
    :goto_7
    :pswitch_7
    return-void

    .line 271
    :pswitch_8
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->stopMediaPlayer()V

    goto :goto_7

    .line 285
    :pswitch_c
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->stopMediaPlayer()V

    .line 287
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;

    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;

    iget-object v3, v3, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->mToneAry:[I

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->mTone:Lcom/sec/android/touchwiz/widget/TwRadioGroup;
    invoke-static {v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->access$200(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;)Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->getCheckedRadioButtonId()I

    move-result v4

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->getCheckedButtonIndexFromArray([II)I
    invoke-static {v2, v3, v4}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->access$100(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;[II)I

    move-result v0

    .line 290
    .local v0, tone:I
    sget-object v2, Lcom/sec/android/app/clockpackage/alarm/Alarm;->ALARM_SUBDUE_URI:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 292
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm$4;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;

    invoke-static {v2, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->playMediaPlayer(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_7

    .line 259
    nop

    :pswitch_data_32
    .packed-switch 0x7f0e0051
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method
