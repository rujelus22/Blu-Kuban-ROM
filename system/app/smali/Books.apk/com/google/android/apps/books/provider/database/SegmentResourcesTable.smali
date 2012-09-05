.class public Lcom/google/android/apps/books/provider/database/SegmentResourcesTable;
.super Ljava/lang/Object;
.source "SegmentResourcesTable.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static getCreationSql()Ljava/lang/String;
    .registers 8

    .prologue
    .line 29
    const-string v1, "REFERENCES volumes(volume_id)"

    .line 32
    .local v1, refVolumeId:Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "FOREIGN KEY(%s, %s, %s) REFERENCES %s(%s, %s, %s), "

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "account_name"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "volume_id"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "resource_id"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-string v7, "resources"

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "account_name"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const-string v7, "volume_id"

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string v7, "resource_id"

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, foreignKey:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CREATE TABLE segment_resources (_id INTEGER PRIMARY KEY AUTOINCREMENT, account_name TEXT NOT NULL, volume_id TEXT NOT NULL REFERENCES volumes(volume_id), segment_id TEXT NOT NULL, resource_id TEXT NOT NULL, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "UNIQUE (account_name, volume_id, segment_id, resource_id) ON CONFLICT REPLACE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, result:Ljava/lang/String;
    return-object v2
.end method

.method public static getCreationSqlVersion123()Ljava/lang/String;
    .registers 1

    .prologue
    .line 59
    const-string v0, "CREATE TABLE segment_resources (_id INTEGER PRIMARY KEY AUTOINCREMENT, account_name TEXT NOT NULL, volume_id TEXT NOT NULL REFERENCES volumes(volume_id), segment_id TEXT NOT NULL, resource_id TEXT NOT NULL, FOREIGN KEY(account_name, volume_id, resource_id) REFERENCES resources(account_name, volume_id, resource_id), UNIQUE (account_name, volume_id, segment_id, resource_id) ON CONFLICT REPLACE)"

    .line 64
    .local v0, result:Ljava/lang/String;
    return-object v0
.end method
