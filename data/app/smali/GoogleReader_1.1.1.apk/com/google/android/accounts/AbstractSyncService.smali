.class public abstract Lcom/google/android/accounts/AbstractSyncService;
.super Lcom/google/android/accounts/IntentService;
.source "AbstractSyncService.java"


# static fields
.field static final ACTION_REQUEST_SYNC:Ljava/lang/String; = "android.content.SyncAdapter"

.field private static final ECLAIR:I = 0x5

.field static final EXTRA_ACCOUNT_NAME:Ljava/lang/String; = "com.google.android.accounts.intent.extra.ACCOUNT_NAME"

.field static final EXTRA_ACCOUNT_TYPE:Ljava/lang/String; = "com.google.android.accounts.intent.extra.ACCOUNT_TYPE"

.field static final EXTRA_AUTHORITY:Ljava/lang/String; = "com.google.android.accounts.intent.extra.AUTHORITY"

.field static final EXTRA_BUNDLE:Ljava/lang/String; = "com.google.android.accounts.intent.extra.BUNDLE"

.field static final EXTRA_SUPPORTS_UPLOADING:Ljava/lang/String; = "com.google.android.accounts.intent.extra.SUPPORTS_UPLOADING"

.field private static final SDK:I


# instance fields
.field private final mNotificationId:I

.field private final mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 69
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/accounts/AbstractSyncService;->SDK:I

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .parameter "name"
    .parameter "priority"
    .parameter "notificationId"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/google/android/accounts/IntentService;-><init>(Ljava/lang/String;I)V

    .line 87
    iput-object p1, p0, Lcom/google/android/accounts/AbstractSyncService;->mTag:Ljava/lang/String;

    .line 88
    iput p3, p0, Lcom/google/android/accounts/AbstractSyncService;->mNotificationId:I

    .line 89
    return-void
.end method

