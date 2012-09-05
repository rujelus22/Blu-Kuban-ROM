.class Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;
.super Landroid/os/AsyncTask;
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
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;

.field private final mSend:Z

.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/MessageCompose;Z)V
    .registers 7
    .parameter
    .parameter "send"

    .prologue
    .line 5009
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 5010
    if-eqz p2, :cond_15

    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 5011
    const-string v0, "Email"

    const-string v1, "Inhibiting send while monkey is in charge."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5012
    const/4 p2, 0x0

    .line 5014
    :cond_15
    iput-boolean p2, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->mSend:Z

    .line 5016
    #calls: Lcom/android/email/activity/MessageCompose;->getAttachmentsFromUI()[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    invoke-static {p1}, Lcom/android/email/activity/MessageCompose;->access$7500(Lcom/android/email/activity/MessageCompose;)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 5027
    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {p1}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {p1}, Lcom/android/email/activity/MessageCompose;->access$5900(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v2

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    array-length v0, v0

    if-lez v0, :cond_31

    const/4 v0, 0x1

    :goto_2b
    iget-boolean v3, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->mSend:Z

    #calls: Lcom/android/email/activity/MessageCompose;->updateMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Account;ZZ)V
    invoke-static {p1, v1, v2, v0, v3}, Lcom/android/email/activity/MessageCompose;->access$7600(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/EmailContent$Account;ZZ)V

    .line 5029
    return-void

    .line 5027
    :cond_31
    const/4 v0, 0x0

    goto :goto_2b
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 5005
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 40
    .parameter "params"

    .prologue
    .line 5033
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v37

    monitor-enter v37

    .line 5052
    const/16 v25, 0x1

    .line 5054
    .local v25, isReallySaved:Z
    :try_start_b
    const-string v5, "Compose >>"

    const-string v6, "PERFORMANCE s SendOrSaveMessageTask doInBackground start"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5056
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 5058
    .local v3, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->isPausedBefore:Z
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$7700(Lcom/android/email/activity/MessageCompose;)Z

    move-result v5

    if-eqz v5, :cond_77

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/emailcommon/provider/EmailContent$Message;->isSaved()Z

    move-result v5

    if-eqz v5, :cond_77

    .line 5059
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 5062
    .local v4, draftUri:Landroid/net/Uri;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "count(*)"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 5064
    .local v17, c:Landroid/database/Cursor;
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    .line 5066
    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-nez v5, :cond_66

    .line 5067
    const/16 v25, 0x0

    .line 5069
    const-string v5, "Compose >>"

    const-string v6, "Draft may be deleted in outside of this activity"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5072
    :cond_66
    if-nez v25, :cond_74

    .line 5073
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v5

    const-wide/16 v6, -0x1

    iput-wide v6, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 5076
    :cond_74
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 5080
    .end local v4           #draftUri:Landroid/net/Uri;
    .end local v17           #c:Landroid/database/Cursor;
    :cond_77
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/emailcommon/provider/EmailContent$Message;->isSaved()Z

    move-result v5

    if-eqz v5, :cond_23c

    .line 5082
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->SYNCED_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 5084
    .restart local v4       #draftUri:Landroid/net/Uri;
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v34

    .line 5085
    .local v34, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    #calls: Lcom/android/email/activity/MessageCompose;->getUpdateContentValues(Lcom/android/emailcommon/provider/EmailContent$Message;)Landroid/content/ContentValues;
    invoke-static {v5, v6}, Lcom/android/email/activity/MessageCompose;->access$7800(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)Landroid/content/ContentValues;

    move-result-object v19

    .line 5086
    .local v19, cv:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->IsEAS()Z
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$4900(Lcom/android/email/activity/MessageCompose;)Z

    move-result v5

    if-nez v5, :cond_c6

    .line 5087
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5088
    :cond_c6
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5091
    new-instance v36, Landroid/content/ContentValues;

    invoke-direct/range {v36 .. v36}, Landroid/content/ContentValues;-><init>()V

    .line 5092
    .local v36, values:Landroid/content/ContentValues;
    const-string v5, "textContent"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    iget-object v6, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5093
    const-string v5, "htmlContent"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    iget-object v6, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5095
    const-string v5, "textReply"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    iget-object v6, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5096
    const-string v5, "htmlReply"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    iget-object v6, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5097
    const-string v5, "introText"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    iget-object v6, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5098
    const-string v5, "sourceMessageKey"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5104
    const-string v28, ""

    .line 5105
    .local v28, mSnippet:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v5

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    if-eqz v5, :cond_208

    .line 5106
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v5

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/emailcommon/mail/Snippet;->fromHtmlText(Ljava/lang/String;)Ljava/lang/String;
    :try_end_159
    .catchall {:try_start_b .. :try_end_159} :catchall_22a

    move-result-object v28

    .line 5112
    :cond_15a
    :goto_15a
    :try_start_15a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageCompose;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v31

    .line 5113
    .local v31, tempResolver:Landroid/content/ContentResolver;
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v32

    .line 5115
    .local v32, tempUri:Landroid/net/Uri;
    new-instance v33, Landroid/content/ContentValues;

    invoke-direct/range {v33 .. v33}, Landroid/content/ContentValues;-><init>()V

    .line 5116
    .local v33, updateValues:Landroid/content/ContentValues;
    const-string v5, "snippet"

    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5117
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_18f
    .catchall {:try_start_15a .. :try_end_18f} :catchall_22a
    .catch Ljava/lang/Exception; {:try_start_15a .. :try_end_18f} :catch_224

    .line 5123
    .end local v31           #tempResolver:Landroid/content/ContentResolver;
    .end local v32           #tempUri:Landroid/net/Uri;
    .end local v33           #updateValues:Landroid/content/ContentValues;
    :goto_18f
    :try_start_18f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, v36

    invoke-static {v5, v6, v7, v0}, Lcom/android/emailcommon/provider/EmailContent$Body;->updateBodyWithMessageId(Landroid/content/Context;JLandroid/content/ContentValues;)V

    .line 5130
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6, v7}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v15

    .line 5133
    .local v15, attachmentsFromDB:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    move-object v11, v15

    .local v11, arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    array-length v0, v11

    move/from16 v26, v0

    .local v26, len$:I
    const/16 v23, 0x0

    .local v23, i$:I
    move/from16 v24, v23

    .end local v11           #arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v23           #i$:I
    .end local v26           #len$:I
    .local v24, i$:I
    :goto_1bc
    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_250

    aget-object v14, v11, v24

    .line 5134
    .local v14, attachmentFromDB:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    const/16 v16, 0x1

    .line 5135
    .local v16, bShouldBeRemoved:Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .local v12, arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    array-length v0, v12

    move/from16 v27, v0

    .local v27, len$:I
    const/16 v23, 0x0

    .end local v24           #i$:I
    .restart local v23       #i$:I
    :goto_1cf
    move/from16 v0, v23

    move/from16 v1, v27

    if-ge v0, v1, :cond_1e8

    aget-object v18, v12, v23

    .line 5136
    .local v18, curAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    const/4 v5, 0x1

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mIsInline:I

    if-ne v5, v6, :cond_22d

    iget-object v5, v14, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-ne v5, v6, :cond_22d

    .line 5138
    const/16 v16, 0x0

    .line 5146
    .end local v18           #curAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_1e8
    const/4 v5, 0x1

    move/from16 v0, v16

    if-ne v5, v0, :cond_203

    .line 5147
    new-instance v5, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask$1;-><init>(Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;)V

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Long;

    const/4 v7, 0x0

    iget-wide v8, v14, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v5, v6}, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 5133
    :cond_203
    add-int/lit8 v23, v24, 0x1

    move/from16 v24, v23

    .end local v23           #i$:I
    .restart local v24       #i$:I
    goto :goto_1bc

    .line 5107
    .end local v12           #arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v14           #attachmentFromDB:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v15           #attachmentsFromDB:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v16           #bShouldBeRemoved:Z
    .end local v24           #i$:I
    .end local v27           #len$:I
    :cond_208
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v5

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    if-eqz v5, :cond_15a

    .line 5108
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v5

    iget-object v5, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/emailcommon/mail/Snippet;->fromPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_15a

    .line 5118
    :catch_224
    move-exception v20

    .line 5120
    .local v20, e:Ljava/lang/Exception;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_18f

    .line 5285
    .end local v3           #resolver:Landroid/content/ContentResolver;
    .end local v4           #draftUri:Landroid/net/Uri;
    .end local v19           #cv:Landroid/content/ContentValues;
    .end local v20           #e:Ljava/lang/Exception;
    .end local v28           #mSnippet:Ljava/lang/String;
    .end local v34           #uri:Landroid/net/Uri;
    .end local v36           #values:Landroid/content/ContentValues;
    :catchall_22a
    move-exception v5

    monitor-exit v37
    :try_end_22c
    .catchall {:try_start_18f .. :try_end_22c} :catchall_22a

    throw v5

    .line 5141
    .restart local v3       #resolver:Landroid/content/ContentResolver;
    .restart local v4       #draftUri:Landroid/net/Uri;
    .restart local v12       #arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v14       #attachmentFromDB:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v15       #attachmentsFromDB:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v16       #bShouldBeRemoved:Z
    .restart local v18       #curAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v19       #cv:Landroid/content/ContentValues;
    .restart local v23       #i$:I
    .restart local v27       #len$:I
    .restart local v28       #mSnippet:Ljava/lang/String;
    .restart local v34       #uri:Landroid/net/Uri;
    .restart local v36       #values:Landroid/content/ContentValues;
    :cond_22d
    :try_start_22d
    move-object/from16 v0, v18

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v7, v14, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_239

    .line 5142
    const/16 v16, 0x0

    .line 5135
    :cond_239
    add-int/lit8 v23, v23, 0x1

    goto :goto_1cf

    .line 5158
    .end local v4           #draftUri:Landroid/net/Uri;
    .end local v12           #arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v14           #attachmentFromDB:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v15           #attachmentsFromDB:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v16           #bShouldBeRemoved:Z
    .end local v18           #curAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v19           #cv:Landroid/content/ContentValues;
    .end local v23           #i$:I
    .end local v27           #len$:I
    .end local v28           #mSnippet:Ljava/lang/String;
    .end local v34           #uri:Landroid/net/Uri;
    .end local v36           #values:Landroid/content/ContentValues;
    :cond_23c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$5800(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/Controller;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Lcom/android/email/Controller;->saveToMailbox(Lcom/android/emailcommon/provider/EmailContent$Message;I)V

    .line 5161
    :cond_250
    const-string v5, "Compose >>"

    const-string v6, "PERFORMANCE s SendOrSaveMessageTask draft saving complete"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5165
    const/16 v22, 0x0

    .line 5166
    .local v22, hasUnloadedAttachments:Z
    const/16 v35, 0x0

    .line 5167
    .local v35, useSmartSend:Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->IsEAS()Z
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$4900(Lcom/android/email/activity/MessageCompose;)Z

    move-result v5

    if-eqz v5, :cond_26f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageCompose;->IsOriginMsgEdited()Z

    move-result v5

    if-eqz v5, :cond_279

    :cond_26f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->IsSnc()Z
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$7900(Lcom/android/email/activity/MessageCompose;)Z

    move-result v5

    if-eqz v5, :cond_27b

    .line 5178
    :cond_279
    const/16 v35, 0x1

    .line 5180
    :cond_27b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->attachments:[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .restart local v11       #arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    array-length v0, v11

    move/from16 v26, v0

    .restart local v26       #len$:I
    const/16 v23, 0x0

    .restart local v23       #i$:I
    :goto_284
    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_36b

    aget-object v13, v11, v23

    .line 5181
    .local v13, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget-object v5, v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-nez v5, :cond_2b4

    .line 5182
    if-nez v35, :cond_2b4

    .line 5183
    iget v5, v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    .line 5184
    const/16 v22, 0x1

    .line 5186
    const-string v5, "Compose >>"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Requesting download of attachment #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v13, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5196
    :cond_2b4
    invoke-virtual {v13}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->isSaved()Z

    move-result v5

    if-eqz v5, :cond_2c0

    if-nez v25, :cond_2c0

    .line 5197
    const-wide/16 v5, -0x1

    iput-wide v5, v13, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 5200
    :cond_2c0
    invoke-virtual {v13}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->isSaved()Z

    move-result v5

    if-nez v5, :cond_2e3

    .line 5202
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v5

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v5, v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    .line 5203
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v13, v5}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->save(Landroid/content/Context;)Landroid/net/Uri;

    .line 5234
    :goto_2d9
    const-string v5, "Compose >>"

    const-string v6, "PERFORMANCE s SendOrSaveMessageTask attachment saving complete"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5180
    add-int/lit8 v23, v23, 0x1

    goto :goto_284

    .line 5204
    :cond_2e3
    iget-wide v5, v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v7}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v7

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_329

    .line 5214
    invoke-virtual {v13}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->toContentValues()Landroid/content/ContentValues;

    move-result-object v19

    .line 5215
    .restart local v19       #cv:Landroid/content/ContentValues;
    const-string v5, "flags"

    iget v6, v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5216
    const-string v5, "messageKey"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5217
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v19

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_2d9

    .line 5219
    .end local v19           #cv:Landroid/content/ContentValues;
    :cond_329
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 5220
    .restart local v19       #cv:Landroid/content/ContentValues;
    const-string v5, "flags"

    iget v6, v13, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5221
    const-string v5, "messageKey"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5222
    sget-object v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, v13, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v34

    .line 5223
    .restart local v34       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_2d9

    .line 5238
    .end local v13           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v19           #cv:Landroid/content/ContentValues;
    .end local v34           #uri:Landroid/net/Uri;
    :cond_36b
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->mSend:Z

    if-eqz v5, :cond_3d6

    .line 5242
    if-eqz v22, :cond_37e

    .line 5243
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const v6, 0x7f08008f

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    .line 5249
    :cond_37e
    const-string v5, "com.android.email.intent.action.MEETING_RESPONSE"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3a8

    const-string v5, "com.android.email.intent.action.CALENDAR_MEETING_RESPONSE"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_472

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$6100(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v5

    if-eqz v5, :cond_472

    .line 5250
    :cond_3a8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v5}, Lcom/android/email/activity/MessageCompose;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "meeting_response"

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 5252
    .local v10, response:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$5800(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/Controller;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$6100(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v8}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v8

    iget-wide v8, v8, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual/range {v5 .. v10}, Lcom/android/email/Controller;->sendMeetingEditedResponse(JJI)V
    :try_end_3d6
    .catchall {:try_start_22d .. :try_end_3d6} :catchall_22a

    .line 5261
    .end local v10           #response:I
    :cond_3d6
    :goto_3d6
    :try_start_3d6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #calls: Lcom/android/email/activity/MessageCompose;->IsEAS2010()Z
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$8000(Lcom/android/email/activity/MessageCompose;)Z

    move-result v5

    if-eqz v5, :cond_46f

    const-string v5, "com.android.email.intent.action.REPLY"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_410

    const-string v5, "com.android.email.intent.action.FORWARD"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_410

    const-string v5, "com.android.email.intent.action.REPLY_ALL"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46f

    .line 5263
    :cond_410
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$6100(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v5

    if-eqz v5, :cond_46f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$6100(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v5

    iget-wide v5, v5, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_46f

    .line 5264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v29

    .line 5265
    .local v29, milliTime:J
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 5266
    .restart local v19       #cv:Landroid/content/ContentValues;
    const-string v5, "com.android.email.intent.action.REPLY"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a3

    .line 5267
    const-string v5, "lastVerb"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5268
    const-string v5, "lastVerbTime"

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 5276
    :goto_45a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Message;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v7}, Lcom/android/email/activity/MessageCompose;->access$6100(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v7

    iget-wide v7, v7, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, v19

    invoke-static {v5, v6, v7, v8, v0}, Lcom/android/emailcommon/provider/EmailContent$Message;->update(Landroid/content/Context;Landroid/net/Uri;JLandroid/content/ContentValues;)I
    :try_end_46f
    .catchall {:try_start_3d6 .. :try_end_46f} :catchall_22a
    .catch Ljava/lang/Exception; {:try_start_3d6 .. :try_end_46f} :catch_4cb

    .line 5284
    .end local v19           #cv:Landroid/content/ContentValues;
    .end local v29           #milliTime:J
    :cond_46f
    :goto_46f
    const/4 v5, 0x0

    :try_start_470
    monitor-exit v37

    return-object v5

    .line 5253
    :cond_472
    const-string v5, "com.android.email.intent.action.CALENDAR_MEETING_RESPONSE"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d6

    .line 5254
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$5800(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/Controller;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;
    invoke-static {v8}, Lcom/android/email/activity/MessageCompose;->access$1700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v8

    iget-wide v8, v8, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/email/Controller;->sendMessage(JJ)V
    :try_end_4a1
    .catchall {:try_start_470 .. :try_end_4a1} :catchall_22a

    goto/16 :goto_3d6

    .line 5269
    .restart local v19       #cv:Landroid/content/ContentValues;
    .restart local v29       #milliTime:J
    :cond_4a3
    :try_start_4a3
    const-string v5, "com.android.email.intent.action.FORWARD"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->access$1600(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d0

    .line 5270
    const-string v5, "lastVerb"

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5271
    const-string v5, "lastVerbTime"

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_4ca
    .catchall {:try_start_4a3 .. :try_end_4ca} :catchall_22a
    .catch Ljava/lang/Exception; {:try_start_4a3 .. :try_end_4ca} :catch_4cb

    goto :goto_45a

    .line 5278
    .end local v19           #cv:Landroid/content/ContentValues;
    .end local v29           #milliTime:J
    :catch_4cb
    move-exception v21

    .line 5279
    .local v21, ex:Ljava/lang/Exception;
    :try_start_4cc
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4cf
    .catchall {:try_start_4cc .. :try_end_4cf} :catchall_22a

    goto :goto_46f

    .line 5273
    .end local v21           #ex:Ljava/lang/Exception;
    .restart local v19       #cv:Landroid/content/ContentValues;
    .restart local v29       #milliTime:J
    :cond_4d0
    :try_start_4d0
    const-string v5, "lastVerb"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5274
    const-string v5, "lastVerbTime"

    invoke-static/range {v29 .. v30}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_4e7
    .catchall {:try_start_4d0 .. :try_end_4e7} :catchall_22a
    .catch Ljava/lang/Exception; {:try_start_4d0 .. :try_end_4e7} :catch_4cb

    goto/16 :goto_45a
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 5005
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 6
    .parameter "param"

    .prologue
    const/4 v3, 0x0

    .line 5290
    invoke-static {}, Lcom/android/email/activity/MessageCompose;->access$4400()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 5291
    const/4 v0, 0x0

    :try_start_7
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$4502(Z)Z

    .line 5292
    invoke-static {}, Lcom/android/email/activity/MessageCompose;->access$4400()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 5293
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_1f

    .line 5295
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const/4 v1, 0x0

    #setter for: Lcom/android/email/activity/MessageCompose;->mSendOrSaveMessageTask:Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;
    invoke-static {v0, v1}, Lcom/android/email/activity/MessageCompose;->access$8102(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;)Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;

    .line 5297
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 5313
    :cond_1e
    :goto_1e
    return-void

    .line 5293
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0

    .line 5302
    :cond_22
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->mSend:Z

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageCompose;->getChangingConfigurations()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageCompose;->getChangingConfigurations()I

    move-result v0

    and-int/lit16 v0, v0, 0x1000

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageCompose;->getChangingConfigurations()I

    move-result v0

    const/high16 v1, 0x4000

    and-int/2addr v0, v1

    if-nez v0, :cond_5a

    .line 5305
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mSecurityOptions:Z
    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->access$8200(Lcom/android/email/activity/MessageCompose;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 5306
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const v1, 0x7f0800c5

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5309
    :cond_5a
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->mSend:Z

    if-eqz v0, :cond_1e

    .line 5310
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const v2, 0x7f0800b9

    invoke-virtual {v1, v2}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1e
.end method
