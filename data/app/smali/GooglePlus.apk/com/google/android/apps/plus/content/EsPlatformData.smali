.class public Lcom/google/android/apps/plus/content/EsPlatformData;
.super Ljava/lang/Object;
.source "EsPlatformData.java"


# direct methods
.method static cleanupData(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/apps/plus/content/EsAccount;)V
    .registers 4
    .parameter "db"
    .parameter "account"

    .prologue
    const/4 v1, 0x0

    .line 47
    const-string v0, "platform_audience"

    invoke-virtual {p0, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 48
    return-void
.end method

.method public static saveAudience(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;Ljava/lang/String;Lcom/google/wireless/tacotruck/proto/Data$Audience;)V
    .registers 8
    .parameter "context"
    .parameter "account"
    .parameter "packageName"
    .parameter "audience"

    .prologue
    .line 30
    invoke-static {p0, p1}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;Lcom/google/android/apps/plus/content/EsAccount;)Lcom/google/android/apps/plus/content/EsDatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/plus/content/EsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 33
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 34
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "package_name"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v2, "audience_data"

    invoke-virtual {p3}, Lcom/google/wireless/tacotruck/proto/Data$Audience;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 37
    const-string v2, "platform_audience"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 38
    return-void
.end method
