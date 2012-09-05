.class Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm$2;
.super Ljava/lang/Object;
.source "AlarmSmartAlarm.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 197
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm$2;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "view"

    .prologue
    .line 201
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$Player;->stopMediaPlayer()V

    .line 205
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm$2;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm$2;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;

    iget-object v4, v4, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->mDurationAry:[I

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm$2;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->mDuration:Lcom/sec/android/touchwiz/widget/TwRadioGroup;
    invoke-static {v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->access$000(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;)Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->getCheckedRadioButtonId()I

    move-result v5

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->getCheckedButtonIndexFromArray([II)I
    invoke-static {v3, v4, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->access$100(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;[II)I

    move-result v0

    .line 208
    .local v0, duration:I
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm$2;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;

    iget-object v4, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm$2;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;

    iget-object v4, v4, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->mToneAry:[I

    iget-object v5, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm$2;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->mTone:Lcom/sec/android/touchwiz/widget/TwRadioGroup;
    invoke-static {v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->access$200(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;)Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->getCheckedRadioButtonId()I

    move-result v5

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->getCheckedButtonIndexFromArray([II)I
    invoke-static {v3, v4, v5}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->access$100(Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;[II)I

    move-result v2

    .line 211
    .local v2, tone:I
    const/4 v1, 0x1

    .line 213
    .local v1, result:I
    shl-int/lit8 v3, v0, 0x8

    and-int/lit16 v3, v3, 0xf00

    or-int/2addr v1, v3

    .line 215
    shl-int/lit8 v3, v2, 0x4

    and-int/lit16 v3, v3, 0xf0

    or-int/2addr v1, v3

    .line 217
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->access$300()Z

    move-result v3

    if-eqz v3, :cond_54

    .line 219
    const-string v3, "AlarmSmartAlarm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "smart alarm option result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_54
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm$2;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->setResult(I)V

    .line 223
    iget-object v3, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm$2;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;

    invoke-virtual {v3}, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;->finish()V

    .line 225
    return-void
.end method
