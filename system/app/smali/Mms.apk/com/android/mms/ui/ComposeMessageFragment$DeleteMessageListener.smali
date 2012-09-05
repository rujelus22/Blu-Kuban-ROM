.class Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteMessageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;Z)V
    .registers 4
    .parameter
    .parameter "uri"
    .parameter "hasLockedMessage"

    .prologue
    .line 974
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 975
    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteUri:Landroid/net/Uri;
    invoke-static {p1, p2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1402(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;)Landroid/net/Uri;

    .line 976
    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteLocked:Z
    invoke-static {p1, p3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1502(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    .line 977
    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mHasLockedMessage:Z
    invoke-static {p1, p3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1602(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    .line 978
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 17
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1002
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsAnimationEnable:Z
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v11

    if-nez v11, :cond_3e

    .line 1003
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->deleteMessage()V
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1800(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 1060
    :cond_d
    :goto_d
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->onDeleteStarting()V

    .line 1062
    const-string v11, "ril.sms.gcf-mode"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1064
    .local v0, GcfMode:Ljava/lang/String;
    const-string v11, "On"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3a

    .line 1065
    const-string v11, "Mms/ComposeMessageFragment"

    const-string v12, "GCF Mode On -  DB Count Reset"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    const/4 v11, 0x0

    sput v11, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    .line 1068
    new-instance v4, Landroid/content/Intent;

    const-string v11, "android.intent.action.GCF_DEVICE_STORAGE_OK"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1069
    .local v4, intent:Landroid/content/Intent;
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1072
    .end local v4           #intent:Landroid/content/Intent;
    :cond_3a
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1073
    return-void

    .line 1006
    .end local v0           #GcfMode:Ljava/lang/String;
    :cond_3e
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1900()Landroid/app/ProgressDialog;

    move-result-object v11

    if-eqz v11, :cond_5c

    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1900()Landroid/app/ProgressDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_5c

    .line 1007
    const-string v11, "Mms/ComposeMessageFragment"

    const-string v12, "DeleteAnimation Progress Dismissed with OnClick()"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1900()Landroid/app/ProgressDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1010
    :cond_5c
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteUri:Landroid/net/Uri;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/net/Uri;

    move-result-object v11

    if-eqz v11, :cond_7c

    .line 1012
    const/4 v11, 0x1

    new-array v2, v11, [I

    .line 1013
    .local v2, delItem:[I
    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSelectedPosition:I
    invoke-static {v12}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2000(Lcom/android/mms/ui/ComposeMessageFragment;)I

    move-result v12

    aput v12, v2, v11

    .line 1014
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->startDeleteAnimation([I)V
    invoke-static {v11, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2100(Lcom/android/mms/ui/ComposeMessageFragment;[I)V

    .line 1015
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v12, 0x1

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteWithAnimation:Z
    invoke-static {v11, v12}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2202(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    goto :goto_d

    .line 1018
    .end local v2           #delItem:[I
    :cond_7c
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v11}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 1022
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 1024
    .local v3, deleteCount:I
    const/4 v6, -0x1

    .line 1025
    .local v6, messagePosition:I
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v11}, Lcom/android/mms/ui/MessageListAdapter;->getCheckedCount()I

    move-result v11

    new-array v2, v11, [I

    .line 1027
    .restart local v2       #delItem:[I
    if-eqz v1, :cond_c8

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_c8

    .line 1029
    :cond_98
    add-int/lit8 v6, v6, 0x1

    .line 1030
    const/4 v11, 0x1

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1031
    .local v7, msgId:J
    const/4 v11, 0x0

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1033
    .local v10, type:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v11, v7, v8, v10}, Lcom/android/mms/ui/MessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_d3

    .line 1044
    :cond_ae
    :goto_ae
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_98

    .line 1045
    if-lez v3, :cond_c8

    .line 1046
    new-array v9, v3, [I

    .line 1047
    .local v9, realDelItem:[I
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v2, v11, v9, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1048
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->startDeleteAnimation([I)V
    invoke-static {v11, v9}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2100(Lcom/android/mms/ui/ComposeMessageFragment;[I)V

    .line 1049
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v12, 0x1

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mIsDeleteWithAnimation:Z
    invoke-static {v11, v12}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2202(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    .line 1054
    .end local v7           #msgId:J
    .end local v9           #realDelItem:[I
    .end local v10           #type:Ljava/lang/String;
    :cond_c8
    if-nez v3, :cond_d

    .line 1055
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/android/mms/ui/ComposeMessageFragment;->setDeleteModeLayout(ZZ)V

    goto/16 :goto_d

    .line 1036
    .restart local v7       #msgId:J
    .restart local v10       #type:Ljava/lang/String;
    :cond_d3
    const/16 v11, 0x14

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-eqz v11, :cond_ed

    const/4 v5, 0x1

    .line 1038
    .local v5, locked:Z
    :goto_dc
    if-eqz v5, :cond_e6

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteLocked:Z
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1500(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v11

    if-eqz v11, :cond_ae

    .line 1041
    :cond_e6
    add-int/lit8 v3, v3, 0x1

    .line 1043
    add-int/lit8 v11, v3, -0x1

    aput v6, v2, v11

    goto :goto_ae

    .line 1036
    .end local v5           #locked:Z
    :cond_ed
    const/4 v5, 0x0

    goto :goto_dc
.end method

.method public setDeleteLockedMessage(Z)V
    .registers 3
    .parameter "deleteLockedMessages"

    .prologue
    .line 998
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteLocked:Z
    invoke-static {v0, p1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1502(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    .line 999
    return-void
.end method
