.class Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore$Helper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SQLiteInstallerDataStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Helper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;Landroid/content/Context;)V
    .registers 6
    .parameter
    .parameter "context"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore$Helper;->this$0:Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore;

    .line 104
    const-string v0, "localappstate.db"

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 105
    return-void
.end method

.method private recreateDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "database"

    .prologue
    .line 136
    :try_start_0
    const-string v0, "DROP TABLE appstate"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_5} :catch_9

    .line 139
    :goto_5
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore$Helper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 140
    return-void

    .line 137
    :catch_9
    move-exception v0

    goto :goto_5
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "database"

    .prologue
    .line 109
    const-string v0, "CREATE TABLE appstate (package_name STRING, auto_update INTEGER, desired_version INTEGER, download_uri STRING, delivery_data BLOB, delivery_data_timestamp_ms INTEGER,installer_state INTEGER, first_download_ms INTEGER, referrer STRING, account STRING, title STRING,flags INTEGER, continue_url STRING,PRIMARY KEY (package_name))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 8
    .parameter "database"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 130
    const-string v0, "Downgrading InstallerDataStore from %d to %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    invoke-direct {p0, p1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore$Helper;->recreateDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 132
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .parameter "database"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 114
    packed-switch p2, :pswitch_data_12

    .line 123
    invoke-direct {p0, p1}, Lcom/google/android/finsky/appstate/SQLiteInstallerDataStore$Helper;->recreateDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 126
    :goto_6
    return-void

    .line 116
    :pswitch_7
    const-string v0, "ALTER TABLE appstate ADD COLUMN continue_url STRING"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 119
    :pswitch_c
    const-string v0, "ALTER TABLE appstate ADD COLUMN delivery_data_timestamp_ms INTEGER"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_6

    .line 114
    :pswitch_data_12
    .packed-switch 0x7
        :pswitch_7
        :pswitch_c
    .end packed-switch
.end method