.method private createNotification(Ljava/lang/String;)Landroid/app/Notification;
    .registers 13
    .parameter "authority"

    .prologue
    .line 223
    const v4, 0x108007c

    .line 224
    .local v4, icon:I
    const/4 v6, 0x0

    .line 225
    .local v6, tickerText:Ljava/lang/String;
    const-wide/16 v7, 0x0

    .line 226
    .local v7, when:J
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5, v4, v6, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 227
    .local v5, notification:Landroid/app/Notification;
    move-object v3, p0

    .line 228
    .local v3, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/google/android/accounts/AbstractSyncService;->createNotificationTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 229
    .local v2, contentTitle:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/google/android/accounts/AbstractSyncService;->createNotificationText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 230
    .local v1, contentText:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/google/android/accounts/AbstractSyncService;->createNotificationIntent()Landroid/app/PendingIntent;

    move-result-object v0

    .line 231
    .local v0, contentIntent:Landroid/app/PendingIntent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, v5, Landroid/app/Notification;->when:J

    .line 232
    iget v9, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v9, v9, 0x2

    iput v9, v5, Landroid/app/Notification;->flags:I

    .line 233
    invoke-virtual {v5, v3, v2, v1, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 234
    return-object v5
.end method

.method private isSyncEnabled()Z
    .registers 2

    .prologue
    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method private performSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 150
    if-eqz p1, :cond_6

    if-nez p2, :cond_e

    .line 151
    :cond_6
    iget-object v0, p0, Lcom/google/android/accounts/AbstractSyncService;->mTag:Ljava/lang/String;

    const-string v1, "not syncing because account was not specified"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_d
    :goto_d
    return-void

    .line 154
    :cond_e
    if-nez p3, :cond_18

    .line 155
    iget-object v0, p0, Lcom/google/android/accounts/AbstractSyncService;->mTag:Ljava/lang/String;

    const-string v1, "not syncing because authority was not specified"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 158
    :cond_18
    invoke-direct {p0}, Lcom/google/android/accounts/AbstractSyncService;->isSyncEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 163
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/google/android/accounts/AbstractSyncService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 164
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 165
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    .line 167
    if-nez p5, :cond_b5

    .line 168
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 171
    :goto_31
    const-string v2, "upload"

    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 172
    const-string v3, "force"

    invoke-virtual {v1, v3, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 175
    invoke-static {p0}, Lcom/google/android/accounts/ContentSyncer;->get(Landroid/content/Context;)Lcom/google/android/accounts/ContentSyncer;

    move-result-object v4

    .line 176
    new-instance v5, Lcom/google/android/accounts/Account;

    invoke-direct {v5, p1, p2}, Lcom/google/android/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v4, v5, p3}, Lcom/google/android/accounts/ContentSyncer;->getIsSyncable(Lcom/google/android/accounts/Account;Ljava/lang/String;)I

    move-result v6

    .line 178
    if-eqz v6, :cond_d

    .line 183
    if-nez p4, :cond_50

    if-nez v2, :cond_d

    .line 188
    :cond_50
    invoke-virtual {v4, v5, p3}, Lcom/google/android/accounts/ContentSyncer;->getSyncAutomatically(Lcom/google/android/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    .line 189
    if-nez v3, :cond_5a

    if-eqz v0, :cond_7d

    if-eqz v2, :cond_7d

    :cond_5a
    move v0, v8

    .line 191
    :goto_5b
    if-gez v6, :cond_7f

    .line 193
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 196
    const-string v2, "initialize"

    invoke-virtual {v0, v2, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 213
    :cond_67
    iget v0, p0, Lcom/google/android/accounts/AbstractSyncService;->mNotificationId:I

    invoke-direct {p0, p3}, Lcom/google/android/accounts/AbstractSyncService;->createNotification(Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/accounts/AbstractSyncService;->startForegroundCompat(ILandroid/app/Notification;)V

    .line 215
    :try_start_70
    invoke-virtual {p0}, Lcom/google/android/accounts/AbstractSyncService;->createSyncAdapter()Lcom/google/android/accounts/AbstractSyncAdapter;

    move-result-object v0

    .line 216
    invoke-virtual {v0, v5, v1, p3}, Lcom/google/android/accounts/AbstractSyncAdapter;->onPerformSync(Lcom/google/android/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_77
    .catchall {:try_start_70 .. :try_end_77} :catchall_ae

    .line 218
    iget v0, p0, Lcom/google/android/accounts/AbstractSyncService;->mNotificationId:I

    invoke-virtual {p0, v0}, Lcom/google/android/accounts/AbstractSyncService;->stopForegroundCompat(I)V

    goto :goto_d

    :cond_7d
    move v0, v7

    .line 189
    goto :goto_5b

    .line 199
    :cond_7f
    if-nez v0, :cond_67

    .line 200
    iget-object v0, p0, Lcom/google/android/accounts/AbstractSyncService;->mTag:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sync of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not allowed, dropping request"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_d

    .line 218
    :catchall_ae
    move-exception v0

    iget v1, p0, Lcom/google/android/accounts/AbstractSyncService;->mNotificationId:I

    invoke-virtual {p0, v1}, Lcom/google/android/accounts/AbstractSyncService;->stopForegroundCompat(I)V

    throw v0

    :cond_b5
    move-object v1, p5

    goto/16 :goto_31
.end method


# virtual methods
.method protected createNotificationIntent()Landroid/app/PendingIntent;
    .registers 6

    .prologue
    .line 121
    move-object v0, p0

    .line 122
    .local v0, context:Landroid/content/Context;
    const/4 v3, 0x0

    .line 123
    .local v3, requestCode:I
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 124
    .local v2, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    .line 125
    .local v1, flags:I
    invoke-static {v0, v3, v2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    return-object v4
.end method

.method protected abstract createNotificationText()Ljava/lang/CharSequence;
.end method

.method protected abstract createNotificationTitle()Ljava/lang/CharSequence;
.end method

.method protected abstract createSyncAdapter()Lcom/google/android/accounts/AbstractSyncAdapter;
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 6
    .parameter "intent"

    .prologue
    .line 245
    sget v2, Lcom/google/android/accounts/AbstractSyncService;->SDK:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_14

    .line 246
    move-object v1, p0

    .line 247
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/google/android/accounts/AbstractSyncService;->createSyncAdapter()Lcom/google/android/accounts/AbstractSyncAdapter;

    move-result-object v0

    .line 248
    .local v0, adapter:Lcom/google/android/accounts/AbstractSyncAdapter;
    new-instance v2, Lcom/google/android/accounts/Adapter;

    invoke-direct {v2, v1, v0}, Lcom/google/android/accounts/Adapter;-><init>(Landroid/content/Context;Lcom/google/android/accounts/AbstractSyncAdapter;)V

    invoke-virtual {v2}, Lcom/google/android/accounts/Adapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 250
    .end local v0           #adapter:Lcom/google/android/accounts/AbstractSyncAdapter;
    .end local v1           #context:Landroid/content/Context;
    :goto_13
    return-object v2

    :cond_14
    const/4 v2, 0x0

    goto :goto_13
.end method

.method public bridge synthetic onCreate()V
    .registers 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/google/android/accounts/IntentService;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 239
    iget v0, p0, Lcom/google/android/accounts/AbstractSyncService;->mNotificationId:I

    invoke-virtual {p0, v0}, Lcom/google/android/accounts/AbstractSyncService;->stopForegroundCompat(I)V

    .line 240
    invoke-super {p0}, Lcom/google/android/accounts/IntentService;->onDestroy()V

    .line 241
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 10
    .parameter "intent"

    .prologue
    .line 136
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 137
    .local v6, action:Ljava/lang/String;
    const-string v0, "android.content.SyncAdapter"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 138
    const-string v0, "com.google.android.accounts.intent.extra.ACCOUNT_NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, accountName:Ljava/lang/String;
    const-string v0, "com.google.android.accounts.intent.extra.ACCOUNT_TYPE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, accountType:Ljava/lang/String;
    const-string v0, "com.google.android.accounts.intent.extra.AUTHORITY"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 141
    .local v3, authority:Ljava/lang/String;
    const-string v0, "com.google.android.accounts.intent.extra.SUPPORTS_UPLOADING"

    const/4 v7, 0x0

    invoke-virtual {p1, v0, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 142
    .local v4, supportsUploading:Z
    const-string v0, "com.google.android.accounts.intent.extra.BUNDLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .local v5, extras:Landroid/os/Bundle;
    move-object v0, p0

    .line 143
    invoke-direct/range {v0 .. v5}, Lcom/google/android/accounts/AbstractSyncService;->performSync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 145
    .end local v1           #accountName:Ljava/lang/String;
    .end local v2           #accountType:Ljava/lang/String;
    .end local v3           #authority:Ljava/lang/String;
    .end local v4           #supportsUploading:Z
    .end local v5           #extras:Landroid/os/Bundle;
    :cond_2f
    return-void
.end method

.method public bridge synthetic onStart(Landroid/content/Intent;I)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Lcom/google/android/accounts/IntentService;->onStart(Landroid/content/Intent;I)V

    return-void
.end method

.method public bridge synthetic startForegroundCompat(ILandroid/app/Notification;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-super {p0, p1, p2}, Lcom/google/android/accounts/IntentService;->startForegroundCompat(ILandroid/app/Notification;)V

    return-void
.end method

.method public bridge synthetic stopForegroundCompat(I)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/google/android/accounts/IntentService;->stopForegroundCompat(I)V

    return-void
.end method
