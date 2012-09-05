.class Lcom/syncmldstmo/smluiStartSync$1;
.super Landroid/os/Handler;
.source "smluiStartSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syncmldstmo/smluiStartSync;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syncmldstmo/smluiStartSync;


# direct methods
.method constructor <init>(Lcom/syncmldstmo/smluiStartSync;)V
    .registers 2
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .parameter "msg"

    .prologue
    const v9, 0x7f060036

    const/high16 v7, 0x20

    const/4 v5, 0x1

    const/16 v6, 0x64

    const/4 v8, 0x0

    .line 77
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 79
    iget v3, p1, Landroid/os/Message;->what:I

    if-nez v3, :cond_18

    .line 81
    sget-object v3, Lcom/syncmldstmo/smluiStartSync;->hProgress:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 319
    :cond_17
    :goto_17
    return-void

    .line 83
    :cond_18
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_17

    .line 86
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_18e

    .line 88
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #setter for: Lcom/syncmldstmo/smluiStartSync;->nCurrentCount:I
    invoke-static {v3, v8}, Lcom/syncmldstmo/smluiStartSync;->access$002(Lcom/syncmldstmo/smluiStartSync;I)I

    .line 89
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #setter for: Lcom/syncmldstmo/smluiStartSync;->nP2SToTalCount:I
    invoke-static {v3, v8}, Lcom/syncmldstmo/smluiStartSync;->access$102(Lcom/syncmldstmo/smluiStartSync;I)I

    .line 90
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #setter for: Lcom/syncmldstmo/smluiStartSync;->nPercentage:I
    invoke-static {v3, v8}, Lcom/syncmldstmo/smluiStartSync;->access$202(Lcom/syncmldstmo/smluiStartSync;I)I

    .line 91
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->mPrgDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/syncmldstmo/smluiStartSync;->access$300(Lcom/syncmldstmo/smluiStartSync;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 93
    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->getIsStopping()Z

    move-result v3

    if-nez v3, :cond_17

    .line 96
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;

    .line 98
    .local v0, pProcessMsg:Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    invoke-static {v3}, Lcom/syncmldstmo/smluiStartSync;->access$400(Lcom/syncmldstmo/smluiStartSync;)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v3, :cond_ff

    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    invoke-static {v3}, Lcom/syncmldstmo/smluiStartSync;->access$400(Lcom/syncmldstmo/smluiStartSync;)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v3, :cond_ff

    .line 100
    invoke-static {}, Lcom/syncmldstmo/DSService;->smlGetContactString()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, szSyncText:Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-static {}, Lcom/syncmldstmo/DSService;->smlGetCalendarString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 103
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->mPrgDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/syncmldstmo/smluiStartSync;->access$300(Lcom/syncmldstmo/smluiStartSync;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 119
    .end local v2           #szSyncText:Ljava/lang/String;
    :cond_77
    :goto_77
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    invoke-static {v3}, Lcom/syncmldstmo/smluiStartSync;->access$400(Lcom/syncmldstmo/smluiStartSync;)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v3, :cond_91

    .line 121
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    iget v4, v0, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ContactCount:I

    invoke-static {v3, v4}, Lcom/syncmldstmo/smluiStartSync;->access$012(Lcom/syncmldstmo/smluiStartSync;I)I

    .line 122
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    iget v4, v0, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ContactTotal:I

    invoke-static {v3, v4}, Lcom/syncmldstmo/smluiStartSync;->access$112(Lcom/syncmldstmo/smluiStartSync;I)I

    .line 125
    :cond_91
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    invoke-static {v3}, Lcom/syncmldstmo/smluiStartSync;->access$400(Lcom/syncmldstmo/smluiStartSync;)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v3, :cond_ab

    .line 127
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    iget v4, v0, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->CalendarCount:I

    invoke-static {v3, v4}, Lcom/syncmldstmo/smluiStartSync;->access$012(Lcom/syncmldstmo/smluiStartSync;I)I

    .line 128
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    iget v4, v0, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->CalendarTotal:I

    invoke-static {v3, v4}, Lcom/syncmldstmo/smluiStartSync;->access$112(Lcom/syncmldstmo/smluiStartSync;I)I

    .line 131
    :cond_ab
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    invoke-static {v3}, Lcom/syncmldstmo/smluiStartSync;->access$400(Lcom/syncmldstmo/smluiStartSync;)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v3, :cond_c5

    .line 133
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    iget v4, v0, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ProfileCount:I

    invoke-static {v3, v4}, Lcom/syncmldstmo/smluiStartSync;->access$012(Lcom/syncmldstmo/smluiStartSync;I)I

    .line 134
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    iget v4, v0, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ProfileTotal:I

    invoke-static {v3, v4}, Lcom/syncmldstmo/smluiStartSync;->access$112(Lcom/syncmldstmo/smluiStartSync;I)I

    .line 137
    :cond_c5
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->nCurrentCount:I
    invoke-static {v3}, Lcom/syncmldstmo/smluiStartSync;->access$000(Lcom/syncmldstmo/smluiStartSync;)I

    move-result v3

    if-nez v3, :cond_14e

    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->nP2SToTalCount:I
    invoke-static {v3}, Lcom/syncmldstmo/smluiStartSync;->access$100(Lcom/syncmldstmo/smluiStartSync;)I

    move-result v3

    if-nez v3, :cond_14e

    .line 139
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #setter for: Lcom/syncmldstmo/smluiStartSync;->nPercentage:I
    invoke-static {v3, v8}, Lcom/syncmldstmo/smluiStartSync;->access$202(Lcom/syncmldstmo/smluiStartSync;I)I

    .line 140
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->mPrgDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/syncmldstmo/smluiStartSync;->access$300(Lcom/syncmldstmo/smluiStartSync;)Landroid/app/ProgressDialog;

    move-result-object v3

    iget-object v4, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->nPercentage:I
    invoke-static {v4}, Lcom/syncmldstmo/smluiStartSync;->access$200(Lcom/syncmldstmo/smluiStartSync;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 157
    :goto_e9
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->nCurrentCount:I
    invoke-static {v3}, Lcom/syncmldstmo/smluiStartSync;->access$000(Lcom/syncmldstmo/smluiStartSync;)I

    move-result v3

    iget-object v4, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->nP2SToTalCount:I
    invoke-static {v4}, Lcom/syncmldstmo/smluiStartSync;->access$100(Lcom/syncmldstmo/smluiStartSync;)I

    move-result v4

    if-ne v3, v4, :cond_17

    .line 159
    sget-object v3, Lcom/syncmldstmo/smluiStartSync;->hProgress:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_17

    .line 106
    :cond_ff
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    invoke-static {v3}, Lcom/syncmldstmo/smluiStartSync;->access$400(Lcom/syncmldstmo/smluiStartSync;)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v3, :cond_11a

    .line 108
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->mPrgDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/syncmldstmo/smluiStartSync;->access$300(Lcom/syncmldstmo/smluiStartSync;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-static {}, Lcom/syncmldstmo/DSService;->smlGetContactString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    goto/16 :goto_77

    .line 110
    :cond_11a
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    invoke-static {v3}, Lcom/syncmldstmo/smluiStartSync;->access$400(Lcom/syncmldstmo/smluiStartSync;)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v3, :cond_135

    .line 112
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->mPrgDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/syncmldstmo/smluiStartSync;->access$300(Lcom/syncmldstmo/smluiStartSync;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-static {}, Lcom/syncmldstmo/DSService;->smlGetCalendarString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    goto/16 :goto_77

    .line 114
    :cond_135
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    invoke-static {v3}, Lcom/syncmldstmo/smluiStartSync;->access$400(Lcom/syncmldstmo/smluiStartSync;)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v3, :cond_77

    .line 116
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->mPrgDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/syncmldstmo/smluiStartSync;->access$300(Lcom/syncmldstmo/smluiStartSync;)Landroid/app/ProgressDialog;

    move-result-object v3

    const-string v4, "Profile"

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    goto/16 :goto_77

    .line 144
    :cond_14e
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->nP2SToTalCount:I
    invoke-static {v3}, Lcom/syncmldstmo/smluiStartSync;->access$100(Lcom/syncmldstmo/smluiStartSync;)I

    move-result v3

    if-eqz v3, :cond_188

    .line 146
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    iget-object v4, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->nCurrentCount:I
    invoke-static {v4}, Lcom/syncmldstmo/smluiStartSync;->access$000(Lcom/syncmldstmo/smluiStartSync;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x64

    iget-object v5, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->nP2SToTalCount:I
    invoke-static {v5}, Lcom/syncmldstmo/smluiStartSync;->access$100(Lcom/syncmldstmo/smluiStartSync;)I

    move-result v5

    div-int/2addr v4, v5

    #setter for: Lcom/syncmldstmo/smluiStartSync;->nPercentage:I
    invoke-static {v3, v4}, Lcom/syncmldstmo/smluiStartSync;->access$202(Lcom/syncmldstmo/smluiStartSync;I)I

    .line 147
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->nPercentage:I
    invoke-static {v3}, Lcom/syncmldstmo/smluiStartSync;->access$200(Lcom/syncmldstmo/smluiStartSync;)I

    move-result v3

    if-le v3, v6, :cond_177

    .line 148
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #setter for: Lcom/syncmldstmo/smluiStartSync;->nPercentage:I
    invoke-static {v3, v6}, Lcom/syncmldstmo/smluiStartSync;->access$202(Lcom/syncmldstmo/smluiStartSync;I)I

    .line 154
    :cond_177
    :goto_177
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->mPrgDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/syncmldstmo/smluiStartSync;->access$300(Lcom/syncmldstmo/smluiStartSync;)Landroid/app/ProgressDialog;

    move-result-object v3

    iget-object v4, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->nPercentage:I
    invoke-static {v4}, Lcom/syncmldstmo/smluiStartSync;->access$200(Lcom/syncmldstmo/smluiStartSync;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    goto/16 :goto_e9

    .line 152
    :cond_188
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #setter for: Lcom/syncmldstmo/smluiStartSync;->nPercentage:I
    invoke-static {v3, v6}, Lcom/syncmldstmo/smluiStartSync;->access$202(Lcom/syncmldstmo/smluiStartSync;I)I

    goto :goto_177

    .line 162
    .end local v0           #pProcessMsg:Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;
    :cond_18e
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_311

    .line 164
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #setter for: Lcom/syncmldstmo/smluiStartSync;->nCurrentCount:I
    invoke-static {v3, v8}, Lcom/syncmldstmo/smluiStartSync;->access$002(Lcom/syncmldstmo/smluiStartSync;I)I

    .line 165
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #setter for: Lcom/syncmldstmo/smluiStartSync;->nS2PToTalCount:I
    invoke-static {v3, v8}, Lcom/syncmldstmo/smluiStartSync;->access$502(Lcom/syncmldstmo/smluiStartSync;I)I

    .line 166
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #setter for: Lcom/syncmldstmo/smluiStartSync;->nPercentage:I
    invoke-static {v3, v8}, Lcom/syncmldstmo/smluiStartSync;->access$202(Lcom/syncmldstmo/smluiStartSync;I)I

    .line 167
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->mPrgDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/syncmldstmo/smluiStartSync;->access$300(Lcom/syncmldstmo/smluiStartSync;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 168
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->mPrgDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/syncmldstmo/smluiStartSync;->access$300(Lcom/syncmldstmo/smluiStartSync;)Landroid/app/ProgressDialog;

    move-result-object v3

    iget-object v4, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    const v5, 0x7f060035

    invoke-virtual {v4, v5}, Lcom/syncmldstmo/smluiStartSync;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 170
    invoke-static {}, Lcom/syncmldstmo/base/smlAgent;->getIsStopping()Z

    move-result v3

    if-nez v3, :cond_17

    .line 175
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;

    .line 177
    .restart local v0       #pProcessMsg:Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    invoke-static {v3}, Lcom/syncmldstmo/smluiStartSync;->access$400(Lcom/syncmldstmo/smluiStartSync;)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v3, :cond_282

    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    invoke-static {v3}, Lcom/syncmldstmo/smluiStartSync;->access$400(Lcom/syncmldstmo/smluiStartSync;)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v3, :cond_282

    .line 179
    invoke-static {}, Lcom/syncmldstmo/DSService;->smlGetContactString()Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, syncText:Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-static {}, Lcom/syncmldstmo/DSService;->smlGetCalendarString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->mPrgDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/syncmldstmo/smluiStartSync;->access$300(Lcom/syncmldstmo/smluiStartSync;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 197
    .end local v1           #syncText:Ljava/lang/String;
    :cond_1fa
    :goto_1fa
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    invoke-static {v3}, Lcom/syncmldstmo/smluiStartSync;->access$400(Lcom/syncmldstmo/smluiStartSync;)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v3, :cond_214

    .line 199
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    iget v4, v0, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ContactCount:I

    invoke-static {v3, v4}, Lcom/syncmldstmo/smluiStartSync;->access$012(Lcom/syncmldstmo/smluiStartSync;I)I

    .line 200
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    iget v4, v0, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ContactTotal:I

    invoke-static {v3, v4}, Lcom/syncmldstmo/smluiStartSync;->access$512(Lcom/syncmldstmo/smluiStartSync;I)I

    .line 202
    :cond_214
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    invoke-static {v3}, Lcom/syncmldstmo/smluiStartSync;->access$400(Lcom/syncmldstmo/smluiStartSync;)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v3, :cond_22e

    .line 204
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    iget v4, v0, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->CalendarCount:I

    invoke-static {v3, v4}, Lcom/syncmldstmo/smluiStartSync;->access$012(Lcom/syncmldstmo/smluiStartSync;I)I

    .line 205
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    iget v4, v0, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->CalendarTotal:I

    invoke-static {v3, v4}, Lcom/syncmldstmo/smluiStartSync;->access$512(Lcom/syncmldstmo/smluiStartSync;I)I

    .line 207
    :cond_22e
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    invoke-static {v3}, Lcom/syncmldstmo/smluiStartSync;->access$400(Lcom/syncmldstmo/smluiStartSync;)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v3, :cond_248

    .line 209
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    iget v4, v0, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ProfileCount:I

    invoke-static {v3, v4}, Lcom/syncmldstmo/smluiStartSync;->access$012(Lcom/syncmldstmo/smluiStartSync;I)I

    .line 210
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    iget v4, v0, Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;->ProfileTotal:I

    invoke-static {v3, v4}, Lcom/syncmldstmo/smluiStartSync;->access$512(Lcom/syncmldstmo/smluiStartSync;I)I

    .line 213
    :cond_248
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->nCurrentCount:I
    invoke-static {v3}, Lcom/syncmldstmo/smluiStartSync;->access$000(Lcom/syncmldstmo/smluiStartSync;)I

    move-result v3

    if-nez v3, :cond_2d1

    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->nS2PToTalCount:I
    invoke-static {v3}, Lcom/syncmldstmo/smluiStartSync;->access$500(Lcom/syncmldstmo/smluiStartSync;)I

    move-result v3

    if-nez v3, :cond_2d1

    .line 215
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #setter for: Lcom/syncmldstmo/smluiStartSync;->nPercentage:I
    invoke-static {v3, v8}, Lcom/syncmldstmo/smluiStartSync;->access$202(Lcom/syncmldstmo/smluiStartSync;I)I

    .line 216
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->mPrgDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/syncmldstmo/smluiStartSync;->access$300(Lcom/syncmldstmo/smluiStartSync;)Landroid/app/ProgressDialog;

    move-result-object v3

    iget-object v4, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->nPercentage:I
    invoke-static {v4}, Lcom/syncmldstmo/smluiStartSync;->access$200(Lcom/syncmldstmo/smluiStartSync;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 233
    :goto_26c
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->nCurrentCount:I
    invoke-static {v3}, Lcom/syncmldstmo/smluiStartSync;->access$000(Lcom/syncmldstmo/smluiStartSync;)I

    move-result v3

    iget-object v4, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->nS2PToTalCount:I
    invoke-static {v4}, Lcom/syncmldstmo/smluiStartSync;->access$500(Lcom/syncmldstmo/smluiStartSync;)I

    move-result v4

    if-ne v3, v4, :cond_17

    .line 235
    sget-object v3, Lcom/syncmldstmo/smluiStartSync;->hProgress:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_17

    .line 184
    :cond_282
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    invoke-static {v3}, Lcom/syncmldstmo/smluiStartSync;->access$400(Lcom/syncmldstmo/smluiStartSync;)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v3, :cond_29d

    .line 186
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->mPrgDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/syncmldstmo/smluiStartSync;->access$300(Lcom/syncmldstmo/smluiStartSync;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-static {}, Lcom/syncmldstmo/DSService;->smlGetContactString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    goto/16 :goto_1fa

    .line 188
    :cond_29d
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    invoke-static {v3}, Lcom/syncmldstmo/smluiStartSync;->access$400(Lcom/syncmldstmo/smluiStartSync;)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v3, :cond_2b8

    .line 190
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->mPrgDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/syncmldstmo/smluiStartSync;->access$300(Lcom/syncmldstmo/smluiStartSync;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-static {}, Lcom/syncmldstmo/DSService;->smlGetCalendarString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    goto/16 :goto_1fa

    .line 192
    :cond_2b8
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    invoke-static {v3}, Lcom/syncmldstmo/smluiStartSync;->access$400(Lcom/syncmldstmo/smluiStartSync;)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v3, :cond_1fa

    .line 194
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->mPrgDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/syncmldstmo/smluiStartSync;->access$300(Lcom/syncmldstmo/smluiStartSync;)Landroid/app/ProgressDialog;

    move-result-object v3

    const-string v4, "Profile"

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    goto/16 :goto_1fa

    .line 220
    :cond_2d1
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->nS2PToTalCount:I
    invoke-static {v3}, Lcom/syncmldstmo/smluiStartSync;->access$500(Lcom/syncmldstmo/smluiStartSync;)I

    move-result v3

    if-eqz v3, :cond_30b

    .line 222
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    iget-object v4, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->nCurrentCount:I
    invoke-static {v4}, Lcom/syncmldstmo/smluiStartSync;->access$000(Lcom/syncmldstmo/smluiStartSync;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x64

    iget-object v5, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->nS2PToTalCount:I
    invoke-static {v5}, Lcom/syncmldstmo/smluiStartSync;->access$500(Lcom/syncmldstmo/smluiStartSync;)I

    move-result v5

    div-int/2addr v4, v5

    #setter for: Lcom/syncmldstmo/smluiStartSync;->nPercentage:I
    invoke-static {v3, v4}, Lcom/syncmldstmo/smluiStartSync;->access$202(Lcom/syncmldstmo/smluiStartSync;I)I

    .line 223
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->nPercentage:I
    invoke-static {v3}, Lcom/syncmldstmo/smluiStartSync;->access$200(Lcom/syncmldstmo/smluiStartSync;)I

    move-result v3

    if-le v3, v6, :cond_2fa

    .line 224
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #setter for: Lcom/syncmldstmo/smluiStartSync;->nPercentage:I
    invoke-static {v3, v6}, Lcom/syncmldstmo/smluiStartSync;->access$202(Lcom/syncmldstmo/smluiStartSync;I)I

    .line 230
    :cond_2fa
    :goto_2fa
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->mPrgDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/syncmldstmo/smluiStartSync;->access$300(Lcom/syncmldstmo/smluiStartSync;)Landroid/app/ProgressDialog;

    move-result-object v3

    iget-object v4, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->nPercentage:I
    invoke-static {v4}, Lcom/syncmldstmo/smluiStartSync;->access$200(Lcom/syncmldstmo/smluiStartSync;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    goto/16 :goto_26c

    .line 228
    :cond_30b
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #setter for: Lcom/syncmldstmo/smluiStartSync;->nPercentage:I
    invoke-static {v3, v6}, Lcom/syncmldstmo/smluiStartSync;->access$202(Lcom/syncmldstmo/smluiStartSync;I)I

    goto :goto_2fa

    .line 238
    .end local v0           #pProcessMsg:Lcom/syncmldstmo/base/smlMsg$smlProcessMsgParam;
    :cond_311
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x30

    if-ne v3, v4, :cond_774

    .line 240
    const-string v3, "Sync finish "

    invoke-static {v7, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 242
    invoke-static {}, Lcom/syncmldstmo/database/smlDb;->smlGetFirstSyncComplete()I

    move-result v3

    if-nez v3, :cond_325

    .line 244
    invoke-static {v5}, Lcom/syncmldstmo/database/smlDb;->smlSetFirstSyncComplete(I)V

    .line 247
    :cond_325
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->mPrgDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/syncmldstmo/smluiStartSync;->access$300(Lcom/syncmldstmo/smluiStartSync;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 248
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    invoke-virtual {v3, v5}, Lcom/syncmldstmo/smluiStartSync;->removeDialog(I)V

    .line 250
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    const-string v4, ""

    #setter for: Lcom/syncmldstmo/smluiStartSync;->szCompleted:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/syncmldstmo/smluiStartSync;->access$602(Lcom/syncmldstmo/smluiStartSync;Ljava/lang/String;)Ljava/lang/String;

    .line 251
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    invoke-static {v3}, Lcom/syncmldstmo/smluiStartSync;->access$400(Lcom/syncmldstmo/smluiStartSync;)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v3, :cond_4a1

    .line 253
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    iget-object v4, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->szCompleted:Ljava/lang/String;
    invoke-static {v4}, Lcom/syncmldstmo/smluiStartSync;->access$600(Lcom/syncmldstmo/smluiStartSync;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/syncmldstmo/DSService;->smlGetContactString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/syncmldstmo/smluiStartSync;->szCompleted:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/syncmldstmo/smluiStartSync;->access$602(Lcom/syncmldstmo/smluiStartSync;Ljava/lang/String;)Ljava/lang/String;

    .line 254
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    iget-object v4, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->szCompleted:Ljava/lang/String;
    invoke-static {v4}, Lcom/syncmldstmo/smluiStartSync;->access$600(Lcom/syncmldstmo/smluiStartSync;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    invoke-static {v6}, Lcom/syncmldstmo/smluiStartSync;->access$400(Lcom/syncmldstmo/smluiStartSync;)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v6, v6, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItem:I

    iget-object v7, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    invoke-static {v7}, Lcom/syncmldstmo/smluiStartSync;->access$400(Lcom/syncmldstmo/smluiStartSync;)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v7, v7, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItem:I

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/syncmldstmo/smluiStartSync;->szCompleted:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/syncmldstmo/smluiStartSync;->access$602(Lcom/syncmldstmo/smluiStartSync;Ljava/lang/String;)Ljava/lang/String;

    .line 255
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    iget-object v4, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->szCompleted:Ljava/lang/String;
    invoke-static {v4}, Lcom/syncmldstmo/smluiStartSync;->access$600(Lcom/syncmldstmo/smluiStartSync;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    invoke-virtual {v6, v9}, Lcom/syncmldstmo/smluiStartSync;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/syncmldstmo/smluiStartSync;->szCompleted:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/syncmldstmo/smluiStartSync;->access$602(Lcom/syncmldstmo/smluiStartSync;Ljava/lang/String;)Ljava/lang/String;

    .line 256
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    iget-object v4, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->szCompleted:Ljava/lang/String;
    invoke-static {v4}, Lcom/syncmldstmo/smluiStartSync;->access$600(Lcom/syncmldstmo/smluiStartSync;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    invoke-static {v6}, Lcom/syncmldstmo/smluiStartSync;->access$400(Lcom/syncmldstmo/smluiStartSync;)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v6, v6, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItem:I

    iget-object v7, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    invoke-static {v7}, Lcom/syncmldstmo/smluiStartSync;->access$400(Lcom/syncmldstmo/smluiStartSync;)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v7, v7, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PReplaceItem:I

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/syncmldstmo/smluiStartSync;->szCompleted:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/syncmldstmo/smluiStartSync;->access$602(Lcom/syncmldstmo/smluiStartSync;Ljava/lang/String;)Ljava/lang/String;

    .line 257
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    iget-object v4, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->szCompleted:Ljava/lang/String;
    invoke-static {v4}, Lcom/syncmldstmo/smluiStartSync;->access$600(Lcom/syncmldstmo/smluiStartSync;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    const v7, 0x7f060037

    invoke-virtual {v6, v7}, Lcom/syncmldstmo/smluiStartSync;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/syncmldstmo/smluiStartSync;->szCompleted:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/syncmldstmo/smluiStartSync;->access$602(Lcom/syncmldstmo/smluiStartSync;Ljava/lang/String;)Ljava/lang/String;

    .line 258
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    iget-object v4, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->szCompleted:Ljava/lang/String;
    invoke-static {v4}, Lcom/syncmldstmo/smluiStartSync;->access$600(Lcom/syncmldstmo/smluiStartSync;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    invoke-static {v6}, Lcom/syncmldstmo/smluiStartSync;->access$400(Lcom/syncmldstmo/smluiStartSync;)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v6, v6, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItem:I

    iget-object v7, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    invoke-static {v7}, Lcom/syncmldstmo/smluiStartSync;->access$400(Lcom/syncmldstmo/smluiStartSync;)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/syncmldstmo/database/smlDbProfileInfo;->Contact_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v7, v7, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PDeleteItem:I

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/syncmldstmo/smluiStartSync;->szCompleted:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/syncmldstmo/smluiStartSync;->access$602(Lcom/syncmldstmo/smluiStartSync;Ljava/lang/String;)Ljava/lang/String;

    .line 259
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    iget-object v4, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->szCompleted:Ljava/lang/String;
    invoke-static {v4}, Lcom/syncmldstmo/smluiStartSync;->access$600(Lcom/syncmldstmo/smluiStartSync;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    const v7, 0x7f060038

    invoke-virtual {v6, v7}, Lcom/syncmldstmo/smluiStartSync;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/syncmldstmo/smluiStartSync;->szCompleted:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/syncmldstmo/smluiStartSync;->access$602(Lcom/syncmldstmo/smluiStartSync;Ljava/lang/String;)Ljava/lang/String;

    .line 261
    :cond_4a1
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    invoke-static {v3}, Lcom/syncmldstmo/smluiStartSync;->access$400(Lcom/syncmldstmo/smluiStartSync;)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v3, :cond_60e

    .line 263
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    iget-object v4, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->szCompleted:Ljava/lang/String;
    invoke-static {v4}, Lcom/syncmldstmo/smluiStartSync;->access$600(Lcom/syncmldstmo/smluiStartSync;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/syncmldstmo/DSService;->smlGetCalendarString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/syncmldstmo/smluiStartSync;->szCompleted:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/syncmldstmo/smluiStartSync;->access$602(Lcom/syncmldstmo/smluiStartSync;Ljava/lang/String;)Ljava/lang/String;

    .line 264
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    iget-object v4, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->szCompleted:Ljava/lang/String;
    invoke-static {v4}, Lcom/syncmldstmo/smluiStartSync;->access$600(Lcom/syncmldstmo/smluiStartSync;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    invoke-static {v6}, Lcom/syncmldstmo/smluiStartSync;->access$400(Lcom/syncmldstmo/smluiStartSync;)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v6, v6, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItem:I

    iget-object v7, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    invoke-static {v7}, Lcom/syncmldstmo/smluiStartSync;->access$400(Lcom/syncmldstmo/smluiStartSync;)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v7, v7, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItem:I

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/syncmldstmo/smluiStartSync;->szCompleted:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/syncmldstmo/smluiStartSync;->access$602(Lcom/syncmldstmo/smluiStartSync;Ljava/lang/String;)Ljava/lang/String;

    .line 265
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    iget-object v4, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->szCompleted:Ljava/lang/String;
    invoke-static {v4}, Lcom/syncmldstmo/smluiStartSync;->access$600(Lcom/syncmldstmo/smluiStartSync;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    invoke-virtual {v6, v9}, Lcom/syncmldstmo/smluiStartSync;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/syncmldstmo/smluiStartSync;->szCompleted:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/syncmldstmo/smluiStartSync;->access$602(Lcom/syncmldstmo/smluiStartSync;Ljava/lang/String;)Ljava/lang/String;

    .line 266
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    iget-object v4, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->szCompleted:Ljava/lang/String;
    invoke-static {v4}, Lcom/syncmldstmo/smluiStartSync;->access$600(Lcom/syncmldstmo/smluiStartSync;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    invoke-static {v6}, Lcom/syncmldstmo/smluiStartSync;->access$400(Lcom/syncmldstmo/smluiStartSync;)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v6, v6, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItem:I

    iget-object v7, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    invoke-static {v7}, Lcom/syncmldstmo/smluiStartSync;->access$400(Lcom/syncmldstmo/smluiStartSync;)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v7, v7, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PReplaceItem:I

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/syncmldstmo/smluiStartSync;->szCompleted:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/syncmldstmo/smluiStartSync;->access$602(Lcom/syncmldstmo/smluiStartSync;Ljava/lang/String;)Ljava/lang/String;

    .line 267
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    iget-object v4, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->szCompleted:Ljava/lang/String;
    invoke-static {v4}, Lcom/syncmldstmo/smluiStartSync;->access$600(Lcom/syncmldstmo/smluiStartSync;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    const v7, 0x7f060037

    invoke-virtual {v6, v7}, Lcom/syncmldstmo/smluiStartSync;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/syncmldstmo/smluiStartSync;->szCompleted:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/syncmldstmo/smluiStartSync;->access$602(Lcom/syncmldstmo/smluiStartSync;Ljava/lang/String;)Ljava/lang/String;

    .line 268
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    iget-object v4, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->szCompleted:Ljava/lang/String;
    invoke-static {v4}, Lcom/syncmldstmo/smluiStartSync;->access$600(Lcom/syncmldstmo/smluiStartSync;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    invoke-static {v6}, Lcom/syncmldstmo/smluiStartSync;->access$400(Lcom/syncmldstmo/smluiStartSync;)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v6, v6, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItem:I

    iget-object v7, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    invoke-static {v7}, Lcom/syncmldstmo/smluiStartSync;->access$400(Lcom/syncmldstmo/smluiStartSync;)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/syncmldstmo/database/smlDbProfileInfo;->Calendar_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v7, v7, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PDeleteItem:I

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/syncmldstmo/smluiStartSync;->szCompleted:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/syncmldstmo/smluiStartSync;->access$602(Lcom/syncmldstmo/smluiStartSync;Ljava/lang/String;)Ljava/lang/String;

    .line 269
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    iget-object v4, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->szCompleted:Ljava/lang/String;
    invoke-static {v4}, Lcom/syncmldstmo/smluiStartSync;->access$600(Lcom/syncmldstmo/smluiStartSync;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    const v7, 0x7f060038

    invoke-virtual {v6, v7}, Lcom/syncmldstmo/smluiStartSync;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/syncmldstmo/smluiStartSync;->szCompleted:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/syncmldstmo/smluiStartSync;->access$602(Lcom/syncmldstmo/smluiStartSync;Ljava/lang/String;)Ljava/lang/String;

    .line 271
    :cond_60e
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    invoke-static {v3}, Lcom/syncmldstmo/smluiStartSync;->access$400(Lcom/syncmldstmo/smluiStartSync;)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget-boolean v3, v3, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->Sync:Z

    if-eqz v3, :cond_760

    .line 273
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    iget-object v4, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->szCompleted:Ljava/lang/String;
    invoke-static {v4}, Lcom/syncmldstmo/smluiStartSync;->access$600(Lcom/syncmldstmo/smluiStartSync;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\nProfile\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/syncmldstmo/smluiStartSync;->szCompleted:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/syncmldstmo/smluiStartSync;->access$602(Lcom/syncmldstmo/smluiStartSync;Ljava/lang/String;)Ljava/lang/String;

    .line 274
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    iget-object v4, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->szCompleted:Ljava/lang/String;
    invoke-static {v4}, Lcom/syncmldstmo/smluiStartSync;->access$600(Lcom/syncmldstmo/smluiStartSync;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    invoke-static {v6}, Lcom/syncmldstmo/smluiStartSync;->access$400(Lcom/syncmldstmo/smluiStartSync;)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v6, v6, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SAddItem:I

    iget-object v7, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    invoke-static {v7}, Lcom/syncmldstmo/smluiStartSync;->access$400(Lcom/syncmldstmo/smluiStartSync;)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v7, v7, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PAddItem:I

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/syncmldstmo/smluiStartSync;->szCompleted:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/syncmldstmo/smluiStartSync;->access$602(Lcom/syncmldstmo/smluiStartSync;Ljava/lang/String;)Ljava/lang/String;

    .line 275
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    iget-object v4, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->szCompleted:Ljava/lang/String;
    invoke-static {v4}, Lcom/syncmldstmo/smluiStartSync;->access$600(Lcom/syncmldstmo/smluiStartSync;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    invoke-virtual {v6, v9}, Lcom/syncmldstmo/smluiStartSync;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/syncmldstmo/smluiStartSync;->szCompleted:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/syncmldstmo/smluiStartSync;->access$602(Lcom/syncmldstmo/smluiStartSync;Ljava/lang/String;)Ljava/lang/String;

    .line 276
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    iget-object v4, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->szCompleted:Ljava/lang/String;
    invoke-static {v4}, Lcom/syncmldstmo/smluiStartSync;->access$600(Lcom/syncmldstmo/smluiStartSync;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    invoke-static {v6}, Lcom/syncmldstmo/smluiStartSync;->access$400(Lcom/syncmldstmo/smluiStartSync;)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v6, v6, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SReplaceItem:I

    iget-object v7, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    invoke-static {v7}, Lcom/syncmldstmo/smluiStartSync;->access$400(Lcom/syncmldstmo/smluiStartSync;)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v7, v7, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PReplaceItem:I

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/syncmldstmo/smluiStartSync;->szCompleted:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/syncmldstmo/smluiStartSync;->access$602(Lcom/syncmldstmo/smluiStartSync;Ljava/lang/String;)Ljava/lang/String;

    .line 277
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    iget-object v4, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->szCompleted:Ljava/lang/String;
    invoke-static {v4}, Lcom/syncmldstmo/smluiStartSync;->access$600(Lcom/syncmldstmo/smluiStartSync;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    const v7, 0x7f060037

    invoke-virtual {v6, v7}, Lcom/syncmldstmo/smluiStartSync;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/syncmldstmo/smluiStartSync;->szCompleted:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/syncmldstmo/smluiStartSync;->access$602(Lcom/syncmldstmo/smluiStartSync;Ljava/lang/String;)Ljava/lang/String;

    .line 278
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    iget-object v4, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->szCompleted:Ljava/lang/String;
    invoke-static {v4}, Lcom/syncmldstmo/smluiStartSync;->access$600(Lcom/syncmldstmo/smluiStartSync;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    invoke-static {v6}, Lcom/syncmldstmo/smluiStartSync;->access$400(Lcom/syncmldstmo/smluiStartSync;)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v6, v6, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->P2SDeleteItem:I

    iget-object v7, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->profileInfo:Lcom/syncmldstmo/database/smlDbProfileInfo;
    invoke-static {v7}, Lcom/syncmldstmo/smluiStartSync;->access$400(Lcom/syncmldstmo/smluiStartSync;)Lcom/syncmldstmo/database/smlDbProfileInfo;

    move-result-object v7

    iget-object v7, v7, Lcom/syncmldstmo/database/smlDbProfileInfo;->Profile_SyncInfo:Lcom/syncmldstmo/database/smlDbSyncItemInfo;

    iget v7, v7, Lcom/syncmldstmo/database/smlDbSyncItemInfo;->S2PDeleteItem:I

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/syncmldstmo/smluiStartSync;->szCompleted:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/syncmldstmo/smluiStartSync;->access$602(Lcom/syncmldstmo/smluiStartSync;Ljava/lang/String;)Ljava/lang/String;

    .line 279
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    iget-object v4, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->szCompleted:Ljava/lang/String;
    invoke-static {v4}, Lcom/syncmldstmo/smluiStartSync;->access$600(Lcom/syncmldstmo/smluiStartSync;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    const v7, 0x7f060038

    invoke-virtual {v6, v7}, Lcom/syncmldstmo/smluiStartSync;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/syncmldstmo/smluiStartSync;->szCompleted:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/syncmldstmo/smluiStartSync;->access$602(Lcom/syncmldstmo/smluiStartSync;Ljava/lang/String;)Ljava/lang/String;

    .line 281
    :cond_760
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/syncmldstmo/smluiStartSync;->showDialog(I)V

    .line 283
    invoke-static {}, Lcom/syncmldstmo/DSService;->getGetFriendSyncing()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 285
    invoke-static {v8}, Lcom/syncmldstmo/DSService;->setGetFriendSyncing(Z)V

    .line 286
    invoke-static {v8, v8}, Lcom/syncmldstmo/DSService;->smlSetPreSync(ZI)V

    goto/16 :goto_17

    .line 289
    :cond_774
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x1b

    if-eq v3, v4, :cond_78c

    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x1d

    if-eq v3, v4, :cond_78c

    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_78c

    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x22

    if-ne v3, v4, :cond_7ca

    .line 294
    :cond_78c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sync Failed step : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 295
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->mPrgDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/syncmldstmo/smluiStartSync;->access$300(Lcom/syncmldstmo/smluiStartSync;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 296
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    invoke-virtual {v3, v5}, Lcom/syncmldstmo/smluiStartSync;->removeDialog(I)V

    .line 297
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/syncmldstmo/smluiStartSync;->showDialog(I)V

    .line 299
    invoke-static {}, Lcom/syncmldstmo/DSService;->smlMyPhonebookFullReset()V

    .line 300
    invoke-static {}, Lcom/syncmldstmo/DSService;->getGetFriendSyncing()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 302
    invoke-static {v8}, Lcom/syncmldstmo/DSService;->setGetFriendSyncing(Z)V

    .line 303
    invoke-static {v8, v8}, Lcom/syncmldstmo/DSService;->smlSetPreSync(ZI)V

    goto/16 :goto_17

    .line 308
    :cond_7ca
    const-string v3, "Sync fail"

    invoke-static {v7, v3}, Lcom/syncmldstmo/base/smlDebug;->SML_DEBUG(ILjava/lang/String;)V

    .line 309
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    #getter for: Lcom/syncmldstmo/smluiStartSync;->mPrgDialog:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/syncmldstmo/smluiStartSync;->access$300(Lcom/syncmldstmo/smluiStartSync;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 310
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    invoke-virtual {v3, v5}, Lcom/syncmldstmo/smluiStartSync;->removeDialog(I)V

    .line 311
    iget-object v3, p0, Lcom/syncmldstmo/smluiStartSync$1;->this$0:Lcom/syncmldstmo/smluiStartSync;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/syncmldstmo/smluiStartSync;->showDialog(I)V

    .line 313
    invoke-static {}, Lcom/syncmldstmo/DSService;->getGetFriendSyncing()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 315
    invoke-static {v8}, Lcom/syncmldstmo/DSService;->setGetFriendSyncing(Z)V

    .line 316
    invoke-static {v8, v8}, Lcom/syncmldstmo/DSService;->smlSetPreSync(ZI)V

    goto/16 :goto_17
.end method
