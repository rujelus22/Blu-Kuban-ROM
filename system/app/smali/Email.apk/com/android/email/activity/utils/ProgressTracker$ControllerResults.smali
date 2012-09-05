.class public Lcom/android/email/activity/utils/ProgressTracker$ControllerResults;
.super Lcom/android/email/Controller$Result;
.source "ProgressTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/utils/ProgressTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ControllerResults"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/utils/ProgressTracker;


# direct methods
.method public constructor <init>(Lcom/android/email/activity/utils/ProgressTracker;)V
    .registers 2
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/email/activity/utils/ProgressTracker$ControllerResults;->this$0:Lcom/android/email/activity/utils/ProgressTracker;

    invoke-direct {p0}, Lcom/android/email/Controller$Result;-><init>()V

    return-void
.end method


# virtual methods
.method public deactivateSncCallback()V
    .registers 3

    .prologue
    .line 271
    const-string v0, "ProgressTracker"

    const-string v1, "deactivateSncCallback"

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void
.end method

.method public deleteAccountCallback(Landroid/os/Bundle;J)V
    .registers 7
    .parameter "bundle"
    .parameter "accountId"

    .prologue
    .line 210
    const-string v0, "ProgressTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delete- Account Callback: [SYNC] accountId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-static {}, Lcom/android/email/Email;->getEmailContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/activity/utils/AppPreferences;->getAccountSelected(Landroid/content/Context;)J

    move-result-wide v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_2d

    .line 212
    invoke-static {}, Lcom/android/email/Email;->getEmailContext()Landroid/content/Context;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/android/email/activity/utils/AppPreferences;->setAccountSelected(Landroid/content/Context;J)V

    .line 214
    :cond_2d
    invoke-static {}, Lcom/android/email/Email;->getEmailContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/email/service/MailService;->updateBadgeProvider(Landroid/content/Context;)V

    .line 215
    return-void
.end method

.method public deleteAccountFromWebCallback(JLjava/lang/String;)V
    .registers 7
    .parameter "accounId"
    .parameter "emailId"

    .prologue
    .line 266
    const-string v0, "ProgressTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteAccountFromWebCallback - [ accounId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " emailId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method public modifyUserAccountCallback(Landroid/os/Bundle;)V
    .registers 7
    .parameter "bundle"

    .prologue
    .line 275
    const-string v2, "ProgressTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "modifyUserAccountCallback - bundle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    if-eqz p1, :cond_48

    .line 277
    const-string v2, "status_code"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 278
    .local v1, resultCode:I
    const-string v2, "status_text"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, errorMessage:Ljava/lang/String;
    const-string v2, "ProgressTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "modifyUserAccountCallback - resultCode :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " errorMessage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    .end local v0           #errorMessage:Ljava/lang/String;
    .end local v1           #resultCode:I
    :cond_48
    return-void
.end method

.method public updateMailboxCallback(Lcom/android/emailcommon/mail/MessagingException;JJII)V
    .registers 16
    .parameter "result"
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "progress"
    .parameter "numNewMessages"

    .prologue
    const/16 v7, 0x64

    const/4 v6, 0x1

    .line 169
    iget-object v3, p0, Lcom/android/email/activity/utils/ProgressTracker$ControllerResults;->this$0:Lcom/android/email/activity/utils/ProgressTracker;

    #getter for: Lcom/android/email/activity/utils/ProgressTracker;->mMailboxProgress:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/email/activity/utils/ProgressTracker;->access$300(Lcom/android/email/activity/utils/ProgressTracker;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 170
    .local v2, state:Ljava/lang/Boolean;
    move-wide v0, p4

    .line 171
    .local v0, mailboxKey:J
    if-nez p6, :cond_55

    .line 172
    if-nez v2, :cond_29

    .line 173
    iget-object v3, p0, Lcom/android/email/activity/utils/ProgressTracker$ControllerResults;->this$0:Lcom/android/email/activity/utils/ProgressTracker;

    #getter for: Lcom/android/email/activity/utils/ProgressTracker;->mMailboxProgress:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/email/activity/utils/ProgressTracker;->access$300(Lcom/android/email/activity/utils/ProgressTracker;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_29
    const-string v3, "ProgressTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[BEGIN] Mailbox-Refresh: [SYNC] accountId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mailboxId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " progress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_55
    if-ne p6, v7, :cond_7c

    if-nez p1, :cond_7c

    .line 180
    if-eqz v2, :cond_7c

    .line 181
    invoke-static {p2, p3}, Lcom/android/email/adapter/ProtocolAdapter;->getTrasportType(J)I

    move-result v3

    if-eq v3, v6, :cond_7c

    .line 182
    new-instance v3, Lcom/android/email/activity/utils/ProgressTracker$ControllerResults$2;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tProgTrack_mb#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4, v0, v1}, Lcom/android/email/activity/utils/ProgressTracker$ControllerResults$2;-><init>(Lcom/android/email/activity/utils/ProgressTracker$ControllerResults;Ljava/lang/String;J)V

    invoke-virtual {v3}, Lcom/android/email/activity/utils/ProgressTracker$ControllerResults$2;->start()V

    .line 199
    :cond_7c
    if-nez p1, :cond_80

    if-ne p6, v7, :cond_bc

    .line 200
    :cond_80
    iget-object v3, p0, Lcom/android/email/activity/utils/ProgressTracker$ControllerResults;->this$0:Lcom/android/email/activity/utils/ProgressTracker;

    #getter for: Lcom/android/email/activity/utils/ProgressTracker;->mMailboxProgress:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/email/activity/utils/ProgressTracker;->access$300(Lcom/android/email/activity/utils/ProgressTracker;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v3, "ProgressTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[END] Mailbox-Refresh: [SYNC] accountId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mailboxId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " progress: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-static {p4, p5}, Lcom/android/email/Email;->updateMailboxRefreshTime(J)V

    .line 206
    :cond_bc
    return-void
