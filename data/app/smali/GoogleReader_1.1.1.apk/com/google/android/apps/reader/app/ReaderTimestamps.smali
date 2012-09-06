.class Lcom/google/android/apps/reader/app/ReaderTimestamps;
.super Ljava/lang/Object;
.source "ReaderTimestamps.java"


# static fields
.field private static final CLEANUP_INTERVAL:J = 0x5265c00L

.field private static final KEY_CLEANUP:Ljava/lang/String; = "cleanup"

.field private static final KEY_SYNC:Ljava/lang/String; = "sync"

.field private static final PREFERENCES_FILE:Ljava/lang/String; = "timestamps"

.field private static final SYNC_INTERVAL:J = 0x5265c0L


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    return-void
.end method

.method private static createKey(Lcom/google/android/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "account"
    .parameter "key"

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getElapsed(Landroid/content/Context;Lcom/google/android/accounts/Account;Ljava/lang/String;)J
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "key"

    .prologue
    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, p2}, Lcom/google/android/apps/reader/app/ReaderTimestamps;->getTimestamp(Landroid/content/Context;Lcom/google/android/accounts/Account;Ljava/lang/String;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3
    .parameter "context"

    .prologue
    .line 50
    const-string v0, "timestamps"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static getTimestamp(Landroid/content/Context;Lcom/google/android/accounts/Account;Ljava/lang/String;)J
    .registers 7
    .parameter "context"
    .parameter "account"
    .parameter "key"

    .prologue
    .line 58
    invoke-static {p0}, Lcom/google/android/apps/reader/app/ReaderTimestamps;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 59
    .local v0, preferences:Landroid/content/SharedPreferences;
    invoke-static {p1, p2}, Lcom/google/android/apps/reader/app/ReaderTimestamps;->createKey(Lcom/google/android/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public static isCleanupOverdue(Landroid/content/Context;Lcom/google/android/accounts/Account;)Z
    .registers 6
    .parameter "context"
    .parameter "account"

    .prologue
    .line 91
    const-string v0, "cleanup"

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/reader/app/ReaderTimestamps;->getElapsed(Landroid/content/Context;Lcom/google/android/accounts/Account;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static isSyncOverdue(Landroid/content/Context;Lcom/google/android/accounts/Account;)Z
    .registers 6
    .parameter "context"
    .parameter "account"

    .prologue
    .line 83
    const-string v0, "sync"

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/reader/app/ReaderTimestamps;->getElapsed(Landroid/content/Context;Lcom/google/android/accounts/Account;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x5265c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static updateCleanupTimestamp(Landroid/content/Context;Lcom/google/android/accounts/Account;)Z
    .registers 3
    .parameter "context"
    .parameter "account"

    .prologue
    .line 109
    const-string v0, "cleanup"

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/reader/app/ReaderTimestamps;->updateTimestamp(Landroid/content/Context;Lcom/google/android/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static updateSyncTimestamp(Landroid/content/Context;Lcom/google/android/accounts/Account;)Z
    .registers 3
    .parameter "context"
    .parameter "account"

    .prologue
    .line 100
    const-string v0, "sync"

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/reader/app/ReaderTimestamps;->updateTimestamp(Landroid/content/Context;Lcom/google/android/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static updateTimestamp(Landroid/content/Context;Lcom/google/android/accounts/Account;Ljava/lang/String;)Z
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-static {p0}, Lcom/google/android/apps/reader/app/ReaderTimestamps;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 68
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 69
    invoke-static {p1, p2}, Lcom/google/android/apps/reader/app/ReaderTimestamps;->createKey(Lcom/google/android/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 70
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method
