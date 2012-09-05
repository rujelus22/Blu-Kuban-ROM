.class public abstract Lcom/sec/android/socialhub/service/command/AbstractCommand;
.super Landroid/os/AsyncTask;
.source "AbstractCommand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/socialhub/service/command/AbstractCommand$ICommandResposneListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/sec/android/socialhub/service/message/RequestMessage;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field protected static final EMAIL_PROJECTION:[Ljava/lang/String;


# instance fields
.field protected accountIdArray:[Ljava/lang/String;

.field protected account_id:Ljava/lang/String;

.field protected account_type:Ljava/lang/String;

.field protected bSuccess:Z

.field protected errorCode:I

.field protected mContext:Landroid/content/Context;

.field protected mListener:Lcom/sec/android/socialhub/service/command/AbstractCommand$ICommandResposneListener;

.field protected mMessage:Lcom/sec/android/socialhub/service/message/RequestMessage;

.field protected mResolver:Landroid/content/ContentResolver;

.field protected reason:Ljava/lang/String;

.field protected reqID:I

.field protected reqType:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data4"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->EMAIL_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/socialhub/service/command/AbstractCommand$ICommandResposneListener;)V
    .registers 4
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 42
    iput-boolean v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->bSuccess:Z

    .line 43
    iput v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->errorCode:I

    .line 44
    iget v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->errorCode:I

    invoke-static {v0}, Lcom/sec/android/socialhub/service/error/SocialHubServiceError;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reason:Ljava/lang/String;

    .line 93
    iput-object p1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mContext:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mListener:Lcom/sec/android/socialhub/service/command/AbstractCommand$ICommandResposneListener;

    .line 95
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mResolver:Landroid/content/ContentResolver;

    .line 96
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/sec/android/socialhub/service/message/RequestMessage;)Ljava/lang/Boolean;
    .registers 6
    .parameter "message"

    .prologue
    const/4 v3, 0x0

    .line 56
    invoke-virtual {p0}, Lcom/sec/android/socialhub/service/command/AbstractCommand;->getTaskName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "doInBackground()"

    const-string v2, "executed"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iput v3, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->errorCode:I

    .line 59
    iget v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->errorCode:I

    invoke-static {v0}, Lcom/sec/android/socialhub/service/error/SocialHubServiceError;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reason:Ljava/lang/String;

    .line 61
    aget-object v0, p1, v3

    iput-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mMessage:Lcom/sec/android/socialhub/service/message/RequestMessage;

    .line 62
    aget-object v0, p1, v3

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/service/command/AbstractCommand;->loadMessage(Lcom/sec/android/socialhub/service/message/RequestMessage;)V

    .line 63
    invoke-virtual {p0}, Lcom/sec/android/socialhub/service/command/AbstractCommand;->execute()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 18
    check-cast p1, [Lcom/sec/android/socialhub/service/message/RequestMessage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/service/command/AbstractCommand;->doInBackground([Lcom/sec/android/socialhub/service/message/RequestMessage;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected abstract execute()Z
.end method

.method protected getEmailDbBody(Landroid/content/ContentValues;Ljava/lang/String;)Z
    .registers 13
    .parameter "value"
    .parameter "_id_origin"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 152
    const/4 v6, 0x0

    .line 154
    .local v6, cursor:Landroid/database/Cursor;
    const-string v0, "AbstractCommand"

    const-string v1, "getEmailDbBody()"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :try_start_1d
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "content://com.android.email.provider/message"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "flagAttachment"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "snippet"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 167
    if-eqz v6, :cond_76

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-ne v0, v8, :cond_76

    .line 169
    const-string v0, "hasAttachment"

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    const-string v0, "m_content"

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6e
    .catchall {:try_start_1d .. :try_end_6e} :catchall_8c
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_6e} :catch_80

    .line 186
    :goto_6e
    if-eqz v6, :cond_74

    .line 188
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 189
    const/4 v6, 0x0

    :cond_74
    move v0, v8

    .line 193
    :goto_75
    return v0

    .line 175
    :cond_76
    :try_start_76
    const-string v0, "AbstractCommand"

    const-string v1, "getEmailDbBody()"

    const-string v2, "cursor is null!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7f
    .catchall {:try_start_76 .. :try_end_7f} :catchall_8c
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_7f} :catch_80

    goto :goto_6e

    .line 179
    :catch_80
    move-exception v7

    .line 181
    .local v7, e:Ljava/lang/Exception;
    :try_start_81
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_8c

    .line 186
    if-eqz v6, :cond_8a

    .line 188
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 189
    const/4 v6, 0x0

    :cond_8a
    move v0, v9

    goto :goto_75

    .line 186
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_8c
    move-exception v0

    if-eqz v6, :cond_93

    .line 188
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 189
    const/4 v6, 0x0

    :cond_93
    throw v0
.end method

.method protected getEmailRecipientCount(Ljava/lang/String;Ljava/lang/String;)I
    .registers 13
    .parameter "toLists"
    .parameter "ccLists"

    .prologue
    .line 119
    const-string v6, "AbstractCommand"

    const-string v7, "getEmailRecipientCount"

    const-string v8, "start getEmailRecipientCount"

    invoke-static {v6, v7, v8}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/4 v3, 0x0

    .line 122
    .local v3, ret:I
    const/4 v0, 0x1

    .line 125
    .local v0, LIST_DELIMITER_EMAIL:C
    const/4 v4, 0x0

    .line 126
    .local v4, toCount:I
    const/4 v1, 0x0

    .line 128
    .local v1, ccCount:I
    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1e

    .line 130
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 133
    .local v5, toList:[Ljava/lang/String;
    array-length v4, v5

    .line 136
    .end local v5           #toList:[Ljava/lang/String;
    :cond_1e
    if-eqz p2, :cond_2f

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2f

    .line 138
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, ccList:[Ljava/lang/String;
    array-length v1, v2

    .line 143
    .end local v2           #ccList:[Ljava/lang/String;
    :cond_2f
    add-int v3, v4, v1

    .line 145
    const-string v6, "AbstractCommand"

    const-string v7, "getEmailRecipientCount"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "total count  = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return v3
.end method

.method protected abstract getTaskName()Ljava/lang/String;
.end method

.method protected invokeCallback(IIZILjava/lang/String;)V
    .registers 12
    .parameter "reqID"
    .parameter "reqType"
    .parameter "bSuccess"
    .parameter "errorCode"
    .parameter "reason"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mListener:Lcom/sec/android/socialhub/service/command/AbstractCommand$ICommandResposneListener;

    if-eqz v0, :cond_e

    .line 81
    iget-object v0, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->mListener:Lcom/sec/android/socialhub/service/command/AbstractCommand$ICommandResposneListener;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/socialhub/service/command/AbstractCommand$ICommandResposneListener;->onCommandCallback(IIZILjava/lang/String;)V

    .line 83
    :cond_e
    return-void
.end method

.method protected abstract loadMessage(Lcom/sec/android/socialhub/service/message/RequestMessage;)V
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 8
    .parameter "result"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 71
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    .line 73
    iget v1, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqID:I

    iget v2, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reqType:I

    iget-boolean v3, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->bSuccess:Z

    iget v4, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->errorCode:I

    iget-object v5, p0, Lcom/sec/android/socialhub/service/command/AbstractCommand;->reason:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/socialhub/service/command/AbstractCommand;->invokeCallback(IIZILjava/lang/String;)V

    .line 75
    :cond_18
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 18
    check-cast p1, Ljava/lang/Boolean;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/service/command/AbstractCommand;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 1

    .prologue
    .line 88
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 89
    return-void
.end method
