.class Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$11;
.super Ljava/lang/Object;
.source "AlarmDetail.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;


# direct methods
.method constructor <init>(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V
    .registers 2
    .parameter

    .prologue
    .line 1022
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$11;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .parameter

    .prologue
    .line 1024
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1025
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$11;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-virtual {v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/clockpackage/alarm/AlarmSmartAlarm;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1028
    const-string v1, "smart_duration"

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$11;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1200(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    move-result-object v2

    iget v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueDuration:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1029
    const-string v1, "smart_repeat"

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$11;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1200(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    move-result-object v2

    iget v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->subdueTone:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1030
    const-string v1, "volume_level"

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$11;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mVolume:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1300(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1031
    const-string v1, "tone_type"

    iget-object v2, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$11;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #getter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mItem:Lcom/sec/android/app/clockpackage/alarm/AlarmItem;
    invoke-static {v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1200(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)Lcom/sec/android/app/clockpackage/alarm/AlarmItem;

    move-result-object v2

    iget v2, v2, Lcom/sec/android/app/clockpackage/alarm/AlarmItem;->alarmSoundType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1032
    iget-object v1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$11;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    const/16 v2, 0x1003

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1033
    return-void
.end method