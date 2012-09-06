.class Lcom/google/android/accounts/CupcakeContentSyncer;
.super Lcom/google/android/accounts/ContentSyncer;
.source "CupcakeContentSyncer.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CupcakeContentSyncer"

.field private static final NAMESPACE:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"


# instance fields
.field private mAuthenticators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/accounts/DatabaseAuthenticator;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/android/accounts/ContentSyncer;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/google/android/accounts/CupcakeContentSyncer;->mContext:Landroid/content/Context;

    .line 76
    invoke-static {p1}, Lcom/google/android/accounts/DatabaseAuthenticator;->createDatabaseAuthenticators(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/accounts/CupcakeContentSyncer;->mAuthenticators:Ljava/util/Map;

    .line 77
    return-void
.end method

.method private static final beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 6
    .parameter "parser"
    .parameter "firstElementName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 57
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, type:I
    if-eq v0, v2, :cond_a

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 60
    :cond_a
    if-eq v0, v2, :cond_14

    .line 61
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :cond_14
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 65
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected start tag: found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_45
    return-void
.end method

.method private createOperation(Lcom/google/android/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/PendingIntent;
    .registers 5
    .parameter "account"
    .parameter "authority"
    .parameter "extras"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/accounts/CupcakeContentSyncer;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/google/android/accounts/PeriodicSyncReceiver;->createPendingIntent(Landroid/content/Context;Lcom/google/android/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getAlarmManager()Landroid/app/AlarmManager;
    .registers 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/accounts/CupcakeContentSyncer;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/AlarmManager;

    return-object p0
.end method

.method private getAuthenticator(Ljava/lang/String;)Lcom/google/android/accounts/DatabaseAuthenticator;
    .registers 3
    .parameter "type"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/accounts/CupcakeContentSyncer;->mAuthenticators:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/accounts/DatabaseAuthenticator;

    return-object p0
.end method

.method private querySyncAdapterServices()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v3, p0, Lcom/google/android/accounts/CupcakeContentSyncer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 126
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.content.SyncAdapter"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .local v1, intent:Landroid/content/Intent;
    const/16 v0, 0x80

    .line 128
    .local v0, flags:I
    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public addPeriodicSync(Lcom/google/android/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    .registers 17
    .parameter "account"
    .parameter "authority"
    .parameter "extras"
    .parameter "pollFrequency"

    .prologue
    .line 189
    const-wide/16 v9, 0x3e8

    mul-long v7, p4, v9

    .line 190
    .local v7, pollFrequencyMsec:J
    invoke-direct {p0}, Lcom/google/android/accounts/CupcakeContentSyncer;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v0

    .line 191
    .local v0, manager:Landroid/app/AlarmManager;
    const/4 v1, 0x2

    .line 192
    .local v1, type:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    add-long v2, v9, v7

    .line 193
    .local v2, triggerAtTime:J
    move-wide v4, v7

    .line 194
    .local v4, interval:J
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/accounts/CupcakeContentSyncer;->createOperation(Lcom/google/android/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 195
    .local v6, operation:Landroid/app/PendingIntent;
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 196
    return-void
.end method

.method public getIsSyncable(Lcom/google/android/accounts/Account;Ljava/lang/String;)I
    .registers 4
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 93
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    .line 94
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 97
    :cond_a
    const/4 v0, 0x1

    return v0
.end method

.method public getSyncAutomatically(Lcom/google/android/accounts/Account;Ljava/lang/String;)Z
    .registers 5
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 113
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    .line 114
    :cond_4
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 116
    :cond_a
    iget-object v1, p1, Lcom/google/android/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/android/accounts/CupcakeContentSyncer;->getAuthenticator(Ljava/lang/String;)Lcom/google/android/accounts/DatabaseAuthenticator;

    move-result-object v0

    .line 117
    .local v0, authenticator:Lcom/google/android/accounts/DatabaseAuthenticator;
    if-eqz v0, :cond_17

    .line 118
    invoke-virtual {v0, p1, p2}, Lcom/google/android/accounts/DatabaseAuthenticator;->getSyncAutomatically(Lcom/google/android/accounts/Account;Ljava/lang/String;)Z

    move-result v1

    .line 120
    :goto_16
    return v1

    :cond_17
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public removePeriodicSync(Lcom/google/android/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .parameter "account"
    .parameter "authority"
    .parameter "extras"

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/google/android/accounts/CupcakeContentSyncer;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v0

    .line 201
    .local v0, manager:Landroid/app/AlarmManager;
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/accounts/CupcakeContentSyncer;->createOperation(Lcom/google/android/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 202
    .local v1, operation:Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 203
    return-void
.end method

.method public requestSync(Lcom/google/android/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 133
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    .line 134
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 136
    :cond_a
    invoke-direct {p0}, Lcom/google/android/accounts/CupcakeContentSyncer;->querySyncAdapterServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ad

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 138
    :try_start_1e
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 140
    iget-object v2, p0, Lcom/google/android/accounts/CupcakeContentSyncer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 141
    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 143
    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 144
    const-string v4, "android.content.SyncAdapter"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 146
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_37} :catch_9e

    move-result-object v2

    .line 148
    :try_start_38
    const-string v3, "sync-adapter"

    invoke-static {v2, v3}, Lcom/google/android/accounts/CupcakeContentSyncer;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 149
    const-string v3, "http://schemas.android.com/apk/res/android"

    const-string v4, "contentAuthority"

    invoke-interface {v2, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 150
    const-string v4, "http://schemas.android.com/apk/res/android"

    const-string v5, "accountType"

    invoke-interface {v2, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 151
    const-string v5, "http://schemas.android.com/apk/res/android"

    const-string v6, "supportsUploading"

    invoke-interface {v2, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 153
    const-string v6, "true"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 154
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_99

    .line 155
    iget-object v3, p1, Lcom/google/android/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_99

    .line 156
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.content.SyncAdapter"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string v0, "com.google.android.accounts.intent.extra.ACCOUNT_NAME"

    iget-object v4, p1, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const-string v0, "com.google.android.accounts.intent.extra.ACCOUNT_TYPE"

    iget-object v4, p1, Lcom/google/android/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string v0, "com.google.android.accounts.intent.extra.AUTHORITY"

    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    const-string v0, "com.google.android.accounts.intent.extra.BUNDLE"

    invoke-virtual {v3, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 165
    const-string v0, "com.google.android.accounts.intent.extra.SUPPORTS_UPLOADING"

    invoke-virtual {v3, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 167
    iget-object v0, p0, Lcom/google/android/accounts/CupcakeContentSyncer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_99
    .catchall {:try_start_38 .. :try_end_99} :catchall_a8

    .line 171
    :cond_99
    :try_start_99
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9c} :catch_9e

    goto/16 :goto_12

    .line 173
    :catch_9e
    move-exception v0

    .line 174
    const-string v2, "CupcakeContentSyncer"

    const-string v3, "Could not read SyncAdapter meta-data"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_12

    .line 171
    :catchall_a8
    move-exception v0

    :try_start_a9
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    throw v0
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_ad} :catch_9e

    .line 177
    :cond_ad
    return-void
.end method

.method public setIsSyncable(Lcom/google/android/accounts/Account;Ljava/lang/String;I)V
    .registers 5
    .parameter "account"
    .parameter "authority"
    .parameter "syncable"

    .prologue
    .line 85
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    .line 86
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 89
    :cond_a
    return-void
.end method

.method public setSyncAutomatically(Lcom/google/android/accounts/Account;Ljava/lang/String;Z)V
    .registers 6
    .parameter "account"
    .parameter "authority"
    .parameter "sync"

    .prologue
    .line 102
    if-eqz p1, :cond_4

    if-nez p2, :cond_a

    .line 103
    :cond_4
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 105
    :cond_a
    iget-object v1, p1, Lcom/google/android/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/android/accounts/CupcakeContentSyncer;->getAuthenticator(Ljava/lang/String;)Lcom/google/android/accounts/DatabaseAuthenticator;

    move-result-object v0

    .line 106
    .local v0, authenticator:Lcom/google/android/accounts/DatabaseAuthenticator;
    if-eqz v0, :cond_15

    .line 107
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/accounts/DatabaseAuthenticator;->setSyncAutomatically(Lcom/google/android/accounts/Account;Ljava/lang/String;Z)V

    .line 109
    :cond_15
    return-void
.end method
