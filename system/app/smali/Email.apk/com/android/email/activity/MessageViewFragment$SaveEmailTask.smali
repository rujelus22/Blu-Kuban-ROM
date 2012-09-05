.class Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;
.super Landroid/os/AsyncTask;
.source "MessageViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveEmailTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/emailcommon/provider/EmailContent$Message;",
        ">;"
    }
.end annotation


# instance fields
.field file:Ljava/io/File;

.field filename:Ljava/lang/String;

.field fos:Ljava/io/FileOutputStream;

.field final synthetic this$0:Lcom/android/email/activity/MessageViewFragment;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageViewFragment;)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1712
    iput-object p1, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->this$0:Lcom/android/email/activity/MessageViewFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1714
    const-string v0, ""

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->filename:Ljava/lang/String;

    .line 1715
    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->file:Ljava/io/File;

    .line 1716
    iput-object v1, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->fos:Ljava/io/FileOutputStream;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageViewFragment;Lcom/android/email/activity/MessageViewFragment$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1712
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;-><init>(Lcom/android/email/activity/MessageViewFragment;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .registers 15
    .parameter "arg0"

    .prologue
    const/4 v12, 0x0

    const/16 v4, 0x20

    .line 1720
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->this$0:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->this$0:Lcom/android/email/activity/MessageViewFragment;

    #getter for: Lcom/android/email/activity/MessageViewFragment;->mCurrentMessageId:J
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragment;->access$900(Lcom/android/email/activity/MessageViewFragment;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v7

    .line 1721
    .local v7, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v7, :cond_16

    .line 1785
    :cond_15
    :goto_15
    return-object v12

    .line 1725
    :cond_16
    iget-object v8, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 1726
    .local v8, subject:Ljava/lang/String;
    if-nez v8, :cond_27

    .line 1727
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->this$0:Lcom/android/email/activity/MessageViewFragment;

    #getter for: Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/email/activity/MessageViewFragment;->access$700(Lcom/android/email/activity/MessageViewFragment;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0801f2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1729
    :cond_27
    sget-object v0, Lcom/android/email/activity/MessageViewFragment;->mDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, v7, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    .line 1730
    .local v11, tempDate:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Saved Email/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1732
    .local v9, targetDir:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".eml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->filename:Ljava/lang/String;

    .line 1733
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->filename:Ljava/lang/String;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->filename:Ljava/lang/String;

    .line 1734
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->filename:Ljava/lang/String;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->filename:Ljava/lang/String;

    .line 1735
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->filename:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->filename:Ljava/lang/String;

    .line 1738
    :try_start_8a
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1739
    .local v10, targetDirectory:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_98

    .line 1741
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 1743
    :cond_98
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->filename:Ljava/lang/String;

    invoke-static {v10, v0}, Lcom/android/emailcommon/utility/Utility;->createUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->file:Ljava/io/File;

    .line 1744
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->fos:Ljava/io/FileOutputStream;

    .line 1746
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->this$0:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->this$0:Lcom/android/email/activity/MessageViewFragment;

    #getter for: Lcom/android/email/activity/MessageViewFragment;->mCurrentMessageId:J
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragment;->access$900(Lcom/android/email/activity/MessageViewFragment;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->fos:Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/emailcommon/internet/Rfc822Output;->writeTo(Landroid/content/Context;JLjava/io/OutputStream;ZZ)V

    .line 1758
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->this$0:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->this$0:Lcom/android/email/activity/MessageViewFragment;

    #getter for: Lcom/android/email/activity/MessageViewFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/email/activity/MessageViewFragment;->access$700(Lcom/android/email/activity/MessageViewFragment;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f080090

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 1762
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_e8
    .catchall {:try_start_8a .. :try_end_e8} :catchall_15c
    .catch Ljava/io/FileNotFoundException; {:try_start_8a .. :try_end_e8} :catch_f6
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_e8} :catch_116
    .catch Lcom/android/emailcommon/mail/MessagingException; {:try_start_8a .. :try_end_e8} :catch_139

    .line 1780
    :try_start_e8
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->fos:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_15

    .line 1781
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_f1} :catch_f3

    goto/16 :goto_15

    .line 1782
    .end local v10           #targetDirectory:Ljava/io/File;
    :catch_f3
    move-exception v0

    goto/16 :goto_15

    .line 1764
    :catch_f6
    move-exception v6

    .line 1765
    .local v6, e:Ljava/io/FileNotFoundException;
    :try_start_f7
    const-string v0, "Email"

    const-string v1, "FileNotFoundException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->this$0:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0801fc

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V
    :try_end_10b
    .catchall {:try_start_f7 .. :try_end_10b} :catchall_15c

    .line 1780
    :try_start_10b
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->fos:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_15

    .line 1781
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_114
    .catch Ljava/io/IOException; {:try_start_10b .. :try_end_114} :catch_f3

    goto/16 :goto_15

    .line 1768
    .end local v6           #e:Ljava/io/FileNotFoundException;
    :catch_116
    move-exception v6

    .line 1769
    .local v6, e:Ljava/io/IOException;
    :try_start_117
    const-string v0, "Email"

    const-string v1, "IOException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->this$0:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0801fc

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    .line 1772
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_12e
    .catchall {:try_start_117 .. :try_end_12e} :catchall_15c

    .line 1780
    :try_start_12e
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->fos:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_15

    .line 1781
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_137
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_137} :catch_f3

    goto/16 :goto_15

    .line 1773
    .end local v6           #e:Ljava/io/IOException;
    :catch_139
    move-exception v6

    .line 1774
    .local v6, e:Lcom/android/emailcommon/mail/MessagingException;
    :try_start_13a
    const-string v0, "Email"

    const-string v1, "MessagingException"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->this$0:Lcom/android/email/activity/MessageViewFragment;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0801fc

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    .line 1777
    invoke-virtual {v6}, Lcom/android/emailcommon/mail/MessagingException;->printStackTrace()V
    :try_end_151
    .catchall {:try_start_13a .. :try_end_151} :catchall_15c

    .line 1780
    :try_start_151
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->fos:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_15

    .line 1781
    iget-object v0, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_15a
    .catch Ljava/io/IOException; {:try_start_151 .. :try_end_15a} :catch_f3

    goto/16 :goto_15

    .line 1779
    .end local v6           #e:Lcom/android/emailcommon/mail/MessagingException;
    :catchall_15c
    move-exception v0

    .line 1780
    :try_start_15d
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->fos:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_166

    .line 1781
    iget-object v1, p0, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_166
    .catch Ljava/io/IOException; {:try_start_15d .. :try_end_166} :catch_167

    .line 1779
    :cond_166
    :goto_166
    throw v0

    .line 1782
    :catch_167
    move-exception v1

    goto :goto_166
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 1712
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->doInBackground([Ljava/lang/Void;)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .registers 2
    .parameter "result"

    .prologue
    .line 1791
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1792
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 1712
    check-cast p1, Lcom/android/emailcommon/provider/EmailContent$Message;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageViewFragment$SaveEmailTask;->onPostExecute(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    return-void
.end method
