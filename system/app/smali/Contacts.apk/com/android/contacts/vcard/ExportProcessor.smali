.class public Lcom/android/contacts/vcard/ExportProcessor;
.super Lcom/android/contacts/vcard/ProcessorBase;
.source "ExportProcessor.java"


# instance fields
.field private volatile mCanceled:Z

.field private volatile mDone:Z

.field private final mExportRequest:Lcom/android/contacts/vcard/ExportRequest;

.field private final mJobId:I

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mService:Lcom/android/contacts/vcard/VCardService;


# direct methods
.method public constructor <init>(Lcom/android/contacts/vcard/VCardService;Lcom/android/contacts/vcard/ExportRequest;I)V
    .registers 6
    .parameter "service"
    .parameter "exportRequest"
    .parameter "jobId"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/contacts/vcard/ProcessorBase;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    .line 61
    invoke-virtual {p1}, Lcom/android/contacts/vcard/VCardService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mResolver:Landroid/content/ContentResolver;

    .line 62
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/android/contacts/vcard/VCardService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mNotificationManager:Landroid/app/NotificationManager;

    .line 64
    iput-object p2, p0, Lcom/android/contacts/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/vcard/ExportRequest;

    .line 65
    iput p3, p0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    .line 66
    return-void
.end method

.method private doCancelNotification()V
    .registers 8

    .prologue
    .line 250
    iget-object v2, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const v3, 0x7f0a00e6

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/contacts/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/vcard/ExportRequest;

    iget-object v6, v6, Lcom/android/contacts/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, description:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    invoke-static {v2, v0}, Lcom/android/contacts/vcard/NotificationImportExportListener;->constructCancelNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v1

    .line 254
    .local v1, notification:Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/contacts/vcard/ExportProcessor;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v3, "VCardServiceProgress"

    iget v4, p0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    invoke-virtual {v2, v3, v4, v1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 256
    return-void
.end method

.method private doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 260
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const-class v2, Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 261
    iget-object v1, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    invoke-static {v1, p1, p2, v0}, Lcom/android/contacts/vcard/NotificationImportExportListener;->constructFinishNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Notification;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lcom/android/contacts/vcard/ExportProcessor;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v2, "VCardServiceProgress"

    iget v3, p0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 266
    return-void
.end method

.method private doProgressNotification(Landroid/net/Uri;II)V
    .registers 13
    .parameter "uri"
    .parameter "totalCount"
    .parameter "currentCount"

    .prologue
    .line 235
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    .line 236
    .local v5, displayName:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const v1, 0x7f0a00e8

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v1, v4}, Lcom/android/contacts/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, description:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const v1, 0x7f0a00e7

    invoke-virtual {v0, v1}, Lcom/android/contacts/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, tickerText:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const/4 v1, 0x2

    iget v4, p0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/android/contacts/vcard/NotificationImportExportListener;->constructProgressNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;II)Landroid/app/Notification;

    move-result-object v8

    .line 244
    .local v8, notification:Landroid/app/Notification;
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "VCardServiceProgress"

    iget v4, p0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    invoke-virtual {v0, v1, v4, v8}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 246
    return-void
.end method

