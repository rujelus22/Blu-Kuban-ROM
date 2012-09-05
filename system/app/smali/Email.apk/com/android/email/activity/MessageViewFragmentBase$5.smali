.class Lcom/android/email/activity/MessageViewFragmentBase$5;
.super Landroid/os/AsyncTask;
.source "MessageViewFragmentBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/MessageViewFragmentBase;->onCancelDownloadAllAttachment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;",
        "Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragmentBase;


# direct methods
.method constructor <init>(Lcom/android/email/activity/MessageViewFragmentBase;)V
    .registers 2
    .parameter

    .prologue
    .line 3077
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragmentBase$5;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 3077
    check-cast p1, [Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$5;->doInBackground([Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;)Ljava/lang/Void;
    .registers 15
    .parameter "params"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 3080
    aget-object v6, p1, v11

    if-eqz v6, :cond_d

    .line 3083
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase$5;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v6, v6, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    if-nez v6, :cond_e

    .line 3206
    :cond_d
    :goto_d
    return-object v12

    .line 3087
    :cond_e
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseNewDownloadProgress()Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 3088
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase$5;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;
    invoke-static {v6}, Lcom/android/email/activity/MessageViewFragmentBase;->access$800(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/Controller;

    move-result-object v6

    if-eqz v6, :cond_2e

    .line 3089
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase$5;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;
    invoke-static {v6}, Lcom/android/email/activity/MessageViewFragmentBase;->access$800(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/Controller;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/android/email/Controller;->SetAttachdownAllStop(Z)V

    .line 3090
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase$5;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;
    invoke-static {v6}, Lcom/android/email/activity/MessageViewFragmentBase;->access$800(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/Controller;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/android/email/Controller;->SetAttachdownstop(Z)V

    .line 3096
    :cond_2e
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase$5;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    iget-object v2, v6, Lcom/android/email/activity/MessageViewFragmentBase;->mContext:Landroid/content/Context;

    .line 3098
    .local v2, context:Landroid/content/Context;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_33
    aget-object v6, p1, v11

    iget v6, v6, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;->attachmentCount:I

    if-ge v4, v6, :cond_191

    .line 3099
    aget-object v6, p1, v11

    iget-object v6, v6, Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;->attachments:[Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    aget-object v1, v6, v4

    .line 3100
    .local v1, attachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    if-eqz v1, :cond_7b

    .line 3101
    iget-wide v6, v1, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-static {v2, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    .line 3104
    .local v0, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    if-eqz v2, :cond_d

    .line 3108
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseDownloadCancel()Z

    move-result v6

    if-eqz v6, :cond_d4

    .line 3109
    iget-wide v6, v1, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-static {v6, v7}, Lcom/android/email/service/AttachmentDownloadService;->cancelQueuedAttachment(J)Z

    move-result v6

    if-ne v6, v10, :cond_7e

    .line 3111
    new-array v6, v10, [Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    aput-object v1, v6, v11

    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageViewFragmentBase$5;->publishProgress([Ljava/lang/Object;)V

    .line 3112
    iget v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_7b

    .line 3113
    iget v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v6, v6, -0x21

    and-int/lit8 v5, v6, -0x3

    .line 3117
    .local v5, updateFlag:I
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 3118
    .local v3, cv:Landroid/content/ContentValues;
    const-string v6, "flags"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3119
    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 3098
    .end local v0           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v3           #cv:Landroid/content/ContentValues;
    .end local v5           #updateFlag:I
    :cond_7b
    :goto_7b
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    .line 3123
    .restart local v0       #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_7e
    iget-boolean v6, v1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loaded:Z

    if-ne v6, v10, :cond_aa

    iget v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_aa

    .line 3125
    iget v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v6, v6, -0x21

    or-int/lit8 v5, v6, 0x40

    .line 3129
    .restart local v5       #updateFlag:I
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 3130
    .restart local v3       #cv:Landroid/content/ContentValues;
    const-string v6, "flags"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3131
    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 3132
    sget-boolean v6, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v6, :cond_aa

    .line 3133
    const-string v6, "DownloadAttachmentAllTask"

    const-string v7, "onCancelDownloadAllAttachment - attachment.update"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3137
    .end local v3           #cv:Landroid/content/ContentValues;
    .end local v5           #updateFlag:I
    :cond_aa
    sget-boolean v6, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v6, :cond_cc

    .line 3138
    const-string v6, "DownloadAttachmentAllTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCancelDownloadAllAttachment - cancelQueuedAttachment : Fail, attachment ID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v1, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3143
    :cond_cc
    new-array v6, v10, [Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    aput-object v1, v6, v11

    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageViewFragmentBase$5;->publishProgress([Ljava/lang/Object;)V

    goto :goto_7b

    .line 3147
    :cond_d4
    iget-wide v6, v1, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-static {v6, v7}, Lcom/android/email/service/AttachmentDownloadService;->isInProgressQueuedAttachment(J)Z

    move-result v6

    if-ne v6, v10, :cond_ea

    .line 3149
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseNewDownloadProgress()Z

    move-result v6

    if-eqz v6, :cond_7b

    .line 3150
    new-array v6, v10, [Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    aput-object v1, v6, v11

    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageViewFragmentBase$5;->publishProgress([Ljava/lang/Object;)V

    goto :goto_7b

    .line 3154
    :cond_ea
    iget-wide v6, v1, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-static {v6, v7}, Lcom/android/email/service/AttachmentDownloadService;->cancelQueuedAttachment(J)Z

    move-result v6

    if-ne v6, v10, :cond_13a

    .line 3156
    sget-boolean v6, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v6, :cond_114

    .line 3157
    const-string v6, "DownloadAttachmentAllTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCancelDownloadAllAttachment - cancelQueuedAttachment : OK, attachment ID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v1, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3162
    :cond_114
    new-array v6, v10, [Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    aput-object v1, v6, v11

    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageViewFragmentBase$5;->publishProgress([Ljava/lang/Object;)V

    .line 3164
    iget v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_7b

    .line 3165
    iget v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v6, v6, -0x21

    and-int/lit8 v5, v6, -0x3

    .line 3169
    .restart local v5       #updateFlag:I
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 3170
    .restart local v3       #cv:Landroid/content/ContentValues;
    const-string v6, "flags"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3171
    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    goto/16 :goto_7b

    .line 3175
    .end local v3           #cv:Landroid/content/ContentValues;
    .end local v5           #updateFlag:I
    :cond_13a
    iget-boolean v6, v1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loaded:Z

    if-ne v6, v10, :cond_166

    iget v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_166

    .line 3177
    iget v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit8 v6, v6, -0x21

    or-int/lit8 v5, v6, 0x40

    .line 3181
    .restart local v5       #updateFlag:I
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 3182
    .restart local v3       #cv:Landroid/content/ContentValues;
    const-string v6, "flags"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3183
    invoke-virtual {v0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 3184
    sget-boolean v6, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v6, :cond_166

    .line 3185
    const-string v6, "DownloadAttachmentAllTask"

    const-string v7, "onCancelDownloadAllAttachment - attachment.update"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3189
    .end local v3           #cv:Landroid/content/ContentValues;
    .end local v5           #updateFlag:I
    :cond_166
    sget-boolean v6, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v6, :cond_188

    .line 3190
    const-string v6, "DownloadAttachmentAllTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCancelDownloadAllAttachment - cancelQueuedAttachment : Fail, attachment ID : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, v1, Lcom/android/email/AttachmentInfo;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3195
    :cond_188
    new-array v6, v10, [Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    aput-object v1, v6, v11

    invoke-virtual {p0, v6}, Lcom/android/email/activity/MessageViewFragmentBase$5;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_7b

    .line 3202
    .end local v0           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v1           #attachmentInfo:Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;
    :cond_191
    iget-object v6, p0, Lcom/android/email/activity/MessageViewFragmentBase$5;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #calls: Lcom/android/email/activity/MessageViewFragmentBase;->startMediaScan(Landroid/content/Context;)V
    invoke-static {v6, v2}, Lcom/android/email/activity/MessageViewFragmentBase;->access$900(Lcom/android/email/activity/MessageViewFragmentBase;Landroid/content/Context;)V

    goto/16 :goto_d
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 3077
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$5;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 5
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 3228
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$5;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    const/4 v1, 0x0

    #setter for: Lcom/android/email/activity/MessageViewFragmentBase;->downloadAttachmentAllTaskTaskReportInfo:Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageViewFragmentBase;->access$1002(Lcom/android/email/activity/MessageViewFragmentBase;Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;)Lcom/android/email/activity/MessageViewFragmentBase$DownloadAttachmentAllTaskTaskReportInfo;

    .line 3230
    invoke-static {}, Lcom/android/email/util/EmailFeature;->IsUseNewDownloadProgress()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$5;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$800(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/Controller;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 3231
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$5;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$800(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/Controller;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/email/Controller;->SetAttachdownstop(Z)V

    .line 3232
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragmentBase$5;->this$0:Lcom/android/email/activity/MessageViewFragmentBase;

    #getter for: Lcom/android/email/activity/MessageViewFragmentBase;->mController:Lcom/android/email/Controller;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragmentBase;->access$800(Lcom/android/email/activity/MessageViewFragmentBase;)Lcom/android/email/Controller;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/email/Controller;->SetAttachdownAllStop(Z)V

    .line 3234
    :cond_27
    return-void
.end method

.method protected varargs onProgressUpdate([Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V
    .registers 6
    .parameter "attachmentInfo"

    .prologue
    const/4 v3, 0x0

    .line 3211
    aget-object v1, p1, v3

    iget-object v1, v1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->cancelButton:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3212
    aget-object v1, p1, v3

    iget-object v1, v1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->saveButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3214
    aget-object v1, p1, v3

    iget-object v0, v1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->progressView:Landroid/widget/ProgressBar;

    .line 3215
    .local v0, bar:Landroid/widget/ProgressBar;
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 3217
    aget-object v1, p1, v3

    iget-boolean v1, v1, Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;->loaded:Z

    if-eqz v1, :cond_27

    .line 3218
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3219
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 3224
    :goto_26
    return-void

    .line 3221
    :cond_27
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_26
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 3077
    check-cast p1, [Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragmentBase$5;->onProgressUpdate([Lcom/android/email/activity/MessageViewFragmentBase$MessageViewAttachmentInfo;)V

    return-void
.end method
