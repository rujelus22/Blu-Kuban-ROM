.class public Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;
.super Landroid/os/AsyncTask;
.source "SocialHubFileUploadTask.java"

# interfaces
.implements Lcom/sec/android/socialhub/service/SocialHubSnsHandler$ISnsHandleCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/sec/android/socialhub/service/model/UploadFileInfo;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;",
        "Lcom/sec/android/socialhub/service/SocialHubSnsHandler$ISnsHandleCallback;"
    }
.end annotation


# instance fields
.field private mAction:Ljava/lang/String;

.field private mContent:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFileName:Ljava/lang/String;

.field private mNotiController:Lcom/sec/android/socialhub/notification/HubNotificationController;

.field private mRegisteredID:I

.field private mSnsHandler:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

.field private mSpTypeList:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/socialhub/service/SocialHubSnsHandler;Lcom/sec/android/socialhub/notification/HubNotificationController;)V
    .registers 6
    .parameter "context"
    .parameter "handler"
    .parameter "controller"

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 33
    iput-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->mSnsHandler:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    .line 34
    iput-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->mContext:Landroid/content/Context;

    .line 35
    iput-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->mNotiController:Lcom/sec/android/socialhub/notification/HubNotificationController;

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->mRegisteredID:I

    .line 38
    iput-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->mFileName:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->mContent:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->mAction:Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->mSnsHandler:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    .line 47
    iput-object p3, p0, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->mNotiController:Lcom/sec/android/socialhub/notification/HubNotificationController;

    .line 48
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/sec/android/socialhub/service/model/UploadFileInfo;)Ljava/lang/Integer;
    .registers 12
    .parameter "info"

    .prologue
    const/4 v9, 0x0

    .line 53
    aget-object v0, p1, v9

    iget-object v0, v0, Lcom/sec/android/socialhub/service/model/UploadFileInfo;->fileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->mFileName:Ljava/lang/String;

    .line 54
    aget-object v0, p1, v9

    iget-object v0, v0, Lcom/sec/android/socialhub/service/model/UploadFileInfo;->content:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->mContent:Ljava/lang/String;

    .line 55
    aget-object v0, p1, v9

    iget-object v0, v0, Lcom/sec/android/socialhub/service/model/UploadFileInfo;->fail_action:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->mAction:Ljava/lang/String;

    .line 56
    aget-object v0, p1, v9

    iget-object v0, v0, Lcom/sec/android/socialhub/service/model/UploadFileInfo;->spTypeList:[I

    iput-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->mSpTypeList:[I

    .line 58
    const/4 v8, 0x0

    .line 60
    .local v8, ret:Ljava/lang/Integer;
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->mSnsHandler:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    if-eqz v0, :cond_25

    .line 62
    aget-object v0, p1, v9

    iget v0, v0, Lcom/sec/android/socialhub/service/model/UploadFileInfo;->updateType:I

    packed-switch v0, :pswitch_data_74

    .line 75
    :cond_25
    :goto_25
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    aput-object v8, v0, v9

    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->publishProgress([Ljava/lang/Object;)V

    .line 77
    return-object v8

    .line 65
    :pswitch_2e
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->mSnsHandler:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    aget-object v1, p1, v9

    iget-object v2, v1, Lcom/sec/android/socialhub/service/model/UploadFileInfo;->spTypeList:[I

    aget-object v1, p1, v9

    iget-object v3, v1, Lcom/sec/android/socialhub/service/model/UploadFileInfo;->fileName:Ljava/lang/String;

    aget-object v1, p1, v9

    iget-object v4, v1, Lcom/sec/android/socialhub/service/model/UploadFileInfo;->content:Ljava/lang/String;

    aget-object v1, p1, v9

    iget-object v5, v1, Lcom/sec/android/socialhub/service/model/UploadFileInfo;->title:Ljava/lang/String;

    aget-object v1, p1, v9

    iget-object v6, v1, Lcom/sec/android/socialhub/service/model/UploadFileInfo;->tag:Ljava/lang/String;

    aget-object v1, p1, v9

    iget-object v7, v1, Lcom/sec/android/socialhub/service/model/UploadFileInfo;->pfd:Landroid/os/ParcelFileDescriptor;

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->photoUpload(Lcom/sec/android/socialhub/service/SocialHubSnsHandler$ISnsHandleCallback;[ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 66
    goto :goto_25

    .line 68
    :pswitch_52
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->mSnsHandler:Lcom/sec/android/socialhub/service/SocialHubSnsHandler;

    aget-object v1, p1, v9

    iget-object v1, v1, Lcom/sec/android/socialhub/service/model/UploadFileInfo;->spTypeList:[I

    aget v2, v1, v9

    aget-object v1, p1, v9

    iget-object v3, v1, Lcom/sec/android/socialhub/service/model/UploadFileInfo;->categoryOwnerID:Ljava/lang/String;

    aget-object v1, p1, v9

    iget-object v4, v1, Lcom/sec/android/socialhub/service/model/UploadFileInfo;->title:Ljava/lang/String;

    aget-object v1, p1, v9

    iget-object v5, v1, Lcom/sec/android/socialhub/service/model/UploadFileInfo;->fileName:Ljava/lang/String;

    aget-object v1, p1, v9

    iget-object v6, v1, Lcom/sec/android/socialhub/service/model/UploadFileInfo;->pfd:Landroid/os/ParcelFileDescriptor;

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/socialhub/service/SocialHubSnsHandler;->videoUpload(Lcom/sec/android/socialhub/service/SocialHubSnsHandler$ISnsHandleCallback;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 69
    goto :goto_25

    .line 62
    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_52
        :pswitch_2e
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"

    .prologue
    .line 29
    check-cast p1, [Lcom/sec/android/socialhub/service/model/UploadFileInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->doInBackground([Lcom/sec/android/socialhub/service/model/UploadFileInfo;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getPendingIntent(Landroid/content/Intent;)Landroid/app/PendingIntent;
    .registers 5
    .parameter "intent"

    .prologue
    .line 190
    const/high16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 191
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x800

    invoke-static {v0, v1, p1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public makeEmptyIntent()Landroid/app/PendingIntent;
    .registers 5

    .prologue
    .line 200
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.socialhub.ACTION_HANDLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 201
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "foward_action"

    const-string v2, "android.intent.action.socialhub.VIEW"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const-string v1, "SocialHubFileUploadTask"

    const-string v2, "makeEmptyIntent()"

    const-string v3, "Start"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->getPendingIntent(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public makeFailIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[III)Landroid/app/PendingIntent;
    .registers 9
    .parameter "action"
    .parameter "file"
    .parameter "content"
    .parameter "spType"
    .parameter "notification_id"
    .parameter "reqType"

    .prologue
    .line 210
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.socialhub.ACTION_HANDLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 211
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "foward_action"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    const-string v1, "foward_filename"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string v1, "foward_content"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    const-string v1, "foward_sptype"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 215
    const-string v1, "notification_id"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 216
    const-string v1, "foward_type"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->getPendingIntent(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public makeSuccessIntent(I)Landroid/app/PendingIntent;
    .registers 7
    .parameter "notification_id"

    .prologue
    .line 223
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.socialhub.ACTION_HANDLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 224
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "foward_action"

    const-string v2, "android.intent.action.socialhub.VIEW"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string v1, "notification_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    const-string v1, "SocialHubFileUploadTask"

    const-string v2, "makeSuccessIntent()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "noti_id - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/service/util/ServiceLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0, v0}, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->getPendingIntent(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .registers 17
    .parameter "values"

    .prologue
    .line 83
    invoke-super/range {p0 .. p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 85
    const/4 v0, 0x0

    aget-object v0, p1, v0

    if-nez v0, :cond_12

    .line 87
    const-string v0, "SocialHubFileUploadTask"

    const-string v1, "onPostExecute()"

    const-string v2, "result is null!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :goto_11
    return-void

    .line 93
    :cond_12
    const/4 v0, 0x0

    :try_start_13
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->mRegisteredID:I

    .line 95
    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->mNotiController:Lcom/sec/android/socialhub/notification/HubNotificationController;

    if-eqz v0, :cond_5f

    .line 97
    iget-object v8, p0, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->mNotiController:Lcom/sec/android/socialhub/notification/HubNotificationController;

    iget-object v9, p0, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->mContext:Landroid/content/Context;

    iget v10, p0, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->mRegisteredID:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->makeEmptyIntent()Landroid/app/PendingIntent;

    move-result-object v13

    iget-object v0, p0, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->mNotiController:Lcom/sec/android/socialhub/notification/HubNotificationController;

    iget-object v1, p0, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->mFileName:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/socialhub/util/SocialHubTextUtil;->getFileNameByString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    iget-object v4, p0, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->mContext:Landroid/content/Context;

    const v5, 0x7f080107

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v14, p0, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->mFileName:Ljava/lang/String;

    invoke-static {v14}, Lcom/sec/android/socialhub/util/SocialHubTextUtil;->getFileNameByString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/socialhub/notification/HubNotificationController;->createCommonNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/app/Notification;

    move-result-object v6

    move-object v0, v8

    move-object v1, v9

    move v2, v10

    move-object v3, v11

    move-object v4, v12

    move-object v5, v13

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/socialhub/notification/HubNotificationController;->registerNotification(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/app/Notification;)V

    .line 107
    :cond_5f
    const-string v0, "SocialHubFileUploadTask"

    const-string v1, "onProgressUpdate()"

    const-string v2, "registered!!"

    invoke-static {v0, v1, v2}, Lcom/sec/android/socialhub/service/util/ServiceLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_68} :catch_69

    goto :goto_11

    .line 109
    :catch_69
    move-exception v7

    .line 111
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public onResponse(IIZZLandroid/net/Uri;IIILjava/util/Map;Ljava/lang/String;)V
    .registers 27
    .parameter "reqID"
    .parameter "reqType"
    .parameter "bSuccess"
    .parameter "bContinue"
    .parameter "uri"
    .parameter "httpStatusCode"
    .parameter "errCode"
    .parameter "subErrCode"
    .parameter "partialErrMap"
    .parameter "reason"

    .prologue
    .line 126
    packed-switch p2, :pswitch_data_ca

    .line 185
    :goto_3
    :pswitch_3
    return-void

    .line 131
    :pswitch_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->mRegisteredID:I

    move/from16 v0, p1

    if-eq v0, v1, :cond_16

    .line 133
    const-string v1, "SocialHubFileUploadTask"

    const-string v2, "onResponse()"

    const-string v3, "id is different"

    invoke-static {v1, v2, v3}, Lcom/sec/android/socialhub/service/util/ServiceLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 137
    :cond_16
    const/4 v10, 0x0

    .line 138
    .local v10, page:Landroid/app/PendingIntent;
    const/4 v8, 0x0

    .line 139
    .local v8, title:Ljava/lang/String;
    const/4 v9, 0x0

    .line 140
    .local v9, content:Ljava/lang/String;
    const/4 v11, 0x0

    .line 141
    .local v11, notification:Landroid/app/Notification;
    const/4 v14, 0x0

    .line 142
    .local v14, format:Ljava/lang/String;
    const/4 v15, 0x0

    .line 146
    .local v15, state:Ljava/lang/String;
    const/4 v1, 0x1

    move/from16 v0, p3

    if-ne v0, v1, :cond_95

    .line 148
    :try_start_21
    invoke-virtual/range {p0 .. p1}, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->makeSuccessIntent(I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 149
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->mContext:Landroid/content/Context;

    const v2, 0x7f080108

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 150
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->mContext:Landroid/content/Context;

    const v2, 0x7f08010a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_3a} :catch_c6

    move-result-object v4

    .line 152
    .end local v15           #state:Ljava/lang/String;
    .local v4, state:Ljava/lang/String;
    const/16 v1, 0x21

    move/from16 v0, p2

    if-ne v0, v1, :cond_55

    .line 160
    :try_start_41
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->mFileName:Ljava/lang/String;

    invoke-direct {v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    .local v12, delete_file:Ljava/io/File;
    if-eqz v12, :cond_55

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 163
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 175
    .end local v12           #delete_file:Ljava/io/File;
    :cond_55
    :goto_55
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->mNotiController:Lcom/sec/android/socialhub/notification/HubNotificationController;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->mFileName:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/android/socialhub/util/SocialHubTextUtil;->getFileNameByString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->mFileName:Ljava/lang/String;

    invoke-static {v7}, Lcom/sec/android/socialhub/util/SocialHubTextUtil;->getFileNameByString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v14, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x8

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/socialhub/notification/HubNotificationController;->createCommonNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/app/Notification;

    move-result-object v11

    .line 176
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->mNotiController:Lcom/sec/android/socialhub/notification/HubNotificationController;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->mRegisteredID:I

    invoke-virtual/range {v5 .. v11}, Lcom/sec/android/socialhub/notification/HubNotificationController;->registerNotification(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/app/Notification;)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_8d} :catch_8f

    goto/16 :goto_3

    .line 178
    :catch_8f
    move-exception v13

    .line 180
    .local v13, e:Ljava/lang/Exception;
    :goto_90
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 170
    .end local v4           #state:Ljava/lang/String;
    .end local v13           #e:Ljava/lang/Exception;
    .restart local v15       #state:Ljava/lang/String;
    :cond_95
    :try_start_95
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->mAction:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->mFileName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->mContent:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->mSpTypeList:[I

    move-object/from16 v1, p0

    move/from16 v6, p1

    move/from16 v7, p2

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->makeFailIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[III)Landroid/app/PendingIntent;

    move-result-object v10

    .line 171
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->mContext:Landroid/content/Context;

    const v2, 0x7f080109

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 172
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/socialhub/service/SocialHubFileUploadTask;->mContext:Landroid/content/Context;

    const v2, 0x7f08010b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_c4} :catch_c6

    move-result-object v4

    .end local v15           #state:Ljava/lang/String;
    .restart local v4       #state:Ljava/lang/String;
    goto :goto_55

    .line 178
    .end local v4           #state:Ljava/lang/String;
    .restart local v15       #state:Ljava/lang/String;
    :catch_c6
    move-exception v13

    move-object v4, v15

    .end local v15           #state:Ljava/lang/String;
    .restart local v4       #state:Ljava/lang/String;
    goto :goto_90

    .line 126
    nop

    :pswitch_data_ca
    .packed-switch 0x21
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
