.class Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;
.super Landroid/os/AsyncTask;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "showIRMTemplatesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/MessageCompose;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/MessageCompose;)V
    .registers 2
    .parameter

    .prologue
    .line 11984
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/MessageCompose;Lcom/android/email/activity/MessageCompose$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11984
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;-><init>(Lcom/android/email/activity/MessageCompose;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;
    .registers 13
    .parameter "arg0"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 11988
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$5900(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v5

    iget-wide v9, v5, Lcom/android/emailcommon/provider/EmailContent$Account;->mHostAuthKeyRecv:J

    invoke-static {v3, v9, v10}, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$HostAuth;

    move-result-object v7

    .line 11990
    .local v7, ha:Lcom/android/emailcommon/provider/EmailContent$HostAuth;
    if-nez v7, :cond_14

    .line 12006
    :goto_13
    return-object v4

    .line 11993
    :cond_14
    iget v3, v7, Lcom/android/emailcommon/provider/EmailContent$HostAuth;->mFlags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_26

    move v8, v0

    .line 11994
    .local v8, mSsl:Z
    :goto_1b
    if-nez v8, :cond_28

    .line 11995
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const v3, 0x7f0805be

    invoke-static {v0, v3, v1}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    goto :goto_13

    .end local v8           #mSsl:Z
    :cond_26
    move v8, v1

    .line 11993
    goto :goto_1b

    .line 11999
    .restart local v8       #mSsl:Z
    :cond_28
    const/4 v3, 0x4

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v1

    const-string v1, "IRMTemplateName"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "IRMTemplateId"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "IRMTemplateDescription"

    aput-object v1, v2, v0

    .line 12003
    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v0}, Lcom/android/email/activity/MessageCompose;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/EmailContent$IRMTemplate;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AccountKey="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;
    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->access$5900(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Account;

    move-result-object v5

    iget-wide v9, v5, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, cur:Landroid/database/Cursor;
    move-object v4, v6

    .line 12006
    goto :goto_13
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 11984
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->doInBackground([Ljava/lang/Void;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/database/Cursor;)V
    .registers 13
    .parameter "cur"

    .prologue
    .line 12011
    if-eqz p1, :cond_8b

    .line 12012
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 12013
    .local v0, count:I
    add-int/lit8 v8, v0, 0x1

    new-array v6, v8, [Ljava/lang/String;

    .line 12014
    .local v6, templates:[Ljava/lang/String;
    add-int/lit8 v8, v0, 0x1

    new-array v5, v8, [Ljava/lang/String;

    .line 12015
    .local v5, templateIds:[Ljava/lang/String;
    add-int/lit8 v8, v0, 0x1

    new-array v7, v8, [Ljava/lang/String;

    .line 12017
    .local v7, templatesDescription:[Ljava/lang/String;
    move v4, v0

    .line 12018
    .local v4, selectedTemplateIndex:I
    if-lez v0, :cond_8c

    .line 12019
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 12020
    const/4 v2, 0x0

    .local v2, i:I
    :goto_19
    if-ge v2, v0, :cond_4d

    .line 12021
    const/4 v8, 0x1

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v2

    .line 12022
    const/4 v8, 0x2

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v2

    .line 12023
    const/4 v8, 0x3

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    .line 12025
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/email/activity/MessageCompose;->access$1100(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_47

    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    #getter for: Lcom/android/email/activity/MessageCompose;->mTemplateId:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/email/activity/MessageCompose;->access$1100(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v8

    aget-object v9, v5, v2

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_47

    .line 12026
    move v4, v2

    .line 12028
    :cond_47
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 12020
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 12031
    :cond_4d
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const v9, 0x7f0805b5

    invoke-virtual {v8, v9}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v0

    .line 12032
    const/4 v8, 0x0

    aput-object v8, v5, v0

    .line 12033
    const-string v8, ""

    aput-object v8, v7, v0

    .line 12034
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-virtual {v8}, Lcom/android/email/activity/MessageCompose;->isFinishing()Z

    move-result v8

    if-nez v8, :cond_88

    .line 12035
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    invoke-direct {v1, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 12036
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 12037
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const v9, 0x7f0805b4

    invoke-virtual {v8, v9}, Lcom/android/email/activity/MessageCompose;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 12042
    new-instance v3, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;

    invoke-direct {v3, p0, v5, v6, v7}, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask$1;-><init>(Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 12072
    .local v3, listener:Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {v1, v6, v4, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 12073
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 12079
    .end local v1           #dialog:Landroid/app/AlertDialog$Builder;
    .end local v2           #i:I
    .end local v3           #listener:Landroid/content/DialogInterface$OnClickListener;
    :cond_88
    :goto_88
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 12081
    .end local v0           #count:I
    .end local v4           #selectedTemplateIndex:I
    .end local v5           #templateIds:[Ljava/lang/String;
    .end local v6           #templates:[Ljava/lang/String;
    .end local v7           #templatesDescription:[Ljava/lang/String;
    :cond_8b
    return-void

    .line 12076
    .restart local v0       #count:I
    .restart local v4       #selectedTemplateIndex:I
    .restart local v5       #templateIds:[Ljava/lang/String;
    .restart local v6       #templates:[Ljava/lang/String;
    .restart local v7       #templatesDescription:[Ljava/lang/String;
    :cond_8c
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->this$0:Lcom/android/email/activity/MessageCompose;

    const v9, 0x7f0805c4

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/android/email/EmailUtility;->showToast(Landroid/app/Activity;II)V

    goto :goto_88
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 11984
    check-cast p1, Landroid/database/Cursor;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose$showIRMTemplatesTask;->onPostExecute(Landroid/database/Cursor;)V

    return-void
.end method
