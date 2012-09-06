.class final Lcom/google/android/apps/reader/content/CachedStreamContentHandler$RecordUsageTask;
.super Ljava/lang/Object;
.source "CachedStreamContentHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/reader/content/CachedStreamContentHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RecordUsageTask"
.end annotation


# instance fields
.field private final mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private final mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/accounts/Account;Ljava/lang/String;)V
    .registers 8
    .parameter "database"
    .parameter "account"
    .parameter "streamId"

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    if-nez p1, :cond_d

    .line 165
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Database is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_d
    if-nez p2, :cond_17

    .line 168
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Account is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_17
    if-nez p3, :cond_21

    .line 171
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Stream ID is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_21
    iput-object p1, p0, Lcom/google/android/apps/reader/content/CachedStreamContentHandler$RecordUsageTask;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 174
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/reader/content/CachedStreamContentHandler$RecordUsageTask;->mValues:Landroid/content/ContentValues;

    .line 175
    iget-object v0, p0, Lcom/google/android/apps/reader/content/CachedStreamContentHandler$RecordUsageTask;->mValues:Landroid/content/ContentValues;

    const-string v1, "account_name"

    iget-object v2, p2, Lcom/google/android/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/google/android/apps/reader/content/CachedStreamContentHandler$RecordUsageTask;->mValues:Landroid/content/ContentValues;

    const-string v1, "stream_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/google/android/apps/reader/content/CachedStreamContentHandler$RecordUsageTask;->mValues:Landroid/content/ContentValues;

    const-string v1, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 178
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 2

    .prologue
    .line 189
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 190
    return-void
.end method

.method public run()V
    .registers 5

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recording stream usage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/reader/content/CachedStreamContentHandler$RecordUsageTask;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lcom/google/android/apps/reader/content/CachedStreamContentHandler$RecordUsageTask;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "usage"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/apps/reader/content/CachedStreamContentHandler$RecordUsageTask;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 184
    return-void
.end method
