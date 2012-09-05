.class Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$13;
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
    .line 1120
    iput-object p1, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$13;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 1122
    invoke-static {}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$600()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1123
    const-string v0, "AlarmDetail"

    const-string v1, "btnSave onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    :cond_d
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$13;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->mDataChnaged:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1802(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;Z)Z

    .line 1126
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$13;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    invoke-virtual {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->stopPlayer()V

    .line 1127
    iget-object v0, p0, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail$13;->this$0:Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;

    #calls: Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->saveDetailChange()V
    invoke-static {v0}, Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;->access$1900(Lcom/sec/android/app/clockpackage/alarm/AlarmDetail;)V

    .line 1128
    return-void
.end method