.method private runInternal()V
    .registers 27

    .prologue
    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/vcard/ExportRequest;

    move-object/from16 v17, v0

    .line 98
    .local v17, request:Lcom/android/contacts/vcard/ExportRequest;
    const/4 v10, 0x0

    .line 99
    .local v10, composer:Lcom/android/vcard/VCardComposer;
    const/16 v24, 0x0

    .line 100
    .local v24, writer:Ljava/io/Writer;
    const/16 v18, 0x0

    .line 102
    .local v18, successful:Z
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/vcard/ExportProcessor;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 103
    const-string v4, "VCardExport"

    const-string v5, "Export request is cancelled before handling the request"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_316

    .line 207
    if-eqz v10, :cond_1b

    .line 208
    throw v10

    .line 210
    :cond_1b
    if-eqz v24, :cond_1e

    .line 212
    :try_start_1d
    throw v24
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1e} :catch_2d

    .line 217
    :cond_1e
    :goto_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v18

    invoke-virtual {v4, v5, v0}, Lcom/android/contacts/vcard/VCardService;->handleFinishExportNotification(IZ)V

    move-object v3, v10

    .line 219
    .end local v10           #composer:Lcom/android/vcard/VCardComposer;
    .local v3, composer:Lcom/android/vcard/VCardComposer;
    :goto_2c
    return-void

    .line 213
    .end local v3           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v10       #composer:Lcom/android/vcard/VCardComposer;
    :catch_2d
    move-exception v12

    .line 214
    .local v12, e:Ljava/io/IOException;
    const-string v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 106
    .end local v12           #e:Ljava/io/IOException;
    :cond_47
    :try_start_47
    move-object/from16 v0, v17

    iget-object v14, v0, Lcom/android/contacts/vcard/ExportRequest;->exportType:Ljava/lang/String;

    .line 108
    .local v14, exportType:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e2

    .line 109
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const/high16 v5, 0x7f0a

    invoke-virtual {v4, v5}, Lcom/android/contacts/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/vcard/VCardConfig;->getVCardTypeFromString(Ljava/lang/String;)I

    move-result v23

    .line 115
    .local v23, vcardType:I
    :goto_5f
    new-instance v3, Lcom/android/vcard/VCardComposer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const/4 v5, 0x1

    move/from16 v0, v23

    invoke-direct {v3, v4, v0, v5}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;IZ)V
    :try_end_6b
    .catchall {:try_start_47 .. :try_end_6b} :catchall_316

    .line 122
    .end local v10           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v3       #composer:Lcom/android/vcard/VCardComposer;
    :try_start_6b
    sget-object v4, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string v5, "for_export_only"

    const-string v6, "1"

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    .line 126
    .local v9, contentUriForRawContactsEntity:Landroid/net/Uri;
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/vcard/VCardComposer;->init(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_102

    .line 129
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v13

    .line 130
    .local v13, errorReason:Ljava/lang/String;
    const-string v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initialization of vCard composer failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/contacts/vcard/ExportProcessor;->translateComposerError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 133
    .local v21, translatedErrorReason:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const v5, 0x7f0a00e9

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v21, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/contacts/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 136
    .local v19, title:Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_cb
    .catchall {:try_start_6b .. :try_end_cb} :catchall_34a

    .line 207
    if-eqz v3, :cond_d0

    .line 208
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 210
    :cond_d0
    if-eqz v24, :cond_d3

    .line 212
    :try_start_d2
    throw v24
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_d3} :catch_e8

    .line 217
    :cond_d3
    :goto_d3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v18

    invoke-virtual {v4, v5, v0}, Lcom/android/contacts/vcard/VCardService;->handleFinishExportNotification(IZ)V

    goto/16 :goto_2c

    .line 112
    .end local v3           #composer:Lcom/android/vcard/VCardComposer;
    .end local v9           #contentUriForRawContactsEntity:Landroid/net/Uri;
    .end local v13           #errorReason:Ljava/lang/String;
    .end local v19           #title:Ljava/lang/String;
    .end local v21           #translatedErrorReason:Ljava/lang/String;
    .end local v23           #vcardType:I
    .restart local v10       #composer:Lcom/android/vcard/VCardComposer;
    :cond_e2
    :try_start_e2
    invoke-static {v14}, Lcom/android/vcard/VCardConfig;->getVCardTypeFromString(Ljava/lang/String;)I
    :try_end_e5
    .catchall {:try_start_e2 .. :try_end_e5} :catchall_316

    move-result v23

    .restart local v23       #vcardType:I
    goto/16 :goto_5f

    .line 213
    .end local v10           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v3       #composer:Lcom/android/vcard/VCardComposer;
    .restart local v9       #contentUriForRawContactsEntity:Landroid/net/Uri;
    .restart local v13       #errorReason:Ljava/lang/String;
    .restart local v19       #title:Ljava/lang/String;
    .restart local v21       #translatedErrorReason:Ljava/lang/String;
    :catch_e8
    move-exception v12

    .line 214
    .restart local v12       #e:Ljava/io/IOException;
    const-string v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d3

    .line 140
    .end local v12           #e:Ljava/io/IOException;
    .end local v13           #errorReason:Ljava/lang/String;
    .end local v19           #title:Ljava/lang/String;
    .end local v21           #translatedErrorReason:Ljava/lang/String;
    :cond_102
    :try_start_102
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->getCount()I

    move-result v20

    .line 141
    .local v20, total:I
    if-nez v20, :cond_14c

    .line 142
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const v5, 0x7f0a00e2

    invoke-virtual {v4, v5}, Lcom/android/contacts/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 144
    .restart local v19       #title:Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11b
    .catchall {:try_start_102 .. :try_end_11b} :catchall_34a

    .line 207
    if-eqz v3, :cond_120

    .line 208
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 210
    :cond_120
    if-eqz v24, :cond_123

    .line 212
    :try_start_122
    throw v24
    :try_end_123
    .catch Ljava/io/IOException; {:try_start_122 .. :try_end_123} :catch_132

    .line 217
    :cond_123
    :goto_123
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v18

    invoke-virtual {v4, v5, v0}, Lcom/android/contacts/vcard/VCardService;->handleFinishExportNotification(IZ)V

    goto/16 :goto_2c

    .line 213
    :catch_132
    move-exception v12

    .line 214
    .restart local v12       #e:Ljava/io/IOException;
    const-string v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_123

    .line 150
    .end local v12           #e:Ljava/io/IOException;
    .end local v19           #title:Ljava/lang/String;
    :cond_14c
    :try_start_14c
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/contacts/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    move-object/from16 v22, v0
    :try_end_152
    .catchall {:try_start_14c .. :try_end_152} :catchall_34a

    .line 153
    .local v22, uri:Landroid/net/Uri;
    :try_start_152
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ExportProcessor;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_15b
    .catchall {:try_start_152 .. :try_end_15b} :catchall_34a
    .catch Ljava/io/FileNotFoundException; {:try_start_152 .. :try_end_15b} :catch_199

    move-result-object v16

    .line 165
    .local v16, outputStream:Ljava/io/OutputStream;
    :try_start_15c
    new-instance v25, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_16a
    .catchall {:try_start_15c .. :try_end_16a} :catchall_34a

    .line 167
    .end local v24           #writer:Ljava/io/Writer;
    .local v25, writer:Ljava/io/Writer;
    const/4 v11, 0x1

    .line 168
    .local v11, current:I
    :goto_16b
    :try_start_16b
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_297

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/vcard/ExportProcessor;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_20b

    .line 170
    const-string v4, "VCardExport"

    const-string v5, "Export request is cancelled during composing vCard"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17e
    .catchall {:try_start_16b .. :try_end_17e} :catchall_34c

    .line 207
    if-eqz v3, :cond_183

    .line 208
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 210
    :cond_183
    if-eqz v25, :cond_188

    .line 212
    :try_start_185
    invoke-virtual/range {v25 .. v25}, Ljava/io/Writer;->close()V
    :try_end_188
    .catch Ljava/io/IOException; {:try_start_185 .. :try_end_188} :catch_1f0

    .line 217
    :cond_188
    :goto_188
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v18

    invoke-virtual {v4, v5, v0}, Lcom/android/contacts/vcard/VCardService;->handleFinishExportNotification(IZ)V

    move-object/from16 v24, v25

    .end local v25           #writer:Ljava/io/Writer;
    .restart local v24       #writer:Ljava/io/Writer;
    goto/16 :goto_2c

    .line 154
    .end local v11           #current:I
    .end local v16           #outputStream:Ljava/io/OutputStream;
    :catch_199
    move-exception v12

    .line 155
    .local v12, e:Ljava/io/FileNotFoundException;
    :try_start_19a
    const-string v4, "VCardExport"

    const-string v5, "FileNotFoundException thrown"

    invoke-static {v4, v5, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const v5, 0x7f0a00ee

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v22, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v12}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/contacts/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 161
    .restart local v13       #errorReason:Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4}, Lcom/android/contacts/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1bf
    .catchall {:try_start_19a .. :try_end_1bf} :catchall_34a

    .line 207
    if-eqz v3, :cond_1c4

    .line 208
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 210
    :cond_1c4
    if-eqz v24, :cond_1c7

    .line 212
    :try_start_1c6
    throw v24
    :try_end_1c7
    .catch Ljava/io/IOException; {:try_start_1c6 .. :try_end_1c7} :catch_1d6

    .line 217
    .end local v12           #e:Ljava/io/FileNotFoundException;
    :cond_1c7
    :goto_1c7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v18

    invoke-virtual {v4, v5, v0}, Lcom/android/contacts/vcard/VCardService;->handleFinishExportNotification(IZ)V

    goto/16 :goto_2c

    .line 213
    .restart local v12       #e:Ljava/io/FileNotFoundException;
    :catch_1d6
    move-exception v12

    .line 214
    .local v12, e:Ljava/io/IOException;
    const-string v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c7

    .line 213
    .end local v12           #e:Ljava/io/IOException;
    .end local v13           #errorReason:Ljava/lang/String;
    .end local v24           #writer:Ljava/io/Writer;
    .restart local v11       #current:I
    .restart local v16       #outputStream:Ljava/io/OutputStream;
    .restart local v25       #writer:Ljava/io/Writer;
    :catch_1f0
    move-exception v12

    .line 214
    .restart local v12       #e:Ljava/io/IOException;
    const-string v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_188

    .line 174
    .end local v12           #e:Ljava/io/IOException;
    :cond_20b
    :try_start_20b
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->createOneEntry()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_214
    .catchall {:try_start_20b .. :try_end_214} :catchall_34c
    .catch Ljava/io/IOException; {:try_start_20b .. :try_end_214} :catch_226

    .line 189
    :try_start_214
    rem-int/lit8 v4, v11, 0x64

    const/4 v5, 0x1

    if-ne v4, v5, :cond_222

    .line 190
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v11}, Lcom/android/contacts/vcard/ExportProcessor;->doProgressNotification(Landroid/net/Uri;II)V

    .line 192
    :cond_222
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_16b

    .line 175
    :catch_226
    move-exception v12

    .line 176
    .restart local v12       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v13

    .line 177
    .restart local v13       #errorReason:Ljava/lang/String;
    const-string v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to read a contact: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/contacts/vcard/ExportProcessor;->translateComposerError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 180
    .restart local v21       #translatedErrorReason:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const v5, 0x7f0a00ea

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v21, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/contacts/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 183
    .restart local v19       #title:Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_262
    .catchall {:try_start_214 .. :try_end_262} :catchall_34c

    .line 207
    if-eqz v3, :cond_267

    .line 208
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 210
    :cond_267
    if-eqz v25, :cond_26c

    .line 212
    :try_start_269
    invoke-virtual/range {v25 .. v25}, Ljava/io/Writer;->close()V
    :try_end_26c
    .catch Ljava/io/IOException; {:try_start_269 .. :try_end_26c} :catch_27d

    .line 217
    :cond_26c
    :goto_26c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v18

    invoke-virtual {v4, v5, v0}, Lcom/android/contacts/vcard/VCardService;->handleFinishExportNotification(IZ)V

    move-object/from16 v24, v25

    .end local v25           #writer:Ljava/io/Writer;
    .restart local v24       #writer:Ljava/io/Writer;
    goto/16 :goto_2c

    .line 213
    .end local v24           #writer:Ljava/io/Writer;
    .restart local v25       #writer:Ljava/io/Writer;
    :catch_27d
    move-exception v12

    .line 214
    const-string v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26c

    .line 194
    .end local v12           #e:Ljava/io/IOException;
    .end local v13           #errorReason:Ljava/lang/String;
    .end local v19           #title:Ljava/lang/String;
    .end local v21           #translatedErrorReason:Ljava/lang/String;
    :cond_297
    :try_start_297
    const-string v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Successfully finished exporting vCard "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/android/contacts/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/contacts/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/vcard/VCardService;->updateMediaScanner(Ljava/lang/String;)V

    .line 201
    const/16 v18, 0x1

    .line 202
    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v15

    .line 203
    .local v15, filename:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    const v5, 0x7f0a00e5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v15, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/android/contacts/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 205
    .restart local v19       #title:Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v4}, Lcom/android/contacts/vcard/ExportProcessor;->doFinishNotification(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e1
    .catchall {:try_start_297 .. :try_end_2e1} :catchall_34c

    .line 207
    if-eqz v3, :cond_2e6

    .line 208
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 210
    :cond_2e6
    if-eqz v25, :cond_2eb

    .line 212
    :try_start_2e8
    invoke-virtual/range {v25 .. v25}, Ljava/io/Writer;->close()V
    :try_end_2eb
    .catch Ljava/io/IOException; {:try_start_2e8 .. :try_end_2eb} :catch_2fc

    .line 217
    :cond_2eb
    :goto_2eb
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v18

    invoke-virtual {v4, v5, v0}, Lcom/android/contacts/vcard/VCardService;->handleFinishExportNotification(IZ)V

    move-object/from16 v24, v25

    .line 219
    .end local v25           #writer:Ljava/io/Writer;
    .restart local v24       #writer:Ljava/io/Writer;
    goto/16 :goto_2c

    .line 213
    .end local v24           #writer:Ljava/io/Writer;
    .restart local v25       #writer:Ljava/io/Writer;
    :catch_2fc
    move-exception v12

    .line 214
    .restart local v12       #e:Ljava/io/IOException;
    const-string v4, "VCardExport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2eb

    .line 207
    .end local v3           #composer:Lcom/android/vcard/VCardComposer;
    .end local v9           #contentUriForRawContactsEntity:Landroid/net/Uri;
    .end local v11           #current:I
    .end local v12           #e:Ljava/io/IOException;
    .end local v14           #exportType:Ljava/lang/String;
    .end local v15           #filename:Ljava/lang/String;
    .end local v16           #outputStream:Ljava/io/OutputStream;
    .end local v19           #title:Ljava/lang/String;
    .end local v20           #total:I
    .end local v22           #uri:Landroid/net/Uri;
    .end local v23           #vcardType:I
    .end local v25           #writer:Ljava/io/Writer;
    .restart local v10       #composer:Lcom/android/vcard/VCardComposer;
    .restart local v24       #writer:Ljava/io/Writer;
    :catchall_316
    move-exception v4

    move-object v3, v10

    .end local v10           #composer:Lcom/android/vcard/VCardComposer;
    .restart local v3       #composer:Lcom/android/vcard/VCardComposer;
    :goto_318
    if-eqz v3, :cond_31d

    .line 208
    invoke-virtual {v3}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 210
    :cond_31d
    if-eqz v24, :cond_322

    .line 212
    :try_start_31f
    invoke-virtual/range {v24 .. v24}, Ljava/io/Writer;->close()V
    :try_end_322
    .catch Ljava/io/IOException; {:try_start_31f .. :try_end_322} :catch_330

    .line 217
    :cond_322
    :goto_322
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/contacts/vcard/ExportProcessor;->mJobId:I

    move/from16 v0, v18

    invoke-virtual {v5, v6, v0}, Lcom/android/contacts/vcard/VCardService;->handleFinishExportNotification(IZ)V

    throw v4

    .line 213
    :catch_330
    move-exception v12

    .line 214
    .restart local v12       #e:Ljava/io/IOException;
    const-string v5, "VCardExport"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IOException is thrown during close(). Ignored. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_322

    .line 207
    .end local v12           #e:Ljava/io/IOException;
    .restart local v14       #exportType:Ljava/lang/String;
    .restart local v23       #vcardType:I
    :catchall_34a
    move-exception v4

    goto :goto_318

    .end local v24           #writer:Ljava/io/Writer;
    .restart local v9       #contentUriForRawContactsEntity:Landroid/net/Uri;
    .restart local v11       #current:I
    .restart local v16       #outputStream:Ljava/io/OutputStream;
    .restart local v20       #total:I
    .restart local v22       #uri:Landroid/net/Uri;
    .restart local v25       #writer:Ljava/io/Writer;
    :catchall_34c
    move-exception v4

    move-object/from16 v24, v25

    .end local v25           #writer:Ljava/io/Writer;
    .restart local v24       #writer:Ljava/io/Writer;
    goto :goto_318
