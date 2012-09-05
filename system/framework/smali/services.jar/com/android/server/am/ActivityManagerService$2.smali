.class Lcom/android/server/am/ActivityManagerService$2;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 921
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 52
    .parameter "msg"

    .prologue
    .line 927
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_6f8

    .line 1362
    :cond_7
    :goto_7
    return-void

    .line 929
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/util/HashMap;

    .line 930
    .local v23, data:Ljava/util/HashMap;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 931
    :try_start_15
    const-string v4, "app"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/android/server/am/ProcessRecord;

    .line 932
    .local v40, proc:Lcom/android/server/am/ProcessRecord;
    if-eqz v40, :cond_46

    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_46

    .line 933
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "App already has crash dialog: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    monitor-exit v5

    goto :goto_7

    .line 957
    .end local v40           #proc:Lcom/android/server/am/ProcessRecord;
    :catchall_43
    move-exception v4

    monitor-exit v5
    :try_end_45
    .catchall {:try_start_15 .. :try_end_45} :catchall_43

    throw v4

    .line 936
    .restart local v40       #proc:Lcom/android/server/am/ProcessRecord;
    :cond_46
    :try_start_46
    const-string v4, "result"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/server/am/AppErrorResult;

    .line 937
    .local v44, res:Lcom/android/server/am/AppErrorResult;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v4, :cond_b7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v4, :cond_b7

    .line 939
    const/16 v22, 0x0

    .line 941
    .local v22, d:Landroid/app/Dialog;
    invoke-static {}, Lcom/samsung/CustomerCrashReport;->isCCRInstalled()Z

    move-result v4

    if-eqz v4, :cond_a5

    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-nez v4, :cond_a5

    .line 942
    const-string v4, "ActivityManager"

    const-string v6, "This device is CCR target. it will make CCR button"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    const-string v4, "crashInfo"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/app/ApplicationErrorReport$CrashInfo;

    .line 945
    .local v21, crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;
    new-instance v22, Lcom/android/server/am/AppErrorDialog;

    .end local v22           #d:Landroid/app/Dialog;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    move-object/from16 v1, v44

    move-object/from16 v2, v40

    move-object/from16 v3, v21

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 949
    .end local v21           #crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;
    .restart local v22       #d:Landroid/app/Dialog;
    :goto_92
    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog;->show()V

    .line 950
    move-object/from16 v0, v22

    move-object/from16 v1, v40

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 957
    .end local v22           #d:Landroid/app/Dialog;
    :goto_9b
    monitor-exit v5
    :try_end_9c
    .catchall {:try_start_46 .. :try_end_9c} :catchall_43

    .line 959
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_7

    .line 947
    .restart local v22       #d:Landroid/app/Dialog;
    :cond_a5
    :try_start_a5
    new-instance v22, Lcom/android/server/am/AppErrorDialog;

    .end local v22           #d:Landroid/app/Dialog;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    move-object/from16 v1, v44

    move-object/from16 v2, v40

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    .restart local v22       #d:Landroid/app/Dialog;
    goto :goto_92

    .line 955
    .end local v22           #d:Landroid/app/Dialog;
    :cond_b7
    const/4 v4, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_bd
    .catchall {:try_start_a5 .. :try_end_bd} :catchall_43

    goto :goto_9b

    .line 962
    .end local v23           #data:Ljava/util/HashMap;
    .end local v40           #proc:Lcom/android/server/am/ProcessRecord;
    .end local v44           #res:Lcom/android/server/am/AppErrorResult;
    :sswitch_be
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v49, v0

    monitor-enter v49

    .line 963
    :try_start_c5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/util/HashMap;

    .line 964
    .restart local v23       #data:Ljava/util/HashMap;
    const-string v4, "app"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/android/server/am/ProcessRecord;

    .line 965
    .restart local v40       #proc:Lcom/android/server/am/ProcessRecord;
    if-eqz v40, :cond_ff

    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_ff

    .line 966
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App already has anr dialog: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    monitor-exit v49

    goto/16 :goto_7

    .line 982
    .end local v23           #data:Ljava/util/HashMap;
    .end local v40           #proc:Lcom/android/server/am/ProcessRecord;
    :catchall_fc
    move-exception v4

    monitor-exit v49
    :try_end_fe
    .catchall {:try_start_c5 .. :try_end_fe} :catchall_fc

    throw v4

    .line 970
    .restart local v23       #data:Ljava/util/HashMap;
    .restart local v40       #proc:Lcom/android/server/am/ProcessRecord;
    :cond_ff
    :try_start_ff
    new-instance v7, Landroid/content/Intent;

    const-string v4, "android.intent.action.ANR"

    invoke-direct {v7, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 971
    .local v7, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v4, :cond_113

    .line 972
    const/high16 v4, 0x4000

    invoke-virtual {v7, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 974
    :cond_113
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    sget v16, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v17, 0x3e8

    #calls: Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZII)I
    invoke-static/range {v4 .. v17}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZII)I

    .line 978
    new-instance v22, Lcom/android/server/am/AppNotRespondingDialog;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v22

    move-object/from16 v1, v40

    invoke-direct {v0, v5, v6, v1, v4}, Lcom/android/server/am/AppNotRespondingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 980
    .restart local v22       #d:Landroid/app/Dialog;
    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog;->show()V

    .line 981
    move-object/from16 v0, v22

    move-object/from16 v1, v40

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    .line 982
    monitor-exit v49
    :try_end_14f
    .catchall {:try_start_ff .. :try_end_14f} :catchall_fc

    .line 984
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_7

    .line 987
    .end local v7           #intent:Landroid/content/Intent;
    .end local v22           #d:Landroid/app/Dialog;
    .end local v23           #data:Ljava/util/HashMap;
    .end local v40           #proc:Lcom/android/server/am/ProcessRecord;
    :sswitch_158
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/util/HashMap;

    .line 988
    .local v24, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 989
    :try_start_165
    const-string v4, "app"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Lcom/android/server/am/ProcessRecord;

    .line 990
    .restart local v40       #proc:Lcom/android/server/am/ProcessRecord;
    if-nez v40, :cond_17e

    .line 991
    const-string v4, "ActivityManager"

    const-string v6, "App not found when showing strict mode dialog."

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    monitor-exit v5

    goto/16 :goto_7

    .line 1008
    .end local v40           #proc:Lcom/android/server/am/ProcessRecord;
    :catchall_17b
    move-exception v4

    monitor-exit v5
    :try_end_17d
    .catchall {:try_start_165 .. :try_end_17d} :catchall_17b

    throw v4

    .line 994
    .restart local v40       #proc:Lcom/android/server/am/ProcessRecord;
    :cond_17e
    :try_start_17e
    move-object/from16 v0, v40

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_1a1

    .line 995
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "App already has strict mode dialog: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v40

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    monitor-exit v5

    goto/16 :goto_7

    .line 998
    :cond_1a1
    const-string v4, "result"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/server/am/AppErrorResult;

    .line 999
    .restart local v44       #res:Lcom/android/server/am/AppErrorResult;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v4, :cond_1df

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v4, :cond_1df

    .line 1000
    new-instance v22, Lcom/android/server/am/StrictModeViolationDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    move-object/from16 v1, v44

    move-object/from16 v2, v40

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/am/StrictModeViolationDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    .line 1001
    .restart local v22       #d:Landroid/app/Dialog;
    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog;->show()V

    .line 1002
    move-object/from16 v0, v22

    move-object/from16 v1, v40

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 1008
    .end local v22           #d:Landroid/app/Dialog;
    :goto_1d5
    monitor-exit v5
    :try_end_1d6
    .catchall {:try_start_17e .. :try_end_1d6} :catchall_17b

    .line 1009
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_7

    .line 1006
    :cond_1df
    const/4 v4, 0x0

    :try_start_1e0
    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_1e5
    .catchall {:try_start_1e0 .. :try_end_1e5} :catchall_17b

    goto :goto_1d5

    .line 1012
    .end local v24           #data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v40           #proc:Lcom/android/server/am/ProcessRecord;
    .end local v44           #res:Lcom/android/server/am/AppErrorResult;
    :sswitch_1e6
    new-instance v22, Lcom/android/server/am/FactoryErrorDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "msg"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/android/server/am/FactoryErrorDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 1014
    .restart local v22       #d:Landroid/app/Dialog;
    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog;->show()V

    .line 1015
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_7

    .line 1018
    .end local v22           #d:Landroid/app/Dialog;
    :sswitch_209
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v45

    .line 1019
    .local v45, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/res/Configuration;

    move-object/from16 v0, v45

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->putConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)Z

    goto/16 :goto_7

    .line 1022
    .end local v45           #resolver:Landroid/content/ContentResolver;
    :sswitch_220
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1023
    :try_start_225
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->performAppGcsIfAppropriateLocked()V

    .line 1024
    monitor-exit v5

    goto/16 :goto_7

    :catchall_22f
    move-exception v4

    monitor-exit v5
    :try_end_231
    .catchall {:try_start_225 .. :try_end_231} :catchall_22f

    throw v4

    .line 1027
    :sswitch_232
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1028
    :try_start_237
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/server/am/ProcessRecord;

    .line 1029
    .local v18, app:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_272

    .line 1030
    move-object/from16 v0, v18

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    if-nez v4, :cond_26c

    .line 1031
    new-instance v22, Lcom/android/server/am/AppWaitingForDebuggerDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-direct {v0, v4, v6, v1}, Lcom/android/server/am/AppWaitingForDebuggerDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V

    .line 1034
    .restart local v22       #d:Landroid/app/Dialog;
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    .line 1035
    const/4 v4, 0x1

    move-object/from16 v0, v18

    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    .line 1036
    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog;->show()V

    .line 1044
    .end local v22           #d:Landroid/app/Dialog;
    :cond_26c
    :goto_26c
    monitor-exit v5

    goto/16 :goto_7

    .end local v18           #app:Lcom/android/server/am/ProcessRecord;
    :catchall_26f
    move-exception v4

    monitor-exit v5
    :try_end_271
    .catchall {:try_start_237 .. :try_end_271} :catchall_26f

    throw v4

    .line 1039
    .restart local v18       #app:Lcom/android/server/am/ProcessRecord;
    :cond_272
    :try_start_272
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_26c

    .line 1040
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 1041
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput-object v4, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;
    :try_end_284
    .catchall {:try_start_272 .. :try_end_284} :catchall_26f

    goto :goto_26c

    .line 1049
    .end local v18           #app:Lcom/android/server/am/ProcessRecord;
    :sswitch_285
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x1

    #calls: Lcom/android/server/am/ActivityManagerService;->processNextBroadcast(Z)V
    invoke-static {v4, v5}, Lcom/android/server/am/ActivityManagerService;->access$100(Lcom/android/server/am/ActivityManagerService;Z)V

    goto/16 :goto_7

    .line 1052
    :sswitch_28f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1053
    :try_start_294
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x1

    #calls: Lcom/android/server/am/ActivityManagerService;->broadcastTimeoutLocked(Z)V
    invoke-static {v4, v6}, Lcom/android/server/am/ActivityManagerService;->access$200(Lcom/android/server/am/ActivityManagerService;Z)V

    .line 1054
    monitor-exit v5

    goto/16 :goto_7

    :catchall_29f
    move-exception v4

    monitor-exit v5
    :try_end_2a1
    .catchall {:try_start_294 .. :try_end_2a1} :catchall_29f

    throw v4

    .line 1057
    :sswitch_2a2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v4, :cond_2d4

    .line 1058
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1059
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v33

    .line 1060
    .local v33, nmsg:Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v33

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1061
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x7530

    move-object/from16 v0, v33

    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_7

    .line 1064
    .end local v33           #nmsg:Landroid/os/Message;
    :cond_2d4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ActivityManagerService;->serviceTimeout(Lcom/android/server/am/ProcessRecord;)V

    goto/16 :goto_7

    .line 1067
    :sswitch_2e3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1068
    :try_start_2e8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v30, v4, -0x1

    .local v30, i:I
    :goto_2f4
    if-ltz v30, :cond_337

    .line 1069
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/server/am/ProcessRecord;

    .line 1070
    .local v43, r:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_308
    .catchall {:try_start_2e8 .. :try_end_308} :catchall_334

    if-eqz v4, :cond_311

    .line 1072
    :try_start_30a
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v4}, Landroid/app/IApplicationThread;->updateTimeZone()V
    :try_end_311
    .catchall {:try_start_30a .. :try_end_311} :catchall_334
    .catch Landroid/os/RemoteException; {:try_start_30a .. :try_end_311} :catch_314

    .line 1068
    :cond_311
    :goto_311
    add-int/lit8 v30, v30, -0x1

    goto :goto_2f4

    .line 1073
    :catch_314
    move-exception v26

    .line 1074
    .local v26, ex:Landroid/os/RemoteException;
    :try_start_315
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to update time zone for: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v43

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_311

    .line 1078
    .end local v26           #ex:Landroid/os/RemoteException;
    .end local v30           #i:I
    .end local v43           #r:Lcom/android/server/am/ProcessRecord;
    :catchall_334
    move-exception v4

    monitor-exit v5
    :try_end_336
    .catchall {:try_start_315 .. :try_end_336} :catchall_334

    throw v4

    .restart local v30       #i:I
    :cond_337
    :try_start_337
    monitor-exit v5
    :try_end_338
    .catchall {:try_start_337 .. :try_end_338} :catchall_334

    goto/16 :goto_7

    .line 1081
    .end local v30           #i:I
    :sswitch_33a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1082
    :try_start_33f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v30, v4, -0x1

    .restart local v30       #i:I
    :goto_34b
    if-ltz v30, :cond_38e

    .line 1083
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/server/am/ProcessRecord;

    .line 1084
    .restart local v43       #r:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_35f
    .catchall {:try_start_33f .. :try_end_35f} :catchall_38b

    if-eqz v4, :cond_368

    .line 1086
    :try_start_361
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v4}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_368
    .catchall {:try_start_361 .. :try_end_368} :catchall_38b
    .catch Landroid/os/RemoteException; {:try_start_361 .. :try_end_368} :catch_36b

    .line 1082
    :cond_368
    :goto_368
    add-int/lit8 v30, v30, -0x1

    goto :goto_34b

    .line 1087
    :catch_36b
    move-exception v26

    .line 1088
    .restart local v26       #ex:Landroid/os/RemoteException;
    :try_start_36c
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to clear dns cache for: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v43

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_368

    .line 1092
    .end local v26           #ex:Landroid/os/RemoteException;
    .end local v30           #i:I
    .end local v43           #r:Lcom/android/server/am/ProcessRecord;
    :catchall_38b
    move-exception v4

    monitor-exit v5
    :try_end_38d
    .catchall {:try_start_36c .. :try_end_38d} :catchall_38b

    throw v4

    .restart local v30       #i:I
    :cond_38e
    :try_start_38e
    monitor-exit v5
    :try_end_38f
    .catchall {:try_start_38e .. :try_end_38f} :catchall_38b

    goto/16 :goto_7

    .line 1095
    .end local v30           #i:I
    :sswitch_391
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Landroid/net/ProxyProperties;

    .line 1096
    .local v42, proxy:Landroid/net/ProxyProperties;
    const-string v29, ""

    .line 1097
    .local v29, host:Ljava/lang/String;
    const-string v39, ""

    .line 1098
    .local v39, port:Ljava/lang/String;
    const-string v27, ""

    .line 1099
    .local v27, exclList:Ljava/lang/String;
    if-eqz v42, :cond_3b1

    .line 1100
    invoke-virtual/range {v42 .. v42}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v29

    .line 1101
    invoke-virtual/range {v42 .. v42}, Landroid/net/ProxyProperties;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v39

    .line 1102
    invoke-virtual/range {v42 .. v42}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v27

    .line 1104
    :cond_3b1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1105
    :try_start_3b6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v30, v4, -0x1

    .restart local v30       #i:I
    :goto_3c2
    if-ltz v30, :cond_40b

    .line 1106
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/server/am/ProcessRecord;

    .line 1107
    .restart local v43       #r:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_3d6
    .catchall {:try_start_3b6 .. :try_end_3d6} :catchall_408

    if-eqz v4, :cond_3e5

    .line 1109
    :try_start_3d8
    move-object/from16 v0, v43

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v29

    move-object/from16 v1, v39

    move-object/from16 v2, v27

    invoke-interface {v4, v0, v1, v2}, Landroid/app/IApplicationThread;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e5
    .catchall {:try_start_3d8 .. :try_end_3e5} :catchall_408
    .catch Landroid/os/RemoteException; {:try_start_3d8 .. :try_end_3e5} :catch_3e8

    .line 1105
    :cond_3e5
    :goto_3e5
    add-int/lit8 v30, v30, -0x1

    goto :goto_3c2

    .line 1110
    :catch_3e8
    move-exception v26

    .line 1111
    .restart local v26       #ex:Landroid/os/RemoteException;
    :try_start_3e9
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to update http proxy for: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v43

    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e5

    .line 1116
    .end local v26           #ex:Landroid/os/RemoteException;
    .end local v30           #i:I
    .end local v43           #r:Lcom/android/server/am/ProcessRecord;
    :catchall_408
    move-exception v4

    monitor-exit v5
    :try_end_40a
    .catchall {:try_start_3e9 .. :try_end_40a} :catchall_408

    throw v4

    .restart local v30       #i:I
    :cond_40b
    :try_start_40b
    monitor-exit v5
    :try_end_40c
    .catchall {:try_start_40b .. :try_end_40c} :catchall_408

    goto/16 :goto_7

    .line 1120
    .end local v27           #exclList:Ljava/lang/String;
    .end local v29           #host:Ljava/lang/String;
    .end local v30           #i:I
    .end local v39           #port:Ljava/lang/String;
    .end local v42           #proxy:Landroid/net/ProxyProperties;
    :sswitch_40e
    new-instance v22, Lcom/android/server/am/BaseErrorDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 1121
    .local v22, d:Landroid/app/AlertDialog;
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/BaseErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7da

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 1122
    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1123
    const-string v4, "System UIDs Inconsistent"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1124
    const-string v4, "UIDs on the system are inconsistent, you need to wipe your data partition or your device will be unstable."

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1125
    const/4 v4, -0x1

    const-string v5, "I\'m Feeling Lucky"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xf

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 1127
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v22

    iput-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    .line 1128
    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_7

    .line 1131
    .end local v22           #d:Landroid/app/AlertDialog;
    :sswitch_459
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    if-eqz v4, :cond_7

    .line 1132
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 1133
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    goto/16 :goto_7

    .line 1137
    :sswitch_473
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v4, :cond_4a5

    .line 1138
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1139
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v33

    .line 1140
    .restart local v33       #nmsg:Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v33

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1141
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x2710

    move-object/from16 v0, v33

    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_7

    .line 1144
    .end local v33           #nmsg:Landroid/os/Message;
    :cond_4a5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/server/am/ProcessRecord;

    .line 1145
    .restart local v18       #app:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1146
    :try_start_4b2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v18

    #calls: Lcom/android/server/am/ActivityManagerService;->processStartTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    invoke-static {v4, v0}, Lcom/android/server/am/ActivityManagerService;->access$300(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V

    .line 1147
    monitor-exit v5

    goto/16 :goto_7

    :catchall_4be
    move-exception v4

    monitor-exit v5
    :try_end_4c0
    .catchall {:try_start_4b2 .. :try_end_4c0} :catchall_4be

    throw v4

    .line 1150
    .end local v18           #app:Lcom/android/server/am/ProcessRecord;
    :sswitch_4c1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1151
    :try_start_4c6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityManagerService;->doPendingActivityLaunchesLocked(Z)V

    .line 1152
    monitor-exit v5

    goto/16 :goto_7

    :catchall_4d1
    move-exception v4

    monitor-exit v5
    :try_end_4d3
    .catchall {:try_start_4c6 .. :try_end_4d3} :catchall_4d1

    throw v4

    .line 1155
    :sswitch_4d4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1156
    :try_start_4d9
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 1157
    .local v10, uid:I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_4fb

    const/4 v11, 0x1

    .line 1158
    .local v11, restart:Z
    :goto_4e5
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 1159
    .local v9, pkg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    #calls: Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZ)Z
    invoke-static/range {v8 .. v14}, Lcom/android/server/am/ActivityManagerService;->access$400(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;IZZZZ)Z

    .line 1160
    monitor-exit v5

    goto/16 :goto_7

    .end local v9           #pkg:Ljava/lang/String;
    .end local v10           #uid:I
    .end local v11           #restart:Z
    :catchall_4f8
    move-exception v4

    monitor-exit v5
    :try_end_4fa
    .catchall {:try_start_4d9 .. :try_end_4fa} :catchall_4f8

    throw v4

    .line 1157
    .restart local v10       #uid:I
    :cond_4fb
    const/4 v11, 0x0

    goto :goto_4e5

    .line 1163
    .end local v10           #uid:I
    :sswitch_4fd
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v4}, Lcom/android/server/am/PendingIntentRecord;->completeFinalize()V

    goto/16 :goto_7

    .line 1166
    :sswitch_508
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v31

    .line 1167
    .local v31, inm:Landroid/app/INotificationManager;
    if-eqz v31, :cond_7

    .line 1171
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, Lcom/android/server/am/ActivityRecord;

    .line 1172
    .local v46, root:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v41, v0

    .line 1173
    .local v41, process:Lcom/android/server/am/ProcessRecord;
    if-eqz v41, :cond_7

    .line 1178
    :try_start_51e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v41

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v20

    .line 1179
    .local v20, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v5, 0x1040475

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    aput-object v12, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v47

    .line 1181
    .local v47, text:Ljava/lang/String;
    new-instance v34, Landroid/app/Notification;

    invoke-direct/range {v34 .. v34}, Landroid/app/Notification;-><init>()V

    .line 1182
    .local v34, notification:Landroid/app/Notification;
    const v4, 0x1080517

    move-object/from16 v0, v34

    iput v4, v0, Landroid/app/Notification;->icon:I

    .line 1183
    const-wide/16 v4, 0x0

    move-object/from16 v0, v34

    iput-wide v4, v0, Landroid/app/Notification;->when:J

    .line 1184
    const/4 v4, 0x2

    move-object/from16 v0, v34

    iput v4, v0, Landroid/app/Notification;->flags:I

    .line 1185
    move-object/from16 v0, v47

    move-object/from16 v1, v34

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1186
    const/4 v4, 0x0

    move-object/from16 v0, v34

    iput v4, v0, Landroid/app/Notification;->defaults:I

    .line 1187
    const/4 v4, 0x0

    move-object/from16 v0, v34

    iput-object v4, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1188
    const/4 v4, 0x0

    move-object/from16 v0, v34

    iput-object v4, v0, Landroid/app/Notification;->vibrate:[J

    .line 1189
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v5, 0x1040476

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    move-object/from16 v0, v46

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v12, 0x1000

    invoke-static {v5, v6, v8, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    move-object/from16 v0, v34

    move-object/from16 v1, v20

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    :try_end_5a1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_51e .. :try_end_5a1} :catch_5c2

    .line 1195
    const/4 v4, 0x1

    :try_start_5a2
    new-array v0, v4, [I

    move-object/from16 v37, v0

    .line 1196
    .local v37, outId:[I
    const-string v4, "android"

    const v5, 0x1040475

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    move-object/from16 v2, v37

    invoke-interface {v0, v4, v5, v1, v2}, Landroid/app/INotificationManager;->enqueueNotification(Ljava/lang/String;ILandroid/app/Notification;[I)V
    :try_end_5b4
    .catch Ljava/lang/RuntimeException; {:try_start_5a2 .. :try_end_5b4} :catch_5b6
    .catch Landroid/os/RemoteException; {:try_start_5a2 .. :try_end_5b4} :catch_6f4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5a2 .. :try_end_5b4} :catch_5c2

    goto/16 :goto_7

    .line 1198
    .end local v37           #outId:[I
    :catch_5b6
    move-exception v25

    .line 1199
    .local v25, e:Ljava/lang/RuntimeException;
    :try_start_5b7
    const-string v4, "ActivityManager"

    const-string v5, "Error showing notification for heavy-weight app"

    move-object/from16 v0, v25

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5c0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5b7 .. :try_end_5c0} :catch_5c2

    goto/16 :goto_7

    .line 1203
    .end local v20           #context:Landroid/content/Context;
    .end local v25           #e:Ljava/lang/RuntimeException;
    .end local v34           #notification:Landroid/app/Notification;
    .end local v47           #text:Ljava/lang/String;
    :catch_5c2
    move-exception v25

    .line 1204
    .local v25, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "ActivityManager"

    const-string v5, "Unable to create context for heavy notification"

    move-object/from16 v0, v25

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 1208
    .end local v25           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v31           #inm:Landroid/app/INotificationManager;
    .end local v41           #process:Lcom/android/server/am/ProcessRecord;
    .end local v46           #root:Lcom/android/server/am/ActivityRecord;
    :sswitch_5ce
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v31

    .line 1209
    .restart local v31       #inm:Landroid/app/INotificationManager;
    if-eqz v31, :cond_7

    .line 1213
    :try_start_5d4
    const-string v4, "android"

    const v5, 0x1040475

    move-object/from16 v0, v31

    invoke-interface {v0, v4, v5}, Landroid/app/INotificationManager;->cancelNotification(Ljava/lang/String;I)V
    :try_end_5de
    .catch Ljava/lang/RuntimeException; {:try_start_5d4 .. :try_end_5de} :catch_5e0
    .catch Landroid/os/RemoteException; {:try_start_5d4 .. :try_end_5de} :catch_6f1

    goto/16 :goto_7

    .line 1215
    :catch_5e0
    move-exception v25

    .line 1216
    .local v25, e:Ljava/lang/RuntimeException;
    const-string v4, "ActivityManager"

    const-string v5, "Error canceling notification for service"

    move-object/from16 v0, v25

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 1222
    .end local v25           #e:Ljava/lang/RuntimeException;
    .end local v31           #inm:Landroid/app/INotificationManager;
    :sswitch_5ec
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1223
    :try_start_5f1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityManagerService;->checkExcessivePowerUsageLocked(Z)V

    .line 1224
    const/16 v4, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService$2;->removeMessages(I)V

    .line 1225
    const/16 v4, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v33

    .line 1226
    .restart local v33       #nmsg:Landroid/os/Message;
    const-wide/32 v12, 0xdbba0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v12, v13}, Lcom/android/server/am/ActivityManagerService$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1227
    monitor-exit v5

    goto/16 :goto_7

    .end local v33           #nmsg:Landroid/os/Message;
    :catchall_615
    move-exception v4

    monitor-exit v5
    :try_end_617
    .catchall {:try_start_5f1 .. :try_end_617} :catchall_615

    throw v4

    .line 1231
    :sswitch_618
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZ)V

    goto/16 :goto_7

    .line 1237
    :sswitch_623
    const-string v4, "ActivityManager"

    const-string v5, "5 minutes is passed. So change the mTenMinsPassed to TRUE, becuase print the PSS at the low memory condition "

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/server/am/ActivityManagerService;->mTenMinsPassed:Z

    goto/16 :goto_7

    .line 1241
    :sswitch_62f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1242
    :try_start_634
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/server/am/ActivityRecord;

    .line 1243
    .local v19, ar:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    if-eqz v4, :cond_672

    .line 1244
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    iget-object v4, v4, Lcom/android/server/am/CompatModeDialog;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_662

    .line 1246
    monitor-exit v5

    goto/16 :goto_7

    .line 1265
    .end local v19           #ar:Lcom/android/server/am/ActivityRecord;
    :catchall_65f
    move-exception v4

    monitor-exit v5
    :try_end_661
    .catchall {:try_start_634 .. :try_end_661} :catchall_65f

    throw v4

    .line 1248
    .restart local v19       #ar:Lcom/android/server/am/ActivityRecord;
    :cond_662
    :try_start_662
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    invoke-virtual {v4}, Lcom/android/server/am/CompatModeDialog;->dismiss()V

    .line 1249
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    .line 1251
    :cond_672
    if-eqz v19, :cond_674

    .line 1265
    :cond_674
    monitor-exit v5
    :try_end_675
    .catchall {:try_start_662 .. :try_end_675} :catchall_65f

    goto/16 :goto_7

    .line 1269
    .end local v19           #ar:Lcom/android/server/am/ActivityRecord;
    :sswitch_677
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v38, v0

    .line 1270
    .local v38, pid:I
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    .line 1271
    .restart local v10       #uid:I
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    .line 1272
    .local v28, foregroundActivities:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, v38

    move/from16 v1, v28

    #calls: Lcom/android/server/am/ActivityManagerService;->dispatchForegroundActivitiesChanged(IIZ)V
    invoke-static {v4, v0, v10, v1}, Lcom/android/server/am/ActivityManagerService;->access$500(Lcom/android/server/am/ActivityManagerService;IIZ)V

    goto/16 :goto_7

    .line 1276
    .end local v10           #uid:I
    .end local v28           #foregroundActivities:Z
    .end local v38           #pid:I
    :sswitch_698
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v38, v0

    .line 1277
    .restart local v38       #pid:I
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    .line 1278
    .restart local v10       #uid:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, v38

    #calls: Lcom/android/server/am/ActivityManagerService;->dispatchProcessDied(II)V
    invoke-static {v4, v0, v10}, Lcom/android/server/am/ActivityManagerService;->access$600(Lcom/android/server/am/ActivityManagerService;II)V

    goto/16 :goto_7

    .line 1282
    .end local v10           #uid:I
    .end local v38           #pid:I
    :sswitch_6ad
    const-string v4, "1"

    const-string v5, "ro.debuggable"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    .line 1283
    .local v32, isDebuggable:Z
    if-eqz v32, :cond_7

    .line 1286
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1287
    :try_start_6c2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v35

    .line 1288
    .local v35, now:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-wide v12, v4, Lcom/android/server/am/ActivityManagerService;->mLastMemUsageReportTime:J

    const-wide/32 v14, 0x493e0

    add-long/2addr v12, v14

    cmp-long v4, v35, v12

    if-gez v4, :cond_6da

    .line 1291
    monitor-exit v5

    goto/16 :goto_7

    .line 1294
    .end local v35           #now:J
    :catchall_6d7
    move-exception v4

    monitor-exit v5
    :try_end_6d9
    .catchall {:try_start_6c2 .. :try_end_6d9} :catchall_6d7

    throw v4

    .line 1293
    .restart local v35       #now:J
    :cond_6da
    :try_start_6da
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-wide/from16 v0, v35

    iput-wide v0, v4, Lcom/android/server/am/ActivityManagerService;->mLastMemUsageReportTime:J

    .line 1294
    monitor-exit v5
    :try_end_6e3
    .catchall {:try_start_6da .. :try_end_6e3} :catchall_6d7

    .line 1295
    new-instance v48, Lcom/android/server/am/ActivityManagerService$2$1;

    move-object/from16 v0, v48

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityManagerService$2$1;-><init>(Lcom/android/server/am/ActivityManagerService$2;)V

    .line 1358
    .local v48, thread:Ljava/lang/Thread;
    invoke-virtual/range {v48 .. v48}, Ljava/lang/Thread;->start()V

    goto/16 :goto_7

    .line 1218
    .end local v32           #isDebuggable:Z
    .end local v35           #now:J
    .end local v48           #thread:Ljava/lang/Thread;
    .restart local v31       #inm:Landroid/app/INotificationManager;
    :catch_6f1
    move-exception v4

    goto/16 :goto_7

    .line 1201
    .restart local v20       #context:Landroid/content/Context;
    .restart local v34       #notification:Landroid/app/Notification;
    .restart local v41       #process:Lcom/android/server/am/ProcessRecord;
    .restart local v46       #root:Lcom/android/server/am/ActivityRecord;
    .restart local v47       #text:Ljava/lang/String;
    :catch_6f4
    move-exception v4

    goto/16 :goto_7

    .line 927
    nop

    :sswitch_data_6f8
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_be
        0x3 -> :sswitch_1e6
        0x4 -> :sswitch_209
        0x5 -> :sswitch_220
        0x6 -> :sswitch_232
        0x7 -> :sswitch_285
        0x8 -> :sswitch_28f
        0xc -> :sswitch_2a2
        0xd -> :sswitch_2e3
        0xe -> :sswitch_40e
        0xf -> :sswitch_459
        0x14 -> :sswitch_473
        0x15 -> :sswitch_4c1
        0x16 -> :sswitch_4d4
        0x17 -> :sswitch_4fd
        0x18 -> :sswitch_508
        0x19 -> :sswitch_5ce
        0x1a -> :sswitch_158
        0x1b -> :sswitch_5ec
        0x1c -> :sswitch_33a
        0x1d -> :sswitch_391
        0x1e -> :sswitch_62f
        0x1f -> :sswitch_677
        0x20 -> :sswitch_698
        0x21 -> :sswitch_6ad
        0x22 -> :sswitch_623
        0x3e7 -> :sswitch_618
    .end sparse-switch
.end method