.end method

.method public updateMailboxListCallback(Lcom/android/emailcommon/mail/MessagingException;JI)V
    .registers 10
    .parameter "result"
    .parameter "accountId"
    .parameter "progress"

    .prologue
    const/16 v4, 0x64

    .line 116
    iget-object v1, p0, Lcom/android/email/activity/utils/ProgressTracker$ControllerResults;->this$0:Lcom/android/email/activity/utils/ProgressTracker;

    #getter for: Lcom/android/email/activity/utils/ProgressTracker;->mMailboxListProgress:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/email/activity/utils/ProgressTracker;->access$000(Lcom/android/email/activity/utils/ProgressTracker;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 118
    .local v0, state:Ljava/lang/Boolean;
    if-nez p4, :cond_4a

    .line 119
    if-nez v0, :cond_28

    .line 120
    iget-object v1, p0, Lcom/android/email/activity/utils/ProgressTracker$ControllerResults;->this$0:Lcom/android/email/activity/utils/ProgressTracker;

    #getter for: Lcom/android/email/activity/utils/ProgressTracker;->mMailboxListProgress:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/email/activity/utils/ProgressTracker;->access$000(Lcom/android/email/activity/utils/ProgressTracker;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_28
    const-string v1, "ProgressTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BEGIN] Mailbox-Loading: [FOLDERSYNC] accountId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " progress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_4a
    if-eq p4, v4, :cond_4e

    if-eqz p1, :cond_7f

    .line 127
    :cond_4e
    if-eqz v0, :cond_5d

    .line 128
    iget-object v1, p0, Lcom/android/email/activity/utils/ProgressTracker$ControllerResults;->this$0:Lcom/android/email/activity/utils/ProgressTracker;

    #getter for: Lcom/android/email/activity/utils/ProgressTracker;->mMailboxListProgress:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/email/activity/utils/ProgressTracker;->access$000(Lcom/android/email/activity/utils/ProgressTracker;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :cond_5d
    const-string v1, "ProgressTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[END] Mailbox-Loading: [FOLDERSYNC] accountId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " progress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_7f
    if-ne p4, v4, :cond_8b

    if-nez p1, :cond_8b

    .line 136
    new-instance v1, Lcom/android/email/activity/utils/ProgressTracker$ControllerResults$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/email/activity/utils/ProgressTracker$ControllerResults$1;-><init>(Lcom/android/email/activity/utils/ProgressTracker$ControllerResults;J)V

    invoke-static {v1}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 163
    :cond_8b
    return-void
.end method

.method public updateUserProfileCallback(Landroid/os/Bundle;)V
    .registers 7
    .parameter "status"

    .prologue
    .line 219
    const-string v2, "ProgressTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateUserProfileCallback: [SNC] status "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    if-eqz p1, :cond_46

    .line 221
    const-string v2, "status_code"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 222
    .local v1, resultCode:I
    const-string v2, "status_text"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, errorMessage:Ljava/lang/String;
    const-string v2, "ProgressTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateUserProfile status - errorMessage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/EmailLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    new-instance v2, Lcom/android/email/activity/utils/ProgressTracker$ControllerResults$3;

    invoke-direct {v2, p0, v1}, Lcom/android/email/activity/utils/ProgressTracker$ControllerResults$3;-><init>(Lcom/android/email/activity/utils/ProgressTracker$ControllerResults;I)V

    invoke-static {v2}, Lcom/android/emailcommon/utility/Utility;->runAsync(Ljava/lang/Runnable;)Landroid/os/AsyncTask;

    .line 263
    .end local v0           #errorMessage:Ljava/lang/String;
    .end local v1           #resultCode:I
    :cond_46
    return-void
.end method