.end method

.method private translateComposerError(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "errorMessage"

    .prologue
    .line 222
    iget-object v1, p0, Lcom/android/contacts/vcard/ExportProcessor;->mService:Lcom/android/contacts/vcard/VCardService;

    invoke-virtual {v1}, Lcom/android/contacts/vcard/VCardService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 223
    .local v0, resources:Landroid/content/res/Resources;
    const-string v1, "Failed to get database information"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 224
    const v1, 0x7f0a00eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 230
    .end local p1
    :cond_15
    :goto_15
    return-object p1

    .line 225
    .restart local p1
    :cond_16
    const-string v1, "There\'s no exportable in the database"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 226
    const v1, 0x7f0a00ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_15

    .line 227
    :cond_26
    const-string v1, "The vCard composer object is not correctly initialized"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 228
    const v1, 0x7f0a00ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_15
.end method


# virtual methods
.method public declared-synchronized cancel(Z)Z
    .registers 4
    .parameter "mayInterruptIfRunning"

    .prologue
    const/4 v0, 0x1

    .line 271
    monitor-enter p0

    :try_start_2
    iget-boolean v1, p0, Lcom/android/contacts/vcard/ExportProcessor;->mDone:Z

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lcom/android/contacts/vcard/ExportProcessor;->mCanceled:Z
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_11

    if-eqz v1, :cond_d

    .line 272
    :cond_a
    const/4 v0, 0x0

    .line 275
    :goto_b
    monitor-exit p0

    return v0

    .line 274
    :cond_d
    const/4 v1, 0x1

    :try_start_e
    iput-boolean v1, p0, Lcom/android/contacts/vcard/ExportProcessor;->mCanceled:Z
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_11

    goto :goto_b

    .line 271
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRequest()Lcom/android/contacts/vcard/ExportRequest;
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mExportRequest:Lcom/android/contacts/vcard/ExportRequest;

    return-object v0
.end method

.method public final getType()I
    .registers 2

    .prologue
    .line 70
    const/4 v0, 0x2

    return v0
.end method

.method public declared-synchronized isCancelled()Z
    .registers 2

    .prologue
    .line 280
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mCanceled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDone()Z
    .registers 2

    .prologue
    .line 285
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/contacts/vcard/ExportProcessor;->mDone:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 4

    .prologue
    .line 77
    :try_start_0
    invoke-direct {p0}, Lcom/android/contacts/vcard/ExportProcessor;->runInternal()V

    .line 79
    invoke-virtual {p0}, Lcom/android/contacts/vcard/ExportProcessor;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 80
    invoke-direct {p0}, Lcom/android/contacts/vcard/ExportProcessor;->doCancelNotification()V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_1e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_c} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_c} :catch_25

    .line 89
    :cond_c
    monitor-enter p0

    .line 90
    const/4 v1, 0x1

    :try_start_e
    iput-boolean v1, p0, Lcom/android/contacts/vcard/ExportProcessor;->mDone:Z

    .line 91
    monitor-exit p0

    .line 93
    return-void

    .line 91
    :catchall_12
    move-exception v1

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_12

    throw v1

    .line 82
    :catch_15
    move-exception v0

    .line 83
    .local v0, e:Ljava/lang/OutOfMemoryError;
    :try_start_16
    const-string v1, "VCardExport"

    const-string v2, "OutOfMemoryError thrown during import"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    throw v0
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_1e

    .line 89
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catchall_1e
    move-exception v1

    monitor-enter p0

    .line 90
    const/4 v2, 0x1

    :try_start_21
    iput-boolean v2, p0, Lcom/android/contacts/vcard/ExportProcessor;->mDone:Z

    .line 91
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_2e

    throw v1

    .line 85
    :catch_25
    move-exception v0

    .line 86
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_26
    const-string v1, "VCardExport"

    const-string v2, "RuntimeException thrown during export"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    throw v0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_1e

    .line 91
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v1
.end method
