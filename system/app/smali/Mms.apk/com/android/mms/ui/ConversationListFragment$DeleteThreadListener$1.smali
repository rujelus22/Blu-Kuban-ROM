.class Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)V
    .registers 2
    .parameter

    .prologue
    .line 1431
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const/16 v1, 0x70a

    const/16 v2, 0xc8

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1434
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadId:J
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$2000(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v0, v10, v12

    if-nez v0, :cond_bf

    .line 1435
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$2100(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)[Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_71

    .line 1437
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteStartHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$2200(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 1438
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteStartHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$2200(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1441
    :cond_2b
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$2300(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/content/AsyncQueryHandler;

    move-result-object v0

    const/16 v1, 0x709

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$2400(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z

    move-result v2

    invoke-static {v0, v1, v2, v5}, Lcom/android/mms/data/Conversation;->startDeleteAll(Landroid/content/AsyncQueryHandler;IZZ)V

    .line 1469
    :cond_3c
    :goto_3c
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1471
    const-string v0, "GATE"

    const-string v1, "<GATE-M>MSG_DELETED</GATE-M>"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    :cond_49
    const-string v0, "ril.sms.gcf-mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1479
    .local v6, GcfMode:Ljava/lang/String;
    const-string v0, "On"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 1480
    const-string v0, "Mms/ConversationList.DeleteThreadListener"

    const-string v1, "GCF Mode On"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    sput v5, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    .line 1483
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.GCF_DEVICE_STORAGE_OK"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1484
    .local v8, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$2700(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1487
    .end local v8           #intent:Landroid/content/Intent;
    :cond_70
    return-void

    .line 1445
    .end local v6           #GcfMode:Ljava/lang/String;
    :cond_71
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteStartHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$2200(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$2100(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)[Ljava/lang/Long;

    move-result-object v0

    array-length v0, v0

    if-le v0, v3, :cond_8b

    .line 1446
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteStartHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$2200(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1449
    :cond_8b
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$2100(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)[Ljava/lang/Long;

    move-result-object v0

    array-length v9, v0

    .line 1451
    .local v9, length:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_93
    if-ge v7, v9, :cond_3c

    .line 1452
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$2300(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/content/AsyncQueryHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$2400(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z

    move-result v2

    new-instance v4, Lcom/android/mms/ui/DeleteInfo;

    iget-object v10, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;
    invoke-static {v10}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$2100(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)[Ljava/lang/Long;

    move-result-object v10

    aget-object v10, v10, v7

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    add-int/lit8 v10, v9, -0x1

    if-ne v10, v7, :cond_bd

    move v10, v3

    :goto_b4
    invoke-direct {v4, v11, v12, v10}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    invoke-static/range {v0 .. v5}, Lcom/android/mms/data/Conversation;->startDelete(Landroid/content/AsyncQueryHandler;IZZLcom/android/mms/ui/DeleteInfo;Z)V

    .line 1451
    add-int/lit8 v7, v7, 0x1

    goto :goto_93

    :cond_bd
    move v10, v5

    .line 1452
    goto :goto_b4

    .line 1458
    .end local v7           #i:I
    .end local v9           #length:I
    :cond_bf
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHasLockedMessages:Z
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$2500(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z

    move-result v0

    if-eqz v0, :cond_cf

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$2400(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 1459
    :cond_cf
    sput-boolean v3, Lcom/android/mms/ui/ConversationListFragment;->mIsEmptyThread:Z

    .line 1463
    :cond_d1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$2300(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/content/AsyncQueryHandler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$2400(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z

    move-result v2

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteDraftMessages:Z
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$2600(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z

    move-result v10

    new-instance v4, Lcom/android/mms/ui/DeleteInfo;

    iget-object v11, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$1;->this$0:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadId:J
    invoke-static {v11}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$2000(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)J

    move-result-wide v11

    invoke-direct {v4, v11, v12, v3}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    move v3, v10

    invoke-static/range {v0 .. v5}, Lcom/android/mms/data/Conversation;->startDelete(Landroid/content/AsyncQueryHandler;IZZLcom/android/mms/ui/DeleteInfo;Z)V

    goto/16 :goto_3c
.end method
