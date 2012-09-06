.class Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;
.super Lcom/android/emailcommon/utility/EmailAsyncTask;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendOrSaveMessageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/emailcommon/utility/EmailAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSend:Z

.field private final mTaskId:J

.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageCompose;JZ)V
    .registers 8
    .parameter
    .parameter "taskId"
    .parameter "send"

    .prologue
    .line 1297
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    .line 1298
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    .line 1299
    if-eqz p4, :cond_16

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1300
    const-string v0, "Email"

    const-string v1, "Inhibiting send while monkey is in charge."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    const/4 p4, 0x0

    .line 1303
    :cond_16
    iput-wide p2, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->mTaskId:J

    .line 1304
    iput-boolean p4, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->mSend:Z

    .line 1305
    invoke-virtual {p1}, Lcom/android/email/activity/MessageCompose;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->mContext:Landroid/content/Context;

    .line 1307
    invoke-static {}, Lcom/android/email/activity/MessageCompose;->access$1900()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->mTaskId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1308
    return-void
.end method

.method private shouldShowSaveToast()Z
    .registers 2

    .prologue
    .line 1386
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageCompose;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mPickingAttachment:Z
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$2600(Lcom/android/email/activity/MessageCompose;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Long;
    .registers 17
    .parameter "params"

    .prologue
    .line 1312
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$300(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v10

    monitor-enter v10

    .line 1313
    :try_start_7
    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$300(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v12

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$100(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/Account;

    move-result-object v13

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAttachments:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$1100(Lcom/android/email/activity/MessageCompose;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_10e

    const/4 v9, 0x1

    :goto_22
    iget-boolean v14, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->mSend:Z

    #calls: Lcom/android/email/activity/MessageCompose;->updateMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/Account;ZZ)V
    invoke-static {v11, v12, v13, v9, v14}, Lcom/android/email/activity/MessageCompose;->access$2000(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/Account;ZZ)V

    .line 1314
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v9}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1315
    .local v6, resolver:Landroid/content/ContentResolver;
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$300(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/emailcommon/provider/EmailContent$Message;->isSaved()Z

    move-result v9

    if-eqz v9, :cond_111

    .line 1317
    sget-object v9, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$300(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    iget-wide v11, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v9, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1319
    .local v3, draftUri:Landroid/net/Uri;
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$300(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    #calls: Lcom/android/email/activity/MessageCompose;->getUpdateContentValues(Lcom/android/emailcommon/provider/EmailContent$Message;)Landroid/content/ContentValues;
    invoke-static {v9, v11}, Lcom/android/email/activity/MessageCompose;->access$2100(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)Landroid/content/ContentValues;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v6, v3, v9, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1321
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1322
    .local v8, values:Landroid/content/ContentValues;
    const-string v9, "textContent"

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$300(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    iget-object v11, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    const-string v9, "textReply"

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$300(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    iget-object v11, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    const-string v9, "htmlReply"

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$300(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    iget-object v11, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    const-string v9, "introText"

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$300(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    iget-object v11, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    const-string v9, "sourceMessageKey"

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$300(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    iget-wide v11, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1327
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$300(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    iget-wide v11, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v9, v11, v12, v8}, Lcom/android/emailcommon/provider/EmailContent$Body;->updateBodyWithMessageId(Landroid/content/Context;JLandroid/content/ContentValues;)V

    .line 1333
    .end local v3           #draftUri:Landroid/net/Uri;
    .end local v8           #values:Landroid/content/ContentValues;
    :goto_af
    const/4 v4, 0x0

    .line 1334
    .local v4, hasUnloadedAttachments:Z
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAttachments:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$1100(Lcom/android/email/activity/MessageCompose;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_ba
    :goto_ba
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_167

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 1335
    .local v1, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget-object v9, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-nez v9, :cond_f5

    iget v9, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit16 v9, v9, 0x100

    if-nez v9, :cond_f5

    .line 1337
    iget v9, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    or-int/lit8 v9, v9, 0x4

    iput v9, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    .line 1338
    const/4 v4, 0x1

    .line 1339
    sget-boolean v9, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v9, :cond_f5

    .line 1340
    const-string v9, "Email"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Requesting download of attachment #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mId:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    :cond_f5
    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->isSaved()Z

    move-result v9

    if-nez v9, :cond_122

    .line 1348
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$300(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v9

    iget-wide v11, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    iput-wide v11, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    .line 1349
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v1, v9}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->save(Landroid/content/Context;)Landroid/net/Uri;

    goto :goto_ba

    .line 1381
    .end local v1           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v4           #hasUnloadedAttachments:Z
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #resolver:Landroid/content/ContentResolver;
    :catchall_10b
    move-exception v9

    monitor-exit v10
    :try_end_10d
    .catchall {:try_start_7 .. :try_end_10d} :catchall_10b

    throw v9

    .line 1313
    :cond_10e
    const/4 v9, 0x0

    goto/16 :goto_22

    .line 1330
    .restart local v6       #resolver:Landroid/content/ContentResolver;
    :cond_111
    :try_start_111
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2200(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/Controller;

    move-result-object v9

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$300(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    const/4 v12, 0x3

    invoke-virtual {v9, v11, v12}, Lcom/android/email/Controller;->saveToMailbox(Lcom/android/emailcommon/provider/EmailContent$Message;I)V

    goto :goto_af

    .line 1350
    .restart local v1       #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v4       #hasUnloadedAttachments:Z
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_122
    iget-wide v11, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$300(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v9

    iget-wide v13, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    cmp-long v9, v11, v13

    if-eqz v9, :cond_ba

    .line 1356
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$300(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v9

    iget-wide v11, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    iput-wide v11, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    .line 1357
    invoke-virtual {v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    .line 1358
    .local v2, cv:Landroid/content/ContentValues;
    const-string v9, "flags"

    iget v11, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1359
    const-string v9, "messageKey"

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$300(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    iget-wide v11, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v2, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1360
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v9}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v11, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v11, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_ba

    .line 1364
    .end local v1           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v2           #cv:Landroid/content/ContentValues;
    :cond_167
    iget-boolean v9, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->mSend:Z

    if-eqz v9, :cond_1ba

    .line 1367
    if-eqz v4, :cond_175

    .line 1368
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const v11, 0x7f08007f

    invoke-static {v9, v11}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 1371
    :cond_175
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2200(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/Controller;

    move-result-object v9

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v11}, Lcom/android/email/activity/MessageCompose;->access$300(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/android/email/Controller;->sendMessage(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    .line 1373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1374
    .local v0, addressTexts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2300(Lcom/android/email/activity/MessageCompose;)Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1375
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2400(Lcom/android/email/activity/MessageCompose;)Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1376
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$2500(Lcom/android/email/activity/MessageCompose;)Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1377
    new-instance v7, Lcom/android/common/contacts/DataUsageStatUpdater;

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->mContext:Landroid/content/Context;

    invoke-direct {v7, v9}, Lcom/android/common/contacts/DataUsageStatUpdater;-><init>(Landroid/content/Context;)V

    .line 1378
    .local v7, updater:Lcom/android/common/contacts/DataUsageStatUpdater;
    invoke-virtual {v7, v0}, Lcom/android/common/contacts/DataUsageStatUpdater;->updateWithRfc822Address(Ljava/util/Collection;)Z

    .line 1380
    .end local v0           #addressTexts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v7           #updater:Lcom/android/common/contacts/DataUsageStatUpdater;
    :cond_1ba
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v9}, Lcom/android/email/activity/MessageCompose;->access$300(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v9

    iget-wide v11, v9, Lcom/android/emailcommon/provider/EmailContent$Message;->mId:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    monitor-exit v10
    :try_end_1c7
    .catchall {:try_start_111 .. :try_end_1c7} :catchall_10b

    return-object v9
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1290
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onSuccess(Ljava/lang/Long;)V
    .registers 5
    .parameter "draftId"

    .prologue
    .line 1393
    invoke-static {}, Lcom/android/email/activity/MessageCompose;->access$1900()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->mTaskId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1395
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->mSend:Z

    if-nez v0, :cond_24

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->shouldShowSaveToast()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1396
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->mContext:Landroid/content/Context;

    const v1, 0x7f0800a1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1398
    :cond_24
    return-void
.end method

.method protected bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1290
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->onSuccess(Ljava/lang/Long;)V

    return-void
.end method
